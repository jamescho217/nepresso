'use strict';

// -------------------------------------------------------------------------
// Variables
// -------------------------------------------------------------------------
var map = null;
var xhr = null;
var geoloc = null;
var scrollPane = null;
var currentMarker = null;
var currentPoiId = null;
var markers = [];
var circle = null;
var iconLinkType;
var autocomplete;
var searchUser = false;
var currentLatitude = null;
var currentLongitude = null;
var currentPointLatitude = null;
var currentPointLongitude = null;
var oldZoom = null;
var oldCenter = null;
var isRTL = $('body').hasClass('rtl');
var holderOpen = false;
var clusterer;
var maxDistance = 50;
var minLat, minLng, maxLng, maxLat;
var enabledFilters;
var resultsShowed = false;
var focusedItemRank = 1;
var geo = navigator.geolocation;
var valueInput = '';

// Variables de debug
var circle1 = null;
var circle2 = null;
var rectangle = null;
var radius = null;
var t1 = null;
var t2 = null;
var t3 = null;
var t4 = null;
var centerDrag = null;
var pointOppose = null;
var rectanglePolygon = null;
var drawCenter = false;

var zoom = {
    'desktop': {
        'km50': 10,
        'km100': 9,
        'km200': 7,
        'other': 6
    },
    'mobile': {
        'km50': 7,
        'km100': 7,
        'km200': 6,
        'other': 4
    },
    'tablet': {
        'km50': 8,
        'km100': 7,
        'km200': 5,
        'other': 4
    }
};

var currentPlaceType = 'country';
var currentRequest = null;
var currentCountry = nespresso.country;
var isGeolocSuccess = false;
var geolocAtSubmit = false;
var nearby = false;
var countryRestriction = '';
var currentShopType = 'boutique';
var country = '';

var defaultLatitude = window.nespresso.default_lat;
var defaultLongitude = window.nespresso.default_lng;
var defaultZoom = window.nespresso.default_zoom;

var defaultSearchBehavior = true;
var placeMatched = false;

var latlng = new google.maps.LatLng(defaultLatitude, defaultLongitude);
var options = {
    zoom: parseInt(defaultZoom),
    center: latlng,
    minZoom: map_minZoom,
    zoomControlOptions: {
        style: google.maps.ZoomControlStyle.DEFAULT
    },
    mapTypeControl: false,
    streetViewControl: false,
    styles: googleMapStyle, // defined in gmap_style.js file
    gestureHandling: 'greedy',
    clickableIcons: false
};

//Back button override on top window
window.top.history.pushState({}, 'Store locator', '#map-intro');

if ($('#map').height() < 300) {
    cluster_gridsize = 20;
}

// -------------------------------------------------------------------------
// End Variables
// -------------------------------------------------------------------------

// Display console.log only on debug mode
var consoleDebug = {
    log: function(variable) {
        if (debug) {
            if (variable instanceof Array) {
                console.log(variable.join());
            } else {
                console.log(variable);
            }
        }
    }
};


//Analytics
var gtmDataObject = window.top['gtmDataObject'] || [];

gtmDataObject.push({
    'pageName': 'store-locator',
    'pageType': 'locator',
    'breadCrumbID': 'locator:::store-locator:',
    'event': 'event_virtualPageView'
});


// -------------------------------------------------------------------------
// Map Google & events
// -------------------------------------------------------------------------
var mapGoogle = {
    initializeMap: false,

    /**
     *
     * @param callback
     */
    createMap: function(callback) {
        map = new google.maps.Map(document.getElementById('map'), options);

        google.maps.event.addListener(map, 'projection_changed', function() {
            mapGoogle.initializeMap = true;
            mapGoogle.createEventMap();
            mapGoogle.initEventMap();
            mapGoogle.dragStartEventMap();
            //mapGoogle.zoomEventMap();

            callback();
        });

        clusterer = new MarkerClusterer(null, null, {
            gridSize: cluster_gridsize,
            maxZoom: cluster_maxZoom,
            zIndex: 50,
            styles: [{
                url: 'img/one_px_white.png',
                height: 40,
                width: 40,
                textColor: 'white'
            }]
        });
    },

    closeFilters: function() {
        if (mapGoogle.initializeMap) {
            var $_trigger_options = $('.trigger-options');
            google.maps.event.addListener(map, 'bounds_changed', function() {
                if ($_trigger_options.hasClass('open')) {
                    $(this).removeClass('open');
                }
            });
        }
    },

    disableDragWhenScroll: function() {
        $('.shops').on('scroll', function() {
            consoleDebug.log('scroll');
            map.setOptions({
                draggable: false
            });
            clearTimeout($.data(this, 'scrollTimer'));

            $.data(this, 'scrollTimer', setTimeout(function() {

                consoleDebug.log('scroll');
                map.setOptions({
                    draggable: true
                });
            }, 250));
        });
    },

    /**
     * Clear the event map
     */
    clearEventMap: function() {
        google.maps.event.clearListeners(map, 'idle');
        google.maps.event.clearListeners(map, 'bounds_changed');
        google.maps.event.clearListeners(map, 'center_changed');
        google.maps.event.clearListeners(map, 'drag');
    },

    clearClustererEventClick: function() {
        google.maps.event.clearListeners(clusterer, 'clusterclick');
    },

    /**
     * ClustererEventClick
     *
     * Event for cluster click
     */
    clustererEventClick: function() {
        google.maps.event.addListener(clusterer, 'clusterclick', function(cluster) {
            mapGoogle.clearIdleEventMap();
            defaultSearchBehavior = false;
            nearby = true;

            // wait to retrieve the cluster on which we have clicked
            var markersClicked = cluster.getMarkers();
            setTimeout(function() {
                mapGoogle.adaptViewportWithMarkers(markersClicked, null, true, markersClicked.length);
            }, 250);

            //google.maps.event.addListener(map, 'idle');
            if (radius !== null) {
                radius.setMap(null);
                radius = null;
            }
        });
    },

    /**
     *
     * @param markers
     * @param center
     * @param isClusterClick
     * @param nbMarkers
     */
    adaptViewportWithMarkers: function(markers, center, isClusterClick, nbMarkers) {
        var allMarkerInViewport = true;
        var nb = 0;
        var offsetX = 0;
        var offsetY = 0;

        //mapGoogle.calculateMinMaxCoord();

        //setTimeout(function() {
        if ($(window).width() > breakpointMobile) { // plus grand que small design
            if (isClusterClick) {
                mapGoogle.offsetCenter(map.getCenter());
                center = map.getCenter();
            }

            do {
                //setTimeout(function() {
                allMarkerInViewport = mapGoogle.checkMarkersInViewport(markers, nbMarkers);

                if (!allMarkerInViewport) {
                    if ($(window).width() > 992) { // large
                        offsetX = -(Math.round($("#map").width() / 10));
                    } else { // medium
                        offsetY = Math.round($("#map").height() * 0.2);
                    }
                    map.setZoom(map.getZoom() - 1);
                    if (isClusterClick) {
                        map.panBy(offsetX, offsetY);
                    } else {
                        mapGoogle.offsetCenter(center);
                    }
                }

                nb++;
                //}, 150);
            } while (!allMarkerInViewport && nb < 3); // To avoid infinite loop

            if (isClusterClick) {
                setTimeout(function() {
                    mapGoogle.refreshMap(false);
                }, 500);
            }

        } else if (isClusterClick) {
            mapGoogle.refreshMap(false);
        }

        //callback();

        //}, 150);
    },

    /**
     * Check if all markers contained in the cluster clicked are in the viewport
     *
     * @param markersClicked
     * @param nbMarkers
     * @returns {boolean}
     */
    checkMarkersInViewport: function(markersClicked, nbMarkers) {
        mapGoogle.calculateMinMaxCoord();
        var retour = true;
        var coords = [
            new google.maps.LatLng(maxLat, minLng),
            new google.maps.LatLng(minLat, minLng),
            new google.maps.LatLng(minLat, maxLng),
            new google.maps.LatLng(maxLat, maxLng)
        ];

        var polygonOptions = {
            paths: coords
        };

        if (debug) {
            polygonOptions.strokeColor = '#0001ff';
            polygonOptions.map = map;
            polygonOptions.strokeOpacity = 0.8;
            polygonOptions.strokeWeight = 2;
            polygonOptions.fillColor = '#f1ffff';
            polygonOptions.fillOpacity = 0.5;
        }

        rectanglePolygon = new google.maps.Polygon(polygonOptions);

        var markersInsidePolygon = 0;

        $.each(markersClicked, function(index, value) {
            if (value !== undefined) {
                if (google.maps.geometry.poly.containsLocation(value.position, rectanglePolygon)) {
                    markersInsidePolygon++;
                }
            }
        });

        if (markersInsidePolygon < nbMarkers) {
            retour = false;
        }
        return retour;
    },

    createEventMap: function() {

        var $_map = $('#map')[0];
        var mapInteractionListener = function() {
            //defaultSearchBehavior = false;
            nearby = true;
        };

        mapGoogle.dragendEventMap();

        $_map.addEventListener('mousewheel', mapInteractionListener, true);
        $_map.addEventListener('DOMMouseScroll', mapInteractionListener, true);
        $(document).on('click', '.gm-bundled-control', mapInteractionListener);

        // bugfix google map infinit loading
        if (!detectIE()) {
            google.maps.event.addListener(map, 'tilesloaded', function() {
                setTimeout(function() {
                    window.stop();
                }, 10000);
            });
        }

        map.addListener('tilesloaded', function() {
            $('.gm-style-cc').find('a').attr('tabindex', '-1');
            $('.gm-style').find('a').attr('tabindex', '-1');
        });
    },

    getOffsetMap: function() {
        var offsetX = 0,
            offsetY = 0;
        var $map = $("#map");

        if ($(window).width() > breakpointMobile) {
            var totalWidth = $map.width();
            if (totalWidth > (81.25 * getEmPixels())) // if desktop mode
            {
                var hiddenWidth = 400 + (12 * totalWidth / 100);
                var halfvisiblewidth = 0.5 * (totalWidth - hiddenWidth);
                var movePinBy = hiddenWidth + halfvisiblewidth - 0.5 * totalWidth;

                offsetX = movePinBy;

            } else if (totalWidth > (61 * getEmPixels())) {
                //Medium
                offsetY = $map.height() * 0.375

            } else {
                //Small
                offsetY = $map.height() * 0.35;
            }
        }

        return {
            'offsetX': offsetX,
            'offsetY': offsetY
        };
    },

    /**
     * Pour éviter d'avoir des points sous la listes lors d'un refresh, on détermine les coordonnées nord-ouest
     * et sud-ouest
     *
     * @returns {{nw: *, sw: *}}
     */
    offsetBounds: function() {
        var $map = $("#map");
        var totalWidth = $map.width();

        var retour = {};

        var offsetX = 0,
            offsetY = 0;

        if ($(window).width() > breakpointMobile) {
            if (totalWidth > (81.25 * getEmPixels())) // if desktop mode
            {
                var hiddenWidth = 400 + (12 * totalWidth / 100);
                offsetX = hiddenWidth;

                retour.type = 'desktop';

            } else if (totalWidth > (61 * getEmPixels())) {
                //Medium
                retour.type = 'tablet';
                offsetY = $(".box-locator").position().top

            } else {
                //Small
                offsetY = $map.height() * 0.35;
            }

        } else {
            retour.type = 'mobile';
        }

        var latLngBounds = map.getBounds();

        var neBound = latLngBounds.getNorthEast();
        var swBound = latLngBounds.getSouthWest();

        // convert the bounds in pixels
        var neBoundInPx = map.getProjection().fromLatLngToPoint(neBound);
        var swBoundInPx = map.getProjection().fromLatLngToPoint(swBound);


        var tmpPoint = new google.maps.Point(
            (offsetX / Math.pow(2, map.getZoom())),
            (offsetY / Math.pow(2, map.getZoom()))
        );

        var newPoint1 = new google.maps.Point(
            swBoundInPx.x + tmpPoint.x,
            neBoundInPx.y + tmpPoint.y
        );

        var newPoint2 = null;
        if (offsetX !== 0) { // desktop
            newPoint2 = new google.maps.Point(
                swBoundInPx.x + tmpPoint.x,
                swBoundInPx.y + tmpPoint.y
            );
        } else { // tablet
            newPoint2 = new google.maps.Point(
                neBoundInPx.x + tmpPoint.x,
                neBoundInPx.y + tmpPoint.y
            );
        }


        var offsetPoint = mapGoogle.getOffsetMap();

        var newPoint3 = new google.maps.Point(
            neBoundInPx.x - offsetPoint.offsetX,
            neBoundInPx.y
        );
        var newPoint4 = new google.maps.Point(
            neBoundInPx.x - offsetPoint.offsetX,
            swBoundInPx.y - offsetPoint.offsetY
        );

        var newPoint1Coord = map.getProjection().fromPointToLatLng(newPoint1);
        var newPoint2Coord = map.getProjection().fromPointToLatLng(newPoint2);
        var newPoint3Coord = map.getProjection().fromPointToLatLng(newPoint3);
        var newPoint4Coord = map.getProjection().fromPointToLatLng(newPoint4);


        if (debug) {
            if (circle1) circle1.setMap(null);
            if (circle2) circle2.setMap(null);

            circle1 = new google.maps.Marker({
                position: newPoint1Coord,
                zIndex: -1,
                icon: {
                    path: google.maps.SymbolPath.CIRCLE,
                    fillOpacity: 1,
                    fillColor: '#000000',
                    strokeOpacity: 1.0,
                    strokeColor: '#b5be00',
                    strokeWeight: 1.0,
                    scale: 4 //pixels
                }
            });

            circle2 = new google.maps.Marker({
                position: newPoint2Coord,
                zIndex: -1,
                icon: {
                    path: google.maps.SymbolPath.CIRCLE,
                    fillOpacity: 1,
                    fillColor: '#000000',
                    strokeOpacity: 1.0,
                    strokeColor: '#bebebe',
                    strokeWeight: 1.0,
                    scale: 4 //pixels
                }
            });

            circle1.setMap(map);
            circle2.setMap(map);
        }

        retour.nw = newPoint1Coord;
        retour.sw = newPoint2Coord;
        retour.ne = newPoint3Coord;
        retour.se = newPoint4Coord;

        return retour;
    },


    /**
     * On prend le point opposé au point le plus loin du centre, on calcule ces coordonnées et on l'ajoue de le fitbounds
     * afin que le zoom soit adapté et centré sur le point centerCoord.
     *
     * @param centerCoord
     * @param pointCoord
     * @returns {*}
     */
    getPointToFitBounds: function(centerCoord, pointCoord) {
        var centerPoint = map.getProjection().fromLatLngToPoint(centerCoord);
        var point = map.getProjection().fromLatLngToPoint(pointCoord);

        var diffX = centerPoint.x - point.x;
        var diffY = centerPoint.y - point.y;


        var newPoint = new google.maps.Point(
            centerPoint.x + diffX, // fix Rémi avant c'était -
            centerPoint.y + diffY
        );

        var newCenterCoords = map.getProjection().fromPointToLatLng(newPoint);

        consoleDebug.log(newCenterCoords.lat());
        consoleDebug.log(newCenterCoords.lng());

        if (debug) {
            if (pointOppose) {
                pointOppose.setMap(null);
            }

            pointOppose = new google.maps.Marker({
                position: newCenterCoords,
                zIndex: -1,
                icon: {
                    path: google.maps.SymbolPath.CIRCLE,
                    fillOpacity: 1,
                    fillColor: '#0f9800',
                    strokeOpacity: 1.0,
                    strokeColor: '#ff10ca',
                    strokeWeight: 1.0,
                    scale: 8 //pixels
                }
            });
            pointOppose.setMap(map);
        }

        return newCenterCoords;
    },

    /**
     * Donne les coordonnées du nouveau centre de la map avec le décalage
     *
     * @param latlng
     * @param minus
     * @returns {*}
     */
    getOffsetCenterCoords: function(latlng, minus) {
        var newCenterCoords = latlng;
        if ($(window).width() > breakpointMobile) { // si tablet ou mobile, on applique un décalage à cause de la liste au dessus la map
            var offset = this.getOffsetMap();
            var offsetX = offset.offsetX;
            var offsetY = offset.offsetY;

            var point1 = map.getProjection().fromLatLngToPoint(latlng);

            var point2 = new google.maps.Point(
                (offsetX / Math.pow(2, map.getZoom())),
                (offsetY / Math.pow(2, map.getZoom()))
            );
            var newCenter = new google.maps.Point(
                point1.x - point2.x, // fix Rémi avant c'était -
                point1.y + point2.y
            );

            if (minus !== undefined) {
                newCenter = new google.maps.Point(
                    point1.x + point2.x, // fix Rémi avant c'était -
                    point1.y + point2.y
                );
            }
            newCenterCoords = map.getProjection().fromPointToLatLng(newCenter);
        }
        return newCenterCoords;
    },

    /**
     * On décale le centre de la map en fonction des résolutions pour que le centre soit bien positionné
     *
     * @param latlng
     */
    offsetCenter: function(latlng, draw) {
        consoleDebug.log('-- offsetCenter --');

        if (draw === undefined) draw = false;

        var coords = mapGoogle.getOffsetCenterCoords(latlng);
        map.setCenter(coords);

        if (draw) {
            if (circle !== null) {
                circle.setMap(null);
            }
            circle = new google.maps.Marker({
                position: latlng,
                zIndex: -150,
                clickable: false,
                icon: {
                    path: google.maps.SymbolPath.CIRCLE,
                    fillOpacity: 1,
                    fillColor: '#986F38',
                    strokeOpacity: 1.0,
                    strokeColor: '#fff',
                    strokeWeight: 1.0,
                    scale: 8 //pixels
                }
            });
            circle.setMap(map);
            circle.setMap(map);

            if (debug) {

                if (radius !== null) {
                    radius.setMap(null);
                }
                if (maxDistance !== 0) {
                    var dist = maxDistance * 1000;
                    consoleDebug.log(dist);
                    radius = new google.maps.Circle({
                        map: map,
                        radius: dist,
                        fillColor: "#4285F4",
                        opacity: 0.5
                    });

                    radius.bindTo('center', circle, 'position');

                }
            }

        }

        setTimeout(function() {
            mapGoogle.calculateMinMaxCoord();
        }, 250);

        consoleDebug.log('-- end offsetCenter --');
    },

    /**
     * Clear markers and clusters
     */
    clearOverlays: function() {
        markers.forEach(function(currentValue) {
            currentValue.setMap(null);
        });
        if (clusterer) {
            clusterer.clearMarkers();
            clusterer.setMap(null);
        }
        currentMarker = null;
    },

    /**
     * Load POI informations
     */
    loadPoiInfos: function() {
        var $results_empty = $('.results-empty');
        $results_empty.text('').removeAttr('aria-live').removeAttr('role');

        // Use default lat/lng if no geoloc
        if (currentLatitude === null || currentLongitude === null) {
            currentLatitude = defaultLatitude;
            currentLongitude = defaultLongitude;
        }

        // clear before sending request
        mapGoogle.clearOverlays();
        $('#store-locator-results').empty();

        var data = createRequest();
        var type = data.type;

        if (type === null) return;
        if (xhr) xhr.abort();

        // Request shops
        $('.results-ctn').addClass("hidden");
        $('.results-header').addClass("hidden");
        $results_empty.addClass('loading').html('<img src="img/loader.gif" alt="" />').show();
        interfaceNespresso.a11yNotifyUser(nespresso.i18n.aria_live_searching);

        //callApi(data, true, drawCenter);
        mapGoogle.refreshMap(true);
    },

    /**
     * Init event map
     *
     * @param elt
     * @param allowFitBounds
     */
    initEventMap: function(elt, allowFitBounds) {
        consoleDebug.log("- initEventMap -");
        $('.item-details .trigger-close').click();
        //mapGoogle.loadPoiInfos(elt, allowFitBounds);

    },

    /**
     * Add the idle listener and launch refreshMap
     */
    idleEventMap: function() {
        consoleDebug.log('- idleEventMap - refreshMap');
        google.maps.event.addListener(map, 'idle', function() {
            mapGoogle.refreshMap(false);
            mapGoogle.clearIdleEventMap();
        });
    },

    /**
     * Remove the idle listener
     */
    clearIdleEventMap: function() {
        if (mapGoogle.initializeMap) {
            consoleDebug.log('- clearIdleEventMap');
            google.maps.event.clearListeners(map, 'idle');
        }
    },

    clearDragendEventMap: function() {
        if (mapGoogle.initializeMap) {
            google.maps.event.clearListeners(map, 'dragend');
        }
    },

    dragStartEventMap: function() {
        var $_trigger_options = $('.trigger-options');
        google.maps.event.addListener(map, 'dragstart', function() {
            if ($_trigger_options.hasClass('open')) {
                $(this).removeClass('open');
            }
        });
    },

    dragendEventMap: function() {
        google.maps.event.addListener(map, 'dragend', function() {
            consoleDebug.log('------ DRAGEND EVENT ------');

            var coords = mapGoogle.getOffsetCenterCoords(map.getCenter(), true);
            drawCenter = false;

            currentLongitude = coords.lng();
            currentLatitude = coords.lat();

            if (debug) {

                if (centerDrag) {
                    centerDrag.setMap(null);
                }

                centerDrag = new google.maps.Marker({
                    position: coords,
                    zIndex: -1,
                    icon: {
                        path: google.maps.SymbolPath.CIRCLE,
                        fillOpacity: 1,
                        fillColor: '#FE17C1',
                        strokeOpacity: 1.0,
                        strokeColor: '#000000',
                        strokeWeight: 1.0,
                        scale: 10 //pixels
                    }
                });

                centerDrag.setMap(map);
            }

            defaultSearchBehavior = false;
            nearby = true;
            countryRestriction = '';
            isGeolocSuccess = true;
        });
    },

    clearZoomEventMap: function() {
        if (mapGoogle.initializeMap) {
            google.maps.event.clearListeners(map, 'zoom_changed');
        }
    },

    zoomEventMap: function() {
        if (mapGoogle.initializeMap) {
            google.maps.event.addListener(map, 'zoom_changed', function() {
                if (!searchUser && isIE) {
                    defaultSearchBehavior = false;
                }
            });
        }
    },

    calculateMinMaxCoord: function() {
        // get extremity of the map
        var bounds = map.getBounds();

        // get offset bounds to avoid markers under the map.
        var temp = mapGoogle.offsetBounds();

        var ne = bounds.getNorthEast(); // LatLng of the north-east corner
        var sw = bounds.getSouthWest(); // LatLng of the south-west corder

        consoleDebug.log(temp);

        switch (temp.type) {
            case 'desktop':
                minLat = sw.lat();
                minLng = temp.sw.lng();
                maxLat = ne.lat();
                maxLng = ne.lng();
                break;

            case 'tablet':
                minLng = sw.lng();
                minLat = temp.sw.lat();
                maxLat = ne.lat();
                maxLng = ne.lng();
                break;

            case 'mobile':
                minLng = sw.lng();
                minLat = sw.lat();
                maxLat = ne.lat();
                maxLng = ne.lng();
                break;
        }

        // dessine un rectangle en mode debug
        if (debug) {
            if (rectangle) rectangle.setMap(null);

            rectangle = new google.maps.Rectangle({
                strokeColor: '#FF0000',
                strokeOpacity: 0.8,
                strokeWeight: 2,
                fillColor: '#FF0000',
                fillOpacity: 0.35,
                bounds: {
                    north: minLat,
                    south: maxLat,
                    east: maxLng,
                    west: minLng
                }
            });

            rectangle.setMap(map);

            if (t1) {
                t1.setMap(null);
            }
            if (t2) {
                t2.setMap(null);
            }
            if (t3) {
                t3.setMap(null);
            }
            if (t4) {
                t4.setMap(null);
            }

            t1 = new google.maps.Marker({
                position: {
                    lat: parseFloat(minLat),
                    lng: parseFloat(minLng)
                },
                zIndex: -2,
                icon: {
                    title: {
                        lat: parseFloat(minLat),
                        lng: parseFloat(minLng)
                    },
                    path: google.maps.SymbolPath.CIRCLE,
                    fillOpacity: 1,
                    fillColor: '#fcd600',
                    strokeOpacity: 1.0,
                    strokeColor: '#bebebe',
                    strokeWeight: 1.0,
                    scale: 10 //pixels
                }
            });

            t2 = new google.maps.Marker({
                position: {
                    lat: parseFloat(minLat),
                    lng: parseFloat(maxLng)
                },
                zIndex: -2,
                icon: {
                    title: {
                        lat: parseFloat(minLat),
                        lng: parseFloat(maxLng)
                    },
                    path: google.maps.SymbolPath.CIRCLE,
                    fillOpacity: 1,
                    fillColor: '#7CFC00',
                    strokeOpacity: 1.0,
                    strokeColor: '#bebebe',
                    strokeWeight: 1.0,
                    scale: 10 //pixels
                }
            });

            t3 = new google.maps.Marker({
                position: {
                    lat: parseFloat(maxLat),
                    lng: parseFloat(minLng)
                },
                zIndex: -2,
                icon: {
                    title: {
                        lat: parseFloat(maxLat),
                        lng: parseFloat(minLng)
                    },
                    path: google.maps.SymbolPath.CIRCLE,
                    fillOpacity: 1,
                    fillColor: '#f800fc',
                    strokeOpacity: 1.0,
                    strokeColor: '#bebebe',
                    strokeWeight: 1.0,
                    scale: 10 //pixels
                }
            });

            t4 = new google.maps.Marker({
                position: {
                    lat: parseFloat(maxLat),
                    lng: parseFloat(maxLng)
                },
                zIndex: -2,
                icon: {
                    title: {
                        lat: parseFloat(maxLat),
                        lng: parseFloat(maxLng)
                    },
                    path: google.maps.SymbolPath.CIRCLE,
                    fillOpacity: 1,
                    fillColor: '#0a2ffc',
                    strokeOpacity: 1.0,
                    strokeColor: '#bebebe',
                    strokeWeight: 1.0,
                    scale: 10 //pixels
                }
            });

            t1.setMap(map);
            t2.setMap(map);
            t3.setMap(map);
            t4.setMap(map);
        }
    },

    /**
     * Refresh the map
     */
    refreshMap: function(allow_fit) {
        mapGoogle.clearIdleEventMap();
        $('.loaderV4').addClass('active');

        var filters = [];
        var $results_empty = $('.results-empty');

        this.clearOverlays();

        $results_empty.text('').removeAttr('aria-live').removeAttr('role');

        $('#store-locator-results').empty();

        // ignore filters when on recycling and pick_up_point, they are always hidden in this case
        if (currentShopType !== 'pick_up_point') {
            $('input[name="filters[]"]:checked').each(function() {
                filters.push($(this).val());
            });
        }

        mapGoogle.calculateMinMaxCoord();

        var data = {
            country: country,
            lang: nespresso.lang,
            lat: currentLatitude,
            lng: currentLongitude,
            minLat: minLat,
            maxLat: maxLat,
            minLng: minLng,
            maxLng: maxLng,
            geo: isGeolocSuccess,
            type: currentShopType,
            filters: filters,
            nearby: nearby,
            countryRestriction: countryRestriction,
            service: $('.sub-menu li.active').attr('data-value'),
            defaultSearchBehavior: defaultSearchBehavior,
            pointLat: currentPointLatitude,
            pointLng: currentPointLongitude
        };

        switch (currentPlaceType) {
            case 'locality':
            case 'city':
                data.city = currentRequest;
                break;

            case 'postal_code':
                data.zipcode = currentRequest;
                break;
        }

        var type = data.type;

        if (type === null) return;

        // Request shops
        $('.results-ctn').addClass("hidden");
        $('.results-header').addClass("hidden");
        $results_empty.addClass('loading').html('<img src="img/loader.gif" alt="" />').show();
        interfaceNespresso.a11yNotifyUser(nespresso.i18n.aria_live_searching);

        callApi(data, allow_fit, drawCenter);

        mapGoogle.clearIdleEventMap();
    },

    /**
     * Move the center of the marker (only for desktop and tablet)
     *
     * @param marker
     */
    centerMapOffset: function(marker) {
        mapGoogle.clearIdleEventMap();

        oldZoom = map.getZoom();
        oldCenter = map.getCenter();

        var offsetX, offsetY;

        consoleDebug.log(map.getZoom());
        consoleDebug.log(poi_minZoom);

        if (map.getZoom() < poi_minZoom) map.setZoom(poi_minZoom);

        var totalWidth = $(window).width();

        if ($(window).width() < breakpointMobile) { // on centre sur le marqueur (car pas besoin de décalage)
            map.setCenter(marker.position);
        } else {

            //desktop
            if (totalWidth > (81.25 * getEmPixels())) // if desktop mode
            {
                offsetX = 260;
                offsetY = 0;
            } else if (totalWidth > (61 * getEmPixels())) {
                //Medium
                offsetX = 0;
                offsetY = $(window).height() * 0.375;
            } else {
                //Smal
                offsetX = 0;
                offsetY = $(window).height() * 0.35;
            }

            var projection = map.getProjection();
            var point1 = projection.fromLatLngToPoint(marker.position);
            var point2 = new google.maps.Point(offsetX / Math.pow(2, map.getZoom()), offsetY / Math.pow(2, map.getZoom()));
            var cent = map.getProjection().fromPointToLatLng(new google.maps.Point(point1.x - point2.x, point1.y + point2.y));
            map.panTo(cent);
        }
    },

    /**
     * Autocomplete event
     *
     * @param autocomplete
     */
    autocompleteEvent: function(autocomplete) {
        google.maps.event.addListener(autocomplete, 'place_changed', function() {
            if (mapGoogle.initializeMap) {
                //searchUser = false;
            }
            drawCenter = true;

            interfaceNespresso.closeDetailInfobox();

            // add Google Analytics event
            gtmDataObject.push({
                'event': 'customEvent',
                'eventCategory': 'User Engagement',
                'eventAction': 'Click',
                'eventLabel': 'Store locator - Search',
                'nonInteraction': 0,
                'storeLocatorPlaceType': currentShopType,
                'storeLocatorLocation': geoloc.$geolocInput.val(),
                'storeLocatorIsGeolocationUsed': geoloc.$geolocButton.hasClass('activated').toString(),
                'storeLocatorIsFilterUsed': ($('input[name="filters[]"]:checked').length !== 0).toString(),
                'storeLocatorResultsNb': 5
            });

            consoleDebug.log("- autocompleteEvent place_changed -");
            defaultSearchBehavior = true;
            nearby = true;
            mapGoogle.clearIdleEventMap();

            var pacItems = $('.pac-container .pac-item-refresh, .pac-container .pac-item');

            var userSelectItem = true;

            geoloc.deactivateCurrentLocation();
            geoloc.$geolocInput.trigger("blur");
            if (userSelectItem === true) {
                var place = autocomplete.getPlace();
                if (place !== undefined) {
                    if (typeof place.address_components === 'undefined') {
                        geoloc.findByText();
                    } else {
                        geoloc.placeMatched(place);
                    }
                } else {
                    geoloc.findByText();
                }
            }
        });
    },

    /**
     * Init map
     *
     * @param callback fourni pour lancer le callback une fois que la carte est correctement initialisé
     */
    init: function(callback) {
        this.createMap(callback);
        if (!this.initializeMap) {
            this.closeFilters();
            this.disableDragWhenScroll();
        }
    }
};

currentShopType = $('#shops .active').data('type');

// -------------------------------------------------------------------------
// Geoloc
// -------------------------------------------------------------------------
geoloc = {
    $geolocInput: $("#location"),
    $geolocButton: $(".geoloc-btn"),
    $locationForm: $('#locationForm'),
    $clearButton: $('.clear-btn'),
    $formSearch: $('.form-search'),

    /**
     * Remove active class for the geolocation button
     */
    deactivateCurrentLocation: function() {
        geoloc.$geolocButton.removeClass("active");
    },

    /**
     * Add active class for the geolocation button
     */
    activateCurrentLocation: function() {
        geoloc.$geolocButton.addClass("active");
    },

    /**
     * Find by text
     */
    findByText: function() {
        consoleDebug.log("- findByText -");

        var placeName = geoloc.$geolocInput.val();
        if (placeName === "") return;

        geoloc.$geolocButton.addClass('loading');
        // The user pressed enter in the input without selecting a result from the list

        var optionsAutocomplete = {
            'input': placeName,
            'offset': placeName.length,
        };

        if (nespresso.limit_autocomplete && nespresso.limit_autocomplete_country) {
            optionsAutocomplete.componentRestrictions = {
                country: nespresso.limit_autocomplete_country
            };
        }

        if (mapGoogle.initializeMap) {
            optionsAutocomplete.bounds = map.getBounds();
        }

        var autocompleteService = new google.maps.places.AutocompleteService();
        autocompleteService.getPlacePredictions(optionsAutocomplete,
            function listentoresult(list) {
                if (list === null || list.length === 0) {
                    // no results
                } else {

                    var index_list = 0;
                    $.each(list, function(index, value) {
                        if (value.description === placeName) {
                            index_list = index;
                            return index_list;
                        }
                    });

                    var placesService = new google.maps.places.PlacesService(document.getElementById('location'));

                    placesService.getDetails({
                            'reference': list[index_list].reference
                        },
                        function detailsresult(detailsResult, placesServiceStatus) {
                            // Here's the first result in the AutoComplete with the exact
                            // same data format as you get from the AutoComplete.
                            geoloc.placeMatched(detailsResult);
                        }
                    );
                }
                setTimeout(function() {
                    geoloc.$geolocButton.removeClass('loading');
                }, 250);
            }
        );
    },

    placeMatched: function(place) {
        currentCountry = window.formatter.extractCountryCode(place);
        country = currentCountry;

        // set current place type
        currentPlaceType = place.types[0];

        //countryRestriction = currentCountry;

        nearby = true;
        if (currentPlaceType === 'country') {
            //defaultSearchBehavior = false;
            nearby = false;
            isGeolocSuccess = false;
            countryRestriction = currentCountry;
        } else {
            isGeolocSuccess = true;
            countryRestriction = '';
        }

        currentRequest = place.name;

        if (mapGoogle.initializeMap) {
            placeMatched = true;

            //if (currentLongitude.toFixed(3) !== place.geometry.location.lng().toFixed(3) && currentLatitude.toFixed(3) !== place.geometry.location.lat().toFixed(3)) {
            currentLongitude = place.geometry.location.lng();
            currentLatitude = place.geometry.location.lat();

            //mapGoogle.offsetCenter(place.geometry.location);

            //map.setCenter(place.geometry.location);

            consoleDebug.log('- refreshMap in placeMatched -');

            mapGoogle.clearIdleEventMap();

            if (searchUser) {
                mapGoogle.refreshMap(defaultSearchBehavior);
            }

            //}
        }

        geolocAtSubmit = true;
        scrollTopOnMobile();
    },

    /**
     * Geolocation with the IP
     */
    geolocationFrom: function(ip) {
        consoleDebug.log('- geolocationfrom -');
        geoloc.$geolocButton.addClass('loading');
        $.ajax('app/geolocation.php', {
            data: {
                ip: ip
            },
            success: function(data) {
                geoloc.$geolocButton.removeClass('loading');
                data = JSON.parse(data);
                if (data.status === "OK") {
                    consoleDebug.log('ok geoloc');
                    geoloc.$geolocButton.addClass('activated');
                    currentLatitude = data.latitude;
                    currentLongitude = data.longitude;
                    geoloc.$geolocButton.addClass('activated').html("Geolocation is activated");
                    geoloc.reverseGeocoding(data.latitude, data.longitude, geoloc.$geolocInput);

                    if (mapGoogle.initializeMap) {
                        mapGoogle.offsetCenter(new google.maps.LatLng(currentLatitude, currentLongitude));
                        mapGoogle.refreshMap(true);
                    }
                    geoloc.$geolocButton.removeClass('loading');
                } else {
                    consoleDebug.log('nok geoloc');
                    currentLatitude = defaultLatitude;
                    currentLongitude = defaultLongitude;

                    //map.setCenter(new google.maps.LatLng(currentLatitude, currentLongitude));
                    if (mapGoogle.initializeMap) {
                        mapGoogle.offsetCenter(new google.maps.LatLng(currentLatitude, currentLongitude));
                        mapGoogle.refreshMap(true);
                    }
                    geoloc.$geolocButton.removeClass('loading');
                }
                geoloc.$geolocButton.removeClass('loading');
            },
            error: function() {
                consoleDebug.log('error geoloc');
                //trackMapMove(true);
                currentLatitude = defaultLatitude;
                currentLongitude = defaultLongitude;
                //map.setCenter(new google.maps.LatLng(currentLatitude, currentLongitude));

                if (mapGoogle.initializeMap) {
                    mapGoogle.offsetCenter(new google.maps.LatLng(currentLatitude, currentLongitude));
                    mapGoogle.refreshMap(true);
                }
                //map.setZoom(geoloc_zoom);
                geoloc.$geolocButton.removeClass('loading');
            }
        });
    },

    /**
     * Geolocation
     */
    geolocationBrowser: function() {
        geoloc.$geolocButton.addClass('loading');
        consoleDebug.log("- geolocationBrowser -");
        geo.getCurrentPosition(function(position) {
            consoleDebug.log('success');
            isGeolocSuccess = true;
            nearby = true;
            defaultSearchBehavior = true;
            geoloc.$geolocButton.addClass('activated');
            geoloc.reverseGeocoding(position.coords.latitude, position.coords.longitude, geoloc.$geolocInput);
            setTimeout(function() {
                geoloc.$geolocButton.addClass('loading');
            }, 200);

        }, function() {
            consoleDebug.log('error');
            defaultSearchBehavior = true;
            if (IP_geoloc_activated) {
                geoloc.geolocationFrom(_USERIP);
            } else {
                geoloc.$geolocButton.removeClass('loading');
            }
        });
    },

    /**
     * If the Geolocation succeed
     */
    geolocationSuccess: function(position) {
        consoleDebug.log('- geolocationSuccess -');
        consoleDebug.log(position);

        currentLatitude = position.coords.latitude;
        currentLongitude = position.coords.longitude;

        isGeolocSuccess = true;
        geoloc.$geolocButton.addClass("activated");
        geoloc.reverseGeocoding(currentLatitude, currentLongitude, geoloc.$geolocInput);

        if (mapGoogle.initializeMap) {
            mapGoogle.clearIdleEventMap();

            //var self = this;
            //mapGoogle.clearOverlays();

            /*var bounds = map.getBounds();
             var ne = bounds.getNorthEast(); // LatLng of the north-east corner
             var sw = bounds.getSouthWest(); // LatLng of the south-west corner

             minLat = sw.lat();
             var maxLat = ne.lat();
             var minLng = sw.lng();
             var maxLng = ne.lng();*/

            var filters = [];
            // ignore filters when on recycling and pick_up_point, they are always hidden in this case
            if (currentShopType !== 'pick_up_point') {
                $('input[name="filters[]"]:checked').each(function() {
                    filters.push($(this).val());
                });
            }

            var dataGeo = {
                country: "",
                lang: nespresso.lang,
                lat: currentLatitude,
                lng: currentLongitude,
                /*minLat: minLat,
                 maxLat: maxLat,
                 minLng: minLng,
                 maxLng: maxLng,*/
                geo: isGeolocSuccess,
                type: currentShopType,
                filters: filters,
                nearby: true,
                defaultSearchBehavior: defaultSearchBehavior,
                countryRestriction: false
            };
            //map.setZoom(geoloc_zoom);

            //mapGoogle.offsetCenter(position);
            //map.setCenter(new google.maps.LatLng(currentLatitude, currentLongitude));

            setTimeout(function() {
                mapGoogle.refreshMap(true);
                //callApi(dataGeo, true, drawCenter);
            }, 1000);

            //geoloc.reverseGeocoding(currentLatitude, currentLongitude, geoloc.$geolocInput);

            /*setTimeout(function() {
             mapGoogle.refreshMap();
             }, 250);*/
            //moveMap();
        }
    },

    /**
     * Reverse the coords in order to fill the input
     *
     * @param lat
     * @param lng
     * @param jQuery_element
     */
    reverseGeocoding: function(lat, lng, jQuery_element) {
        consoleDebug.log("- reverseGeocoding -");

        currentLatitude = lat;
        currentLongitude = lng;

        //geoloc.$geolocInput.blur().focusout().trigger('focusout');

        var geocoder = new google.maps.Geocoder;
        var latlng = {
            lat: parseFloat(lat),
            lng: parseFloat(lng)
        };
        geocoder.geocode({
            'location': latlng
        }, function(results, status) {
            geoloc.$geolocButton.removeClass('loading');
            geoloc.$formSearch.removeClass('hidden-clear-btn');
            if (status === 'OK') {
                if (results[0]) {
                    if (jQuery_element) {
                        valueInput = results[0].formatted_address;
                        jQuery_element.val(results[0].formatted_address);
                        geoloc.findByText();
                    }
                    return results[0].formatted_address;
                } else {
                    if (jQuery_element) {
                        jQuery_element.val("lat: " + lat + ", lng: " + lng);
                        valueInput = "lat: " + lat + ", lng: " + lng;
                    }
                    return "lat: " + lat + ", lng: " + lng;
                }
            } else {
                if (jQuery_element) {
                    jQuery_element.val("lat: " + lat + ", lng: " + lng);
                    valueInput = "lat: " + lat + ", lng: " + lng;
                }
                return "lat: " + lat + ", lng: " + lng;
            }
        });
        //geoloc.$geolocInput.blur();
        //$('.a11y-tabpanel-tab[aria-selected="true"]').focus();

        consoleDebug.log('-- end reverseGeocoding');
    },

    /**
     * Add event click on the geolocation button
     */
    geolocClick: function() {
        geoloc.$geolocButton.on('click', function(e) {
            interfaceNespresso.shopDetailClear();
            geoloc.$geolocButton.addClass('loading');
            mapGoogle.clearIdleEventMap();
            consoleDebug.log('- click geoloc button -');
            defaultSearchBehavior = true;
            searchUser = false;

            var options = {
                enableHighAccuracy: true,
                timeout: 5000,
                maximumAge: 0
            };

            if (geo) {
                try {
                    geo.getCurrentPosition(
                        function(position) {
                            geoloc.geolocationSuccess(position)
                        },
                        function() {
                            if (IP_geoloc_activated) {
                                geoloc.geolocationFrom(_USERIP);
                            } else {
                                geoloc.$geolocButton.removeClass('loading');
                            }
                        },
                        options
                    );
                } catch (err) {
                    console.log(err.message);
                }
            } else {
                if (IP_geoloc_activated) {
                    geoloc.geolocationFrom(_USERIP);
                } else {
                    geoloc.$geolocButton.removeClass('loading');
                }
            }
            //e.preventDefault();
        });
    },

    init: function() {
        // Geolocation
        geoloc.geolocationBrowser();
        geoloc.clearButton();
        geoloc.eventInput();

        // Disable focus only for one country
        if (currentCountry != 'CHE') {
            // Focus the input
            geoloc.$geolocInput.focus();
        }

        geoloc.$geolocInput.click(function() {
            geoloc.deactivateCurrentLocation();
        });

        autocomplete = new google.maps.places.Autocomplete(document.getElementById('location'));

        if (nespresso.limit_autocomplete && nespresso.limit_autocomplete_country) {
            autocomplete.setComponentRestrictions({
                'country': nespresso.limit_autocomplete_country
            });
        }

        //google.maps.event.clearListeners(autocomplete, 'place_changed');

        //autocomplete.setBounds(circle.getBounds());
        mapGoogle.autocompleteEvent(autocomplete);

        // Bind submit event
        geoloc.$locationForm.bind('submit', function(e) {
            // $('#poiExplanation').css('display','none');
            // $('#poiExplanation').hide();
            // if ('parentIFrame' in window) {
            //     parentIFrame.scrollTo(0,0);
            // }
            geoloc.openMap();

            e.preventDefault();
            return false;
        });

        $('#btnClear').click(function() {
            //self.geolocInput.val("").focusWithoutScrolling();
            geoloc.deactivateCurrentLocation();
        });

        geoloc.geolocClick();

        /*geoloc.$geolocInput.focusout(function(){
            geoloc.deactivateCurrentLocation();
        });*/

        if (Modernizr.touch) {
            geoloc.activateCurrentLocation();
        }
    },

    openMap: function() {
        $('#storePanel-' + currentShopType).attr('aria-hidden', false);
        $('html').addClass('close-intro');
        drawCenter = true;

        gtmDataObject.push({
            'pageName': 'store-locator',
            'pageType': 'locator',
            'breadCrumbID': 'locator:::store-locator-search-result:',
            'event': 'event_virtualPageView'
        });

        // change the # in address bar
        window.top.history.pushState({}, 'Store locator', '#map-results');

        if ($(window).width() < breakpointMobile) {
            var $_iframe = window.parent.document.getElementById('store-locator-iframe');
            if ($_iframe) {
                $_iframe.height = parseInt(window.parent.document.documentElement.clientHeight) - 50;
            }
            scrollTopOnMobile();
        }

        // on passe la fonction anonyme en callback pour s'assurer de lancer ces commandes une fois que la map est correctement initialisé.
        mapGoogle.init((function() {
            if (!searchUser) {

                // add Google Analytics event
                gtmDataObject.push({
                    'event': 'customEvent',
                    'eventCategory': 'User Engagement',
                    'eventAction': 'Click',
                    'eventLabel': 'Store locator - Search',
                    'nonInteraction': 0,
                    'storeLocatorPlaceType': currentShopType,
                    'storeLocatorLocation': geoloc.$geolocInput.val(),
                    'storeLocatorIsGeolocationUsed': geoloc.$geolocButton.hasClass('activated').toString(),
                    'storeLocatorIsFilterUsed': ($('input[name="filters[]"]:checked').length !== 0).toString(),
                    'storeLocatorResultsNb': 5
                });

                mapGoogle.loadPoiInfos();
            }

            geolocAtSubmit = true;
            geoloc.deactivateCurrentLocation();

            if (searchUser) {
                setTimeout(function() {
                    google.maps.event.trigger(autocomplete, 'place_changed');
                }, 150);
            }
        }));
    },

    clearButton: function() {
        geoloc.$clearButton.on('click', function(e) {
            e.preventDefault();
            geoloc.$geolocInput.val('').focus();
            valueInput = '';

            geoloc.$formSearch.addClass('hidden-clear-btn');

            //$(this).addClass('hidden');
        });
    },

    eventInput: function() {
        geoloc.$geolocInput.on('change', function(e) {
            //e.preventDefault();
            searchUser = true;
            if (geoloc.$geolocInput.val().length > 0) {
                if (geoloc.$formSearch.hasClass('hidden-clear-btn')) {
                    geoloc.$formSearch.removeClass('hidden-clear-btn');
                }
            } else {
                if (!geoloc.$formSearch.hasClass('hidden-clear-btn')) {
                    geoloc.$formSearch.addClass('hidden-clear-btn');
                }
            }
            geoloc.clearButton();
        });
    }

};
geoloc.init();
var openMap = nespresso.open;
if (openMap) {
    geoloc.openMap();
}

// -------------------------------------------------------------------------
// Filter Find Us
// -------------------------------------------------------------------------
var optionFilter = {
    filters: $('#filters'),

    init: function() {
        optionFilter.eventFilter();
        var self = this;
        self.filters.find('label').keypress(function(e) {
            if (e.which === 32) {
                //Toggle filter checkbox checked if space is pressed
                var $input = $(this).siblings();
                $input.attr('checked', $input.attr('checked') ? false : true).trigger('change');
            }
        });
        self.filters.find('input')
            .change(function(e) {
                $(this).siblings()[$(this).attr('checked') ? 'addClass' : 'removeClass']('active');

                //defaultSearchBehavior = false;
                //nearby = true;
                //countryRestriction = '';

                if (mapGoogle.initializeMap) {
                    setTimeout(function() {
                        mapGoogle.refreshMap(defaultSearchBehavior);
                    }, 250);

                }
            })
            .bind('focus blur', function(e) {
                var
                    c = 'a11y-outline',
                    $label = $(this).prev();

                $label.removeClass(c);
                if ('blur' !== e.type) {
                    $label.addClass(c);
                }
            });
        // init controlls (browser may keep these values on refresh!)
        self.filters.find('input').each(function(e) {
            $(this).siblings().toggleClass('active', $(this).attr('checked'));
        });
    },

    eventFilter: function() {
        // init options button
        var $_trigger_options = $('.trigger-options');
        if ($_trigger_options.find('a').hasClass('disabled-link')) {
            $(this).off('click');
        } else {
            $_trigger_options.find('a').off('click').on('click', function(e) {
                $('html').toggleClass('open-options');
                $(this).parent().toggleClass('open').focus();
                if ($(this).parent().hasClass('open')) {
                    $(this).attr('aria-label', window.nespresso.i18n.aria_label_filters_button_open);
                } else {
                    $(this).attr('aria-label', window.nespresso.i18n.aria_label_filters_button_close);
                }

                e.preventDefault();
                e.stopPropagation();

                /*$('body').off('click').on('click', function(e) {

                    if( !$(e.target).hasClass('trigger-options') && $(e.target).parents('.trigger-options').length <= 0 ) {
                        //e.stopPropagation();
                        //e.preventDefault();
                        $_trigger_options.removeClass('open');
                        $('html').removeClass('open-options');
                        $(this).find('a').attr('aria-label', window.nespresso.i18n.aria_label_filters_button_close);
                    }
                })*/
            });
        }
    },
};
optionFilter.init();

function createRequest() {
    var filters = [];
    // ignore filters when on recycling and pick_up_point, they are always hidden in this case
    if (currentShopType !== 'pick_up_point') {
        $('input[name="filters[]"]:checked').each(function() {
            filters.push($(this).val());
        });
    }

    var data = {
        country: currentCountry,
        lang: nespresso.lang,
        lat: currentLatitude,
        lng: currentLongitude,
        geo: isGeolocSuccess,
        type: currentShopType,
        filters: filters,
        nearby: nearby,
        defaultSearchBehavior: defaultSearchBehavior,
        countryRestriction: '',
        service: $('.sub-menu li.active').attr('data-value')
    };

    switch (currentPlaceType) {
        case 'locality':
        case 'city':
            data.city = currentRequest;
            break;

        case 'postal_code':
            data.zipcode = currentRequest;
            break;

        default:

    }

    return data;
}

// -------------------------------------------------------------------------
// Panel
// -------------------------------------------------------------------------
var panelAction = {
    panelClasses: [
        '.a11y-tabpanel',
        '.a11y-tabpanel-tab',
        '.a11y-tabpanel-faketab',
        '.a11y-tabpanel-panel'
    ],
    $shops: $('#shops'),
    $filters: $('#filters'),

    activateTab: function() {
        var self = this;
        self.$shops.on('activateTab', self.panelClasses[1], function(e) {
            $('a', self.$shops).removeClass('active');
            $('a', this).addClass('active');
        });
    },

    manageTabPanel: function() {
        var self = this;
        var t = self.panelClasses[0];
        $(t).a11yTabPanel()
            .on('preSwitch.a11yTabPanel',
                function(e, $newTab, $newPanel) {
                    var $_trigger_options = $('.trigger-options');
                    self.$filters.appendTo($_trigger_options);
                    $('#main').appendTo($newPanel);
                    $newTab.trigger('activateTab');

                    // Refresh the filters according POI on the map
                    /*if (mapGoogle.initializeMap) {
                        if($newTab.is('#storeTab-boutique')){
                            $_trigger_options.find('a').removeClass('disabled-link');
                        } else {
                            $_trigger_options.find('a').addClass('disabled-link').off('click');
                        }
                    }*/
                    //if (xhr) xhr.abort();
                }
            )
            .on('postSwitch.a11yTabPanel',
                function(e, $newTab, $newPanel) {
                    var $link = $newTab.find('a');
                    currentShopType = $link.data('type');

                    consoleDebug.log(' postSwitch.a11yTabPanel - refreshMap');
                    if (mapGoogle.initializeMap) {
                        // remove selected filters when we change tab category
                        /*self.$filters.find('input').each(function() {
                            $(this).prop('checked', false);
                        });*/
                        mapGoogle.refreshMap(defaultSearchBehavior);
                    }

                    if ($(window).width() > breakpointMobile) {
                        $('.jspScrollable .jspPane, .jspScrollable .jspDrag').css('top', '0');
                    }
                }
            )
            .on('tabFocus.a11yTabPanel',
                function(e, $tab, $tabs, $panel) {
                    $tab.trigger('activateTab');
                }
            )
            // Case of an external link display like a tab
            .find(self.panelClasses[2]).find('a').bind('focus', function() {
                var $this = $(this);
                $this.addClass('active')
                    .closest(self.panelClasses[0]).find(self.panelClasses[1])
                    .attr('aria-selected', 'false')
                    .find('a')
                    .removeClass('active');
            });

        $('#store-locator-results').on('focus', 'button', function(e) {
            var $r = $('#results');

            $r.closest(self.panelClasses[0]).data($.fn.a11yTabPanel.PLUGIN_NAME).$activeTab.trigger('activateTab');

            if (!$r.hasClass('open')) {
                $r.removeClass('closed').addClass('open')
                    .find('.holder a').removeClass('closed open').addClass('open');
            }
        });
    },

    init: function() {
        var self = this;
        self.activateTab();
        self.manageTabPanel();
    }
};
$(function() {
    panelAction.init();
});

function callApi(dataInput, allowFitBounds, drawCenter) {
    var nbMarkers = 0;
    mapGoogle.clearIdleEventMap();
    mapGoogle.clearDragendEventMap();

    consoleDebug.log(dataInput);

    xhr = $.ajax('app/find_poi-v4.php', {
        data: dataInput,
        success: function(data) {

            mapGoogle.clearOverlays();

            consoleDebug.log(' -- markers --');
            consoleDebug.log(markers);
            markers = [];
            consoleDebug.log(markers);

            consoleDebug.log(markers);
            var counter = 0;
            enabledFilters = {
                demo: 0,
                pickup: 0,
                wifi: 0,
                recycling: 0,
                wheelchair: 0,
                cube: 0,
                appointment: 0,
                recycling_b2b: 0,
                npoint: 0
            };

            if (data.length !== 0) {
                var tmp = parseFloat(data[data.length - 1].distance.value);
                if (tmp <= 50) {
                    maxDistance = 50; // 50km
                } else if (tmp <= 100) {
                    maxDistance = 100; // 100km
                } else if (tmp <= 200) {
                    maxDistance = 200; // 200km
                } else {
                    maxDistance = 0; // Country
                }
            }

            var html = '';
            $.each(data, function(index, value) {
                var id = window.uniqId();
                nbMarkers++;

                var isStore = value.point_of_interest.type === 'BOUTIQUE';
                value.isStore = isStore;
                value.isNcafe = value.point_of_interest.type === 'NCAFE';
                var services = value.point_of_interest.supported_service;
                var address = value.point_of_interest.address;
                var number = isStore ? null : ++counter;

                if (window.formatter.isArray(address)) {
                    address = address.pop();
                }

                var storeName = window.arrayGet(address, 'name.company_name_type.name.name');

                if (storeName === null) storeName = '';

                var isRecycling = (services === 'RECYCLING'),
                    isDemo = (typeof(value.point_of_interest.demo) !== "undefined" && value.point_of_interest.demo === 1),
                    isWifi = (typeof(value.point_of_interest.wifi) !== "undefined" && value.point_of_interest.wifi === 1),
                    isB2b = (typeof(value.point_of_interest.b2b) !== "undefined" && value.point_of_interest.b2b === 1),
                    isB2c = (typeof(value.point_of_interest.recycling) !== "undefined" && value.point_of_interest.recycling === 1),
                    isPickup = (typeof(value.point_of_interest.pickup) !== "undefined" && value.point_of_interest.pickup === 1),
                    isWheelchair = (typeof(value.point_of_interest.wheelchair) !== "undefined" && value.point_of_interest.wheelchair === 1),
                    isCube = (typeof(value.point_of_interest.cube) !== "undefined" && value.point_of_interest.cube === 1),
                    isAppointment = (typeof(value.point_of_interest.appointment) !== "undefined" && value.point_of_interest.appointment === 1),
                    isNpoint = (typeof(value.point_of_interest.npoint) !== "undefined" && value.point_of_interest.npoint === 1);

                //  save  these  values  for  later  use
                enabledFilters.demo |= isDemo;
                enabledFilters.wifi |= isWifi;
                enabledFilters.pickup |= isPickup;
                enabledFilters.recycling |= isRecycling;
                enabledFilters.wheelchair |= isWheelchair;
                enabledFilters.cube |= isCube;
                enabledFilters.appointment |= isAppointment;
                enabledFilters.b2b |= isB2b;
                enabledFilters.b2c |= isB2c;
                enabledFilters.npoint |= isNpoint;

                var phone = value.point_of_interest.phone ? value.point_of_interest.phone : '';

                html +=
                    '<li data-id="' + id + '">' +
                    '<button \
                            aria-labelledby="resultLabel' + id + '" \
                                aria-describedby="resultDesc' + id + ' resultCapabilities' + id + '" tabindex="' + 3 + '" ' +
                    'class="shop-item shop-item-' + id + '">' +
                    '<div class="StoreResult-content">' +
                    '<div class="shop-name" id="resultLabel' + id + '"><strong>' + storeName + '</strong></div>' +
                    '<div class="shop-address" id="resultDesc' + id + '">' + [address.address_line, address.city.name].join('<br>') +
                    (phone !== '' ? '<br><div class="phone" aria-label="' + window.nespresso.i18n.label_phone + ' ' + phone + '&nbsp;">Tel. ' + phone + '</div>' : '') + '</div>' +
                    '<div class="Capabilities shop-attributes" id="resultCapabilities' + id + '">' +
                    '<ul>' +
                    (value.distance.value && currentLatitude && value.point_of_interest.type !== 'PICK_UP_POINT' ? '<li>' + Math.round(value.distance.value * 100) / 100 + ' km&nbsp;</li>' : '') +
                    (isRecycling ? window.formatter.tplCapability('recycling') : '') +
                    (isDemo ? window.formatter.tplCapability('demo') : '') +
                    (isWifi ? window.formatter.tplCapability('wifi') : '') +
                    (isPickup ? window.formatter.tplCapability('pickup') : '') +
                    (isWheelchair ? window.formatter.tplCapability('wheelchair') : '') +
                    (isCube ? window.formatter.tplCapability('cube') : '') +
                    (isAppointment ? window.formatter.tplCapability('appointment') : '') +
                    (isB2b ? window.formatter.tplCapability('recycling_b2b') : '') +
                    (isB2c ? window.formatter.tplCapability('b2c') : '') +
                    (isNpoint ? window.formatter.tplCapability('npoint') : '') +
                    '</ul>' +
                    '</div>' +
                    '</div>' +

                    '</div>' +

                    '</button>' +
                    '</li>';

                $('#store-locator-results').on('click', '.shop-item-' + id, function() {
                    currentPoiId = window.arrayGet(value, 'point_of_interest.point_of_interest_id.id');
                    currentMarker = markers[$(this).closest('li').attr('data-id')];
                    currentMarker.setIcon('img/markers/' + iconLinkType + '_gold.png');
                    focusedItemRank = 1;

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

                    var storeName = address.name.company_name_type ? address.name.company_name_type.name.name : '';

                    var openingHours = poi.opening_hours_text ? poi.opening_hours_text.text : window.formatter.buildOpeningHours(value);

                    var directionsLink = nespresso.google_directions + '?daddr=' + address.address_line + ', ' + address.postal_code + ' ' + address.city.name + '&t=m&hl=' + nespresso.google_lang;

                    var id = window.arrayGet(value, 'point_of_interest.point_of_interest_id.id');

                    if (id === null) {
                        id = ''
                    }

                    var boutiqueImageUrl = (value["point_of_interest"]["image"]) ?
                        value["point_of_interest"]["image"] : 'assets/img/' + value["point_of_interest"]["type"].toLowerCase() + '.jpg';

                    var notStoreStyle = (value.isStore ? '' : ' not-store');

                    var ariaAttrContent = ' aria-hidden="false" ';
                    if (!isChrome && !isIE) {
                        ariaAttrContent = '';
                    }
                    if (isIE) {
                        ariaAttrContent = '   ';
                    }

                    var addrLine = address.postal_code + ' ' + address.city.name;
                    var html = '<div id="StoreDetail" ' + ariaAttrContent + ' aria-labelledby="shop-name" aria-describedby="infos-poi" class="StoreDetail-content first-part' + notStoreStyle + '">';
                    html += '<figure class="shop-img">' +
                        '<div class="img" style="background-image: url(' + boutiqueImageUrl + ');"></div>' +
                        '</figure>' +
                        '   <h3 class="shop-name" id="shop-name" aria-hidden="false">' + storeName + '</h3>';

                    html += '<div class="wrapper-infos"><div class="shop-content" tabindex="1">' +
                        '<div id="infos-poi" aria-hidden="false" >' +
                        '       <div class="shop-address">' + address.address_line + (addrLine ? ' <br> ' + addrLine : '') +
                        (phone ? '<br><div class="phone" aria-label="' + window.nespresso.i18n.label_phone + ' ' + phone + '&nbsp;">Tel. ' + phone + '</div>' : '') + '</div>' +
                        '       <div class="shop-attributes">' +
                        '           <ul>' +
                        (value.distance.value && currentPointLatitude && value.point_of_interest.type !== 'PICK_UP_POINT' ? '<li>' + Math.round(value.distance.value * 100) / 100 + ' km</li>' : '') +
                        (isRecycling ? window.formatter.tplCapability('recycling') : '') +
                        (isDemo ? window.formatter.tplCapability('demo') : '') +
                        (isWifi ? window.formatter.tplCapability('wifi') : '') +
                        (isPickup ? window.formatter.tplCapability('pickup') : '') +
                        (isWheelchair ? window.formatter.tplCapability('wheelchair') : '') +
                        (isCube ? window.formatter.tplCapability('cube') : '') +
                        (isAppointment ? window.formatter.tplCapability('appointment') : '') +
                        (isB2b ? window.formatter.tplCapability('recycling_b2b') : '') +
                        (isB2c ? window.formatter.tplCapability('b2c') : '') +
                        (isNpoint ? window.formatter.tplCapability('npoint') : '') +
                        '           </ul>' +
                        '       </div>' +
                        (openingHours !== null && openingHours !== '' ?
                            '       <div class="shop-schedules">' +
                            '           ' + window.nespresso.i18n.openning_hours + ' :  <br>' + openingHours +
                            '           <span class="notice">' + window.nespresso.i18n.label_public_holidays + '</span>' +
                            '       </div>' : '') +
                        '</div></div>' +
                        (phone ?
                            '       <a href="tel:' + phone.trim().replace(/\s/g, '') + '" class="shop-phone" tabindex="1" target="_parent">' +
                            '           <i class="icon icon_phone">' +
                            '               <svg viewBox="0 0 15 23" class="svg_phone">' +
                            '                   <use xlink:href="./assets/svg/sprite.svg#svg-phone"></use>' +
                            '                   <use xlink:href="#svg-phone"></use>' +
                            '               </svg>' +
                            '           </i>' +
                            window.nespresso.i18n.store_phonecall_cta +
                            '</a>' : '') +
                        '       <a href="' + directionsLink + '" class="shop-direction" tabindex="1" target="_blank" title="' + window.nespresso.i18n.aria_label_get_direction + '" aria-label="' + window.nespresso.i18n.aria_label_get_direction + '">' +
                        '<i class="icon icon_direction">' +
                        '               <svg viewBox="0 0 22.5 22.5" class="svg_direction">' +
                        '                   <use xlink:href="./assets/svg/sprite.svg#svg-direction"></use>' +
                        '                   <use xlink:href="#svg-direction"></use>' +
                        '               </svg>' +
                        '           </i>' +
                        '' + window.nespresso.i18n.label_directions +
                        '</a>' +
                        '   </div>' +
                        '<a href="#" class="trigger-close" tabindex="1" aria-label="' + window.nespresso.i18n.aria_label_close_detail + '"></a>' +
                        '</div>';


                    var $shop_detail = $('.shop-detail');

                    $shop_detail.html(html);

                    // Scroll top on mobile
                    scrollTopOnMobile();

                    var placeType = value.point_of_interest.type.toLowerCase().replace(/_/g, ' ');

                    $shop_detail.find('.shop-direction').on('click', function() {
                        gtmDataObject.push({
                            'event': 'customEvent',
                            'eventCategory': 'User Engagement',
                            'eventAction': 'Click',
                            'eventLabel': 'Store locator - ' + placeType + ' - ' + id + ' - ' + storeName + ' - Get direction',
                            'nonInteraction': 0
                        });
                    });

                    $shop_detail.find('.shop-phone').on('click', function() {
                        gtmDataObject.push({
                            'event': 'customEvent',
                            'eventCategory': 'User Engagement',
                            'eventAction': 'Click',
                            'eventLabel': 'Store locator - ' + placeType + ' - ' + id + ' - ' + storeName + ' - Call',
                            'nonInteraction': 0
                        });
                    });

                    gtmDataObject.push({
                        'pageName': 'store-locator-search-detail-' + placeType + '-' + id + '-' + storeName,
                        'pageType': 'locator',
                        'breadCrumbID': 'locator:::store-locator-search-detail-' + placeType + '-' + id + '-' + storeName + ':',
                        'event': 'event_virtualPageView'
                    });

                    $shop_detail.addClass('open');
                    $('html').addClass('open-shop-detail');

                    $('#storeResultsAlert').attr('aria-hidden', true);
                    $('#shopsTabListDesc').attr('aria-hidden', true);

                    setTimeout(function() {
                        // To display the marker when a click is done on a POI on a list
                        mapGoogle.refreshMap(false);
                    }, 250);

                    setTimeout(function() {
                        //$('#storePanel-' + currentShopType).attr('aria-hidden', true);
                        //$('.shop-content').focusWithoutScrolling();
                        $('.shop-content').focusWithoutScrolling();
                    }, 2000);

                    return false;
                });

                var position = value.position;

                iconLinkType = 'retail';
                switch (value["point_of_interest"]["type"]) {
                    case "BOUTIQUE":
                        iconLinkType = 'retail';
                        break;
                    case "POINT_OF_SALE":
                        iconLinkType = 'reseller';
                        break;
                    case "RECYCLING":
                        iconLinkType = 'recycling';
                        break;
                    default:
                        iconLinkType = 'retail';
                }

                // RID #37139
                if (isCube) {
                    iconLinkType = 'ncube';
                }

                // RID #48481
                if (isNpoint) {
                    iconLinkType = 'npoint';
                }

                var country = nespresso.country;

                if (country == 'USA' && $.inArray(iconLinkType, ['recycling']) != -1) {
                    iconLinkType = 'us/' + iconLinkType;
                }

                var marker = null;
                marker = new google.maps.Marker({
                    position: {
                        lat: parseFloat(position.latitude),
                        lng: parseFloat(position.longitude)
                    },
                    map: map,
                    title: storeName.replace(/<(?:.|\n)*?>/gm, ''),
                    icon: 'img/markers/' + iconLinkType + '.png'
                });
                google.maps.event.clearListeners(marker, 'mouseout');
                google.maps.event.clearListeners(marker, 'mouseover');

                marker.addListener('mouseover', function() {
                    var icon = marker.icon.substr(12);
                    icon = icon.substr(0, icon.length - 4);
                    if (icon.substr(-4) === 'gold') {
                        icon = icon.substr(0, icon.length - 5);
                    }
                    marker.setIcon('img/markers/' + icon + '_gold.png');
                });
                marker.addListener('mouseout', function() {
                    var icon = marker.icon.substr(12);
                    icon = icon.substr(0, icon.length - 4);
                    if (icon.substr(-4) === 'gold') {
                        icon = icon.substr(0, icon.length - 5);
                    }
                    marker.setIcon('img/markers/' + icon + '.png');
                    if (currentPoiId !== window.arrayGet(value, 'point_of_interest.point_of_interest_id.id')) {
                        marker.setIcon('img/markers/' + icon + '.png');
                    }
                });

                marker.addListener('click', function() {
                    var icon = marker.icon.substr(12);
                    icon = icon.substr(0, icon.length - 4);
                    if (icon.substr(-4) === 'gold') {
                        icon = icon.substr(0, icon.length - 5);
                    }
                    if (currentMarker) {
                        currentMarker.setIcon('img/markers/' + icon + '.png');
                    }
                    currentMarker = this;
                    $('body').find('.shop-item-' + id).trigger('click');
                });

                if (currentPoiId === window.arrayGet(value, 'point_of_interest.point_of_interest_id.id')) {
                    marker.setIcon('img/markers/' + iconLinkType + '_gold.png');
                }

                markers[id] = marker;
            });

            if (markers.length !== 0) {

                if (allowFitBounds) {
                    var bounds = new google.maps.LatLngBounds();

                    // Add listener for a click on the pin
                    $.each(markers, function(i, marker) {
                        if (typeof marker !== 'undefined') {
                            bounds.extend(marker.position);
                        }
                    });

                    var opposePoint = mapGoogle.getPointToFitBounds(
                        new google.maps.LatLng(currentLatitude, currentLongitude),
                        new google.maps.LatLng(data[data.length - 1].position.latitude, data[data.length - 1].position.longitude));

                    bounds.extend(opposePoint);

                    map.fitBounds(bounds);

                    var centerMap = new google.maps.LatLng(map.getCenter().lat(), map.getCenter().lng());
                    if ((typeof dataInput['geo'] !== 'undefined') && dataInput['geo']) {
                        centerMap = new google.maps.LatLng(currentLatitude, currentLongitude);
                    }

                    mapGoogle.offsetCenter(centerMap, true);
                    setTimeout(function() {
                        mapGoogle.adaptViewportWithMarkers(markers, centerMap, null, nbMarkers);
                    }, 150);

                }
                clusterer.addMarkers(markers);
                clusterer.setMap(map);

                mapGoogle.clearClustererEventClick();
                mapGoogle.clustererEventClick();

                $('#store-locator-results').empty().append(html);

                $('.results-empty').hide().removeAttr('aria-live').removeAttr('role');
                //$('.results-header').removeClass("hidden");
                interfaceNespresso.setResultCount(data.length);
                //$('.results-ctn').removeClass("hidden");
                interfaceNespresso.a11yNotifyUser(nespresso.i18n.aria_live_found.replace('%d', data.length));
                //$('#store-locator-results').find('button:first').focusWithoutScrolling();

                if (geolocAtSubmit) {
                    $('#results').removeClass('closed').addClass('open');
                }
            } else {

                if (countryRestriction !== '') {
                    map.setZoom(6);
                }
                //mapGoogle.offsetCenter(new google.maps.LatLng(currentLatitude, currentLongitude), true);
                if (drawCenter) {
                    centerMap = new google.maps.LatLng(currentLatitude, currentLongitude);
                    mapGoogle.offsetCenter(centerMap, true);
                }

                interfaceNespresso.a11yNotifyUser(nespresso.i18n.aria_live_noresults);
                interfaceNespresso.setResultCount(0);

                $('.results-empty')
                    //    .attr('aria-live', 'assertive')
                    .removeClass('loading')
                    .text(nespresso.i18n.no_store_found)
                    .show();
                $('.results-ctn').addClass("hidden");
                $('.results-header').addClass("hidden");
            }

            geolocAtSubmit = false;

            //  adapt  filters
            /*$('#filters  li').attr('class', null);
            $('#flt-demo').parent().toggleClass('vis', enabledFilters.demo || $('#flt-demo').is(':checked'));
            $('#flt-pickup').parent().toggleClass('vis', enabledFilters.pickup || $('#flt-pickup').is(':checked'));
            $('#flt-wifi').parent().toggleClass('vis', enabledFilters.wifi || $('#flt-wifi').is(':checked'));
            $('#flt-recycling').parent().toggleClass('vis', enabledFilters.recycling || $('#flt-recycling').is(':checked'));
            $('#flt-wheelchair').parent().toggleClass('vis', enabledFilters.wheelchair || $('#flt-wheelchair').is(':checked'));
            $('#flt-cube').parent().toggleClass('vis', enabledFilters.cube || $('#flt-cube').is(':checked'));
            $('#flt-appointment').parent().toggleClass('vis', enabledFilters.appointment || $('#flt-appointment').is(':checked'));
            $('#flt-b2b').parent().toggleClass('vis', enabledFilters.b2b || $('#flt-b2b').is(':checked'));
            $('#flt-b2c').parent().toggleClass('vis', enabledFilters.b2c || $('#flt-b2c').is(':checked'));*/

            setTimeout(function() {
                /*if ($('#filters .vis').length === 0 || $('#shops .active').data('type') !== 'boutique') {
                    $('.trigger-options').find('a').addClass('disabled-link').off('click');
                } else {
                    $('.trigger-options').find('a').removeClass('disabled-link');
                }*/
                optionFilter.eventFilter();
            }, 500);

            $('.loaderV4').removeClass('active');

            if (!$(document.activeElement).is('label') && !$(document.activeElement).hasClass('a11y-tabpanel-tab')) {
                if (!$('StoreDetail').hasClass('open')) {
                    $('#store-locator-results').find('button:first').focusWithoutScrolling();
                }
            }

            // open/close results on init
            if (!resultsShowed) {
                interfaceNespresso.initResultsAnimation();
            }

            //if (!allowFitBounds) {
            setTimeout(function() {
                mapGoogle.calculateMinMaxCoord();
                mapGoogle.idleEventMap();
                mapGoogle.dragendEventMap();
            }, 1000);
            //}
        },
        error: function(e) {
            interfaceNespresso.a11yNotifyUser(nespresso.i18n.aria_live_noresults);
            interfaceNespresso.setResultCount(0);
            $('.results-empty').removeClass('loading').attr('aria-live', 'assertive').attr('role', 'log').text(nespresso.i18n.no_store_found).show();
            $('.results-ctn').addClass("hidden");
            $('.results-header').addClass("hidden");

            //abort retry
            if (e.status === 0) callApi(dataInput, allowFitBounds, drawCenter);
        }
    });

}

// -------------------------------------------------------------------------
// Interface Nespresso
// -------------------------------------------------------------------------
var interfaceNespresso = {

    shopDetailClear: function() {
        $('.shop-detail').removeClass('open');
        $('html').removeClass('open-shop-detail');

        if ($(window).width() > breakpointMobile) {
            $('.section-map').removeClass('box-top');
        }
        if (currentMarker) {
            currentMarker.setIcon('img/markers/' + iconLinkType + '.png');
            currentMarker = null;
        }
        mapGoogle.clearOverlays();

        setTimeout(function() {
            $('.shop-detail').html('');
        }, 250);
    },

    a11yNotifyUser: function(txt) {
        $('#storeResultsAlert').text(txt);
    },

    setResultCount: function(count) {
        var $resultsHeader = $('.results-header');
        $resultsHeader.find('span').html(count.toString());
        if (count < 2) {
            $resultsHeader.html($resultsHeader.html().replace(nespresso.i18n.label_results + ' ', nespresso.i18n.label_result + ' '));
        } else {
            $resultsHeader.html($resultsHeader.html().replace(nespresso.i18n.label_result + ' ', nespresso.i18n.label_results + ' '));
        }
    },

    /**
     * open/close results on init
     */
    initResultsAnimation: function() {
        var r = $("#results");
        // Do not given the focus to the results list at the first loading.
        r.attr('aria-hidden', 'true').removeClass('closed');
        setTimeout(function() {
            r.addClass('closed').removeAttr('aria-hidden');
        }, 2500);
        resultsShowed = true;
    },

    shopDetailClick: function() {
        $('.shop-detail').on('click', '.trigger-close', function(e) {

            consoleDebug.log('- shopdetail - click - refreshMap -');
            focusedItemRank = 1;

            $('#storeResultsAlert').removeAttr('aria-hidden');
            $('#shopsTabListDesc').removeAttr('aria-hidden');

            mapGoogle.clearIdleEventMap();

            interfaceNespresso.shopDetailClear();

            map.setCenter(oldCenter);
            map.setZoom(oldZoom);

            setTimeout(function() {
                mapGoogle.refreshMap(false);
            }, 250);

            currentPoiId = null;

            e.preventDefault();
        });
    },

    resultListAction: function() {
        // init result list open/close
        $('#results .holder a').click(function() {
            var r = $("#results");

            r.stop();
            if (r.hasClass('closed')) {
                $(this).addClass('open');
                r.removeClass('closed');
                holderOpen = true;
            } else {
                $(this).removeClass('open');
                r.addClass('closed');
                holderOpen = false;
            }
            if (currentMarker !== null) {
                // re-position opened marker on holder change
                mapGoogle.centerMapOffset(currentMarker);
            }
        });
    },

    storeLocatorResultsEvent: function() {
        $('#store-locator-results')
            .on('keydown', 'button', function(e) {
                if (e.which === 27 && $(e.target).hasClass('shop-item')) {
                    //$('#location').focusWithoutScrolling().click();
                    e.preventDefault();
                }

                if (32 !== e.keyCode)
                    return true;

                e.preventDefault();
                return false;
            })
            .on('click', 'button', function(e) {
                var currentMarker = markers[$(this).closest('li').attr('data-id')];
                if (currentMarker) {
                    mapGoogle.centerMapOffset(currentMarker);
                }
                return false;
            });
    },
    keydownInterface: function() {
        $(document).keydown(function(e) {
            // When the user want to exit the iframe from the search button.
            if ($(e.target).is('#btnSearch') && !e.shiftKey) {
                $('.a11y-tabpanel-tab[aria-selected="true"]').attr('tabindex', -1);
                setTimeout(function() {
                    $('.a11y-tabpanel-tab[aria-selected="true"]').attr('tabindex', 1);
                }, 150);
                return;
            }

            // submit du form
            if ($(e.target).is('#location') && e.which === 13 && !$('html').hasClass('close-intro')) {
                $('#locationForm').submit();
                e.preventDefault();
            }

            // focus quand on ferme les filters
            if (e.which === 13 && $('.trigger-options').hasClass('open')) {
                setTimeout(function() {
                    $('.trigger-options a').focusWithoutScrolling();
                    e.preventDefault();
                }, 250);
            }

            // Exit if the user use shift + tab
            if ($(e.target).hasClass('a11y-tabpanel-tab') && e.shiftKey && e.which === 9) {
                if (!$('html').hasClass('close-intro')) {
                    $('.a11y-tabpanel-tab[aria-selected="true"]').attr('tabindex', -1);
                }
                setTimeout(function() {
                    if (!$('html').hasClass('close-intro')) {
                        $('.a11y-tabpanel-tab[aria-selected="true"]').attr('tabindex', 1);
                    }
                }, 150);
                return;
            }

            // shift + tab quand sur input => focus la tab selectionnée
            if (e.which === 9 && ($(e.target).is('#location') && e.shiftKey)) {
                $('.a11y-tabpanel-tab[aria-selected="true"]').focus();
                if (geoloc.$geolocInput.val() === '') {
                    geoloc.$geolocInput.val(valueInput);
                }
                e.preventDefault();
            }

            // focus sur l'input quand tab et tabpanel selected
            if (e.which === 9 && $(e.target).hasClass('a11y-tabpanel-tab') && !e.shiftKey) {
                $('#location').focusWithoutScrolling();
                e.preventDefault();
            }

            var $store_detail = $(".StoreDetail");

            if ($store_detail.hasClass('open')) {
                //esc close infobox
                if (e.which === 27) {
                    $(this).find('.trigger-close').trigger("click");
                }

                var focusedElement = $(document.activeElement);

                // Switch input when pressing back tab (shift + 9)
                if (e.shiftKey && e.which === 9) {
                    if (focusedElement.hasClass('shop-content')) {
                        $('.trigger-close').focus();
                        e.preventDefault();
                    }

                } // overriding simple tab on infobox element
                else if (e.which === 9) {
                    if (focusedElement.hasClass('trigger-close')) {
                        $('.shop-content').focus();
                        e.preventDefault();
                    }
                }
            }
        });
    },
    closeDetailInfobox: function() {
        var $shop_detail = $(".shop-detail");
        if ($shop_detail.hasClass('open')) {
            $shop_detail.toggleClass('open');
        }
    },

    init: function() {
        this.shopDetailClick();
        this.storeLocatorResultsEvent();
        this.keydownInterface();
        this.resultListAction();
    }
};

interfaceNespresso.init();


//})(jQuery);

$(window.top).bind('popstate', function(e) {
    var $_html = $('html');
    switch (window.top.location.hash) {
        case '#map-results':
            // $('#poiExplanation').css('display','none');
            // $('#poiExplanation').hide();
            $_html.addClass('close-intro');
            break;
        default:
            // $('#poiExplanation').css('display','inherit');
            // $('#poiExplanation').show();
            $_html.removeClass('close-intro');
            break;
    }
});