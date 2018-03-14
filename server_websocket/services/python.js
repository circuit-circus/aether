'use strict';

let printPyPath = __dirname + '/../../aether_python/print_receipt.py';

// Python calls
let myQuestion = 'What is behind this door?';
let myPlanet = 'BRNRD-2.0';

// Print a receipt with the given inputs. Defaults to blank
function printReceipt(questionTxt, planetName, answerTxt, errorMargin) {
  console.log('Printing receipt');
  return new Promise(function(resolve, reject) {
    var spawn = require('child_process').spawn;
    var process = spawn('python', [printPyPath, questionTxt, planetName, answerTxt, errorMargin]);

    console.log('PYTHON');
    process.stdout.on('data', function (data) {
      process.kill();
      resolve('Print was successful!');
    });

    process.stderr.on('data', (data) => {
      process.kill();
      reject(Error('The receipting gave off an error: ' + data));
    });

    process.on('close', (code) => {
      reject(Error('The printing process was closed with this code: ' + code));
    });

    process.on('error', (err) => {
      reject(Error('An error occured with printing the receipt: ' + err));
    });
  });
}

module.exports = {
  printReceipt
}
