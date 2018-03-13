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
var lastSliderVal;

// Planet setup
var NO_OF_PLANETS = 8;
var planets = [];
var planetData = [
    {
        'name' : 'EM-6',
        'diameter' : 78,
        'id' : 0,
        'type' : '3RING'
    },
    {
        'name' : 'MDAcom-86',
        'diameter' : 102,
        'id' : 1,
        'type' : 'SPHERE'
    },
    {
        'name' : 'Grp/M',
        'diameter' : 84,
        'id' : 2,
        'type' : '2RING'
    },
    {
        'name' : 'WAVE',
        'diameter' : 90,
        'id' : 3,
        'type' : 'SPHERE'
    },
    {
        'name' : 'SERAHS-M1nd',
        'diameter' : 103,
        'id' : 4,
        'type' : '3RING'
    },
    {
        'name' : 'JSPR92',
        'diameter' : 90,
        'id' : 5,
        'type' : '2RING'
    },
    {
        'name' : 'NN-05',
        'diameter' : 86,
        'id' : 6,
        'type' : 'SPHERE'
    },
    {
        'name' : 'VSOVS-io 8',
        'diameter' : 100,
        'id' : 7,
        'type' : '3RING'
    }
];

var showPlanetNames = false;
var theta = 0.5;
var dtheta = 0.08;

// p5 SETUP
function setup() {
    var myCanvas = createCanvas(1000, 400);
    myCanvas.parent('planet-container');

    fill(0);
    stroke(255);
    textFont("Noto Mono");
    textSize(14);

    for(var i = 0; i < NO_OF_PLANETS; i++) {
        var pos = i * 125 + ((125-planetData[i].diameter) / 2 + planetData[i].diameter/2);
        planets[i] = new Planet(pos, 200, planetData[i].diameter, planetData[i].name, planetData[i].id, planetData[i].type);
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
function Planet(xPos, yPos, dia, name, id, type) {
    this.x = xPos;
    this.y = yPos;
    this.diameter = dia;
    this.name = name;
    this.id = id;
    this.type = type;
    this.theta = theta;
    this.dtheta = dtheta;

    this.isConnectionActive = true; // Is there a connection to the planet

    this.hasFocus = false; // Is the planet selected in the GUI (step 3)

    // Show the planet
    this.display = function() {

        noFill();
        strokeWeight(4);

        // The user is focusing on the planet, but it is inactive
        if(this.hasFocus && !this.isConnectionActive && (programState == 3 || programState == 4)) {
            stroke(150);

            this.theta += this.dtheta;
            var r = this.diameter + (this.diameter * (sin(this.theta / 3) + 1) / 10);
            var rSphere = 20 + (20 * (sin(this.theta / 3) + 1) / 10);

            if(this.type == 'SPHERE') {
                ellipse(this.x, this.y, r, r);
                ellipse(this.x, this.y, r, rSphere);
                ellipse(this.x, this.y, rSphere, r);
            } else if(this.type == '2RING') {
                ellipse(this.x, this.y, r, r);
                ellipse(this.x, this.y, r - 30, r - 30);
            } else if(this.type == '3RING') {
                ellipse(this.x, this.y, r, r);
                ellipse(this.x, this.y, r - 25, r - 25);
                ellipse(this.x, this.y, r - 50, r - 50);
            } else {
                ellipse(this.x, this.y, r, r);
            }

        // The user is focusing on the planet and it's good
        } else if(this.hasFocus && (programState == 3 || programState == 4)) {
            stroke(255);

            this.theta += this.dtheta;
            var r = this.diameter + (this.diameter * (sin(this.theta) + 1) / 10);
            var rSphere = 20 + (20 * (sin(this.theta) + 1) / 10);

            if(this.type == 'SPHERE') {
                ellipse(this.x, this.y, r, r);
                ellipse(this.x, this.y, r, rSphere);
                ellipse(this.x, this.y, rSphere, r);
            } else if(this.type == '2RING') {
                ellipse(this.x, this.y, r, r);
                ellipse(this.x, this.y, r - 30, r - 30);
            } else if(this.type == '3RING') {
                ellipse(this.x, this.y, r, r);
                ellipse(this.x, this.y, r - 25, r - 25);
                ellipse(this.x, this.y, r - 50, r - 50);
            } else {
                ellipse(this.x, this.y, r, r);
            }

        // The planet is not active (and no focus on it)
        } else if (!this.isConnectionActive) {
            stroke(150);

            if(this.type == 'SPHERE') {
                ellipse(this.x, this.y, this.diameter, this.diameter);
                ellipse(this.x, this.y, this.diameter, 20);
                ellipse(this.x, this.y, 20, this.diameter);
            } else if(this.type == '2RING') {
                ellipse(this.x, this.y, this.diameter, this.diameter);
                ellipse(this.x, this.y, this.diameter - 30, this.diameter - 30);
            } else if(this.type == '3RING') {
                ellipse(this.x, this.y, this.diameter, this.diameter);
                ellipse(this.x, this.y, this.diameter - 25, this.diameter - 25);
                ellipse(this.x, this.y, this.diameter - 50, this.diameter - 50);
            } else {
                ellipse(this.x, this.y, this.diameter, this.diameter);
            }

        // The planet active (and no focus on it)
        } else {
            stroke(255);

            if(this.type == 'SPHERE') {
                ellipse(this.x, this.y, this.diameter, this.diameter);
                ellipse(this.x, this.y, this.diameter, 20);
                ellipse(this.x, this.y, 20, this.diameter);
            } else if(this.type == '2RING') {
                ellipse(this.x, this.y, this.diameter, this.diameter);
                ellipse(this.x, this.y, this.diameter - 30, this.diameter - 30);
            } else if(this.type == '3RING') {
                ellipse(this.x, this.y, this.diameter, this.diameter);
                ellipse(this.x, this.y, this.diameter - 25, this.diameter - 25);
                ellipse(this.x, this.y, this.diameter - 50, this.diameter - 50);
            } else {
                ellipse(this.x, this.y, this.diameter, this.diameter);
            }
        }

        if(showPlanetNames) {
            textAlign(CENTER);
            fill(255);
            noStroke();

            if(!this.isConnectionActive) {
                fill(150);
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
        lastSliderVal = chosenPlanet;
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

/*
 * Change to a specific program state
 */
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

/*
 * Change to program state 2
 */
function changeToState2() {
    programState = 2;
    $('main').attr('data-state', 2);
    $('#question-input-field').focus();
}

/*
 * Change to program state 3
 */
function changeToState3() {
    var questionText = $('#question-input-field').val().trim();

    if(!questionText || 0 === questionText.length) {
        errorAudio.play();
        $('#missing-input').show().addClass('popup-open');
        return;
    }

    // If we have detected a sliderval in this session, use it to choose a planet
    if(lastSliderVal !== undefined) {
        planets[lastSliderVal].setFocus();
    } else {
        // Get random planet, if no sliderval has been detected yet (usually on first runthrough)
        chosenPlanet = Math.floor(Math.random() * Math.floor(planets.length));
        planets[chosenPlanet].setFocus();
    }

    var questionStarter = $('#question-starter-rotator .focus').text();
    $('#asking-question-container span').text(questionStarter + ' ' + questionText + '?');

    programState = 3;
    $('main').attr('data-state', 3);
    showPlanetNames = true;
}

/*
 * Change to program state 4
 */
function changeToState4() {

    for(var i = 0; i < NO_OF_PLANETS; i++) {
        if(planets[i].hasFocus) {
            if(!planets[i].isConnectionActive) {
                // TODO: Change the error message (make array and select random)
                errorAudio.play();
                $('#unavailable-planet').show().addClass('popup-open');
                return;
            }

            var data = {
                question : $('#asking-question-container span').text(),
                planetName : planetData[i].name,
                planetId : i
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

            programState = 4;
            $('main').attr('data-state', 4);

            setTimeout(function() {
                runState4();
            }, 1000);

            return;
        }
    }
}

/*
 * Run program state 2
 */
function runState2(e) {
    // Check for accepted keys
    if (([8, 9, 13, 16, 32, 37, 38, 39, 40, 186, 222, 219, 189].indexOf(e.which) > -1) || // backspace, tab, enter, shift, space, arrow keys, æøå, dash
        (e.which >= 48 && e.which <= 57) || // numbers
        (e.which >= 65 && e.which <= 90) ) { // letters

        // Navigate in question starts
        if(e.which == 38 && chosenQuestionStarter > 0) { // up
            e.preventDefault();
            chosenQuestionStarter--;
            scrollToQuestion(chosenQuestionStarter);

        } else if ((e.which == 40 || e.which == 9) && chosenQuestionStarter < 7) { // down or tab
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

/*
 * Run program state 3
 */
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

/*
 * Run program state 4
 */
function runState4() {
    programInactive = false;
    runTerminalGUI();
}

/*
 * Reset the program timer (so whenever there has been activity, the 'countdown' starts over)
 */
function resetProgramTimer() {
    if((programState != 1 || programState != 4) && programInactive) {
        resetProgram();
        programInactive = false;
        return;
    }
    programInactive = true;
}

/*
 * Reset program and start in state 2
 */
function resetProgram() {

    updateConnectedPlanets();

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


/*
 * Write things in the "terminal"
 */
function runTerminalGUI() {

    setInterval(function() {
        $('#terminal-container').animate({
            scrollTop: $('#terminal-container').get(0).scrollHeight
        }, 200);
    },200);

    if(programState != 4) return;

    var terminalStrings = [
        {
            strings: ['', 'Initiating communication ports', 'Initiating communication ports.', 'Initiating communication ports..', 'Initiating communication ports...', 'Initiating communication ports', 'Initiating communication ports.', 'Initiating communication ports..', 'Communication ports online'],
            smartBackspace: true,
            typeSpeed: 10
        },
        {
            strings: ['', 'Calibrating antennas', 'Calibrating antennas: SUCCESS!'],
            smartBackspace: true,
            typeSpeed: 20
        },
        {
            strings: ['', 'Establishing Visual Basic GUI Interface for tracking IP addresses\n `Establishing Connection… Success!` ^500\n `Identifying remote operation system… Unix system detected`^1000\n '],
            smartBackspace: false,
            typeSpeed: 20
        },
        {
            strings: ['', 'Preparing satellites...\n `Mapping satellite communication chain <1 out of 5>` ^600\n `Mapping satellite communication chain <2 out of 5>` ^1000\n `Mapping satellite communication chain <3 out of 5>` ^300\n `Mapping satellite communication chain <4 out of 5>` ^200\n `Mapping satellite communication chain <5 out of 5>` ^1000\n'],
            smartBackspace: false,
            typeSpeed: 10
        },
        {
            strings: ['', 'Filtering deep space noise', 'Filtering deep space noise: SUCCESS!'],
            smartBackspace: true,
            typeSpeed: 5
        },
        {
            strings: ['', '`Quantum system initialised` ^600\n `Signal strength: ' + randomIntFromInterval(70, 98) + '%` ^600\n `Current speed: 1.' + randomIntFromInterval(1, 8) + 'TB/s` ^600\n `Translation error margin: ' + randomIntFromInterval(10, 35) + '%`'],
            smartBackspace: false,
            typeSpeed: 20
        },
        {
            strings: ['', 'TRANSMITTING: 3%', 'TRANSMITTING: 16%', 'TRANSMITTING: 47%', 'TRANSMITTING: 56%', 'TRANSMITTING: 81%', 'TRANSMITTING: COMPLETE'],
            smartBackspace: true,
            typeSpeed: 5,
            attr: 'test'
        },
        {
            strings: ['', 'Awaiting response...'],
            smartBackspace: false,
            typeSpeed: 20
        },
        {
            strings: ['', 'Extraterrestrial communication intercepted!'],
            smartBackspace: false,
            typeSpeed: 20
        },
        {
            strings: ['', '01100011 01101111 01100100 01100101 01100100 00100000 01100001 01101110 01100100 00100000 01100011 01110010 01100001 01100110 01110100 01100101 01100100 00100000 01100010 01111001 00100000 01100011 01101001 01110010 01100011 01110101 01101001 01110100 00100000 01100011 01101001 01110010 01110101 01100011 01110011'],
            smartBackspace: false,
            typeSpeed: 1
        },
        {
            strings: ['', 'PRINTING TRANSLATION. PLEASE ACCEPT ANSWER.'],
            smartBackspace: false,
            typeSpeed: 20
        },
        {
            strings: ['', 'System rebooting in: 5', 'System rebooting in: 4', 'System rebooting in: 3', 'System rebooting in: 2', 'System rebooting in: 1'],
            smartBackspace: true,
            typeSpeed: 20
        }
    ];

    var options = {
        strings: terminalStrings[terminalCounter].strings,
        typeSpeed: terminalStrings[terminalCounter].typeSpeed,
        smartBackspace : terminalStrings[terminalCounter].smartBackspace,
        showCursor: false,
        preStringTyped: (number, self) => {
            console.log(self);
        },
        onComplete: (self) => {
            if(terminalCounter < terminalStrings.length - 1) {
                var clone = $('.terminal-new-content').clone().removeClass('terminal-new-content').addClass('terminal-content-line');
                $('#terminal-content').append(clone);
                $('.terminal-new-content #terminal-typing').html('');

                terminalCounter++;
                runTerminalGUI();
            }
            else {
                setTimeout(function() {
                    resetProgram();
                }, 1000);
            }
        }
    }

    var typed = new Typed('.terminal-new-content #terminal-typing ', options);
}

/*
 * Update which plantes are connected.
 * Is called once in the beginning of the program and then everytime the program is reset
 */
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

/*
 * Scroll to a question starter
 * Can be initialized both by pressing up/down or by the TUI
 */
function scrollToQuestion(scrollTo) {
    if(programState != 2) return;

    var targetPos = -(50 * scrollTo);
    $('#question-starter-rotator').css({top: targetPos + 'px'});

    $('#question-starter-rotator .focus').removeClass('focus');
    $('#question-starter-rotator span:nth-of-type(' + (parseInt(scrollTo) + 1) + ')').addClass('focus');
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