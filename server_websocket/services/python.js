'use strict';

let printPyPath = __dirname + '/../../aether_python/rnn_print.py';

// Python calls
let myQuestion = 'What is behind this door?';
let myPlanet = 'BRNRD-2.0';

// Print a receipt with the given inputs. Defaults to blank
function printReceipt(questionTxt, planetName, answerTxt) {
  console.log('Printing receipt');
  return new Promise(function(resolve, reject) {
    var spawn = require('child_process').spawn;
    var process = spawn('python', [printPyPath, questionTxt, planetName, answerTxt]);

    process.stdout.on('data', function (data) {
      process.kill();
      resolve('Print was successful!');
    });

    process.stderr.on('data', (data) => {
      reject(Error('stderr print receipt:' + data));
    });
  });
}

module.exports = {
    printReceipt
}
