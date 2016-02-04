provide *
provide-types *

import either as E
import parse-pyret as P
import ast as A
import load-lib as L
import namespace-lib as N
import runtime-lib as R
import sets as S
import string-dict as SD
import "compiler/compile.arr" as CM
import "compiler/compile-structs.arr" as CS
import "compiler/js-of-pyret.arr" as JSP
import "compiler/ast-util.arr" as AU

left = E.left
right = E.right
type Either = E.Either

mtd = [SD.string-dict:]

# for re-export
standard-builtins = CS.standard-builtins
make-base-namespace = N.make-base-namespace

type URI = String

data PyretCode:
  | pyret-string(s :: String)
  | pyret-ast(ast :: A.Program)
end

data Loadable:
  | module-as-string(compile-env :: CS.CompileEnvironment, result-printer :: CS.CompileResult<JSP.CompiledCodePrinter>)
  # Doesn't need compilation, just contains a JS closure
  | pre-loaded(compile-env :: CS.CompileEnvironment, internal-mod :: Any)
end

type Provides = CS.Provides

type Locator = {
 
  # Could either have needs-provide be implicitly stateful, and cache
  # the most recent map, or use explicit interface below
  needs-compile :: (SD.StringDict<Provides> -> Boolean),

  # Pre-compile (skippable if get-compile returns something)
  get-module :: ( -> PyretCode),

  # Pre-compile (had better be known with no other help)
  get-dependencies :: ( -> List<CS.Dependency>),

  # Pre-compile
  get-extra-imports :: ( -> CS.ExtraImports),

  # Post- or pre- compile
  # get-import-names :: ( -> List<String>),

  # Pre-compile (so other modules can know what this module provides
  # type-wise)
  get-provides :: ( -> Provides),

  # Pre-compile, specification of available globals
  get-globals :: ( -> CS.Globals),

  # Post-compile, on-run (maybe dynamic and new namespaces)
  get-namespace :: (R.Runtime -> N.Namespace),

  uri :: (-> URI),
  name :: (-> String),

  set-compiled :: (Loadable, SD.StringDict<Provides> -> Nothing),

  # Pre-compile if needs-compile is false
  get-compiled :: ( -> Option<Loadable>),

  # _equals should compare uris for locators
  _equals :: Method
}

data Located<a>:
  | located(locator :: Locator, context :: a)
end


fun get-ast(p :: PyretCode, uri :: URI):
  cases(PyretCode) p:
    | pyret-string(s) => P.surface-parse(s, uri)
    | pyret-ast(a) => a
  end
end

fun get-import-type(i):
  cases(A.Import) i:
    | s-import(_, f, _) => f
    | s-import-types(_, f, _, _) => f
    | s-include(_, f) => f
    | s-import-complete(_, _, _, f, _, _) => f
    | s-import-fields(_, _, f) => f
  end
end

fun get-dependencies(p :: PyretCode, uri :: URI) -> List<CS.Dependency>:
  parsed = get-ast(p, uri)
  for map(s from parsed.imports.map(get-import-type)):
    AU.import-to-dep(s)
  end
end

fun get-standard-dependencies(p :: PyretCode, uri :: URI) -> List<CS.Dependency>:
  mod-deps = get-dependencies(p, uri)
  mod-deps + CS.standard-imports.imports.map(_.dependency)
end

fun const-dict<a>(strs :: List<String>, val :: a) -> SD.StringDict<a>:
  for fold(d from mtd, s from strs):
    d.set(s, val)
  end
end

fun get-provides(p :: PyretCode, uri :: URI) -> Provides:
  parsed = get-ast(p, uri)
  vals-part = 
    cases (A.Provide) parsed._provide:
      | s-provide-none(l) => mtd
      | s-provide-all(l) =>
        const-dict(A.toplevel-ids(parsed).map(_.toname()), CS.v-just-there)
      | s-provide(l, e) =>
        cases (A.Expr) e:
          | s-obj(_, mlist) => const-dict(mlist.map(_.name), CS.v-just-there)
          | else => raise("Non-object expression in provide: " + l.format(true))
        end
    end
  types-part =
    cases(A.ProvideTypes) parsed.provided-types:
      | s-provide-types-none(l) => mtd
      | s-provide-types-all(l) =>
        type-ids = A.block-type-ids(parsed.block)
        type-strs = type-ids.map(lam(i): i.name.toname() end)
        const-dict(type-strs, CS.t-just-there)
      | s-provide-types(l, anns) =>
        const-dict(anns.map(_.name), CS.t-just-there)
    end
  CS.provides(vals-part, types-part)
end

type ToCompile = { locator :: Locator, dependency-map :: SD.MutableStringDict<Locator>, path :: List<Locator> }

fun dict-map<a, b>(sd :: SD.MutableStringDict, f :: (String, a -> b)):
  for fold(sd2 from mtd, k from sd.keys-now().to-list()):
    sd2.set(k, f(k, sd.get-value-now(k)))
  end
end

fun make-compile-lib<a>(dfind :: (a, CS.Dependency -> Located)) -> { compile-worklist :: Function, compile-program :: Function }:

  fun compile-worklist(locator :: Locator, context :: a) -> List<ToCompile>:
    fun add-preds-to-worklist(shadow locator :: Locator, shadow context :: a, curr-path :: List<ToCompile>) -> List<ToCompile>:
      when is-some(curr-path.find(lam(tc): tc.locator == locator end)):
        raise("Detected module cycle: " + curr-path.map(_.locator).map(_.uri()).join-str(", "))
      end
      pmap = SD.make-mutable-string-dict()
      deps = locator.get-dependencies()
      found-mods = for map(d from deps):
        found = dfind(context, d)
        pmap.set-now(d.key(), found.locator)
        found
      end
      tocomp = {locator: locator, dependency-map: pmap, path: curr-path}
      for fold(ret from [list: tocomp], f from found-mods):
        pret = add-preds-to-worklist(f.locator, f.context, curr-path + [list: tocomp])
        pret + ret
      end
    end
    add-preds-to-worklist(locator, context, empty)
  end

  fun compile-program(worklist :: List<ToCompile>, options) -> List<Loadable>:
    cache = SD.make-mutable-string-dict()
    for map(w from worklist):
      uri = w.locator.uri()
      if not(cache.has-key-now(uri)):
        cr = compile-module(w.locator, w.dependency-map, options)
        cache.set-now(uri, cr)
        cr
      else:
        cache.get-value-now(uri)
      end
    end
  end

  fun compile-module(locator :: Locator, dependencies :: SD.MutableStringDict<Locator>, options) -> Loadable:
    provide-map = dict-map(dependencies, lam(_, v): v.get-provides() end)
    if locator.needs-compile(provide-map):
      mod = locator.get-module()
      ce = CS.compile-env(locator.get-globals(), provide-map)
      cr = cases(PyretCode) mod:
        | pyret-string(module-string) =>
          CM.compile-js(
            CM.start,
            module-string,
            locator.uri(),
            ce,
            locator.get-extra-imports(),
            options
            ).result
        | pyret-ast(module-ast) =>
          CM.compile-js-ast(
            CM.start,
            module-ast,
            locator.uri(),
            ce,
            locator.get-extra-imports(),
            options
            ).result
      end
      locator.set-compiled(module-as-string(ce, cr), provide-map)
      module-as-string(ce, cr)
    else:
      locator.get-compiled(provide-map).value
    end
  end

  {compile-worklist: compile-worklist, compile-program: compile-program}
end

type PyretAnswer = Any
type PyretMod = Any

fun compile-and-run-worklist(cl, ws :: List<ToCompile>, runtime :: R.Runtime, options):
  compile-and-run-worklist-with(cl, ws, runtime, SD.make-string-dict(), options)
end

fun is-error-compilation(cr):
  is-module-as-string(cr) and CS.is-err(cr.result-printer)
end

fun compile-to-js-string(dfind, string, uri, context, options) -> String:
  parsed = P.surface-parse(string, uri)
  locator = {
    needs-compile(self, provs): true end,
    get-module(self): pyret-ast(parsed) end,
    get-extra-imports(self):
      CS.standard-imports
    end,
    get-dependencies(self):
      get-standard-dependencies(self.get-module(), self.uri())
    end,
    get-provides(self): get-provides(self.get-module(), self.uri()) end,
    get-globals(self): CS.standard-globals end,
    get-namespace(self, runtime): N.make-base-namespace(runtime) end,
    update-compile-context(self, ctxt): ctxt end,
    uri(self): uri end,
    name(self): uri end,
    set-compiled(self, ctxt, provs): nothing end,
    get-compiled(self): none end,
    _equals(self, that, rec-eq): rec-eq(self.uri(), that.uri()) end
  }
  cl = make-compile-lib(dfind)
  worklist = cl.compile-worklist(locator, context)
  program = cl.compile-program(worklist, options)
  cases(Loadable) program.last():
    | module-as-string(_, ccp) =>
      cases(CS.CompileResult) ccp:
        | ok(printer) => printer.pyret-to-js-runnable()
        | err(errors) => raise(errors)
      end
    | else => raise("Cannot create compiled string for " + locator.uri() + ": " + torepr(program.first))
  end
end

fun compile-and-run-worklist-with(cl, ws :: List<ToCompile>, runtime :: R.Runtime, initial :: SD.StringDict<PyretMod>, options):
  compiled-mods = cl.compile-program(ws, options)
  errors = compiled-mods.filter(is-error-compilation)
  cases(List) errors:
    | empty =>
      load-infos = for map2(tc from ws, cm from compiled-mods):
        { to-compile: tc, compiled-mod: cm }
      end
      right(load-worklist(load-infos, initial, L.make-loader(runtime), runtime))
    | link(_, _) =>
      left(errors.map(_.result-printer))
  end
end

fun load-worklist(ws, modvals :: SD.StringDict<PyretMod>, loader, runtime) -> PyretAnswer:
  doc: "Assumes topo-sorted worklist in ws"
  cases(List) ws:
    | empty =>
      raise("Didn't get anything to run in run-worklist")
    | link(load-info, r) =>
      depmap = load-info.to-compile.dependency-map
      dependencies = load-info.to-compile.locator.get-dependencies()
      depnames = dependencies.map(lam(d): d.key() end).sort()
      depvals = for map(d from depnames):
        { modval: modvals.get-value(depmap.get-value-now(d).uri()), key: d }
      end
      m = load-info.compiled-mod
      when is-module-as-string(m) and CS.is-err(m):
        raise(m.result-printer.problems)
      end
      ans = loader.load(m, depvals, load-info.to-compile.locator.get-namespace(runtime))
      modvals-new = modvals.set(load-info.to-compile.locator.uri(), ans)
      answer = loader.run(ans, m.compile-env, load-info.to-compile.locator.uri())
      cases(List) r:
        | empty => answer
        | link(_, _) => load-worklist(r, modvals-new, loader, runtime)
      end
  end
end

