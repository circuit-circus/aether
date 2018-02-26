'use strict';
module.exports = function(wss) {

  var connectedClients = [];

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
  const checkClientConnections = setInterval(function ping() {
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
    }
  }, 5000);

};