'use strict';

const fs = require('fs');

function saveData(json) {
  return new Promise(function(resolve, reject) {
    fs.readFile('../analytics/data.json', 'utf8', (err, data) => {
      if (err) {
        reject(err);
      }
      else {
        console.log(JSON.parse(data)[0]);
        resolve(JSON.parse(data));
      }
    });
  });
}

saveData([]);

module.exports = {
  saveData
}
