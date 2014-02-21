define(["./eval", "../runtime/matchers", "js/ffi-helpers"], function(e, matchers, ffiLib) {
  console.log("eval-matchers body");
  var count = 0;
  function makeEvalCheckers(jasmine, runtime) {
    matchers.addPyretMatchers(jasmine);
    function gf(o, s) { return runtime.getField(o, s); }
    var finished = [];
    var ffi = ffiLib(runtime, runtime.namespace);

    function checkEvalsTo(str, answer) {
      var i = finished.push(false);
      e.evalPyret(runtime, str, {}, function(result) {
        expect(result).toBeSuccess(runtime);
        var actual = gf(result.result, "answer");
        expect(actual).toBeSameAs(runtime, answer);
        finished[i - 1] = true;
      });
    }
    function checkEvalTests(str, pred) {
      var i = finished.push(false);
      e.evalPyret(runtime, str, {}, function(result) {
        expect(result).toBeSuccess(runtime);
        console.log("Result in checks: ", result);
        var checks = gf(result.result, "checks");
        expect(checks).toPassPredicate(pred);
        finished[i - 1] = true;
      });
    }
    function checkEvalPred(str, pred) {
      var i = finished.push(false);
      e.evalPyret(runtime, str, {}, function(result) {
        expect(result).toBeSuccess(runtime);
        if (runtime.isSuccessResult(result)) {
          var actual = gf(result.result, "answer");
          expect(actual).toPassPredicate(pred);
        }
        finished[i - 1] = true;
      });
    }
    function checkError(str, exnPred) {
      var i = finished.push(false);
      e.evalPyret(runtime, str, {}, function(result) {
        expect(result).toBeFailure(runtime);
        if (runtime.isFailureResult(result)) {
          var exn = result.exn;
          expect(exn).toPassPredicate(exnPred);
        }
        finished[i - 1] = true;
      });
    }
    function checkCompileErrorMsg(str, exnMsg) {
      function findInArray(arr) {
        for (var i = 0; i < arr.length; i++) {
          var actMsg = runtime.getField(arr[i], "msg");
          if (runtime.isString(actMsg)) {
            if (runtime.unwrap(actMsg).indexOf(exnMsg) !== -1)
              return true;
          }
        }
        return false;
      }
      return checkCompileError(str, findInArray);
    }
    function checkCompileError(str, exnPred) {
      var i = finished.push(false);
      e.compilePyret(runtime, str, {}, function(result) {
        expect(result).toBeFailure(runtime);
        var problems = result.exn;
        // Compiling returns a string or an array of 
        // Pyret objects detailing problems
        expect(problems).toBeInstanceOf(Array);
        if (problems instanceof Array) {
          expect(problems).toPassPredicate(exnPred);
        }
        finished[i - 1] = true;
      });
    }
    function wait(done) {
      setTimeout(function() {
          if(finished.filter(function(p) { return p === false; }).length === 0) {
            done();
          }
          else {
            setTimeout(function() { wait(done); });
          }
        },
        100);
    }
    return {
      checkCompileError: checkCompileError,
      checkCompileErrorMsg: checkCompileErrorMsg,
      checkEvalsTo: checkEvalsTo,
      checkEvalTests: checkEvalTests,
      checkEvalPred: checkEvalPred,
      checkError: checkError,
      wait: wait
    };
  }

  return {
    makeEvalCheckers: makeEvalCheckers
  };

});
