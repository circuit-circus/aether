# aether 🚀 ✨

Code for aether installation by Circuit Circus
This code is divied into a _server_ and an _arduino_ part.

The server manages the interface, and can broadcast messages to all connected arduino (MKR1000) clients. The arduinos themselves keep track of whether the message was directed at them, or should be ignored.

### Server
The server runs on Node.js and creates a websocket for communicating with the arduinos. Furthermore, it manages the interface that users will interact with.

It uses the _ws_ module for the socket, _express_ for routing etc. and _ejs_ as the view engine.

To install, go to the server_websocket directory and run ```npm install ```. 
Then you can run ```npm start``` and the server will be running. Navigate to ```localhost:3000``` to see the frontend.


### Arduino
Each Arduino (MKR1000) connects to the websocket on the server. They each have an ID and will use this to determine whether or not a signal broadcasted by the server is directed at them. 

The ```config.h``` file with wifi information is ignored and should be maintained locally. 

