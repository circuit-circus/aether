var serialPort = require('serialport');
//var usbport = '/dev/ttyACM0';
var usbport = '/dev/cu.usbmodem1421';

var currentData = '';

function createSerialPort() {
    var port = new serialPort(usbport, {
        baudRate: 9600
    });

    // Read data that is available but keep the stream from entering "flowing mode"
    port.on('readable', function () {
        currentData = port.read().toString('utf8').trim();
    });
}

function getLastSerialPortData() {
    return currentData;
}

module.exports = {
  createSerialPort,
  getLastSerialPortData
};