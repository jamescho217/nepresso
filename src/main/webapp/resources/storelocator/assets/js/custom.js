$.prototype.focusWithoutScrolling = function() {
    if ($(window).width() > 500) { // probleme with focus on small devices
        var topX = window.top.scrollX,
            topY = window.top.scrollY,
            x = window.scrollX,
            y = window.scrollY;
        this.focus();
        window.scrollTo(x, y);
        window.top.scrollTo(topX, topY);
    }
};

$(document).ready(function() {

    // init view map

    // init options button
    $('.trigger-options a').on('click', function(e) {
        //e.stopPropagation();
        //e.preventDefault();
        //$(this).parent().toggleClass('open');

        if (!$(this).parent().hasClass('open')) {
            $(this).blur().focusout();
        }

    });

    /*$('body').on('click', function(e){
        if( !$(e.target).hasClass('trigger-options') && $(e.target).parents('.trigger-options').length <= 0 && $('.trigger-options').hasClass('open') ) {
            $('.trigger-options').removeClass('open');
        }
	});*/

    // init detail button
    /*$('#store-locator-results').on('click', '.shop-item', function(e) {
		e.preventDefault();

		if( $(window).width() < 768 ) {

		    if (!isMobile) {
                //$('.section-map').addClass('box-top');
            }

            //trackMapMove(false);
		}

		//$('.shop-detail')
		//	.addClass('open');
		$('html').addClass('open-shop-detail');

		//setTimeout(function(){ $('.StoreDetail').find(".StoreDetail-content").focusWithoutScrolling(); }, 1500);
		//$(".StoreDetail-content").focusWithoutScrolling();
        return false;
	});*/

    if ($(window).width() > breakpointMobile) {
        $('.shops').css({
            "touch-action": "pan-down"
        });
    }

    $(window).on('resize', function() {
        // if on mobile
        if ($(window).width() < breakpointMobile) {
            var scrollTop = 0;
            var $_section_map = $('.section-map');

            // push locator box on the top

            /*if (!isMobile) {

                $('.shops').off('scroll').on('scroll', function () {
                    /*if ($('.close-intro').length) {
                        if (scrollTop <= 0) { // fix ios can be negative
                            $_section_map.removeClass('box-top');
                            //trackMapMove(true);
                        } else if (( scrollTop < $(this).scrollTop() ) && !$_section_map.hasClass('box-top')) {
                            $_section_map.addClass('box-top');
                            //trackMapMove(false);
                        } else if (( scrollTop >= $(this).scrollTop() ) && $(this).scrollTop() <= 0) {
                            $_section_map.removeClass('box-top');
                            //trackMapMove(true);
                        }
                        scrollTop = $(this).scrollTop();
                    }


                    if (!isMobile) {
                        $(this).css({
                            "touch-action": ($(this).scrollTop() >= 1) ? "auto" : "pan-down"
                        });
                    }

                });
            }*/
        } else {
            $('.shops').off('scroll');
            $('.section-map').removeClass('box-top');
        }
    }).trigger('resize');
});