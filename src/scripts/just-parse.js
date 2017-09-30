const R = require("requirejs");

R.config({
  paths: {
    'jglr': "../../lib/jglr/",
    'pyret-base': "../../build/phaseA"
  }
});
R(["pyret-base/js/pyret-tokenizer", "pyret-base/js/pyret-parser", "fs"], function(T, G, fs) {
  const data = fs.readFileSync(process.argv[2], {encoding: "utf-8"});
  const toks = T.Tokenizer;
  toks.tokenizeFrom(data);
  // while (toks.hasNext())
  //   console.log(toks.next().toString(true));
  var parsed = G.PyretGrammar.parse(toks);
  if (parsed) {
    console.log("Result:");
    var countParses = G.PyretGrammar.countAllParses(parsed);
    console.log("There are " + countParses + " potential parses");
    if (countParses === 1) {
      var ast = G.PyretGrammar.constructUniqueParse(parsed);
      console.log("AST constructed");
      var astStr = ast.toString(true);
      console.log("ast.toString().length = " + astStr.length)
      console.log(astStr);
      return ast;
    } else {
      var asts = G.PyretGrammar.constructAllParses(parsed);
      for (var i = 0; i < asts.length; i++) {
        console.log("Parse " + i + ": " + asts[i].toString());
      }
      // return asts;
    }
  } else {
    console.log("Invalid parse: you screwed up.");
    console.log("Next token is " + toks.curTok.toString(true) + " at " + toks.curTok.pos.toString(true));
  }
});
