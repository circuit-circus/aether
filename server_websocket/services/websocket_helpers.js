const WebSocket = require('ws');
var wss;

// Create the websocket server
function createWebsocketServer(server) {
  wss = new WebSocket.Server({ server : server, clientTracking : true, port: 8080 }); // Create WebSocket
  return wss;
}

// Get an array with currently connected arduino clients.
// TODO: Make it a promise
function getConnectedArduinoClients() {
  var connectedArduinoClients = [];
  if(wss.clients.size > 0) {
      wss.clients.forEach(function each(ws) {

        if(ws.isLocalConnection) return; // Don't include browser connection

        connectedArduinoClients.push({'id': parseInt(ws.clientID), 'ip': ws.clientIP});
      });
    }

    var testArduinos = [
      {
        'id': 1,
        'ip': 'ip1'
      },
      {
        'id': 2,
        'ip': 'ip2'
      },
      {
        'id': 3,
        'ip': 'ip3'
      },
      {
        'id': 4,
        'ip': 'ip4'
      }
    ];

    return testArduinos;
    //return connectedArduinoClients;
}

// Broadcast a message to all connections
function broadcast(data) {
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

function sendToGUI(data) {
  console.log(data);

  wss.clients.forEach(function each(client) {
    if (client.readyState === WebSocket.OPEN && client.isLocalConnection == true) {
      client.send(data, function ack(error) {
        if(error) {
          console.log('There was an error: %s', error);
        }
      });
    }
  });
}

module.exports = {
  createWebsocketServer,
  broadcast,
  getConnectedArduinoClients,
  sendToGUI
};