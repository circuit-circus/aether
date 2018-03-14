'use strict';

const fs = require('fs');
const dataLoc = __dirname + '/../analytics/data.json';

function saveData(json) {
  return new Promise(function(resolve, reject) {
    fs.readFile(dataLoc, 'utf8', (err, data) => {
      if (err) {
        reject(err);
      }
      else {
        data = JSON.parse(data);
        data.push(json);
        fs.writeFile(dataLoc, JSON.stringify(data), (err) => {
          if (err) {
            reject(err);
          }
          else {
            resolve("Data written successfully");
          }
        });
      }
    });
  });
}

module.exports = {
  saveData
}
