'use strict';
const express = require('express');
const router = express.Router();

var python = require('../services/python');
var websocket_helpers = require('../services/websocket_helpers');

// Send a signal to all connected devices, saying which one to activate
router.post('/activateTransmission', function(req, res) {

  var question = req.body.question;
  var planetName = req.body.planetName;
  var planetId = req.body.planetId;

  // Activate Arduino planet
  websocket_helpers.broadcast(planetId); // Broadcast data to all connected devices

  // Get an answer
  python.getAnswer(question, planetName).then(function(fulfilled) {
    let response = {
      status : 200,
      message : fulfilled
    }
    res.send(response);
  })
  .catch(function(error) {
    console.log(error);
    let response = {
      status : 500,
      message : 'There was an error in generating the text. Error: ' + error
    }
    res.send(response);
  });

});

module.exports = router;