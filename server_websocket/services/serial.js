'use strict';
module.exports = function() {

    var serialPort = require('serialport');
    var usbport = '/dev/ttyACM0';

    var port = new SerialPort(usbport, {
      baudRate: 9600
    });

    // Read data that is available but keep the stream from entering "flowing mode"
    port.on('readable', function () {
        console.log('Data:', port.read().toString('utf8'));
    });
}