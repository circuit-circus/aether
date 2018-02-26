/*
    States:
    1 = Title screen
    2 = Input question
    3 = Pick planet
    4 = Transmit and recieve
*/
var programState = 1;

// Planet setup
var NO_OF_PLANETS = 8;
var planets = [];
var planetData = [
    {
        'name' : 'JSPR92',
        'diameter' : randomIntFromInterval(70, 110)
    },
    {
        'name' : 'TX9600',
        'diameter' : randomIntFromInterval(70, 110)
    },
    {
        'name' : 'VSOVS-io 8',
        'diameter' : randomIntFromInterval(70, 110)
    },
    {
        'name' : 'NN-05',
        'diameter' : randomIntFromInterval(70, 110)
    },
    {
        'name' : 'CRCTCRCS2015x',
        'diameter' : randomIntFromInterval(70, 110)
    },
    {
        'name' : 'Navn',
        'diameter' : randomIntFromInterval(70, 110)
    },
    {
        'name' : 'Navn',
        'diameter' : randomIntFromInterval(70, 110)
    },
    {
        'name' : 'Navn',
        'diameter' : randomIntFromInterval(70, 110)
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
        planets[i] = new Planet(pos, 200, planetData[i].diameter, planetData[i].name);
    }
}

// p5 DRAW
function draw() {
    background(0);
    for(var i = 0; i < NO_OF_PLANETS; i++) {
        planets[i].display();
        if(planets[i].isActive) planets[i].activeAnimation();
    }
}

// Planet class
function Planet(xPos, yPos, dia, name) {
    this.x = xPos;
    this.y = yPos;
    this.diameter = dia;
    this.name = name;

    this.isActive = false;

    this.theta = random(PI / 10);
    this.dtheta = random(0.01, 0.1);

    // Show the planet
    this.display = function() {
        fill(0);
        stroke(255);
        strokeWeight(1);
        ellipse(this.x, this.y, this.diameter, this.diameter);

        if(showPlanetNames) {
            textAlign(CENTER);
            fill(100);
            noStroke();
            text(this.name, this.x, 300);
        }
    }

    this.setActive = function() {
        this.isActive = true;
    }
    this.removeActive = function() {
        this.isActive = false;
    }

    // Show the planet with the active animation (in State 3 = planet picker)
    this.activeAnimation = function() {
        strokeWeight(3);
        fill(255);

        this.theta += this.dtheta;
        var r = this.diameter + (this.diameter * (sin(this.theta) + 1) / 10);
        ellipse(this.x, this.y, r, r);

        if(showPlanetNames) {
            textAlign(CENTER);
            strokeWeight(1);
            text(this.name, this.x, 300);
        }
    }
}

$(document).ready(function() {

    // Check for key inputs
    $('body').on('keydown', function(e) {

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


    /*
    $('.arduino-led').on('click', function(e) {
        var target = $(this).attr('data-target');

        var data = {
            'device' : target
        }

        console.log('Clicked');
        sendToPath('get', '/activateDevice', data, function(error, response) {
            if(error) {
                console.log(error);
            } else {
                console.log(response);
            }
        });
    });
    */

});

function changeToState2() {
    programState = 2;
    $('main').attr('data-state', 2);
    $('#question-input-field').focus();
}

function changeToState3(questionStarter, questionText) {
    programState = 3;
    $('main').attr('data-state', 3);
    planets[randomIntFromInterval(1, NO_OF_PLANETS - 2)].setActive(); // pick a random planet to be active. But not the first or last, that looks ugly
    showPlanetNames = true;

    $('#asking-question-container').text(questionStarter + ' ' + questionText + '?');
}

function changeToState4(planetId) {
    programState = 4;
    $('main').attr('data-state', 4);

    var data = {
        question : $('#asking-question-container').text(),
        planetName : planetData[planetId].name
    };
    sendToPath('get', '/sendQuestion', data, function(response) {
        if(response.status === 200) {
            console.log(response.status + ': Question and planet data sent successfully.');
            console.log(response.message);
        }
        else {
            console.log(response.status + ': Question and planet data failed.');
        }
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
            $('#question-starter-rotator').animate({top: '+=50px'});
            $('#question-starter-rotator .focus').removeClass('focus').prev().addClass('focus');

        } else if (e.which == 40 || e.which == 9) { // down
            e.preventDefault();
            $('#question-starter-rotator').animate({top: '-=50px'});
            $('#question-starter-rotator .focus').removeClass('focus').next().addClass('focus');
        }

        // Enter
        if(e.which == 13) {
            var questionText = $('#question-input-field').val().trim();
            if(!questionText || 0 === questionText.length) {
                var audio = new Audio('sound/error.mp3');
                audio.play();
                $('#missing-input').show().addClass('popup-open');
                return;
            } else {
                var questionStarter = $('#question-starter-rotator .focus').text();
                changeToState3(questionStarter, questionText);
            }
        }
    } else {
        e.preventDefault();
        console.log('not one of those');
    }
}

function runState3(e) {
    e.preventDefault();
    if((e.which >= 49 && e.which <= 56)) {
        for(var i = 0; i < NO_OF_PLANETS; i++) {
            planets[i].removeActive();
        }
        var planetToActivate = e.which - 49;
        planets[planetToActivate].setActive();


    } else if (e.which == 13) {

        var chosenPlanet;
        for(var i = 0; i < NO_OF_PLANETS; i++) {
            if(planets[i].isActive) {
                console.log('Planet number %i, %s, is active', i, planets[i].name);
                chosenPlanet = i;
            }
        }
        changeToState4(chosenPlanet);
    }

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

var count = 0;

function runState4() {
    runTerminalGUI();
}

function runTerminalGUI() {

    var options = {
        strings: terminalStrings[count].strings,
        typeSpeed: 40,
        smartBackspace : terminalStrings[count].smartBackspace,
        showCursor: false,
        onComplete: (self) => {
            if(count < terminalStrings.length - 1) {
                var clone = $('.terminal-new-content').clone().removeClass('terminal-new-content').addClass('terminal-content-line');
                $('#terminal-content').append(clone);
                $('.terminal-new-content #terminal-typing').html('');

                count++;
                runTerminalGUI();
            }
        }
    }

    var typed = new Typed('.terminal-new-content #terminal-typing ', options);
}

function randomIntFromInterval(min, max) {
    return Math.floor(Math.random() * (max - min + 1) + min);
}

/**
 * send data to URL
 *
 * @param {string}      Method (get, delete, post, etc.)
 * @param {string}      Path
 * @param {object}      Data
 * @param {function}    Callback, either progress(percent) or done(error, result) if progress IS NOT defined
 * @param {function}    Callback, done(error, result) if progress IS defined
 */
function sendToPath(method, path, data, callback) {

    var options = {
        url      : path,
        type     : method,
        contentType: 'application/json',
        dataType : 'json',
        data     : data,
        success  : function (body) {
            callback(body);
        },
        error    : function (body) {
            callback(body);
        }
    };

    // If a progress callback is specified, add event listener if possible
    if (callback) {
        options.xhr = function () {
            var xhr = new window.XMLHttpRequest();
            return xhr;
        }
    }

    $.ajax(options);
}