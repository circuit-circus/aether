var serialPort = require('serialport');
const readline = serialPort.parsers.Readline;

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

    const parser = port.pipe(new readline({ delimiter: '\r\n' }));

    // Read data that is available but keep the stream from entering "flowing mode"
    parser.on('data', function (data) {
      if (data.includes('BUTTON') || data.includes('QUESTION') || data.includes('PLANET')) {
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