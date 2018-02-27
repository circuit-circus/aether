'use strict';
module.exports = function(wss) {

  // When a new handshake is established, this event is fired
  wss.on('connection', function connection(ws, req) {
    const ip = req.connection.remoteAddress;
    if(ip == '::1') { // This is apparently the IP of the local connections from the browser
      ws.isLocalConnection = true;
      console.log('New browser connection');
    } else {
      ws.isLocalConnection = false;
      ws.clientIP = ip;
      console.log('New arduino connection with IP: %s', ws.clientIP);

      // Get incomming messages from this connection
      ws.on('message', function incoming(message) {
        console.log('Received message from %s. It says: %s', ws.clientIP, message);

        // When a client is connected, it will send its ID. Check for it and save it here!
        if(message.includes('MY_ID')) {
          var thisID = parseInt(message.substring(5, message.length));
          ws.clientID = thisID;

        }
      });

      // The ping pong 'are you alive' thing
      ws.isAlive = true;
      ws.on('pong', function() { // Pong messages are automatically sent in response to ping messages
        this.isAlive = true;
      });
    }

    // Handle errors
    ws.on('error', function(error) {
      console.log('Error!: %s', error);
    });

  });

  // Check if connections are alive
  const checkClientConnections = setInterval(function ping() {
    // If no clients are connected, we don't care about checking
    if(wss.clients.size > 0) {
      //console.log('Minna-san, daijoubu desu ka?');
      wss.clients.forEach(function each(ws) {
        if(ws.isLocalConnection) return; // Don't check browser connection

        if (ws.isAlive === false) {
          console.log('Client with IP %s and ID %s is not alive! Terminating...', ws.clientIP, ws.clientID);
          // Terminate it
          return ws.terminate();
        }
        console.log('Client %s: DOKI DOKI', ws.clientID);
        ws.isAlive = false;
        ws.ping(function(){});
      });
    }
  }, 5000);

};