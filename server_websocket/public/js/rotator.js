$(function() {
    var gate = $(window),
    cog = $('#question-starter-rotator'),
    digit = cog.find('span'),
    field = $('#result'),
    slot = digit.height(),
    base = 1.5*slot,
    up, swipe;

    if (document.readyState == 'complete') interAction();
    else gate.one('load', interAction);

    function interAction() {

        cog.scrollTop(base).fadeTo(0,1).mousewheel(function(turn, delta) {

            if (isBusy()) return false;

            up = delta > 0;
            nextNumber();

            return false;
        });

        digit.on('touchstart', function(e) {

            var begin = e.originalEvent.touches[0].pageY;

            digit.on('touchmove', function(e) {

                var yaw = e.originalEvent.touches[0].pageY-begin;
                up = yaw < 0;
                swipe = Math.abs(yaw) > 30;
            });

            gate.one('touchend', function() {

                digit.off('touchmove');

                if (swipe && !isBusy()) nextNumber();
            });
        })
        .on('mousedown touchstart', function(e) {

            if (e.which && e.which != 1) return;

            var zest = this, item = $(this).index();

            $(this).one('mouseup touchend', function(e) {

                digit.off('mouseup');

                var quit = e.originalEvent.changedTouches;

                if (quit) var jab = document.elementFromPoint(quit[0].clientX, quit[0].clientY);
                if (swipe || item == 2 || quit && jab != zest || isBusy()) return;

                up = item == 1;
                nextNumber();
            });

            return false;
        })
        .mouseleave(function() {

            digit.off('mouseup');
        });
    }

    function isBusy() {

        return cog.is(':animated');
    }

    function nextNumber() {

        var aim = base;
        swipe = false;

        up ? aim += slot : aim -= slot;

        cog.animate({scrollTop: aim}, 250, function() {

            up ? digit.eq(0).appendTo(cog) : digit.eq(9).prependTo(cog);

            digit = cog.find('span');

            cog.scrollTop(base);
            console.log(digit.eq(2));
        });
    }
});