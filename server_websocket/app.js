const express = require('express');
const http = require('http');
const url = require('url');
const WebSocket = require('ws');
var ejsLayouts = require('express-ejs-layouts');
var path = require('path');
const app = express();

let generatePyPath = '../aether_python/rnn_play.py';
let printPyPath = '../aether_python/rnn_print.py';

const server = http.createServer(app); // Create normal http server
const wss = new WebSocket.Server({ server : server, clientTracking : true }); // Create websocket

// View engine etc.
app.use(express.static(__dirname + '/public'));
app.use(ejsLayouts);
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');

var connectedClients = [];

// serverrr
server.listen(3000, function listening() {
  console.log('Listening on %d', server.address().port);
});

// VIEW PATHS
app.get('/', function(req, res) {
  res.render('index');
});

// API PATHS

// Send a signal to all connected devices, saying which one to activate
app.get('/activateDevice', function(req, res) {
    var data = req.query.device; // The device (arduino) to activate

    console.log('Activating device %s', data);
    wss.broadcast(data); // Broadcast data to all connected devices
});

// When a new handshake is established, this event is fired
wss.on('connection', function connection(ws, req) {
  const ip = req.connection.remoteAddress;
  ws.clientIP = ip;
  console.log('New connection: %s', ws.clientIP);

  ws.isAlive = true;
  ws.on('pong', function() { // Pong messages are automatically sent in response to ping messages as required by the spec
    this.isAlive = true;
  });

  // Get incomming messages from this connection
  ws.on('message', function incoming(message) {
    console.log('Received message from %s. It says: %s', ws.clientIP, message);

    // When a client is connected, it will send its ID. Check for it and save it here!
    if(message.substring(0, 5) == 'MY_ID') {
      thisID = parseInt(message.substring(5, message.length));
      ws.clientID = thisID;

      // Add the client to the array of current connections
      connectedClients.push({id: ws.clientID, ip: ws.clientIP});
    }
  });

  ws.on('error', function(error) {
    console.log('Error!: %s', error);
  });


});

// Check if connections are alive
const interval = setInterval(function ping() {
  console.log('Client array:');
  console.log(connectedClients);
  // If no clients are connected, we don't care about checking
  if(wss.clients.size > 0) {
    console.log('Minna-san, daijoubu desu ka?');
    wss.clients.forEach(function each(ws) {
      if (ws.isAlive === false) {
        console.log('Client with IP %s and ID %s is not alive! Terminating...', ws.clientIP, ws.clientID);
        // Remove the client from array of current connections
        connectedClients = connectedClients.filter(cli => cli['id'] != ws.clientID);
        // And terminate it
        return ws.terminate();
      }
      console.log('Client %s: DOKI DOKI', ws.clientID);
      ws.isAlive = false;
      ws.ping(function(){});
    });
    console.log('');
  } else {
    console.log('No clients connected, so no ping happening');
  }
}, 5000);

// Function to broadcast to all connections
wss.broadcast = function broadcast(data) {
  wss.clients.forEach(function each(client) {
    if (client.readyState === WebSocket.OPEN) {
      client.send(data, function ack(error) {
        if(error) {
          console.log('There was an error: %s', error);
        }
      });
    }
  });
};

// Python calls
let myQuestion = 'Is there life on Mars?';
let myPlanet = 'NN-05';
function getAnswer(questionTxt, planetName) {
  console.log('Get answer')
  var spawn = require('child_process').spawn;
  var process = spawn('python3', [generatePyPath, questionTxt, planetName]);

  // Returns the generated text
  process.stdout.on('data', function (data) {
    printReceipt(questionTxt, planetName, data.toString());
  });
}

// This should be put into a /get request
getAnswer(myQuestion, myPlanet)