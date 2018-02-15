$(document).ready(function() {

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