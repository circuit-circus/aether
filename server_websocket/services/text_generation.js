const fs = require('fs');
const path = require('path');
const Text = require('markov-chains-text').default;

let dataTxt;
const dataDir = path.join(__dirname, '../data');
let dataPaths;
const opts = {tries : 100};
let textGenerator;

let firstSumUp = [
  "Hmm,", "Okay,", "Okay, so", "So", "In other words:", "To sum up:", "However", "To answer your question:", "All in all, good question -", "Where was I? Oh right -", 
  "Ahem,", "Thanks for bringing this issue up -", "If that doesn't help,",
];

let secondSumUp = [
  "one would think that means", "it's certain", "maybe", 
  "it's hard to say if", "our planet agrees", "the intergalactic federation says", "we have come to the conclusion", "our council has spoken, and", 
  "according to intergalatic space law", "judging by the nature of your question", "at best", "to lower any potential risks", "the movements in the market tells us", 
  "in the experiences of early space explorers", "in the teachings of the deep space evangelists", "keep in mind", "history tells us", "you should know",
  "experiences throughout the aeons tells us"
];

let thirdSumUp = [
  "that means it's", "chances are that it's", "that it's", "we call it", "we let it slide as", "it's almost", "it's always", "it's never", "there is a good chance that's", 
  "one can count on it being", "it can't be dismissed as", "we all agree it's"
];

let fourthSumUp = [
  "a yes", "a no", "a maybe", "not to be answered, without controversy", "impossible to say at this point", "not plausible", "not to be counted on", "certain", 
  "imminent", "inevitable", "too absurd to be a no", "too absurd to be a yes", "universally agreed upon", "a no, beyond a doubt", "a yes, beyond a doubt", 
  "impossible, unless Elon says otherwise", "unheard of, unless we market it otherwise", 
];

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
      if(questionTxt === 'What is') {
        sentence += " " + getSumUp();
      }
    	resolve(sentence);
    }
    else {
      reject(Error('Text generator was not initialized before use'));
    }
  });
}

function getSumUp() {
  let sumUp = "\n";

  let first = firstSumUp[Math.floor(Math.random() * Math.floor(firstSumUp.length - 1))];
  let second = secondSumUp[Math.floor(Math.random() * Math.floor(firstSumUp.length - 1))];
  let third = thirdSumUp[Math.floor(Math.random() * Math.floor(firstSumUp.length - 1))];
  let fourth = fourthSumUp[Math.floor(Math.random() * Math.floor(firstSumUp.length - 1))];

  sumUp += first + " " + second + " " + third + " " + fourth + ".";

  return sumUp;
}

module.exports = {
  initGenerator,
  getAnswer
};