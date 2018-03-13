const fs = require('fs');
const path = require('path');
const Text = require('markov-chains-text').default;

let dataTxt;
const dataDir = path.join(__dirname, '../data');
let dataPaths;
const opts = {tries : 100};
let textGenerator;

function initGenerator() {
	dataTxt = '';
	dataPaths = [];

	// collate data
	fs.readdirSync(dataDir).forEach(file => {
		dataPaths.push(file);
	})
	for(let datPath of dataPaths) {
		dataTxt += fs.readFileSync(path.join(dataDir, datPath), 'utf8');
	}

	// build the generator
	textGenerator = new Text(dataTxt, opts);
}

function getAnswer(questionTxt, planetName) {
  console.log('Getting answer for this: ' + questionTxt + ' | ' + planetName);
  return new Promise(function(resolve, reject) {
    if(textGenerator !== undefined) {
    	let sentence = textGenerator.makeSentence();
      while(sentence.length < 100) {
        sentence += ' ' + textGenerator.makeSentence();
      }
    	console.log('Generated this answer: ' + sentence);
    	resolve(sentence);
    }
    else {
      reject(Error('Text generator was not initialized before use'));
    }
  });
}

module.exports = {
  initGenerator,
  getAnswer
};