/*
    States:
    1 = Title screen
    2 = Input question
    3 = Pick planet
    4 = Transmit and recieve
*/
var programState = 1;
var errorAudio = new Audio('sound/error.mp3');


var RESET_TIME = 60000;
var programInactive = false;

var terminalCounter = 0;

var chosenQuestionStarter = 0;
var chosenPlanet;

// Planet setup
var NO_OF_PLANETS = 8;
var planets = [];
var planetData = [
    {
        'name' : 'JSPR92',
        'diameter' : randomIntFromInterval(70, 110),
        'id' : 0
    },
    {
        'name' : 'TX9600',
        'diameter' : randomIntFromInterval(70, 110),
        'id' : 1
    },
    {
        'name' : 'VSOVS-io 8',
        'diameter' : randomIntFromInterval(70, 110),
        'id' : 2
    },
    {
        'name' : 'NN-05',
        'diameter' : randomIntFromInterval(70, 110),
        'id' : 3
    },
    {
        'name' : 'CRCTCRCS2015x',
        'diameter' : randomIntFromInterval(70, 110),
        'id' : 4
    },
    {
        'name' : 'Mediacom',
        'diameter' : randomIntFromInterval(70, 110),
        'id' : 5
    },
    {
        'name' : 'GroupM',
        'diameter' : randomIntFromInterval(70, 110),
        'id' : 6
    },
    {
        'name' : 'm6',
        'diameter' : randomIntFromInterval(70, 110),
        'id' : 7
    }
];

var showPlanetNames = false;

// p5 SETUP
function setup() {
    var myCanvas = createCanvas(1000, 400);
    myCanvas.parent('planet-container');

    fill(0);
    stroke(255);
    textFont("Noto Mono");

    for(var i = 0; i < NO_OF_PLANETS; i++) {
        var pos = i * 125 + ((125-planetData[i].diameter) / 2 + planetData[i].diameter/2);
        planets[i] = new Planet(pos, 200, planetData[i].diameter, planetData[i].name, planetData[i].id);
    }

    updateConnectedPlanets();

}

// p5 DRAW
function draw() {
    background(0);
    planets.forEach(function(planet) {
        planet.display();
    });
}

// Planet class
function Planet(xPos, yPos, dia, name, id) {
    this.x = xPos;
    this.y = yPos;
    this.diameter = dia;
    this.name = name;
    this.id = id;

    this.isConnectionActive = true; // Is there a connection to the planet

    this.hasFocus = false; // Is the planet selected in the GUI (step 3)

    this.theta = random(PI / 10);
    this.dtheta = random(0.01, 0.1);

    // Show the planet
    this.display = function() {

        if(this.hasFocus && !this.isConnectionActive) {
            strokeWeight(2);
            stroke(100);
            fill(100);
            ellipse(this.x, this.y, this.diameter, this.diameter);

        } else if(this.hasFocus) {
            strokeWeight(3);
            stroke(255);
            fill(255);

            this.theta += this.dtheta;
            var r = this.diameter + (this.diameter * (sin(this.theta) + 1) / 10);
            ellipse(this.x, this.y, r, r);

        } else if (!this.isConnectionActive) {
            strokeWeight(2);
            fill(0);
            stroke(100);
            ellipse(this.x, this.y, this.diameter, this.diameter);

        } else {
            strokeWeight(2);
            fill(0);
            stroke(255);
            ellipse(this.x, this.y, this.diameter, this.diameter);
        }

        if(showPlanetNames) {
            textAlign(CENTER);
            fill(255);
            noStroke();

            if(!this.isConnectionActive) {
                fill(100);
                text('Unavailable', this.x, 325);
            }

            text(this.name, this.x, 300);

        }
    }

    this.setConnectionIsActive = function() {
        this.isConnectionActive = true;
    }
    this.removeConnectionIsActive = function() {
        this.isConnectionActive = false;
    }

    this.setFocus = function() {
        this.hasFocus = true;
    }
    this.removeFocus = function() {
        this.hasFocus = false;
    }
}

$(document).ready(function() {

    // Open websocket connection
    window.WebSocket = window.WebSocket || window.MozWebSocket;
    var connection = new WebSocket('ws://localhost:8080');

    // Handle incomming websocket messages
    connection.onmessage = function (event) {
      var websocket_data = event.data;

      console.log(websocket_data);

      if(websocket_data.includes('QUESTION')) {
        chosenQuestionStarter = websocket_data.substring(websocket_data.indexOf(' '), websocket_data.length).trim();
        scrollToQuestion(chosenQuestionStarter);

      } else if(websocket_data.includes('PLANET')) {
        chosenPlanet = websocket_data.substring(websocket_data.indexOf(' '), websocket_data.length).trim();
        for(var i = 0; i < NO_OF_PLANETS; i++) {
            planets[i].removeFocus();
        }
        planets[chosenPlanet].setFocus();

      } else if(websocket_data.includes('BUTTON')) {
        var buttonType = websocket_data.substring(websocket_data.indexOf(' '), websocket_data.length).trim();

        if(buttonType == 'BACK') {
            resetProgram();
        } else if(buttonType == 'CONTINUE') {
            if(programState < 4) changeState(programState + 1);

        } else if(buttonType == 'TRANSMIT') {
            // If we're in state 3 that's cool, else tell user not to push this yet
            if(programState == 3) {
                changeToState4();
            } else {
                errorAudio.play();
                $('#transmission-not-ready').show().addClass('popup-open');
            }
        }
      }

    }

    // Check for program inactivity every X seconds
    setInterval(resetProgramTimer, RESET_TIME);


    // Check for key inputs
    $('body').on('keydown', function(e) {

        programInactive = false;

        if($('.popup-container').hasClass('popup-open')) {
            e.preventDefault();
            $('.popup-container.popup-open').hide().removeClass('popup-open');
            return;
        }

        if(programState == 1) { // Title screen
            e.preventDefault();
            changeToState2(e);
        } else if (programState == 2) { // Input question
            runState2(e);
        } else if (programState == 3) { // Select planet
            runState3(e);
        }
    });
});

function changeState(newState) {
    switch(newState) {
        case 1:
            resetProgram();
            break;
        case 2:
            changeToState2();
            break;
        case 3:
            changeToState3();
            break;
        case 4:
            changeToState4();
            break;
    }
}

function changeToState2() {
    programState = 2;
    $('main').attr('data-state', 2);
    $('#question-input-field').focus();
}

function changeToState3() {
    var questionText = $('#question-input-field').val().trim();

    if(!questionText || 0 === questionText.length) {
        errorAudio.play();
        $('#missing-input').show().addClass('popup-open');
        return;
    }

    var questionStarter = $('#question-starter-rotator .focus').text();
    $('#asking-question-container').text(questionStarter + ' ' + questionText + '?');

    programState = 3;
    $('main').attr('data-state', 3);
    planets[randomIntFromInterval(1, NO_OF_PLANETS - 2)].setFocus(); // pick a random planet to be active. But not the first or last, that looks ugly
    showPlanetNames = true;
}

function changeToState4() {

    programState = 4;
    $('main').attr('data-state', 4);

    var planetId;
    for(var i = 0; i < NO_OF_PLANETS; i++) {
        if(planets[i].hasFocus) {
            if(!planets[i].isConnectionActive) {
                // TODO: Change the error message (make array and select random)
                errorAudio.play();
                $('#unavailable-planet').show().addClass('popup-open');
                return;
            }

            planetId = i;
        }
    }

    var data = {
        question : $('#asking-question-container').text(),
        planetName : planetData[planetId].name,
        planetId : planetId
    };

    fetch('/api/activateTransmission', {
        method: 'post',
        headers: {
            'Accept': 'application/json',
            'Content-Type': 'application/json'
        },
        body: JSON.stringify(data)
    })
    .then(req_status)
    .then(req_json)
    .then(function(data) {
        console.log('Request succeeded with JSON response', data);
    }).catch(function(error) {
        console.log('Request failed', error);
    });

    setTimeout(function() {
        runState4();
    }, 1000);
}

function runState2(e) {
    // Check for accepted keys
    if (([8, 9, 13, 16, 32, 37, 38, 39, 40, 186, 222, 219, 189].indexOf(e.which) > -1) || // backspace, tab, enter, shift, space, arrow keys, æøå, dash
        (e.which >= 48 && e.which <= 57) || // numbers
        (e.which >= 65 && e.which <= 90) ) { // letters

        // Navigate in question starts
        if(e.which == 38) { // up
            e.preventDefault();
            chosenQuestionStarter--;
            scrollToQuestion(chosenQuestionStarter);

        } else if (e.which == 40 || e.which == 9) { // down
            e.preventDefault();
            chosenQuestionStarter++
            scrollToQuestion(chosenQuestionStarter);
        }

        // Enter
        if(e.which == 13) {
            changeToState3();
        }
    } else {
        e.preventDefault();
    }
}

function runState3(e) {
    e.preventDefault();
    if((e.which >= 49 && e.which <= 56)) {
        for(var i = 0; i < NO_OF_PLANETS; i++) {
            planets[i].removeFocus();
        }
        chosenPlanet = e.which - 49;
        planets[chosenPlanet].setFocus();


    } else if (e.which == 13) {
        changeToState4();
    }
}

function runState4() {
    runTerminalGUI();
}

function resetProgram() {
    programState = 1;
    showPlanetNames = false;
    for(var i = 0; i < NO_OF_PLANETS; i++) {
        planets[i].removeFocus();
    }
    terminalCounter = 0;
    $('#question-input-field').val('');
    $('#terminal-content').html('');
    $('.terminal-new-content #terminal-typing').html('');
    $('main').attr('data-state', 1);
}

var terminalStrings = [
    {
        strings: ['', 'Loading', 'Loading.', 'Loading..', 'Loading...', 'Loading', 'Loading.', 'Loading..', 'Loading...', 'Loading complete'],
        smartBackspace: true,
        typeSpeed: 200
    },
    {
        strings: ['', 'Initializing transmission'],
        smartBackspace: false,
        typeSpeed: 40
    },
    {
        strings: ['', 'npm install^1000\n `installing components...` ^1000\n `Fetching from source...`'],
        smartBackspace: false,
        typeSpeed: 40
    },
    {
        strings: ['', 'Transmission COMPLETE'],
        smartBackspace: false,
        typeSpeed: 40
    },
    {
        strings: ['', '.', '..', '...'],
        smartBackspace: true,
        typeSpeed: 40
    }
];


function runTerminalGUI() {

    if(programState != 4) return;

    var options = {
        strings: terminalStrings[terminalCounter].strings,
        typeSpeed: 40,
        smartBackspace : terminalStrings[terminalCounter].smartBackspace,
        showCursor: false,
        onComplete: (self) => {
            if(terminalCounter < terminalStrings.length - 1) {
                var clone = $('.terminal-new-content').clone().removeClass('terminal-new-content').addClass('terminal-content-line');
                $('#terminal-content').append(clone);
                $('.terminal-new-content #terminal-typing').html('');

                terminalCounter++;
                runTerminalGUI();
            }
        }
    }

    var typed = new Typed('.terminal-new-content #terminal-typing ', options);
}


function updateConnectedPlanets() {
    fetch('/api/currentArduinoClients')
    .then(req_status)
    .then(req_json)
    .then(function(data) {
        console.log('Request succeeded with JSON response', data);

        var connectedlanetsFromAPI = data.message;

        var props = ['id'];
        var inactivePlanets = planets.filter(function(o1) {
            // filter out (!) items in result2
            return !connectedlanetsFromAPI.some(function(o2) {
                return o1.id === o2.id; // assumes unique id
            });
        });

        inactivePlanets.forEach(function(inactivePlanet) {
            inactivePlanet.removeConnectionIsActive();
        });


    }).catch(function(error) {
        console.log('Request failed', error);
    });
}

function scrollToQuestion(scrollTo) {

    var targetPos = -(50 * scrollTo);
    $('#question-starter-rotator').animate({top: targetPos + 'px'}, '200');

    $('#question-starter-rotator .focus').removeClass('focus');
    $('#question-starter-rotator span:nth-of-type(' + (parseInt(scrollTo) + 1) + ')').addClass('focus');
}

function resetProgramTimer() {
    if((programState != 1 || programState != 4) && programInactive) {
        resetProgram();
        programInactive = false;
        return;
    }
    programInactive = true;
}

function randomIntFromInterval(min, max) {
    return Math.floor(Math.random() * (max - min + 1) + min);
}


function req_status(response) {
    if (response.status >= 200 && response.status < 300) {
        return Promise.resolve(response)
    } else {
        return Promise.reject(new Error(response.statusText))
    }
}

function req_json(response) {
    return response.json();
}