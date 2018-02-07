const express = require('express');
const http = require('http');
const url = require('url');
const WebSocket = require('ws');
var ejsLayouts = require('express-ejs-layouts');
var path = require('path');
const app = express();

const server = http.createServer(app); // Create normal http server
const wss = new WebSocket.Server({ server : server, clientTracking : true }); // Create websocket

// View engine etc.
app.use(express.static(__dirname + '/public'));
app.use(ejsLayouts);
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');

// VIEW PATHS
app.get('/', function(req, res) {
  res.render('index');
});

// API PATHS

// Send a signal to all connected devices, saying which one to activate
app.get('/activateDevice', function(req, res) {
    var data = req.query.device; // The device (arduino) to activate

    console.log('The device to activate: %s', data);
    wss.broadcast(data); // Broadcast data to all connected devices
});

// When a new handshake is established, this event is fired
wss.on('connection', function connection(ws, req) {
  const ip = req.connection.remoteAddress;
  console.log('new connection: %s', ip);

  // Get incomming messages from this connection
  ws.on('message', function incoming(message) {
    console.log('received: %s', message);
  });

});

// Function to broadcast to all connections
wss.broadcast = function broadcast(data) {
    wss.clients.forEach(function each(client) {
      if (client.readyState === WebSocket.OPEN) {
        client.send(data);
      }
    });
  };

// serverrr
server.listen(3000, function listening() {
  console.log('Listening on %d', server.address().port);
});