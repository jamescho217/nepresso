/*! 2021-02-06 13:51  */ ! function() {
    "use strict";
    jQuery(window).on("load", function() {
        var a = $(".steps-nav"),
            b = a.length > 0,
            c = b ? a.height() : 0,
            d = $(".HeaderNavigationBar").height(),
            e = $(".Header__top").height(),
            f = $(".responsive-checkout-frame");
        return e && d ? c ? a.addClass("BellowMainLogoAndMenu") : f.addClass("BellowMainLogoAndMenu") : e ? c ? a.addClass("BellowLogo") : f.addClass("BellowLogo") : void 0
    })
}();