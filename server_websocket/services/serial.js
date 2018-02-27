var serialPort = require('serialport');
var currentData = '';

function createSerialPort() {

  // Check if an Arduino is connected to a port. If yes, get the portname
  var promise = new Promise(function(resolve, reject) {
    serialPort.list(function (err, ports) {
      ports.forEach(function(port) {
        if(port.manufacturer && port.manufacturer.includes('Arduino')) resolve(port.comName);
      });

      reject(Error('No Arduino port found'));
    });
  });

  promise.then(function(usbport) {

    // Create serial port connection
    var port = new serialPort(usbport, {
      baudRate: 9600
    });

    // Read data that is available but keep the stream from entering "flowing mode"
    port.on('readable', function () {
        currentData = port.read().toString('utf8').trim();
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