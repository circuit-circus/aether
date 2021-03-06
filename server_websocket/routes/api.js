'use strict';
const express = require('express');
const router = express.Router();

var python = require('../services/python');
var websocket_helpers = require('../services/websocket_helpers');
var textGenService = require('../services/text_generation');
textGenService.initGenerator();
var analytics = require('../services/analytics');

// Get currently connected ardunos
router.get('/currentArduinoClients', function(req, res) {
  var currentConnections = websocket_helpers.getConnectedArduinoClients();

  let response = {
    status: 200,
    message: currentConnections
  }
  res.send(response);
});

// Send a signal to all connected devices, saying which one to activate
router.post('/activateTransmission', function(req, res) {

  var question = req.body.question;
  var planetName = req.body.planetName;
  var planetId = req.body.planetId;
  var errorMargin = req.body.translationErrorMargin;

  // Activate Arduino planet
  websocket_helpers.broadcast(planetId); // Broadcast data to all connected devices

  // Get an answer
  textGenService.getAnswer(question, planetName).then(function(fulfilled) {
    let date = new Date();

    let analyticsData = {
      "timestamp" : date.toISOString().replace(/T/, ' ').replace(/\..+/, ''), // Source: https://stackoverflow.com/questions/10645994/node-js-how-to-format-a-date-string-in-utc
      "questionTxt" : question,
      "planetName" : planetName,
      "questionAnswer" : fulfilled
    }

    analytics.saveData(analyticsData).then(function(analyticsMsg) {
      console.log(analyticsMsg);
    })
    .catch(function(error) {
      console.log('There was an error in updating analytics. ' + error);
    });

    python.printReceipt(question, planetName, fulfilled, errorMargin).then(function(printMessage) {
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