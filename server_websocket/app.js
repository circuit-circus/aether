const express = require('express');
const http = require('http');
const url = require('url');
var ejsLayouts = require('express-ejs-layouts');
var path = require('path');
var bodyParser = require('body-parser');
const app = express();
const server = http.createServer(app); // Create normal http server

// View engine etc.
app.use(express.static(__dirname + '/public'));
app.use(ejsLayouts);
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');

app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());

// Routes
var viewRoutes = require('./routes/views');
var apiRoutes = require('./routes/api');
app.use('/', viewRoutes);
app.use('/api', apiRoutes);

// Socket service
var websocketHelpers = require('./services/websocket_helpers');
const webSocketServer = websocketHelpers.createWebsocketServer(app);
var websocketService = require('./services/websocket');
websocketService(webSocketServer);

// Serial connection with Arduino
var serialConnection = require('./services/serial');
serialConnection();

// serverrr
server.listen(3000, function listening() {
  console.log('Listening on %d', server.address().port);
});