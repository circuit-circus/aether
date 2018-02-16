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
]

/*
    States:
    1 = Title screen
    2 = Input question
    3 = Pick planet
    4 = Transmit and recieve
*/
var programState = 1;

var showPlanetNames = false;
var activeDiameterModifier = 0;

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

function draw() {
    background(0);
    for(var i = 0; i < NO_OF_PLANETS; i++) {
        planets[i].display();
        if(planets[i].isActive) planets[i].activeAnimation();
    }
}

function Planet(xPos, yPos, dia, name) {
    this.x = xPos;
    this.y = yPos;
    this.diameter = dia;
    this.name = name;

    this.isActive = false;

    this.theta = random(PI / 10);
    this.dtheta = random(0.01, 0.1);

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

    $('button').on('click', function() {
        $('#planet-container').toggleClass('active');
    });

    // Check for key inputs
    $('body').on('keydown', function(e) {
        //console.log(e.which);

        if(programState == 1) { // Title screen
            e.preventDefault();
            $('main').attr('data-state', 2);
            $('#question-input-field').focus();
            programState = 2;

        } else if (programState == 2) { // Input question

            // Check for accepted keys
            if (([8, 9, 13, 16, 32, 37, 38, 39, 40, 186, 222, 219, 189].indexOf(e.which) > -1) || // backspace, tab, enter, shift, space, arrow keys, æøå, dash
                (e.which >= 48 && e.which <= 57) || // numbers
                (e.which >= 65 && e.which <= 90) ) { // letters

                // Navigate in question starts
                if(e.which == 38) { // up
                    e.preventDefault();
                    $('#question-starter-rotator').animate({top: '+=50px'});
                    $('#question-starter-rotator .focus').removeClass('focus').prev().addClass('focus');
                    /*
                    if($('#question-starter-rotator .focus').is('#question-starter-rotator span:first')) {
                        $('#question-starter-rotator span').last().insertBefore('#question-starter-rotator .focus');
                    }*/
                } else if (e.which == 40 || e.which == 9) { // down
                    e.preventDefault();
                    $('#question-starter-rotator').animate({top: '-=50px'});
                    $('#question-starter-rotator .focus').removeClass('focus').next().addClass('focus');
                }

                // Enter
                if(e.which == 13) {
                    var questionText = $('#question-input-field').val();
                    console.log(questionText);
                    if(!questionText || 0 === questionText.length) {
                        console.log('You need to put in text!');
                        return;
                    }

                    else {
                        programState = 3;
                        $('main').attr('data-state', 3);
                        planets[2].setActive();
                        showPlanetNames = true;
                    }
                }
            } else {
                e.preventDefault();
                console.log('not one of those');
            }

        } else if (programState == 3) { // Select planet
            e.preventDefault();
            if((e.which >= 49 && e.which <= 56)) {
                for(var i = 0; i < NO_OF_PLANETS; i++) {
                    planets[i].removeActive();
                }
                var planetToActivate = e.which - 49;
                console.log(planetToActivate);
                planets[planetToActivate].setActive();
            }
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