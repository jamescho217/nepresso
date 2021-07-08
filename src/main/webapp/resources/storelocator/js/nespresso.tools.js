/**
 * @author Quentin Schuler - Virtua SA <quentin.schuler@virtua.ch>
 */
nespresso.a11y = {
    openObj: null,
    trappingFocus: function(event) {
        /*if (nespresso.a11y.openObj && $(event.target).closest('#map').length && !nespresso.a11y.openObj.contains(event.target)) {
            event.stopPropagation();
            nespresso.a11y.openObj.focus();
        }*/
    }
};

function detectIE() {
    var ua = window.navigator.userAgent;

    // Test values; Uncomment to check result …

    // IE 10
    // ua = 'Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.2; Trident/6.0)';

    // IE 11
    // ua = 'Mozilla/5.0 (Windows NT 6.3; Trident/7.0; rv:11.0) like Gecko';

    // Edge 12 (Spartan)
    // ua = 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.71 Safari/537.36 Edge/12.0';

    // Edge 13
    // ua = 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2486.0 Safari/537.36 Edge/13.10586';

    var msie = ua.indexOf('MSIE ');
    if (msie > 0) {
        // IE 10 or older => return version number
        return parseInt(ua.substring(msie + 5, ua.indexOf('.', msie)), 10);
    }

    var trident = ua.indexOf('Trident/');
    if (trident > 0) {
        // IE 11 => return version number
        var rv = ua.indexOf('rv:');
        return parseInt(ua.substring(rv + 3, ua.indexOf('.', rv)), 10);
    }

    var edge = ua.indexOf('Edge/');
    if (edge > 0) {
        // Edge (IE 12+) => return version number
        return parseInt(ua.substring(edge + 5, ua.indexOf('.', edge)), 10);
    }

    // other browser
    return false;
}

// Browser check
var isChrome = /Chrome/.test(navigator.userAgent) && /Google Inc/.test(navigator.vendor);
var isIE = detectIE();
var isFirefox = /firefox/i.test(navigator.userAgent);


$(function() {

    /**
     * class Information
     */
    var Information = function(html, marker) {
        this.el = $(html)[0];
        this.marker = marker;
    };

    Information.prototype = new google.maps.OverlayView();

    /**
     *
     */
    Information.prototype.onAdd = function() {
        var panes = this.getPanes();

        if (panes.floatPane) {
            panes.floatPane.appendChild(this.el);
        }

        // catch mouse events and stop them propogating to the map
        google.maps.event.addDomListener(this.el, 'mousedown', this._stopPropagation);
        google.maps.event.addDomListener(this.el, 'dblclick', this._stopPropagation);
        google.maps.event.addDomListener(this.el, 'DOMMouseScroll', this._stopPropagation);
        google.maps.event.addDomListener(this.el, 'mousewheel', this._stopPropagation);
        google.maps.event.addDomListener(this.el, 'wheel', this._stopPropagation);
        google.maps.event.addDomListener(this.el, 'MozMousePixelScroll', this._stopPropagation);
        $('.opening-hours', this.el).jScrollPane({
            enableKeyboardNavigation: false
        });
    };

    Information.prototype._stopPropagation = function(e) {
        if (navigator.userAgent.toLowerCase().indexOf('msie') != -1 && document.all) {
            window.event.cancelBubble = true;
            window.event.returnValue = false;
        } else {
            // e.preventDefault(); // optionally prevent default actions
            e.stopPropagation();
        }
    };

    /**
     *
     */
    Information.prototype.getElement = function() {
        return this.el;
    };

    /**
     *
     */
    Information.prototype.getMarker = function() {
        return this.marker;
    };

    /**
     *
     */
    Information.prototype.draw = function() {
        var projection = this.getProjection();
        var point = projection.fromLatLngToDivPixel(this.marker.position);
        this.el.style.left = (point.x - (this.el.offsetWidth / 2)) + 'px';
        // fix first show for infocard with image that isn't loaded
        var shopPictureSize = $(this.el).find('.boutique-image img').outerHeight() === 0 ? 172 : 0;

        this.el.style.top = (point.y - this.el.offsetHeight - 59 - shopPictureSize) + 'px';
    };

    /**
     *
     */
    Information.prototype.onRemove = function() {
        this.el.parentNode.removeChild(this.el);
        this.el = null;
        this.marker.onMouseOut_.apply(this.marker.div);
        $('#store-locator-results')
            .find('button').removeClass('active').removeAttr('tabindex')
            .end().find('li[data-id="' + this.marker.__id + '"]')
            .find('button').addClass('active').attr('tabindex', '0').focus();
        this.setMap(null);
        nespresso.a11y.openObj = null;
    }

    window.Information = Information;

    /**
     * window.formatter namespace
     */
    window.formatter = {};

    window.formatter.extractZipCode = function(place) {
        var zipcode = null;

        $.each(place.address_components, function(index, component) {
            var type;

            for (var i = 0, n = component.types.length; i < n; i++) {
                type = component.types[i];

                if (type === 'postal_code') {
                    zipcode = component.long_name;
                }
            }
        });

        return zipcode;
    };

    window.formatter.extractCountryCode = function(place) {
        var countryCode = null;

        $.each(place.address_components, function(index, component) {
            var type;

            for (var i = 0, n = component.types.length; i < n; i++) {
                type = component.types[i];

                if (type === 'country') {
                    countryCode = component.short_name;
                }
            }
        });

        if (countryCode === 'GB') {
            return 'UK';
        }
        return countryCode;
    }

    window.formatter.extractCity = function(place) {
        var city = null;

        $.each(place.address_components, function(index, component) {
            var type;

            for (var i = 0, n = component.types.length; i < n; i++) {
                type = component.types[i];

                if (type === 'locality' || type === 'city') {
                    city = component.long_name;
                }
            }
        });

        return city;
    };

    window.formatter.tplCapability = function(key, pivot) {
        var txt;
        key = key.toLowerCase();
        txt = window.nespresso.i18n[(pivot || 'service_' + key)] || '';

        var iconSvg = {
            'recycling': '0 0 8.2 14',
            'demo': '',
            'wifi': '0 0 14 12',
            'pickup': '',
            'wheelchair': '0 0 12 13.8',
            'cube': '',
            'appointment': '',
            'recycling_b2b': '0 0 8.2 14',
            'b2c': '',
            'npoint': ''
        };

        var viewBox = iconSvg[key] ? 'viewBox="' + iconSvg[key] + '"' : '';
        var helpText = viewBox ? '<span class="a11y-hidden">' + txt + '&nbsp;</span>' : txt.substring(0, label_maxSize);

        return '<li class="Capabilities-item">' +
            (viewBox ? '<i class="icon icon_' + key + '">' +
                '<svg ' + viewBox + ' class="svg_' + key + '">' +
                '<use xlink:href="assets/svg/sprite.svg#svg-' + key + '"></use>' +
                '<use xlink:href="#svg-' + key + '"></use>' +
                '</svg>' +
                '</i>' : '') +
            helpText +
            '</li>';
    };

    window.formatter.getInfosPoi = function(value) {
        value.isStore = isStore;
        value.isNcafe = value.point_of_interest.type === 'NCAFE';
        var services = value.point_of_interest.supported_service;
        var address = value.point_of_interest.address;

        if (window.formatter.isArray(address)) {
            address = address.pop();
        }

        var storeName = window.arrayGet(address, 'name.company_name_type.name.name');

        if (storeName === null) storeName = '';

        var phone = value.point_of_interest.phone ? value.point_of_interest.phone : '';

        return {
            'isStore': value.point_of_interest.type === 'BOUTIQUE',
            'address': address,
            'storeName': storeName,
            'phone': phone,
            'isRecycling': (services === 'RECYCLING'),
            'isDemo': (typeof(value.point_of_interest.demo) !== "undefined" && value.point_of_interest.demo === 1),
            'isWifi': (typeof(value.point_of_interest.wifi) !== "undefined" && value.point_of_interest.wifi === 1),
            'isB2b': (typeof(value.point_of_interest.b2b) !== "undefined" && value.point_of_interest.b2b === 1),
            'isB2c': (typeof(value.point_of_interest.recycling) !== "undefined" && value.point_of_interest.recycling === 1),
            'isPickup': (typeof(value.point_of_interest.pickup) !== "undefined" && value.point_of_interest.pickup === 1),
            'isWheelchair': (typeof(value.point_of_interest.wheelchair) !== "undefined" && value.point_of_interest.wheelchair === 1),
            'isCube': (typeof(value.point_of_interest.cube) !== "undefined" && value.point_of_interest.cube === 1),
            'isAppointment': (typeof(value.point_of_interest.appointment) !== "undefined" && value.point_of_interest.appointment === 1),
            'isNpoint': (typeof(value.point_of_interest.npoint) !== "undefined" && value.point_of_interest.npoint === 1)
        };
    };
    /**
     *
     */
    window.formatter.buildFileInfo = function(value, lat, lng) {
        function tplCapability(key, pivot) {
            var txt;
            key = key.toLowerCase();
            txt = window.nespresso.i18n[(pivot || 'service_' + key)] || '';

            return '<span class="Capabilities-item">' +
                '<i aria-hidden="true" class="Capabilities-icon ' + key + '" title="' + txt + '"></i>' +
                '<span class="a11y-hidden">' + txt + '</span>' +
                '</span>';
        }

        var phone = value.point_of_interest.phone ?
            value.point_of_interest.phone :
            '';
        var poi = value.point_of_interest;
        var address = poi.address;

        if (window.formatter.isArray(address)) {
            address = address.pop();
        }

        if ('object' === typeof address.postal_code) {
            address.postal_code = address.postal_code._;
        }

        if ('object' === typeof phone) {
            phone = phone._;
        }

        var storeName = address.name.company_name_type ?
            address.name.company_name_type.name.name :
            '';

        var openingHours = poi.opening_hours_text ?
            poi.opening_hours_text.text :
            window.formatter.buildOpeningHours(value);

        var directionsLink = nespresso.google_directions + '?daddr=' + address.address_line + ', ' + address.postal_code + ' ' + address.city.name + '&t=m&hl=' + nespresso.google_lang;

        var id = arrayGet(value, 'point_of_interest.point_of_interest_id.id');

        if (id === null) {
            id = ''
        }

        var boutiqueImageUrl = (value["point_of_interest"]["type"] == "BOUTIQUE" &&
                typeof(value["point_of_interest"]["image"]) != "undefined" &&
                value["point_of_interest"]["image"]) ?
            value["point_of_interest"]["image"] : null;
        var retailImageUrl = (value["point_of_interest"]["type"] == "POINT_OF_SALE" &&
                typeof(value["point_of_interest"]["image"]) != "undefined" &&
                value["point_of_interest"]["image"]) ?
            value["point_of_interest"]["image"] : null;

        var notStoreStyle = (value.isStore ? '' : ' not-store');

        var ariaAttrParent = ' role="dialog" aria-labelledby="StoreDetail" ';
        var ariaAttrContent = ' role="document" aria-hidden="true" ';
        if (!isChrome && !isIE) {
            ariaAttrParent = ' role="dialog" aria-labelledby="StoreDetail" aria-describedby="StoreDetail" ';
            ariaAttrContent = '';
        }
        if (isIE) {
            ariaAttrParent = ' role="document" aria-labelledby="StoreDetail" ';
            ariaAttrContent = '   ';
        }

        var addrLine = address.postal_code + ' ' + address.city.name;




        html = '<div class="item-details StoreDetail" role="dialog" tabindex="-1" ' + ariaAttrParent + '>' +
            (boutiqueImageUrl ? '<div class="boutique-image"><img src="cover_test.jpg" /></div>' : '') + // personal debug
            // (boutiqueImageUrl ? '<div class="boutique-image"><img src="' + boutiqueImageUrl + '" /></div>' : '') +
            '<div id="StoreDetail" tabindex="0" ' + ariaAttrContent + ' class="StoreDetail-content first-part' + notStoreStyle + '">' +
            '<div id="StoreDetailHeader" class="StoreDetail-header">' +
            '<strong id="StoreDetailTitle" class="StoreDetail-title">' + storeName + '</strong>' +
            '<p>' +
            address.address_line + (addrLine ? ' / ' + addrLine : '') +
            '</p>' +
            (phone ? '<div class="phone" aria-label="Phone number ' + phone + '">' + phone + '</div>' : '') +
            '</div>' +
            '<div class="Capabilities" id="resultCapabilities' + id + '">' +
            '<p class="a11y-hidden">' + window.nespresso.i18n.aria_label_capabilities + '</p>' +
            (value.recycling ? tplCapability('recycling') : '') +
            (value.demo ? tplCapability('demo') : '') +
            (value.wifi ? tplCapability('wifi') : '') +
            (value.pickup ? tplCapability('pickup') : '') +
            (value.wheelchair ? tplCapability('wheelchair') : '') +
            (value.cube ? tplCapability('cube') : '') +
            (value.appointment ? tplCapability('appointment') : '') +
            (value.npoint ? tplCapability('npoint') : '') +
            '</div>' +
            (retailImageUrl ? '<div class="retail-image" role="presentation"><img src="' + retailImageUrl + '" /></div>' : '') +
            (openingHours !== null && openingHours !== '' ?
                '<div class="opening-hours"><strong>' + window.nespresso.i18n.openning_hours + '</strong>' + '<p>' + openingHours + '</p></div>' :
                ''
            ) +
            '</div>' +
            '<div class="nlinks">' +
            ('KR' != window.nespresso.country ? '<a tabindex="0" class="omnitureGetDirection" href="' + directionsLink + '" target="_blank" title="' + window.nespresso.i18n.aria_label_get_direction + '" aria-label="' + window.nespresso.i18n.aria_label_get_direction + '">' + window.nespresso.i18n.store_directions_cta + '</a>' : '') +
            '<a tabindex="0" class="print-btn" href="javascript:window.print()" data-id="' + id + '" target="_self">' + window.nespresso.i18n.print + '</a>' +
            '</div>' +
            '<a tabindex="0" href="#" aria-label="' + window.nespresso.i18n.aria_label_close_detail + '" class="close">&times;</a>' +
            '</div>';

        return {
            html: html,
            latitude: lat,
            longitude: lng
        };
    };

    /**
     *
     */
    window.formatter.buildOpeningHours = function(poi) {
        var openingHours;

        if (!(openingHours = poi.point_of_interest.opening_hours)) {
            return null;
        }

        var map = {
            'monday': 0,
            'tuesday': 1,
            'wednesday': 2,
            'thursday': 3,
            'friday': 4,
            'saturday': 5,
            'sunday': 6
        };

        var lines = [];

        // sometimes, we get an array !
        if (window.formatter.isArray(openingHours)) {
            openingHours = openingHours.shift();
        }

        $.each(openingHours.weekly_timetable, function(day, value) {
            if (!window.formatter.isArray(value)) {
                if (window.formatter.isArray(value.time_slot)) {
                    var dayHours = [];

                    $.each(value.time_slot, function(index, timeSlot) {
                        dayHours.push(window.formatter.formatHour(timeSlot.start) + '-' + window.formatter.formatHour(timeSlot.end));
                    });

                    lines[map[day]] = dayHours.join(' / ');
                } else {
                    lines[map[day]] = window.formatter.formatHour(value.time_slot.start) + '-' + window.formatter.formatHour(value.time_slot.end);
                }
            }
        });

        $.each(map, function(day, index) {
            if (lines[index] !== void 0) {
                lines[index] = day + ' ' + lines[index];
            }
        });

        return lines.join('<br />');
    };

    /**
     *
     */
    window.formatter.formatHour = function(hour) {
        return hour.split(':').splice(0, 2).join(':');
    };

    /**
     *
     */
    window.formatter.isArray = function(object) {
        return object.hasOwnProperty('length');
    };

    /**
     *
     */
    window.arrayGet = function(array, path) {
        var segments = path.split('.'),
            prop = segments.shift(),
            value = null;

        if (array[prop]) {
            value = array[prop];

            if (segments.length) {
                value = arrayGet(value, segments.join('.'));
            }
        }

        return value;
    };

    var _uniqId = 0;

    /**
     *
     */
    window.uniqId = function() {
        return _uniqId++;
    }
});


// Custom marker to show non-store items
var Marker = function(position, className, id, label) {
    this.position = position;
    this.__id = id;
    this.__className = className;
    this.__label = label;
    this.div = document.createElement('div');
    this.div.innerHTML = this.__label || "";
    this.div.className = this.__className;
    this.div.marker = this;
};

function scrollTopOnMobile() {
    //if(window.top && $(window).width() <= (61 * getEmPixels())) {
    if ($(window).width() < breakpointMobile && !$('.html').hasClass('close-intro')) {
        window.top.document.documentElement.scrollIntoView();
    }
}

// when user zoom in or out, keep the map centered to the store point
var keepCenteredListener = null;

Marker.prototype = new google.maps.OverlayView();
Marker.prototype.onAdd = function() {
    this.getPanes().overlayMouseTarget.appendChild(this.div);
    var self = this;
    this.listeners = [
        google.maps.event.addDomListener(this.div, 'click', this.onClick_),
        google.maps.event.addDomListener(this.div, 'mouseover', this.onMouseOver_),
        google.maps.event.addDomListener(this.div, 'mouseout', this.onMouseOut_)
    ];
};
Marker.prototype.onMouseOver_ = function() {
    $(this).addClass('over').css('zIndex', 9999);
    this.marker.draw();
};
Marker.prototype.onMouseOut_ = function() {
    if (currentMarker != this.marker) {
        $(this).removeClass('over').css('zIndex', '');
        this.marker.draw();
    }
};
Marker.prototype.click = function() {
    this.onClick_.apply(this.div, [{}, true]);
};
Marker.prototype.onClick_ = function(e, noScroll) {
    var
        $r = $('#store-locator-results'),
        $li = $r.find('li[data-id=' + this.marker.__id + ']'),
        information;

    if (geoloc.box) {
        geoloc.box.setMap(null);
    }

    $('button', $r).removeClass('active').attr('tabindex', '-1');
    $li.find('button').addClass('active').removeAttr('tabindex');

    if (typeof(noScroll) == "undefined") {
        scrollPane.data('jsp').scrollTo(0, $li.position().top);
    }

    information = new Information(this.marker.info.html, this.marker);
    nespresso.a11y.openObj = information.getElement();
    // document.addEventListener('focus', nespresso.a11y.trappingFocus, true);
    $(information.getElement())
        .on('keydown', function(event) {
            if (27 === event.keyCode) {
                $(this).off('keydown');
                information.setMap(null);
                keepCenteredListener.remove();
                if (currentMarker == this.marker) currentMarker = null;
                nespresso.a11y.openObj = null;
            }
        })
        .find('.close').on('click', function(event) {
            information.setMap(null);
            keepCenteredListener.remove();
        });
    information.setMap(map);
    centerMapOffset(this.marker);

    geoloc.box = information;
    this.marker.onMouseOver_.apply(this);
    if (currentMarker) {
        try {
            var oldMarker = currentMarker;
            currentMarker = this.marker;
            oldMarker.onMouseOut_.apply(oldMarker.div);
        } catch (e) {}
    }
    currentMarker = this.marker;

    setTimeout(function() {
        $(information.getElement()).focus();
    }, 100);

};
Marker.prototype.getElement = function() {
    return this.div;
};
Marker.prototype.getDraggable = function() {
    return false;
};
Marker.prototype.getPosition = function() {
    return this.position;
};
Marker.prototype.draw = function() {
    var p = this.getProjection();
    if (p != null) {
        var point = p.fromLatLngToDivPixel(this.position);
        this.div.style.left = point.x - $(this.div).width() / 2 + 'px';
        this.div.style.top = point.y - $(this.div).height() / 2 + 'px';
    }
};
Marker.prototype.remove = function() {
    for (var i = 0, l = this.listeners.length; i < l; ++i) {
        google.maps.event.removeListener(this.listeners[i]);
    }
    this.div.parentNode.removeChild(this.div);
    this.listeners = [];
};

/*! getEmPixels  | Author: Tyson Matanich (http://matanich.com), 2013 | License: MIT */
(function(h, u) {
    "use strict";
    var g = "!important;",
        o = "position:absolute" + g + "visibility:hidden" + g + "width:1em" + g + "font-size:1em" + g + "padding:0" + g;
    window.getEmPixels = function(z) {
        var i, ll, iox;
        return z || (z = i = h.createElement("body"), i.style.cssText = "font-size:1em" + g, u.insertBefore(i, h.body)), ll = h.createElement("i"), ll.style.cssText = o, z.appendChild(ll), iox = ll.clientWidth, i ? u.removeChild(i) : z.removeChild(ll), iox
    }
})(document, document.documentElement);