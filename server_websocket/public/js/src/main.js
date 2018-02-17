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
    planets[randomIntFromInterval(1, NO_OF_PLANETS - 1)].setActive(); // pick a random planet to be active. But not the first or last, that looks ugly
    showPlanetNames = true;

    $('#asking-question-container').text(questionStarter + ' ' + questionText + '?');
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
    }
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