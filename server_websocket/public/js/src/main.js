/*
    States:
    1 = Title screen
    2 = Input question
    3 = Pick planet
    4 = Transmit and recieve
*/
var programState = 1;

// Sounds
var backgroundSound = new Audio('sounds/harddrive.mp3');
backgroundSound.loop = true;
var faxSound = new Audio('sounds/fax.mp3')
var alienNoise1 = new Audio('sounds/alienNoise1.mp3');
var errorAudio = new Audio('sounds/error.mp3');

var UPDATE_PLANETS_TIME = 15000;
var RESET_TIME = 180000;
var programInactive = false;
var terminalInterval;

var terminalCounter = 0;
var translationErrorMargin;

var chosenQuestionStarter = 0;
var chosenPlanet;
var lastSliderVal;

// Planet setup
var NO_OF_PLANETS = 8;
var planets = [];
var planetData = [
    {
        'name' : 'EM-6', // m/six
        'diameter' : 78,
        'id' : 0,
        'type' : '3RING'
    },
    {
        'name' : 'Circuitius-C', // Circuit Ciruc
        'diameter' : 102,
        'id' : 1,
        'type' : 'SPHERE'
    },
    {
        'name' : 'MDAcom-86', // Mediacom
        'diameter' : 84,
        'id' : 2,
        'type' : '2RING'
    },
    {
        'name' : 'WAVE', // Wavemakers
        'diameter' : 90,
        'id' : 3,
        'type' : 'SPHERE'
    },
    {
        'name' : 'SERAHS-M1nd', // Mindshare
        'diameter' : 103,
        'id' : 4,
        'type' : '3RING'
    },
    {
        'name' : 'JVN-CT100', // Vores egen
        'diameter' : 90,
        'id' : 5,
        'type' : 'SPHERE'
    },
    {
        'name' : 'Grp/M', // Group M
        'diameter' : 86,
        'id' : 6,
        'type' : '2RING'
    },
    {
        'name' : '1SAVR', // Uno <3
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
            stroke(173, 31, 35);

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

            fill(173, 31, 35);
            textSize(26);
            strokeWeight(2);
            text('x', this.x, 335);

            textSize(14);
            fill(255);

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
            stroke(173, 31, 35);

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
            noStroke();
            fill(255);

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
    // Update connected planets every X seconds
    setInterval(updateConnectedPlanets, UPDATE_PLANETS_TIME);

    errorAudio.load();
    backgroundSound.load();
    faxSound.load();
    alienNoise1.load();
    backgroundSound.play();

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
            changeToState2();
        } else if (programState == 2) { // Input question
            runState2(e);
        } else if (programState == 3) { // Select planet
            e.preventDefault();
            runState3(e);
        } else if (programState == 4) {
            e.preventDefault();
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

            translationErrorMargin = randomIntFromInterval(10, 35);

            var data = {
                question : $('#asking-question-container span').text(),
                planetName : planetData[i].name,
                planetId : i,
                translationErrorMargin : translationErrorMargin
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
            showPlanetNames = false;

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

    // Prepare noises for transmission
    setTimeout(function() {
        faxSound.play();
    }, 1000);
    setTimeout(function() {
        alienNoise1.play();
    }, 24000);

    var loadingBarPercent = 0;

    terminalInterval = setInterval(function() {
        $('#terminal-container').animate({
            scrollTop: $('#terminal-container').get(0).scrollHeight
        }, 200);

        if(loadingBarPercent < 100) {
            loadingBarPercent++;
            $('#loading-bar-content').width(loadingBarPercent + '%');
            $('#loading-bar-percent').text(loadingBarPercent + '%');

            if(loadingBarPercent >= 10) {
                $('#loading-bar-percent').show();
            }
        }

    }, 32000 / 100);

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

    clearInterval(terminalInterval);

    $('#loading-bar-content').width('0%');
    $('#loading-bar-percent').text('0%');
    $('#loading-bar-percent').hide();

}


/*
 * Write things in the "terminal"
 */
function runTerminalGUI() {

    if(programState != 4) return;

    var terminalStrings = [
        {
            strings: ['', 'Initiating communication ports', 'Initiating communication ports.', 'Initiating communication ports..', 'Initiating communication ports...', 'Initiating communication ports', 'Initiating communication ports.', 'Initiating communication ports..', 'Communication ports online'],
            smartBackspace: true,
            typeSpeed: 0
        },
        {
            strings: ['', 'PLEASE GAZE UPON PLANET TO MANUALLY VERIFY'],
            smartBackspace: false,
            typeSpeed: 10
        },
        {
            strings: ['', 'Calibrating antennas', 'Calibrating antennas: SUCCESS!'],
            smartBackspace: true,
            typeSpeed: 1
        },
        {
            strings: ['', 'Establishing Visual Basic GUI Interface for tracking IP addresses\n `Establishing Connection… Success!` ^200\n `Identifying remote operation system… Unix system detected`^100\n '],
            smartBackspace: false,
            typeSpeed: 0
        },
        {
            strings: ['', 'Preparing satellites...\n `Mapping satellite communication chain <1 out of 5>` ^700\n `Mapping satellite communication chain <2 out of 5>` ^500\n `Mapping satellite communication chain <3 out of 5>` ^300\n `Mapping satellite communication chain <4 out of 5>` ^200\n `Mapping satellite communication chain <5 out of 5>` ^500\n'],
            smartBackspace: false,
            typeSpeed: 0
        },
        {
            strings: ['', 'Filtering deep space noise', 'Filtering deep space noise: SUCCESS!'],
            smartBackspace: true,
            typeSpeed: 2
        },
        {
            strings: ['', '`Quantum system initialised` ^600\n `Signal strength: ' + randomIntFromInterval(70, 98) + '%` ^600\n `Current speed: 1.' + randomIntFromInterval(1, 8) + 'TB/s` ^600\n `Translation error margin: ' + translationErrorMargin + '%`'],
            smartBackspace: false,
            typeSpeed: 0
        },
        {
            strings: ['', 'TRANSMITTING: 3%', 'TRANSMITTING: 16%', 'TRANSMITTING: 47%', 'TRANSMITTING: 56%', 'TRANSMITTING: 81%', 'TRANSMITTING: COMPLETE'],
            smartBackspace: true,
            typeSpeed: 0,
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
            typeSpeed: 0
        },
        {
            strings: ['', '01100011 01101111 01100100 01100101 01100100 00100000 01100001 01101110 01100100 00100000 01100011 01110010 01100001 01100110 01110100 01100101 01100100 00100000 01100010 01111001 00100000 01100011 01101001 01110010 01100011 01110101 01101001 01110100 00100000 01100011 01101001 01110010 01110101 01100011 01110011'],
            smartBackspace: false,
            typeSpeed: 0
        },
        {
            strings: ['', 'PLEASE ACCEPT ANSWER', 'PLEASE ACCEPT ANSWER.', 'PLEASE ACCEPT ANSWER..', 'PLEASE ACCEPT ANSWER...', 'PLEASE ACCEPT ANSWER', 'PLEASE ACCEPT ANSWER.', 'PLEASE ACCEPT ANSWER..', 'PLEASE ACCEPT ANSWER...'],
            smartBackspace: true,
            typeSpeed: 20
        },
        {
            strings: ['', 'Thank you for using aether. Have a NextM day!'],
            smartBackspace: false,
            typeSpeed: 5
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

                $('#loading-bar-content').width('100%');
                $('#loading-bar-percent').text('100%');

                setTimeout(function() {
                    resetProgram();
                }, 2000);
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
            return !connectedlanetsFromAPI.some(function(o2) {
                return o1.id === o2.id;
            });
        });

        var activePlanets = planets.filter(function(o1) {
            return connectedlanetsFromAPI.some(function(o2) {
                return o1.id === o2.id;
            });
        });

        inactivePlanets.forEach(function(planet) {
            planet.removeConnectionIsActive();
        });

        activePlanets.forEach(function(planet) {
            planet.setConnectionIsActive();
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