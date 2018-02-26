'use strict';
const express = require('express');
const router = express.Router();

  // VIEW PATHS
router.get('/', function(req, res) {
  res.render('index');
});

module.exports = router;