define(['js/runtime-anf', 'js/eval-lib', 'benchmark', 'q', 'fs', 'trove/checker'],

  function (RT, evalLib, Benchmark, Q, fs, checkerLib) {

    //DO NOT REMOVE
    // needed for benchmarked functions to
    // have access to evalLib
    global.evalLib = evalLib;
    global.checkerLib = checkerLib;

    //used for testing
    //set in createSuite
    var SUITE_LENGTH;

    function initializeGlobalRuntime() {
      global.rt = RT.makeRuntime({
        initialGas: 500,
        stdout: function (str) {},
        stderr: function (str) {}
      });
    }

    function checkResult(runtime, result) {
      if (runtime.isSuccessResult(result)) {
        return true;
      }
      if (runtime.isFailureResult(result)) {
        return false;
      }
      throw new Error('checkResult called with invalid parameter');
    }

    //sets up global.astResult and global.loadedResult
    function setup(deferred) {
      global.loadedResult = undefined;
      global.astResult = undefined;
      global.evalLib.runParsePyret(global.rt, global.programSrc, global.pyretOptions,
        function (ast) {
          debugger; //ast should pass global.rt.isSuccessResult
          global.astResult = ast.result;
          global.evalLib.runLoadParsedPyret(global.rt, global.astResult, global.pyretOptions,
            function (loaded) {
              debugger; //loaded shouldn't be erroneous
              global.loadedResult = loaded.result;
              deferred.resolve(checkResult(global.rt, loaded));
            });
        });
    }

    function parsePyret(deferred) {
      global.evalLib.runParsePyret(global.rt, global.programSrc, global.pyretOptions,
        function (parsed) {
          deferred.resolve(parsed);
        });
    }

    function loadParsedPyret(deferred) {
      global.evalLib.runLoadParsedPyret(global.rt, global.astResult, global.pyretOptions,
        function (loaded) {
          deferred.resolve(loaded);
        });
    }

    function evalLoadedPyret(deferred) {
      global.rt.runThunk(function () {
        global.rt.loadModules(global.rt.namespace, [global.checkerLib],
          function (checker) {
            var currentChecker = global.rt.getField(checker, 'make-check-context')
              .app(global.rt.makeString(global.pyretOptions.name), global.rt.makeBoolean(false));
            global.rt.setParam('current-checker', currentChecker);
            var sync = false;
            var namespace = global.pyretOptions.namespace || global.rt.namespace;
            global.rt.pauseStack(
              function (restarter) {
                global.rt.run(global.loadedResult, namespace, {},
                  function (result) {
                    debugger; //we can check result in the node debugger repl
                    if (global.rt.isSuccessResult(result)) {
                      restarter.resume(result.result);
                    } else {
                      restarter.error(result.exn);
                    }
                    deferred.resolve(result);
                  });
              }
            );
          });
      },
        function () {});
    }

    //run internally before each benchmark
    function ensureSuccess(src, deferred) {
      var newRT = RT.makeRuntime({
        initialGas: 500,
        stdout: function (str) {},
        stderr: function (str) {}
      });
      global.evalLib.runEvalPyret(newRT, src, global.pyretOptions,
        function (result) {
          var check = checkResult(newRT, result);
          if (check) {
            deferred.resolve(check);
          } else {
            deferred.reject(check);
          }
        });
    }

    function createSuite() {
      var suite = new Benchmark.Suite();

      SUITE_LENGTH = 3;

      suite.add('parse', parsePyret, {'defer': true});
      suite.add('load', loadParsedPyret, {'defer': true});
      suite.add('eval_loaded', evalLoadedPyret, {'defer': true});
      return suite;
    }

    /**
    Runs the actual benchmarks
    @param {Array<Object>} tests is an array of objects
    of the form {program: str, name: str}, where program is
    the source code to test, and name is just a label (e.g. the program's name)
    @param options {Object} are the options passed directly into eval-lib
    @param log {boolean} log data to the console
    @param onDone {Function} is the continuation
    */
    function runBenchmarks(tests, options, log, onDone) {
      initializeGlobalRuntime();

      global.astResult = undefined;
      global.mod = undefined;
      global.pyretOptions = options;

      var suite = createSuite();
      var suiteRunDefer = Q.defer();

      var i = 0;

      suite.on('cycle',
        function (event) {
          var hz = event.target.hz;
          var rme = event.target.stats.rme;
          var samples = event.target.stats.sample.length;
          var name = event.target.name;

          //i was increased already
          tests[i - 1].results[name] = {hz: hz, rme: rme, samples: samples};
          if (log) {console.log(String(event.target).replace('\xb1', '+/- ')); }
        });

      suite.on('complete',
        function () {
          if (log) {console.log('Fastest is ' + this.filter('fastest').pluck('name')); }
          if (log) {console.log('Slowest is ' + this.filter('slowest').pluck('name')); }
          suiteRunDefer.notify(true);
        });

      suite.on('error',
        function (event) {
          if (log) {console.log(event.target.error); }
          suiteRunDefer.notify(false);
        });

      suiteRunDefer.promise.then(
        function (v) {throw new Error('resolve should not happen'); },
        function (v) {throw new Error('reject should not happen'); },
        function (notifyValue) {
          if (!notifyValue) {
            if (log) {console.log('There was an error in the benchmark.'); }
          }
          if (i < tests.length) {
            tests[i].results = {};
            tests[i].options = global.pyretOptions;
            if (log) {console.log('CURRENT BENCHMARK: ' + tests[i].name); }
            var ensureSuccessDefer = Q.defer();
            if (log) {console.log('Ensuring program runs successfully...'); }
            ensureSuccess(tests[i].program, ensureSuccessDefer);
            ensureSuccessDefer.promise.then(
              function (v) {
                if (log) {console.log('...done.'); }
                tests[i].success = true;
                global.programSrc = tests[i].program;
                //suite.onCycle assumes i was increased already
                i++;

                var setupDefer = Q.defer();
                setup(setupDefer);
                setupDefer.promise.then(
                  function (resolveValue) {
                    //suite.run will notify suiteRunDefer
                    suite.run({'async': false});
                  },
                  function (v) {throw new Error('reject should not happen'); },
                  function (v) {throw new Error('notify should not happen'); }
                );

              },
              function (v) {
                if (log) {console.log('...program did not run successfully.'); }
                tests[i].success = false;
                i++;
                suiteRunDefer.notify(true);
              },
              function (v) {throw new Error('notify should not happen'); }
            );
          } else {
            onDone(tests);
          }
        }
      );
      suiteRunDefer.notify(true);
    }

    // doesn't benchmark anything,
    // just for development/testing purposes
    //TODO:
    // output results of checker
    function evaluateProgram(src, options) {
      console.log('Evaluating...');
      var newRT = RT.makeRuntime({
        initialGas: 500,
        stdout: function (str) {process.stdout.write(str); },
        stderr: function (str) {process.stderr.write(str); }
      });
      global.evalLib.runEvalPyret(newRT, src, options, function (result) {
        debugger; //can check result in debug repl
        console.log('done.');
      });
    }

    function runFile(filename, options, log, onDone) {
      var programSrc = fs.readFileSync(filename, {'encoding': 'UTF-8'});
      var benchmarks = [{
        program: programSrc,
        name: filename
      }];
      runBenchmarks(benchmarks, options, log, onDone);
    }

    function testDeferredFunction(src, options, funName, onDone) {
      initializeGlobalRuntime();
      var d = Q.defer();
      d.promise.then(
        function (result) {
          if (checkResult(global.rt, result)) {
            onDone(true);
          } else {
            onDone(false);
          }
        },
        function (v) {throw new Error('reject should not happen'); },
        function (v) {throw new Error('notify should not happen'); }
      );

      initializeGlobalRuntime();
      global.programSrc = src;
      global.pyretOptions = options;

      switch (funName) {
      case 'parsePyret':
        parsePyret(d);
        break;
      default:
        var setupDefer = Q.defer();
        setup(setupDefer);
        setupDefer.promise.then(
          function (resolveValue) {
            switch (funName) {
            case 'loadParsedPyret':
              loadParsedPyret(d);
              break;
            case 'evalLoadedPyret':
              evalLoadedPyret(d);
              break;
            default:
              throw new Error('Invalid Function Name: ' + funName);
            }
          },
          function (v) {throw new Error('reject should not happen'); },
          function (v) {throw new Error('notify should not happen'); }
        );
        break;
      }
    }

    function testEnsureSuccess(src, options, onDone) {
      global.pyretOptions = options;
      var d = Q.defer();
      d.promise.then(
        function (resolveValue) {onDone(true); },
        function (rejectValue) {onDone(false); },
        function (v) {throw new Error('notify should not happen'); }
      );
      ensureSuccess(src, d);
    }

    function testInitializeGlobalRuntime() {
      global.rt = undefined;
      initializeGlobalRuntime();
      return (typeof global.rt !== 'undefined');
    }

    function testSetup(src, options, ondone) {
      global.astResult = undefined;
      global.loadedResult = undefined;
      global.pyretOptions = options;
      global.programSrc = src;
      initializeGlobalRuntime();

      var setupDefer = Q.defer();
      setup(setupDefer);
      setupDefer.promise.then(
        function (resolveValue) {
          var passed = resolveValue
            && (typeof global.astResult !== 'undefined')
            && (typeof global.loadedResult !== 'undefined');
          ondone(passed);
        },
        function (v) {throw new Error('reject should not happen'); },
        function (v) {throw new Error('notify should not happen'); }
      );
    }

    function testCheckResult(testSuccessResult) {
      initializeGlobalRuntime();
      var result;
      if (testSuccessResult) {
        result = global.rt.makeSuccessResult(undefined);
        return checkResult(global.rt, result);
      }
      result = global.rt.makeFailureResult(undefined);
      return checkResult(global.rt, result);
    }

    function testCreateSuite() {
      var suite = createSuite();
      return (suite instanceof Benchmark.Suite && suite.length === SUITE_LENGTH);
    }

    return {
      runBenchmarks: runBenchmarks,
      runFile: runFile,
      evaluateProgram: evaluateProgram,
      test: {
        testDeferredFunction: testDeferredFunction,
        testEnsureSuccess: testEnsureSuccess,
        testInitializeGlobalRuntime: testInitializeGlobalRuntime,
        testSetup: testSetup,
        testCheckResult: testCheckResult,
        testCreateSuite: testCreateSuite
      }
    };

  });