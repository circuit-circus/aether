var planets = [];

/*
    States:
    1 = Title screen
    2 = Input question
    3 = Pick planet
    4 = Transmit and recieve
*/
var programState = 1;


function setup() {
    var myCanvas = createCanvas(1000, 400);
    myCanvas.parent('planet-container');

    fill(0);
    stroke(255);

    for(var i = 0; i < 8; i++) {
        var diameter = random(70, 110);
        planets[i] = new Planet(i * 125 + ((125-diameter) / 2 + diameter/2), 200, diameter);
    }
}

function draw() {
    for(var i = 0; i < 8; i++) {
        planets[i].display();
    }
}

function Planet(xPos, yPos, dia) {
    this.x = xPos;
    this.y = yPos;
    this.diameter = dia;

    this.display = function() {
        ellipse(this.x, this.y, this.diameter, this.diameter);
    }
}

$(document).ready(function() {

    $('button').on('click', function() {
        $('#planet-container').toggleClass('active');
    });

    // Check for key inputs
    $('body').on('keydown', function(e) {
        console.log(e.which);

        if(programState == 1) { // Title screen
            e.preventDefault();
            $('main').attr('data-state', 2);
            $('#question-input-field').focus();
            programState = 2;

        } else if (programState == 2) { // Input question

            // Check for accepted keys
            if (([8, 16, 32, 37, 38, 39, 40, 186, 222, 219, 189].indexOf(e.which) > -1) || // backspace, shift, space, arrow keys, æøå, dash
                (e.which >= 48 && e.which <= 57) || // numbers
                (e.which >= 65 && e.which <= 90) ) { // letters

                if(e.which == 38) { // up
                    $('#question-starter-rotator').animate({top: '+=50px'});
                    $('#question-starter-rotator .focus').removeClass('focus').prev().addClass('focus');
                    /*
                    if($('#question-starter-rotator .focus').is('#question-starter-rotator span:first')) {
                        $('#question-starter-rotator span').last().insertBefore('#question-starter-rotator .focus');
                    }*/
                } else if (e.which == 40) { // down
                    $('#question-starter-rotator').animate({top: '-=50px'});
                    $('#question-starter-rotator .focus').removeClass('focus').next().addClass('focus');
                }
            } else {
                e.preventDefault();
                console.log('not one of those');
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