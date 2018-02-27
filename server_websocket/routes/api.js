'use strict';
const express = require('express');
const router = express.Router();

var python = require('../services/python');
var websocket_helpers = require('../services/websocket_helpers');
var textGenService = require('../services/text_generation');
textGenService.initGenerator();

// Send a signal to all connected devices, saying which one to activate
router.post('/activateTransmission', function(req, res) {

  var question = req.body.question;
  var planetName = req.body.planetName;
  var planetId = req.body.planetId;

  // Activate Arduino planet
  websocket_helpers.broadcast(planetId); // Broadcast data to all connected devices

  // Get an answer
  textGenService.getAnswer(question, planetName).then(function(fulfilled) {
    python.printReceipt(question, planetName, fulfilled).then(function(printMessage) {
      console.log(printMessage);
      let response = {
        status : 200,
        message : printMessage
      }
      res.send(response);
    })
    .catch(function(error) {
      console.log(error);
      let response = {
        status : 500,
        message : 'There was an error in printing the text. ' + error
      }
      res.send(response);
    });
  })
  .catch(function(error) {
    console.log(error);
    let response = {
      status : 500,
      message : 'There was an error in generating the text. ' + error
    }
    res.send(response);
  });

});

module.exports = router;