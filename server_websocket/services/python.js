'use strict';

let generatePyPath = __dirname + '/../../aether_python/rnn_play.py';
let printPyPath = __dirname + '/../../aether_python/rnn_print.py';

// Python calls
let myQuestion = 'What is behind this door?';
let myPlanet = 'BRNRD-2.0';

// Send a request to the neural network for some text
function getAnswer(questionTxt, planetName) {
  console.log('Getting answer for this: ' + questionTxt + '|' + planetName);
  return new Promise(function(resolve, reject) {
    var spawn = require('child_process').spawn;
    var process = spawn('python3', [generatePyPath, questionTxt, planetName]);

    // Returns the generated text
    process.stdout.on('data', function (data) {
      console.log(data.toString());
      process.kill();
      printReceipt(questionTxt, planetName, data.toString());
      resolve(data.toString());
    });

    process.stderr.on('data', (data) => {
      console.log('stderr getanswer:' + data);
    });
  });
}

// Print a receipt with the given inputs. Defaults to blank
function printReceipt(questionTxt, planetName, answerTxt) {
  console.log('Printing receipt');
  var spawn = require('child_process').spawn;
  var process = spawn('python', [printPyPath, questionTxt, planetName, answerTxt]);

  process.stdout.on('data', function (data) {
    console.log(data.toString());
    process.kill();
    return answerTxt;
  });

  process.stderr.on('data', (data) => {
    console.log('stderr print receipt:' + data);
  });
}

module.exports = {
    getAnswer
}
