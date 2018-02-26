const WebSocket = require('ws');
var wss;

// Create the websocket server
function createWebsocketServer(server) {
  wss = new WebSocket.Server({ server : server, clientTracking : true }); // Create WebSocket
  return wss;
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

module.exports = {
  createWebsocketServer,
  broadcast
};