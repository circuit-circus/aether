var serialPort = require('serialport');
var currentData = '';

var websocket_helpers = require('../services/websocket_helpers');

function createSerialPort() {

  // Check if an Arduino is connected to a port. If yes, get the portname
  var promise = new Promise(function(resolve, reject) {
    serialPort.list(function (err, ports) {
      ports.forEach(function(port) {
        if(port.manufacturer && port.manufacturer.includes('Arduino')) resolve(port.comName);
      });

      reject(Error('No Arduino (for TUI) port found'));
    });
  });

  promise.then(function(usbport) {

    // Create serial port connection
    var port = new serialPort(usbport, {
      baudRate: 9600
    });

    // Read data that is available but keep the stream from entering "flowing mode"
    port.on('readable', function () {
        var data = port.read().toString('utf8').trim();
        if (data.includes('BACK') || data.includes('FORWARD') || data.includes('QUESTION_POT') || data.includes('PLANET_POT')) {
          websocket_helpers.sendToGUI(data);
        }
    });
  }, function(err) {
    console.log(err);
  });
}

function getLastSerialPortData() {
  return currentData;
}

module.exports = {
  createSerialPort,
  getLastSerialPortData
};