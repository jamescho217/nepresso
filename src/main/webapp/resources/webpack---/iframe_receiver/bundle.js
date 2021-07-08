/******/
(function(modules) { // webpackBootstrap
    /******/ // The module cache
    /******/
    var installedModules = {};
    /******/
    /******/ // The require function
    /******/
    function __webpack_require__(moduleId) {
        /******/
        /******/ // Check if module is in cache
        /******/
        if (installedModules[moduleId]) {
            /******/
            return installedModules[moduleId].exports;
            /******/
        }
        /******/ // Create a new module (and put it into the cache)
        /******/
        var module = installedModules[moduleId] = {
            /******/
            i: moduleId,
            /******/
            l: false,
            /******/
            exports: {}
            /******/
        };
        /******/
        /******/ // Execute the module function
        /******/
        modules[moduleId].call(module.exports, module, module.exports, __webpack_require__);
        /******/
        /******/ // Flag the module as loaded
        /******/
        module.l = true;
        /******/
        /******/ // Return the exports of the module
        /******/
        return module.exports;
        /******/
    }
    /******/
    /******/
    /******/ // expose the modules object (__webpack_modules__)
    /******/
    __webpack_require__.m = modules;
    /******/
    /******/ // expose the module cache
    /******/
    __webpack_require__.c = installedModules;
    /******/
    /******/ // define getter function for harmony exports
    /******/
    __webpack_require__.d = function(exports, name, getter) {
        /******/
        if (!__webpack_require__.o(exports, name)) {
            /******/
            Object.defineProperty(exports, name, {
                /******/
                configurable: false,
                /******/
                enumerable: true,
                /******/
                get: getter
                /******/
            });
            /******/
        }
        /******/
    };
    /******/
    /******/ // getDefaultExport function for compatibility with non-harmony modules
    /******/
    __webpack_require__.n = function(module) {
        /******/
        var getter = module && module.__esModule ?
            /******/
            function getDefault() {
                return module['default'];
            } :
            /******/
            function getModuleExports() {
                return module;
            };
        /******/
        __webpack_require__.d(getter, 'a', getter);
        /******/
        return getter;
        /******/
    };
    /******/
    /******/ // Object.prototype.hasOwnProperty.call
    /******/
    __webpack_require__.o = function(object, property) {
        return Object.prototype.hasOwnProperty.call(object, property);
    };
    /******/
    /******/ // __webpack_public_path__
    /******/
    __webpack_require__.p = "";
    /******/
    /******/ // Load entry module and return exports
    /******/
    return __webpack_require__(__webpack_require__.s = 3);
    /******/
})
/************************************************************************/
/******/
([
    /* 0 */
    /***/
    (function(module, __webpack_exports__, __webpack_require__) {

        "use strict";
        /* harmony export (binding) */
        __webpack_require__.d(__webpack_exports__, "c", function() {
            return on;
        });
        /* unused harmony export off */
        /* harmony export (binding) */
        __webpack_require__.d(__webpack_exports__, "b", function() {
            return location;
        });
        /* unused harmony export userAgent */
        /* unused harmony export pageTitle */
        /* unused harmony export referrer */
        /* unused harmony export screenInfo */
        /* unused harmony export documentCookie */
        /* unused harmony export waitForDom */
        /* unused harmony export waitForOnLoad */
        /* unused harmony export browserIsSupported */
        /* unused harmony export browserIsSpider */
        /* unused harmony export setTimeout */
        /* unused harmony export createElement */
        /* unused harmony export nodelistToArray */
        /* unused harmony export document */
        /* harmony export (binding) */
        __webpack_require__.d(__webpack_exports__, "d", function() {
            return browserWindow;
        });
        /* harmony export (binding) */
        __webpack_require__.d(__webpack_exports__, "a", function() {
            return SafeJson;
        });
        /* harmony import */
        var __WEBPACK_IMPORTED_MODULE_0__libs_promises__ = __webpack_require__(2);
        /**
         * Provides cross-browser abstractions for common browser operations
         *
         * (Despite the <inner> tags - all these methods are publicly exposed
         * @module browser_abstractions
         */

        /**
         * Listen to an event (this is essentially a wrapper around addEventListener)
         * @see {@link https://developer.mozilla.org/en-US/docs/Web/API/EventTarget/addEventListener}
         * @param evnt {string} the event you want to listen for
         * @param func {function} callback for when the event occurs
         * @param [elem=window] {element} the element to listen on (defaults to window if not supplied)
         */
        var on = function(evnt, func, elem) {
            if (elem === void 0) {
                elem = window;
            }
            if (elem && elem.addEventListener) {
                elem.addEventListener(evnt, func);
            }
        };
        /**
         * Stop listening to an event (this is essentially a wrapper around removeEventListener)
         * @see {@link https://developer.mozilla.org/en-US/docs/Web/API/EventTarget/removeEventListener}
         * @param evnt {string} the event you want to stop listening for
         * @param func {function} the callback function you want to remove (same as the one you listened on)
         * @param [elem=window] {element} the element to stop listening on (defaults to window if not supplied)
         */
        var off = function(evnt, func, elem) {
            if (elem === void 0) {
                elem = window;
            }
            if (elem && elem.removeEventListener) {
                elem.removeEventListener(evnt, func);
            }
        };
        /**
         * @typedef location
         * @type {object}
         * @property {string} href - the full url
         * @property {port} port - the current port (usually 80)
         * @property {host} host - the current host name (with port where applicable)
         * @property {pathname} pathname - the current file path
         *
         * @see {@link https://developer.mozilla.org/en-US/docs/Web/API/Location}
         */
        /**
         * Get a subset of the window.location object
         * @returns {{...location}} {@link location}
         */
        var location = function() {
            return window.location;
        };
        /**
         * Get the browser's window object
         * NOTE: this is exposed as just window NOT browserWindow
         * @returns {window} the window object
         */
        var browserWindow = function() {
            return window;
        };
        /**
         * Get the current document model object
         * NOTE: this is exposed as just document NOT browserDocument
         * @returns {HTMLDocument}
         */
        var browserDocument = function() {
            return document;
        };
        /**
         * Get the browser's user agent string
         * @returns {string} the browser's user agent
         */
        var userAgent = function() {
            return browserWindow().navigator.userAgent;
        };
        /**
         * Get the current document title
         * @returns {string} the document title
         */
        var pageTitle = function() {
            return browserDocument().title;
        };
        /**
         * Get the current document referrer
         * @returns {string} the document referrer
         */
        var referrer = function() {
            return browserDocument().referrer;
        };
        /**
         * @typedef screenInfo
         * @type {object}
         * @property {number} availWidth - the available width
         * @property {number} availHeight - the available height
         * @property {number} width - the current width
         * @property {number} height - the current height
         * @property {number} depth - the current colour depth
         *
         * @see {@link https://developer.mozilla.org/en-US/docs/Web/API/Screen}
         */
        /**
         * Get a subset of the window.screen object with details of width, height and depth data
         * @returns {{screenInfo}}
         */
        var screenInfo = function() {
            var screen = browserWindow().screen;
            return {
                availHeight: screen.availHeight,
                availWidth: screen.availWidth,
                depth: screen.colorDepth,
                height: screen.height,
                width: screen.width
            };
        };
        /**
         * Get the current document cookie string, containing all cookies
         * (note, you can't use this to set cookies)
         * @see {@link https://developer.mozilla.org/en-US/docs/Web/API/Document/cookie}
         * @returns {string}
         */
        var documentCookie = function() {
            // tslint:disable-next-line:no-cookies
            return document.cookie;
        };
        /**
         * Fire any state change events we have based on the current loading status
         */
        var fireStateChangeEvents = function() {
            var newState = document.readyState;
            if (newState === 'interactive') {
                // if interactive - fire off our interactive cbs
                if (browserWindow().__sc_contentReadyCBs) {
                    browserWindow().__sc_contentReadyCBs.forEach(function(resolve) {
                        return resolve();
                    });
                    delete browserWindow().__sc_contentReadyCBs;
                }
            } else if (newState === 'complete') {
                // if loaded - fire off all our callbacks
                if (browserWindow().__sc_contentReadyCBs) {
                    browserWindow().__sc_contentReadyCBs.forEach(function(resolve) {
                        return resolve();
                    });
                    delete browserWindow().__sc_contentReadyCBs;
                }
                if (browserWindow().__sc_domLoadedCBs) {
                    browserWindow().__sc_domLoadedCBs.forEach(function(resolve) {
                        return resolve();
                    });
                    delete browserWindow().__sc_domLoadedCBs;
                }
            }
        };
        if (document) {
            // I don't know why we need to do this rather than DomContentLoaded but there are cases where that doesn't work. Think it's a bug in chrome
            document.onreadystatechange = fireStateChangeEvents;
            if (document.addEventListener) {
                document.addEventListener('DOMContentLoaded', fireStateChangeEvents);
                document.addEventListener('load', fireStateChangeEvents);
            }
        }
        // buckle in sunshine and let me regale you with how this came to be
        // traditionally after DOMContentLoaded has fired then the readystate of the page is
        // either interactive or complete
        //
        // but, here's the kicker, it turns out if a service worker is attached it may remain as loading
        // which means you can then be waiting for an event that never occurs, cos its already happened.
        // so to get round this we listen for the event at a high level and record the fact that it has occurred
        // on('DOMContentLoaded', fireStateChangeEvents, document);
        // on('load', fireStateChangeEvents, window);
        // on('readystatechange', fireStateChangeEvents, window);
        /**
         * Wrapper around the DomContentLoaded event to make it cross browser compatible
         * this function will call your callback when the dom is interactive.
         *
         * If called after the dom is initialised, your callback will be called immediately
         * @see {@link https://developer.mozilla.org/en/docs/Web/API/Document/readyState}
         * @param callback {function} your callback function to be called when ready
         * @returns {undefined}
         */
        var waitForDom = function() {
            var state = document.readyState;
            return new __WEBPACK_IMPORTED_MODULE_0__libs_promises__["a" /* default */ ](function(resolve) {
                if (state === 'interactive' || state === 'complete') {
                    return resolve();
                }
                if (browserWindow().__sc_contentReadyCBs) {
                    browserWindow().__sc_contentReadyCBs.push(resolve);
                } else {
                    browserWindow().__sc_contentReadyCBs = [resolve];
                }
            });
        };
        /**
         * Wrapper around he onload event to make it cross browser compatible, this function will call your callback only once
         * the document is fully loaded (readyState = complete).
         *
         * If called after the dom is complete, your callback will be called immediately
         * @see {@link https://developer.mozilla.org/en/docs/Web/API/Document/readyState}
         * @param callback {function} your callback function to be called when ready
         * @returns {undefined}
         */
        var waitForOnLoad = function() {
            return new __WEBPACK_IMPORTED_MODULE_0__libs_promises__["a" /* default */ ](function(resolve) {
                if (document.readyState === 'complete') {
                    return resolve();
                }
                if (browserWindow().__sc_domLoadedCBs) {
                    browserWindow().__sc_domLoadedCBs.push(resolve);
                } else {
                    browserWindow().__sc_domLoadedCBs = [resolve];
                }
            });
        };
        /**
         * Check to see if we are capable of supporting this browser, this check ensures that the browser supports JSON and
         * the querySelectorAll function along with array.forEach and btoa (for reference this is IE10+)
         * @returns {boolean} true if supported, else false
         */
        var browserIsSupported = function() {
            var win = browserWindow();
            var doc = browserDocument();
            return !!(win && doc && win.JSON && doc.querySelectorAll && !!Array.prototype.forEach && !!doc.querySelector && location().href && win.btoa);
        };
        /**
         * Check to see if the current user agent looks like a spider/bot
         * @returns {boolean} true if bot, else false
         */
        var browserIsSpider = function() {
            /* tslint:disable */
            var re = /(bot|spider|scraper|crawl|agent|Mediapartners-Google|slurp|java|wget|curl|Commons-HttpClient|Python-urllib|libwww|httpunit|nutch|biglotron|teoma|convera|gigablast|ia_archiver|GingerCrawler|webmon |httrack|grub.org|netresearchserver|speedy|fluffy|bibnum.bnf|findlink|panscient|IOI|ips-agent|yanga|Voyager|CyberPatrol|postrank|page2rss|linkdex|ezooms|heritrix|findthatfile|europarchive.org|Aboundex|summify|ec2linkfinder|facebookexternalhit|yeti|RetrevoPageAnalyzer|sogou|wotbox|ichiro|drupact|coccoc|integromedb|siteexplorer.info|proximic|changedetection|WeSEE:Search|Lipperhey SEO Service|CC Metadata Scaper|g00g1e.net|binlar|A6-Indexer|ADmantX|MegaIndex|ltx71|BUbiNG|Qwantify|lipperhey|y!j-asr|AddThis|KTXN|Webmetrics|sessioncam|neustar|PingdomTMS|load|iplabel;|PhantomJS)/i; // tslint-disable-line
            /* tslint:enable */
            return re.test(userAgent());
        };
        /**
         * Starts a timeout and triggers the fn after finished.
         * @see {@link https://developer.mozilla.org/en-US/docs/Web/API/WindowTimers/setTimeout}
         * @param fn {function} the function that will be executed after timeout
         * @param timeout {integer} timeout in milliseconds after which fn will be invoked
         */
        var setTimeout = function(fn, timeout) {
            // tslint:disable-next-line:no-string-based-set-timeout
            return window.setTimeout(fn, timeout);
        };
        /**
         * Creates an element in the document and returns the Node (it doesnt append to DOM)
         * @see {@link https://developer.mozilla.org/en-US/docs/Web/API/Document/createElement}
         * @param doc {object} the document object it will be created
         * @param element {string} the element that you need to create eg: img, div, pre, p
         * @param opts {object} object with properties/attributes of the element
         */
        var createElement = function(doc, element, opts) {
            if (doc === void 0) {
                doc = browserDocument();
            }
            if (opts === void 0) {
                opts = {};
            }
            var elem = doc.createElement(element);
            if (typeof opts !== 'object') {
                return elem;
            }
            /* tslint:disable:no-for-in */
            for (var p in opts) {
                if ({}.hasOwnProperty.call(opts, p)) {
                    elem.setAttribute(p, opts[p]);
                }
            }
            /* tslint:enable:no-for-in */
            return elem;
        };
        /**
         * Converts a NodeList to an array of nodes
         * @param nodes {NodeListOf<T>} the nodelist to convert
         * @returns {Array<T>} the array of nodes
         */
        var nodelistToArray = function(nodes) {
            var nodeArray = [];
            for (var i = 0; i < nodes.length; i += 1) {
                nodeArray.push(nodes[i]);
            }
            return nodeArray;
        };

        // some sites mess with prototypes on objects, causing standard json serialisation to fail
        // this abstraction lets us override
        var SafeJson = /** @class */ (function() {
            function SafeJson() {}
            SafeJson.stringify = function(value, replacer, space) {
                var win = browserWindow();
                if (win && win.sc_json) {
                    return win.sc_json.stringify(value, replacer, space);
                }
                return JSON.stringify(value, replacer, space);
            };
            SafeJson.parse = function(text) {
                var win = browserWindow();
                if (win && win.sc_json) {
                    return win.sc_json.parse(text);
                }
                return JSON.parse(text);
            };
            return SafeJson;
        }());



        /***/
    }),
    /* 1 */
    /***/
    (function(module, __webpack_exports__, __webpack_require__) {

        "use strict";
        /* tslint:disable:function-name */
        var Request = /** @class */ (function() {
            function Request() {}
            /**
             * Lookup a query string value by key name
             * @param {string} name the key name you want to lookup
             * @param {string} [url=window.location.href] the url you want to lookup against (defaults to window href)
             * @returns {string|null} the value from the query string or null if not found
             */
            Request.getQueryStringParameter = function(name, url) {
                if (url === void 0) {
                    url = window.location.href;
                }
                name = name.replace(/[\[\]]/g, '\\$&');
                var regex = new RegExp("[?&]" + name + "(=([^&#]*)|&|#|$)", 'i');
                var results = regex.exec(url);
                if (!results) {
                    return null;
                }
                if (!results[2]) {
                    return null;
                }
                return decodeURIComponent(results[2].replace(/\+/g, ' '));
            };
            return Request;
        }());
        /* harmony default export */
        __webpack_exports__["a"] = (Request);


        /***/
    }),
    /* 2 */
    /***/
    (function(module, __webpack_exports__, __webpack_require__) {

        "use strict";
        /* harmony import */
        var __WEBPACK_IMPORTED_MODULE_0_es6_promise_polyfill__ = __webpack_require__(9);
        /* harmony import */
        var __WEBPACK_IMPORTED_MODULE_0_es6_promise_polyfill___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_0_es6_promise_polyfill__);

        // the polyfill will use native promises if available
        /* harmony default export */
        __webpack_exports__["a"] = (__WEBPACK_IMPORTED_MODULE_0_es6_promise_polyfill__["Promise"]);


        /***/
    }),
    /* 3 */
    /***/
    (function(module, __webpack_exports__, __webpack_require__) {

        "use strict";
        Object.defineProperty(__webpack_exports__, "__esModule", {
            value: true
        });
        /* harmony import */
        var __WEBPACK_IMPORTED_MODULE_0__salecycle_client_script_core_src_index_iframeReceiver__ = __webpack_require__(4);

        // just defer to the core



        /***/
    }),
    /* 4 */
    /***/
    (function(module, __webpack_exports__, __webpack_require__) {

        "use strict";
        /* harmony import */
        var __WEBPACK_IMPORTED_MODULE_0__api_request__ = __webpack_require__(1);
        /* harmony import */
        var __WEBPACK_IMPORTED_MODULE_1__browser_capabilities__ = __webpack_require__(5);
        /* harmony import */
        var __WEBPACK_IMPORTED_MODULE_2__storage_localstorage__ = __webpack_require__(6);
        /* harmony import */
        var __WEBPACK_IMPORTED_MODULE_3__message_channel_channels_postmessage_receiver__ = __webpack_require__(10);
        /* harmony import */
        var __WEBPACK_IMPORTED_MODULE_4__message_channel_channels_postmessage_store_handler__ = __webpack_require__(12);
        /* harmony import */
        var __WEBPACK_IMPORTED_MODULE_5__browser_abstraction__ = __webpack_require__(0);






        var browserCaps = __WEBPACK_IMPORTED_MODULE_1__browser_capabilities__["a" /* getInitialCapabilities */ ]();
        (function() {
            var localStore = __WEBPACK_IMPORTED_MODULE_2__storage_localstorage__["a" /* getStore */ ](browserCaps);
            /* tslint:disable:align */
            // if we don't have a store - there's not much we can do
            if (!localStore) {
                var frameId = __WEBPACK_IMPORTED_MODULE_0__api_request__["a" /* default */ ].getQueryStringParameter('sc_frame_id');
                return window.parent.postMessage(__WEBPACK_IMPORTED_MODULE_5__browser_abstraction__["a" /* SafeJson */ ].stringify({
                    error: 'FRAME_STORAGE_UNAVAILABLE',
                    frameId: frameId
                }), '*');
            }
            /* tslint:enable:align */
            var storeHandler = Object(__WEBPACK_IMPORTED_MODULE_4__message_channel_channels_postmessage_store_handler__["a" /* getHandler */ ])(localStore);
            Object(__WEBPACK_IMPORTED_MODULE_3__message_channel_channels_postmessage_receiver__["a" /* listen */ ])(function(message, reply) {
                if (message.messageType === 'STORE') {
                    return storeHandler.handleMessage(message, reply);
                }
                // just return if it's not a store message
                reply();
            });
        })();


        /***/
    }),
    /* 5 */
    /***/
    (function(module, __webpack_exports__, __webpack_require__) {

        "use strict";
        /* harmony export (binding) */
        __webpack_require__.d(__webpack_exports__, "a", function() {
            return getInitialCapabilities;
        });
        /**
         * Sets up the browser capabilities object
         * @module browser_capabilities
         */
        /**
         * get an empty browser capabilities object
         * @returns {{...browserCapabilities}}
         */
        var getInitialCapabilities = function() {
            return {
                canUseBeacon: null,
                canUseCookies: null,
                canUseLocalStorage: null,
                canUseMutationObserver: null,
                canUsePostMessage: null,
                canUseXDomain: null,
                canUseXhr: null,
                canUseXhrCors: null
            };
        };


        /***/
    }),
    /* 6 */
    /***/
    (function(module, __webpack_exports__, __webpack_require__) {

        "use strict";
        /* harmony export (binding) */
        __webpack_require__.d(__webpack_exports__, "a", function() {
            return getStore;
        });
        /* harmony import */
        var __WEBPACK_IMPORTED_MODULE_0_lscache__ = __webpack_require__(7);
        /* harmony import */
        var __WEBPACK_IMPORTED_MODULE_0_lscache___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_0_lscache__);
        /* harmony import */
        var __WEBPACK_IMPORTED_MODULE_1_lz_string__ = __webpack_require__(8);
        /* harmony import */
        var __WEBPACK_IMPORTED_MODULE_1_lz_string___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_1_lz_string__);
        /* harmony import */
        var __WEBPACK_IMPORTED_MODULE_2__libs_promises__ = __webpack_require__(2);
        /* harmony import */
        var __WEBPACK_IMPORTED_MODULE_3__browser_abstraction__ = __webpack_require__(0);
        /**
         * A store that uses local storage
         * @module storage/localstorage/index
         */

        /// <reference types="lz-string" />



        var KEY_COMPRESSED = '#::';
        var win = Object(__WEBPACK_IMPORTED_MODULE_3__browser_abstraction__["d" /* window */ ])();
        var LocalStorage = /** @class */ (function() {
            function LocalStorage() {
                // Always clear lsCache before starting
                __WEBPACK_IMPORTED_MODULE_0_lscache__["flushExpired"]();
            }
            Object.defineProperty(LocalStorage.prototype, "Name", {
                get: function() {
                    return 'LocalStorage';
                },
                enumerable: true,
                configurable: true
            });
            /**
             * Get a value for the specified name
             * @param key
             * @param noPrefix {boolean} use the raw value (don't prefix with ls cache)
             * @returns {Object}
             */
            LocalStorage.prototype.getValue = function(name, noPrefix) {
                var value;
                // if we want the raw item - use raw local storage
                if (noPrefix) {
                    try {
                        return __WEBPACK_IMPORTED_MODULE_2__libs_promises__["a" /* default */ ].resolve(win.localStorage.getItem(name));
                    } catch (ex) {
                        return __WEBPACK_IMPORTED_MODULE_2__libs_promises__["a" /* default */ ].reject(ex);
                    }
                } else {
                    value = __WEBPACK_IMPORTED_MODULE_0_lscache__["get"]("scls::" + name);
                }
                // if we have no value, just resolve
                if (!value || typeof value === 'object') {
                    return __WEBPACK_IMPORTED_MODULE_2__libs_promises__["a" /* default */ ].resolve(null);
                }
                // check the first char to see if we stored compressed or uncompressed
                if (value.indexOf && value.indexOf(KEY_COMPRESSED) === 0) {
                    value = __WEBPACK_IMPORTED_MODULE_1_lz_string__["decompressFromUTF16"](value.substring(KEY_COMPRESSED.length));
                }
                try {
                    // this seems a silly check, but it can really mess with our machine ID
                    if (typeof value === 'string' && (value.charAt(0) === '{' || value.charAt(0) === '[')) {
                        value = __WEBPACK_IMPORTED_MODULE_3__browser_abstraction__["a" /* SafeJson */ ].parse(value);
                    }
                } catch (ex) {
                    // ignore - it's a string
                }
                return __WEBPACK_IMPORTED_MODULE_2__libs_promises__["a" /* default */ ].resolve(value);
            };
            /**
             * Adds the specified key and value into local storage
             * will expire in 2 hours by default and cull by expiry if we are running out of space
             * @param {string} key
             * @param {Object} value
             * @param {number} [expiresInMinutes=120]
             * @returns {boolean}
             */
            LocalStorage.prototype.setValue = function(name, value, expiresInMinutes) {
                if (typeof value === 'object') {
                    value = __WEBPACK_IMPORTED_MODULE_3__browser_abstraction__["a" /* SafeJson */ ].stringify(value);
                }
                var compressed = __WEBPACK_IMPORTED_MODULE_1_lz_string__["compressToUTF16"](value);
                // if the compressed length is actually longer - don't be silly and store it
                // we set the first character here to represent if the value has been compressed or not for when we read it back out
                if (compressed.length > value.length) {
                    compressed = "" + value;
                } else {
                    compressed = "" + KEY_COMPRESSED + compressed;
                }
                __WEBPACK_IMPORTED_MODULE_0_lscache__["set"]("scls::" + name, compressed, expiresInMinutes);
                return __WEBPACK_IMPORTED_MODULE_2__libs_promises__["a" /* default */ ].resolve(true);
            };
            /**
             * Removed the specified key from local storage
             * @param {string} name The key to be deleted
             */
            LocalStorage.prototype.removeValue = function(name) {
                __WEBPACK_IMPORTED_MODULE_0_lscache__["remove"]("scls::" + name);
                return __WEBPACK_IMPORTED_MODULE_2__libs_promises__["a" /* default */ ].resolve(true);
            };
            return LocalStorage;
        }());
        var canUseLocalStorage = function(browserCapabilitiesState) {
            if (browserCapabilitiesState.canUseLocalStorage !== null && browserCapabilitiesState.canUseLocalStorage !== undefined) {
                return browserCapabilitiesState.canUseLocalStorage;
            }
            browserCapabilitiesState.canUseLocalStorage = __WEBPACK_IMPORTED_MODULE_0_lscache__["supported"]();
            return browserCapabilitiesState.canUseLocalStorage;
        };
        /**
         * Get an instance of the local storage store
         * @param browserCapabilities
         * @returns {IStore|null}
         */
        var getStore = function(browserCapabilities) {
            if (!canUseLocalStorage(browserCapabilities)) {
                return null;
            }
            return new LocalStorage();
        };


        /***/
    }),
    /* 7 */
    /***/
    (function(module, exports, __webpack_require__) {

        var __WEBPACK_AMD_DEFINE_FACTORY__, __WEBPACK_AMD_DEFINE_ARRAY__, __WEBPACK_AMD_DEFINE_RESULT__;
        /**
         * lscache library
         * Copyright (c) 2011, Pamela Fox
         *
         * Licensed under the Apache License, Version 2.0 (the "License");
         * you may not use this file except in compliance with the License.
         * You may obtain a copy of the License at
         *
         *       http://www.apache.org/licenses/LICENSE-2.0
         *
         * Unless required by applicable law or agreed to in writing, software
         * distributed under the License is distributed on an "AS IS" BASIS,
         * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
         * See the License for the specific language governing permissions and
         * limitations under the License.
         */

        /* jshint undef:true, browser:true, node:true */
        /* global define */

        (function(root, factory) {
            if (true) {
                // AMD. Register as an anonymous module.
                !(__WEBPACK_AMD_DEFINE_ARRAY__ = [], __WEBPACK_AMD_DEFINE_FACTORY__ = (factory),
                    __WEBPACK_AMD_DEFINE_RESULT__ = (typeof __WEBPACK_AMD_DEFINE_FACTORY__ === 'function' ?
                        (__WEBPACK_AMD_DEFINE_FACTORY__.apply(exports, __WEBPACK_AMD_DEFINE_ARRAY__)) : __WEBPACK_AMD_DEFINE_FACTORY__),
                    __WEBPACK_AMD_DEFINE_RESULT__ !== undefined && (module.exports = __WEBPACK_AMD_DEFINE_RESULT__));
            } else if (typeof module !== "undefined" && module.exports) {
                // CommonJS/Node module
                module.exports = factory();
            } else {
                // Browser globals
                root.lscache = factory();
            }
        })(this, function() {

            // Prefix for all lscache keys
            var CACHE_PREFIX = 'lscache-';

            // Suffix for the key name on the expiration items in localStorage
            var CACHE_SUFFIX = '-cacheexpiration';

            // expiration date radix (set to Base-36 for most space savings)
            var EXPIRY_RADIX = 10;

            // time resolution in minutes
            var EXPIRY_UNITS = 60 * 1000;

            // ECMAScript max Date (epoch + 1e8 days)
            var MAX_DATE = Math.floor(8.64e15 / EXPIRY_UNITS);

            var cachedStorage;
            var cachedJSON;
            var cacheBucket = '';
            var warnings = false;

            // Determines if localStorage is supported in the browser;
            // result is cached for better performance instead of being run each time.
            // Feature detection is based on how Modernizr does it;
            // it's not straightforward due to FF4 issues.
            // It's not run at parse-time as it takes 200ms in Android.
            function supportsStorage() {
                var key = '__lscachetest__';
                var value = key;

                if (cachedStorage !== undefined) {
                    return cachedStorage;
                }

                // some browsers will throw an error if you try to access local storage (e.g. brave browser)
                // hence check is inside a try/catch
                try {
                    if (!localStorage) {
                        return false;
                    }
                } catch (ex) {
                    return false;
                }

                try {
                    setItem(key, value);
                    removeItem(key);
                    cachedStorage = true;
                } catch (e) {
                    // If we hit the limit, and we don't have an empty localStorage then it means we have support
                    if (isOutOfSpace(e) && localStorage.length) {
                        cachedStorage = true; // just maxed it out and even the set test failed.
                    } else {
                        cachedStorage = false;
                    }
                }
                return cachedStorage;
            }

            // Check to set if the error is us dealing with being out of space
            function isOutOfSpace(e) {
                if (e && e.name === 'QUOTA_EXCEEDED_ERR' || e.name === 'NS_ERROR_DOM_QUOTA_REACHED' || e.name === 'QuotaExceededError') {
                    return true;
                }
                return false;
            }

            // Determines if native JSON (de-)serialization is supported in the browser.
            function supportsJSON() {
                /*jshint eqnull:true */
                if (cachedJSON === undefined) {
                    cachedJSON = window.JSON != null;
                }
                return cachedJSON;
            }

            /**
             * Returns a string where all RegExp special characters are escaped with a \.
             * @param {String} text
             * @return {string}
             */
            function escapeRegExpSpecialCharacters(text) {
                return text.replace(/[[\]{}()*+?.\\^$|]/g, '\\$&');
            }

            /**
             * Returns the full string for the localStorage expiration item.
             * @param {String} key
             * @return {string}
             */
            function expirationKey(key) {
                return key + CACHE_SUFFIX;
            }

            /**
             * Returns the number of minutes since the epoch.
             * @return {number}
             */
            function currentTime() {
                return Math.floor(new Date().getTime() / EXPIRY_UNITS);
            }

            /**
             * Wrapper functions for localStorage methods
             */

            function getItem(key) {
                return localStorage.getItem(CACHE_PREFIX + cacheBucket + key);
            }

            function setItem(key, value) {
                // Fix for iPad issue - sometimes throws QUOTA_EXCEEDED_ERR on setItem.
                localStorage.removeItem(CACHE_PREFIX + cacheBucket + key);
                localStorage.setItem(CACHE_PREFIX + cacheBucket + key, value);
            }

            function removeItem(key) {
                localStorage.removeItem(CACHE_PREFIX + cacheBucket + key);
            }

            function eachKey(fn) {
                var prefixRegExp = new RegExp('^' + CACHE_PREFIX + escapeRegExpSpecialCharacters(cacheBucket) + '(.*)');
                // Loop in reverse as removing items will change indices of tail
                for (var i = localStorage.length - 1; i >= 0; --i) {
                    var key = localStorage.key(i);
                    key = key && key.match(prefixRegExp);
                    key = key && key[1];
                    if (key && key.indexOf(CACHE_SUFFIX) < 0) {
                        fn(key, expirationKey(key));
                    }
                }
            }

            function flushItem(key) {
                var exprKey = expirationKey(key);

                removeItem(key);
                removeItem(exprKey);
            }

            function flushExpiredItem(key) {
                var exprKey = expirationKey(key);
                var expr = getItem(exprKey);

                if (expr) {
                    var expirationTime = parseInt(expr, EXPIRY_RADIX);

                    // Check if we should actually kick item out of storage
                    if (currentTime() >= expirationTime) {
                        removeItem(key);
                        removeItem(exprKey);
                        return true;
                    }
                }
            }

            function warn(message, err) {
                if (!warnings) return;
                if (!('console' in window) || typeof window.console.warn !== 'function') return;
                window.console.warn("lscache - " + message);
                if (err) window.console.warn("lscache - The error was: " + err.message);
            }

            var lscache = {
                /**
                 * Stores the value in localStorage. Expires after specified number of minutes.
                 * @param {string} key
                 * @param {Object|string} value
                 * @param {number} time
                 */
                set: function set(key, value, time) {
                    if (!supportsStorage()) return;

                    // If we don't get a string value, try to stringify
                    // In future, localStorage may properly support storing non-strings
                    // and this can be removed.

                    if (!supportsJSON()) return;
                    try {
                        value = JSON.stringify(value);
                    } catch (e) {
                        // Sometimes we can't stringify due to circular refs
                        // in complex objects, so we won't bother storing then.
                        return;
                    }

                    try {
                        setItem(key, value);
                    } catch (e) {
                        if (isOutOfSpace(e)) {
                            // If we exceeded the quota, then we will sort
                            // by the expire time, and then remove the N oldest
                            var storedKeys = [];
                            var storedKey;
                            eachKey(function(key, exprKey) {
                                var expiration = getItem(exprKey);
                                if (expiration) {
                                    expiration = parseInt(expiration, EXPIRY_RADIX);
                                } else {
                                    // TODO: Store date added for non-expiring items for smarter removal
                                    expiration = MAX_DATE;
                                }
                                storedKeys.push({
                                    key: key,
                                    size: (getItem(key) || '').length,
                                    expiration: expiration
                                });
                            });
                            // Sorts the keys with oldest expiration time last
                            storedKeys.sort(function(a, b) {
                                return b.expiration - a.expiration;
                            });

                            var targetSize = (value || '').length;
                            while (storedKeys.length && targetSize > 0) {
                                storedKey = storedKeys.pop();
                                warn("Cache is full, removing item with key '" + key + "'");
                                flushItem(storedKey.key);
                                targetSize -= storedKey.size;
                            }
                            try {
                                setItem(key, value);
                            } catch (e) {
                                // value may be larger than total quota
                                warn("Could not add item with key '" + key + "', perhaps it's too big?", e);
                                return;
                            }
                        } else {
                            // If it was some other error, just give up.
                            warn("Could not add item with key '" + key + "'", e);
                            return;
                        }
                    }

                    // If a time is specified, store expiration info in localStorage
                    if (time) {
                        setItem(expirationKey(key), (currentTime() + time).toString(EXPIRY_RADIX));
                    } else {
                        // In case they previously set a time, remove that info from localStorage.
                        removeItem(expirationKey(key));
                    }
                },

                /**
                 * Retrieves specified value from localStorage, if not expired.
                 * @param {string} key
                 * @return {string|Object}
                 */
                get: function get(key) {
                    if (!supportsStorage()) return null;

                    // Return the de-serialized item if not expired
                    if (flushExpiredItem(key)) {
                        return null;
                    }

                    // Tries to de-serialize stored value if its an object, and returns the normal value otherwise.
                    var value = getItem(key);
                    if (!value || !supportsJSON()) {
                        return value;
                    }

                    try {
                        // We can't tell if its JSON or a string, so we try to parse
                        return JSON.parse(value);
                    } catch (e) {
                        // If we can't parse, it's probably because it isn't an object
                        return value;
                    }
                },

                /**
                 * Removes a value from localStorage.
                 * Equivalent to 'delete' in memcache, but that's a keyword in JS.
                 * @param {string} key
                 */
                remove: function remove(key) {
                    if (!supportsStorage()) return;

                    flushItem(key);
                },

                /**
                 * Returns whether local storage is supported.
                 * Currently exposed for testing purposes.
                 * @return {boolean}
                 */
                supported: function supported() {
                    return supportsStorage();
                },

                /**
                 * Flushes all lscache items and expiry markers without affecting rest of localStorage
                 */
                flush: function flush() {
                    if (!supportsStorage()) return;

                    eachKey(function(key) {
                        flushItem(key);
                    });
                },

                /**
                 * Flushes expired lscache items and expiry markers without affecting rest of localStorage
                 */
                flushExpired: function flushExpired() {
                    if (!supportsStorage()) return;

                    eachKey(function(key) {
                        flushExpiredItem(key);
                    });
                },

                /**
                 * Appends CACHE_PREFIX so lscache will partition data in to different buckets.
                 * @param {string} bucket
                 */
                setBucket: function setBucket(bucket) {
                    cacheBucket = bucket;
                },

                /**
                 * Resets the string being appended to CACHE_PREFIX so lscache will use the default storage behavior.
                 */
                resetBucket: function resetBucket() {
                    cacheBucket = '';
                },

                /**
                 * Sets whether to display warnings when an item is removed from the cache or not.
                 */
                enableWarnings: function enableWarnings(enabled) {
                    warnings = enabled;
                }
            };

            // Return the module
            return lscache;
        });

        /***/
    }),
    /* 8 */
    /***/
    (function(module, exports, __webpack_require__) {

        var __WEBPACK_AMD_DEFINE_RESULT__; // Copyright (c) 2013 Pieroxy <pieroxy@pieroxy.net>
        // This work is free. You can redistribute it and/or modify it
        // under the terms of the WTFPL, Version 2
        // For more information see LICENSE.txt or http://www.wtfpl.net/
        //
        // For more information, the home page:
        // http://pieroxy.net/blog/pages/lz-string/testing.html
        //
        // LZ-based compression algorithm, version 1.4.4
        var LZString = function() {

            // private property
            var f = String.fromCharCode;
            var keyStrBase64 = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=";
            var keyStrUriSafe = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+-$";
            var baseReverseDic = {};

            function getBaseValue(alphabet, character) {
                if (!baseReverseDic[alphabet]) {
                    baseReverseDic[alphabet] = {};
                    for (var i = 0; i < alphabet.length; i++) {
                        baseReverseDic[alphabet][alphabet.charAt(i)] = i;
                    }
                }
                return baseReverseDic[alphabet][character];
            }

            var LZString = {
                compressToBase64: function compressToBase64(input) {
                    if (input == null) return "";
                    var res = LZString._compress(input, 6, function(a) {
                        return keyStrBase64.charAt(a);
                    });
                    switch (res.length % 4) { // To produce valid Base64
                        default: // When could this happen ?
                            case 0:
                            return res;
                        case 1:
                                return res + "===";
                        case 2:
                                return res + "==";
                        case 3:
                                return res + "=";
                    }
                },

                decompressFromBase64: function decompressFromBase64(input) {
                    if (input == null) return "";
                    if (input == "") return null;
                    return LZString._decompress(input.length, 32, function(index) {
                        return getBaseValue(keyStrBase64, input.charAt(index));
                    });
                },

                compressToUTF16: function compressToUTF16(input) {
                    if (input == null) return "";
                    return LZString._compress(input, 15, function(a) {
                        return f(a + 32);
                    }) + " ";
                },

                decompressFromUTF16: function decompressFromUTF16(compressed) {
                    if (compressed == null) return "";
                    if (compressed == "") return null;
                    return LZString._decompress(compressed.length, 16384, function(index) {
                        return compressed.charCodeAt(index) - 32;
                    });
                },

                //compress into uint8array (UCS-2 big endian format)
                compressToUint8Array: function compressToUint8Array(uncompressed) {
                    var compressed = LZString.compress(uncompressed);
                    var buf = new Uint8Array(compressed.length * 2); // 2 bytes per character

                    for (var i = 0, TotalLen = compressed.length; i < TotalLen; i++) {
                        var current_value = compressed.charCodeAt(i);
                        buf[i * 2] = current_value >>> 8;
                        buf[i * 2 + 1] = current_value % 256;
                    }
                    return buf;
                },

                //decompress from uint8array (UCS-2 big endian format)
                decompressFromUint8Array: function decompressFromUint8Array(compressed) {
                    if (compressed === null || compressed === undefined) {
                        return LZString.decompress(compressed);
                    } else {
                        var buf = new Array(compressed.length / 2); // 2 bytes per character
                        for (var i = 0, TotalLen = buf.length; i < TotalLen; i++) {
                            buf[i] = compressed[i * 2] * 256 + compressed[i * 2 + 1];
                        }

                        var result = [];
                        buf.forEach(function(c) {
                            result.push(f(c));
                        });
                        return LZString.decompress(result.join(''));
                    }
                },

                //compress into a string that is already URI encoded
                compressToEncodedURIComponent: function compressToEncodedURIComponent(input) {
                    if (input == null) return "";
                    return LZString._compress(input, 6, function(a) {
                        return keyStrUriSafe.charAt(a);
                    });
                },

                //decompress from an output of compressToEncodedURIComponent
                decompressFromEncodedURIComponent: function decompressFromEncodedURIComponent(input) {
                    if (input == null) return "";
                    if (input == "") return null;
                    input = input.replace(/ /g, "+");
                    return LZString._decompress(input.length, 32, function(index) {
                        return getBaseValue(keyStrUriSafe, input.charAt(index));
                    });
                },

                compress: function compress(uncompressed) {
                    return LZString._compress(uncompressed, 16, function(a) {
                        return f(a);
                    });
                },
                _compress: function _compress(uncompressed, bitsPerChar, getCharFromInt) {
                    if (uncompressed == null) return "";
                    var i,
                        value,
                        context_dictionary = {},
                        context_dictionaryToCreate = {},
                        context_c = "",
                        context_wc = "",
                        context_w = "",
                        context_enlargeIn = 2,
                        // Compensate for the first entry which should not count
                        context_dictSize = 3,
                        context_numBits = 2,
                        context_data = [],
                        context_data_val = 0,
                        context_data_position = 0,
                        ii;

                    for (ii = 0; ii < uncompressed.length; ii += 1) {
                        context_c = uncompressed.charAt(ii);
                        if (!Object.prototype.hasOwnProperty.call(context_dictionary, context_c)) {
                            context_dictionary[context_c] = context_dictSize++;
                            context_dictionaryToCreate[context_c] = true;
                        }

                        context_wc = context_w + context_c;
                        if (Object.prototype.hasOwnProperty.call(context_dictionary, context_wc)) {
                            context_w = context_wc;
                        } else {
                            if (Object.prototype.hasOwnProperty.call(context_dictionaryToCreate, context_w)) {
                                if (context_w.charCodeAt(0) < 256) {
                                    for (i = 0; i < context_numBits; i++) {
                                        context_data_val = context_data_val << 1;
                                        if (context_data_position == bitsPerChar - 1) {
                                            context_data_position = 0;
                                            context_data.push(getCharFromInt(context_data_val));
                                            context_data_val = 0;
                                        } else {
                                            context_data_position++;
                                        }
                                    }
                                    value = context_w.charCodeAt(0);
                                    for (i = 0; i < 8; i++) {
                                        context_data_val = context_data_val << 1 | value & 1;
                                        if (context_data_position == bitsPerChar - 1) {
                                            context_data_position = 0;
                                            context_data.push(getCharFromInt(context_data_val));
                                            context_data_val = 0;
                                        } else {
                                            context_data_position++;
                                        }
                                        value = value >> 1;
                                    }
                                } else {
                                    value = 1;
                                    for (i = 0; i < context_numBits; i++) {
                                        context_data_val = context_data_val << 1 | value;
                                        if (context_data_position == bitsPerChar - 1) {
                                            context_data_position = 0;
                                            context_data.push(getCharFromInt(context_data_val));
                                            context_data_val = 0;
                                        } else {
                                            context_data_position++;
                                        }
                                        value = 0;
                                    }
                                    value = context_w.charCodeAt(0);
                                    for (i = 0; i < 16; i++) {
                                        context_data_val = context_data_val << 1 | value & 1;
                                        if (context_data_position == bitsPerChar - 1) {
                                            context_data_position = 0;
                                            context_data.push(getCharFromInt(context_data_val));
                                            context_data_val = 0;
                                        } else {
                                            context_data_position++;
                                        }
                                        value = value >> 1;
                                    }
                                }
                                context_enlargeIn--;
                                if (context_enlargeIn == 0) {
                                    context_enlargeIn = Math.pow(2, context_numBits);
                                    context_numBits++;
                                }
                                delete context_dictionaryToCreate[context_w];
                            } else {
                                value = context_dictionary[context_w];
                                for (i = 0; i < context_numBits; i++) {
                                    context_data_val = context_data_val << 1 | value & 1;
                                    if (context_data_position == bitsPerChar - 1) {
                                        context_data_position = 0;
                                        context_data.push(getCharFromInt(context_data_val));
                                        context_data_val = 0;
                                    } else {
                                        context_data_position++;
                                    }
                                    value = value >> 1;
                                }
                            }
                            context_enlargeIn--;
                            if (context_enlargeIn == 0) {
                                context_enlargeIn = Math.pow(2, context_numBits);
                                context_numBits++;
                            }
                            // Add wc to the dictionary.
                            context_dictionary[context_wc] = context_dictSize++;
                            context_w = String(context_c);
                        }
                    }

                    // Output the code for w.
                    if (context_w !== "") {
                        if (Object.prototype.hasOwnProperty.call(context_dictionaryToCreate, context_w)) {
                            if (context_w.charCodeAt(0) < 256) {
                                for (i = 0; i < context_numBits; i++) {
                                    context_data_val = context_data_val << 1;
                                    if (context_data_position == bitsPerChar - 1) {
                                        context_data_position = 0;
                                        context_data.push(getCharFromInt(context_data_val));
                                        context_data_val = 0;
                                    } else {
                                        context_data_position++;
                                    }
                                }
                                value = context_w.charCodeAt(0);
                                for (i = 0; i < 8; i++) {
                                    context_data_val = context_data_val << 1 | value & 1;
                                    if (context_data_position == bitsPerChar - 1) {
                                        context_data_position = 0;
                                        context_data.push(getCharFromInt(context_data_val));
                                        context_data_val = 0;
                                    } else {
                                        context_data_position++;
                                    }
                                    value = value >> 1;
                                }
                            } else {
                                value = 1;
                                for (i = 0; i < context_numBits; i++) {
                                    context_data_val = context_data_val << 1 | value;
                                    if (context_data_position == bitsPerChar - 1) {
                                        context_data_position = 0;
                                        context_data.push(getCharFromInt(context_data_val));
                                        context_data_val = 0;
                                    } else {
                                        context_data_position++;
                                    }
                                    value = 0;
                                }
                                value = context_w.charCodeAt(0);
                                for (i = 0; i < 16; i++) {
                                    context_data_val = context_data_val << 1 | value & 1;
                                    if (context_data_position == bitsPerChar - 1) {
                                        context_data_position = 0;
                                        context_data.push(getCharFromInt(context_data_val));
                                        context_data_val = 0;
                                    } else {
                                        context_data_position++;
                                    }
                                    value = value >> 1;
                                }
                            }
                            context_enlargeIn--;
                            if (context_enlargeIn == 0) {
                                context_enlargeIn = Math.pow(2, context_numBits);
                                context_numBits++;
                            }
                            delete context_dictionaryToCreate[context_w];
                        } else {
                            value = context_dictionary[context_w];
                            for (i = 0; i < context_numBits; i++) {
                                context_data_val = context_data_val << 1 | value & 1;
                                if (context_data_position == bitsPerChar - 1) {
                                    context_data_position = 0;
                                    context_data.push(getCharFromInt(context_data_val));
                                    context_data_val = 0;
                                } else {
                                    context_data_position++;
                                }
                                value = value >> 1;
                            }
                        }
                        context_enlargeIn--;
                        if (context_enlargeIn == 0) {
                            context_enlargeIn = Math.pow(2, context_numBits);
                            context_numBits++;
                        }
                    }

                    // Mark the end of the stream
                    value = 2;
                    for (i = 0; i < context_numBits; i++) {
                        context_data_val = context_data_val << 1 | value & 1;
                        if (context_data_position == bitsPerChar - 1) {
                            context_data_position = 0;
                            context_data.push(getCharFromInt(context_data_val));
                            context_data_val = 0;
                        } else {
                            context_data_position++;
                        }
                        value = value >> 1;
                    }

                    // Flush the last char
                    while (true) {
                        context_data_val = context_data_val << 1;
                        if (context_data_position == bitsPerChar - 1) {
                            context_data.push(getCharFromInt(context_data_val));
                            break;
                        } else context_data_position++;
                    }
                    return context_data.join('');
                },

                decompress: function decompress(compressed) {
                    if (compressed == null) return "";
                    if (compressed == "") return null;
                    return LZString._decompress(compressed.length, 32768, function(index) {
                        return compressed.charCodeAt(index);
                    });
                },

                _decompress: function _decompress(length, resetValue, getNextValue) {
                    var dictionary = [],
                        next,
                        enlargeIn = 4,
                        dictSize = 4,
                        numBits = 3,
                        entry = "",
                        result = [],
                        i,
                        w,
                        bits,
                        resb,
                        maxpower,
                        power,
                        c,
                        data = {
                            val: getNextValue(0),
                            position: resetValue,
                            index: 1
                        };

                    for (i = 0; i < 3; i += 1) {
                        dictionary[i] = i;
                    }

                    bits = 0;
                    maxpower = Math.pow(2, 2);
                    power = 1;
                    while (power != maxpower) {
                        resb = data.val & data.position;
                        data.position >>= 1;
                        if (data.position == 0) {
                            data.position = resetValue;
                            data.val = getNextValue(data.index++);
                        }
                        bits |= (resb > 0 ? 1 : 0) * power;
                        power <<= 1;
                    }

                    switch (next = bits) {
                        case 0:
                            bits = 0;
                            maxpower = Math.pow(2, 8);
                            power = 1;
                            while (power != maxpower) {
                                resb = data.val & data.position;
                                data.position >>= 1;
                                if (data.position == 0) {
                                    data.position = resetValue;
                                    data.val = getNextValue(data.index++);
                                }
                                bits |= (resb > 0 ? 1 : 0) * power;
                                power <<= 1;
                            }
                            c = f(bits);
                            break;
                        case 1:
                            bits = 0;
                            maxpower = Math.pow(2, 16);
                            power = 1;
                            while (power != maxpower) {
                                resb = data.val & data.position;
                                data.position >>= 1;
                                if (data.position == 0) {
                                    data.position = resetValue;
                                    data.val = getNextValue(data.index++);
                                }
                                bits |= (resb > 0 ? 1 : 0) * power;
                                power <<= 1;
                            }
                            c = f(bits);
                            break;
                        case 2:
                            return "";
                    }
                    dictionary[3] = c;
                    w = c;
                    result.push(c);
                    while (true) {
                        if (data.index > length) {
                            return "";
                        }

                        bits = 0;
                        maxpower = Math.pow(2, numBits);
                        power = 1;
                        while (power != maxpower) {
                            resb = data.val & data.position;
                            data.position >>= 1;
                            if (data.position == 0) {
                                data.position = resetValue;
                                data.val = getNextValue(data.index++);
                            }
                            bits |= (resb > 0 ? 1 : 0) * power;
                            power <<= 1;
                        }

                        switch (c = bits) {
                            case 0:
                                bits = 0;
                                maxpower = Math.pow(2, 8);
                                power = 1;
                                while (power != maxpower) {
                                    resb = data.val & data.position;
                                    data.position >>= 1;
                                    if (data.position == 0) {
                                        data.position = resetValue;
                                        data.val = getNextValue(data.index++);
                                    }
                                    bits |= (resb > 0 ? 1 : 0) * power;
                                    power <<= 1;
                                }

                                dictionary[dictSize++] = f(bits);
                                c = dictSize - 1;
                                enlargeIn--;
                                break;
                            case 1:
                                bits = 0;
                                maxpower = Math.pow(2, 16);
                                power = 1;
                                while (power != maxpower) {
                                    resb = data.val & data.position;
                                    data.position >>= 1;
                                    if (data.position == 0) {
                                        data.position = resetValue;
                                        data.val = getNextValue(data.index++);
                                    }
                                    bits |= (resb > 0 ? 1 : 0) * power;
                                    power <<= 1;
                                }
                                dictionary[dictSize++] = f(bits);
                                c = dictSize - 1;
                                enlargeIn--;
                                break;
                            case 2:
                                return result.join('');
                        }

                        if (enlargeIn == 0) {
                            enlargeIn = Math.pow(2, numBits);
                            numBits++;
                        }

                        if (dictionary[c]) {
                            entry = dictionary[c];
                        } else {
                            if (c === dictSize) {
                                entry = w + w.charAt(0);
                            } else {
                                return null;
                            }
                        }
                        result.push(entry);

                        // Add w+entry[0] to the dictionary.
                        dictionary[dictSize++] = w + entry.charAt(0);
                        enlargeIn--;

                        w = entry;

                        if (enlargeIn == 0) {
                            enlargeIn = Math.pow(2, numBits);
                            numBits++;
                        }
                    }
                }
            };
            return LZString;
        }();

        if (true) {
            !(__WEBPACK_AMD_DEFINE_RESULT__ = function() {
                    return LZString;
                }.call(exports, __webpack_require__, exports, module),
                __WEBPACK_AMD_DEFINE_RESULT__ !== undefined && (module.exports = __WEBPACK_AMD_DEFINE_RESULT__));
        } else if (typeof module !== 'undefined' && module != null) {
            module.exports = LZString;
        }

        /***/
    }),
    /* 9 */
    /***/
    (function(module, exports, __webpack_require__) {

        var __WEBPACK_AMD_DEFINE_RESULT__;
        var _typeof = typeof Symbol === "function" && typeof Symbol.iterator === "symbol" ? function(obj) {
            return typeof obj;
        } : function(obj) {
            return obj && typeof Symbol === "function" && obj.constructor === Symbol && obj !== Symbol.prototype ? "symbol" : typeof obj;
        };

        (function(global) {

            //
            // Check for native Promise and it has correct interface
            //

            var NativePromise = global['Promise'];
            var nativePromiseSupported = NativePromise &&
                // Some of these methods are missing from
                // Firefox/Chrome experimental implementations
                'resolve' in NativePromise && 'reject' in NativePromise && 'all' in NativePromise && 'race' in NativePromise &&
                // Older version of the spec had a resolver object
                // as the arg rather than a function
                function() {
                    var resolve;
                    new NativePromise(function(r) {
                        resolve = r;
                    });
                    return typeof resolve === 'function';
                }();

            //
            // export if necessary
            //

            if (typeof exports !== 'undefined' && exports) {
                // node.js
                exports.Promise = nativePromiseSupported ? NativePromise : Promise;
                exports.Polyfill = Promise;
            } else {
                // AMD
                if (true) {
                    !(__WEBPACK_AMD_DEFINE_RESULT__ = function() {
                            return nativePromiseSupported ? NativePromise : Promise;
                        }.call(exports, __webpack_require__, exports, module),
                        __WEBPACK_AMD_DEFINE_RESULT__ !== undefined && (module.exports = __WEBPACK_AMD_DEFINE_RESULT__));
                } else {
                    // in browser add to global
                    if (!nativePromiseSupported) global['Promise'] = Promise;
                }
            }

            //
            // Polyfill
            //

            var PENDING = 'pending';
            var SEALED = 'sealed';
            var FULFILLED = 'fulfilled';
            var REJECTED = 'rejected';
            var NOOP = function NOOP() {};

            function isArray(value) {
                return Object.prototype.toString.call(value) === '[object Array]';
            }

            // async calls
            var asyncSetTimer = typeof setImmediate !== 'undefined' ? setImmediate : setTimeout;
            var asyncQueue = [];
            var asyncTimer;

            function asyncFlush() {
                // run promise callbacks
                for (var i = 0; i < asyncQueue.length; i++) {
                    asyncQueue[i][0](asyncQueue[i][1]);
                } // reset async asyncQueue
                asyncQueue = [];
                asyncTimer = false;
            }

            function asyncCall(callback, arg) {
                asyncQueue.push([callback, arg]);

                if (!asyncTimer) {
                    asyncTimer = true;
                    asyncSetTimer(asyncFlush, 0);
                }
            }

            function invokeResolver(resolver, promise) {
                function resolvePromise(value) {
                    resolve(promise, value);
                }

                function rejectPromise(reason) {
                    reject(promise, reason);
                }

                try {
                    resolver(resolvePromise, rejectPromise);
                } catch (e) {
                    rejectPromise(e);
                }
            }

            function invokeCallback(subscriber) {
                var owner = subscriber.owner;
                var settled = owner.state_;
                var value = owner.data_;
                var callback = subscriber[settled];
                var promise = subscriber.then;

                if (typeof callback === 'function') {
                    settled = FULFILLED;
                    try {
                        value = callback(value);
                    } catch (e) {
                        reject(promise, e);
                    }
                }

                if (!handleThenable(promise, value)) {
                    if (settled === FULFILLED) resolve(promise, value);

                    if (settled === REJECTED) reject(promise, value);
                }
            }

            function handleThenable(promise, value) {
                var resolved;

                try {
                    if (promise === value) throw new TypeError('A promises callback cannot return that same promise.');

                    if (value && (typeof value === 'function' || (typeof value === 'undefined' ? 'undefined' : _typeof(value)) === 'object')) {
                        var then = value.then; // then should be retrived only once

                        if (typeof then === 'function') {
                            then.call(value, function(val) {
                                if (!resolved) {
                                    resolved = true;

                                    if (value !== val) resolve(promise, val);
                                    else fulfill(promise, val);
                                }
                            }, function(reason) {
                                if (!resolved) {
                                    resolved = true;

                                    reject(promise, reason);
                                }
                            });

                            return true;
                        }
                    }
                } catch (e) {
                    if (!resolved) reject(promise, e);

                    return true;
                }

                return false;
            }

            function resolve(promise, value) {
                if (promise === value || !handleThenable(promise, value)) fulfill(promise, value);
            }

            function fulfill(promise, value) {
                if (promise.state_ === PENDING) {
                    promise.state_ = SEALED;
                    promise.data_ = value;

                    asyncCall(publishFulfillment, promise);
                }
            }

            function reject(promise, reason) {
                if (promise.state_ === PENDING) {
                    promise.state_ = SEALED;
                    promise.data_ = reason;

                    asyncCall(publishRejection, promise);
                }
            }

            function publish(promise) {
                var callbacks = promise.then_;
                promise.then_ = undefined;

                for (var i = 0; i < callbacks.length; i++) {
                    invokeCallback(callbacks[i]);
                }
            }

            function publishFulfillment(promise) {
                promise.state_ = FULFILLED;
                publish(promise);
            }

            function publishRejection(promise) {
                promise.state_ = REJECTED;
                publish(promise);
            }

            /**
             * @class
             */
            function Promise(resolver) {
                if (typeof resolver !== 'function') throw new TypeError('Promise constructor takes a function argument');

                if (this instanceof Promise === false) throw new TypeError('Failed to construct \'Promise\': Please use the \'new\' operator, this object constructor cannot be called as a function.');

                this.then_ = [];

                invokeResolver(resolver, this);
            }

            Promise.prototype = {
                constructor: Promise,

                state_: PENDING,
                then_: null,
                data_: undefined,

                then: function then(onFulfillment, onRejection) {
                    var subscriber = {
                        owner: this,
                        then: new this.constructor(NOOP),
                        fulfilled: onFulfillment,
                        rejected: onRejection
                    };

                    if (this.state_ === FULFILLED || this.state_ === REJECTED) {
                        // already resolved, call callback async
                        asyncCall(invokeCallback, subscriber);
                    } else {
                        // subscribe
                        this.then_.push(subscriber);
                    }

                    return subscriber.then;
                },

                'catch': function _catch(onRejection) {
                    return this.then(null, onRejection);
                }
            };

            Promise.all = function(promises) {
                var Class = this;

                if (!isArray(promises)) throw new TypeError('You must pass an array to Promise.all().');

                return new Class(function(resolve, reject) {
                    var results = [];
                    var remaining = 0;

                    function resolver(index) {
                        remaining++;
                        return function(value) {
                            results[index] = value;
                            if (!--remaining) resolve(results);
                        };
                    }

                    for (var i = 0, promise; i < promises.length; i++) {
                        promise = promises[i];

                        if (promise && typeof promise.then === 'function') promise.then(resolver(i), reject);
                        else results[i] = promise;
                    }

                    if (!remaining) resolve(results);
                });
            };

            Promise.race = function(promises) {
                var Class = this;

                if (!isArray(promises)) throw new TypeError('You must pass an array to Promise.race().');

                return new Class(function(resolve, reject) {
                    for (var i = 0, promise; i < promises.length; i++) {
                        promise = promises[i];

                        if (promise && typeof promise.then === 'function') promise.then(resolve, reject);
                        else resolve(promise);
                    }
                });
            };

            Promise.resolve = function(value) {
                var Class = this;

                if (value && (typeof value === 'undefined' ? 'undefined' : _typeof(value)) === 'object' && value.constructor === Class) return value;

                return new Class(function(resolve) {
                    resolve(value);
                });
            };

            Promise.reject = function(reason) {
                var Class = this;

                return new Class(function(resolve, reject) {
                    reject(reason);
                });
            };
        })(typeof window != 'undefined' ? window : typeof global != 'undefined' ? global : typeof self != 'undefined' ? self : this);

        /***/
    }),
    /* 10 */
    /***/
    (function(module, __webpack_exports__, __webpack_require__) {

        "use strict";
        /* harmony export (binding) */
        __webpack_require__.d(__webpack_exports__, "a", function() {
            return listen;
        });
        /* harmony import */
        var __WEBPACK_IMPORTED_MODULE_0__api_request__ = __webpack_require__(1);
        /* harmony import */
        var __WEBPACK_IMPORTED_MODULE_1__browser_abstraction__ = __webpack_require__(0);
        /* harmony import */
        var __WEBPACK_IMPORTED_MODULE_2__salecycle_log_tiny__ = __webpack_require__(11);
        /* harmony import */
        var __WEBPACK_IMPORTED_MODULE_2__salecycle_log_tiny___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_2__salecycle_log_tiny__);
        /**
         * Implements generic handling for post message receivers
         * @module receiver
         */



        var win = Object(__WEBPACK_IMPORTED_MODULE_1__browser_abstraction__["d" /* window */ ])();
        /**
         * Call the sender with our wrapped payload
         * @param wrappedPayload {Object} the payload we want to pass to the iframe
         */
        var callbackToSender = function(wrappedPayload) {
            if (!win.parent || win.parent === win) {
                // we haven't got a parent
                return;
            }
            // we stringify because ie < 10 will always send as a string and this way we are consistent
            win.parent.postMessage(__WEBPACK_IMPORTED_MODULE_1__browser_abstraction__["a" /* SafeJson */ ].stringify(wrappedPayload), '*');
        };
        /**
         * Create a wrapped payload we can send to the iframe
         * @param req {Object} the original message
         * @returns {replyClosure} the message we want to send to the igrame
         */
        var generateReplyClosure = function(req) {
            var channelGuid = req.channelGuid;
            var ticketGuid = req.ticket.ticketGuid;
            return function(err, payload) {
                var wrappedPayload = {
                    channelGuid: channelGuid,
                    ticket: {
                        payload: payload,
                        ticketGuid: ticketGuid
                    }
                };
                if (err) {
                    __WEBPACK_IMPORTED_MODULE_2__salecycle_log_tiny__["noop"]();
                    wrappedPayload.err = err;
                }
                callbackToSender(wrappedPayload);
            };
        };
        /**
         * start listening for messages
         * @param onMessageReceived {function} function to call when we get a message
         */
        var listen = function(onMessageReceived) {
            Object(__WEBPACK_IMPORTED_MODULE_1__browser_abstraction__["c" /* on */ ])('message', function(message) {
                __WEBPACK_IMPORTED_MODULE_2__salecycle_log_tiny__["noop"]();
                __WEBPACK_IMPORTED_MODULE_2__salecycle_log_tiny__["noop"]();
                // need to wrap everything up in a ticket
                try {
                    // sometimes, we have data as empty string. Hence check that
                    var messageData = message.data !== '' ? __WEBPACK_IMPORTED_MODULE_1__browser_abstraction__["a" /* SafeJson */ ].parse(message.data) : {};
                    if (messageData && messageData.ticket) {
                        onMessageReceived(messageData.ticket.payload, generateReplyClosure(messageData));
                    }
                } catch (ex) {
                    __WEBPACK_IMPORTED_MODULE_2__salecycle_log_tiny__["noop"]();
                }
            });
            // get our frame guid from the query string
            var frameGuid = __WEBPACK_IMPORTED_MODULE_0__api_request__["a" /* default */ ].getQueryStringParameter('sc_frame_id');
            // ok, we're ready to receive, let the caller know
            callbackToSender({
                frameGuid: frameGuid,
                messageType: 'FRAME_READY',
                payload: {},
                receiverUrl: Object(__WEBPACK_IMPORTED_MODULE_1__browser_abstraction__["b" /* location */ ])().href
            });
        };


        /***/
    }),
    /* 11 */
    /***/
    (function(module, exports) {

        /**
         * Implements a simple logger that logs to console
         *
         * @type {{logError: module.exports.logError, logWarning: module.exports.logWarning, logInfo: module.exports.logInfo, logObj: module.exports.logObj}}
         */

        var noop = function noop() {};

        var bindConsoleFunc = function bindConsoleFunc(existingFunc) {
            if (!console || !console.log || typeof existingFunc !== 'function') {
                // eslint-disable-line no-console
                return noop;
            }

            return existingFunc.bind(console);
        };

        module.exports = {
            groupEnd: bindConsoleFunc(console.groupEnd), // eslint-disable-line no-console
            groupStart: bindConsoleFunc(console.groupCollapsed), // eslint-disable-line no-console
            logError: bindConsoleFunc(console.error), // eslint-disable-line no-console
            logInfo: bindConsoleFunc(console.info), // eslint-disable-line no-console
            logObj: bindConsoleFunc(console.dir), // eslint-disable-line no-console
            logWarning: bindConsoleFunc(console.warn), // eslint-disable-line no-console
            noop: noop
        };

        /***/
    }),
    /* 12 */
    /***/
    (function(module, __webpack_exports__, __webpack_require__) {

        "use strict";
        /* harmony export (binding) */
        __webpack_require__.d(__webpack_exports__, "a", function() {
            return getHandler;
        });
        /**
         * Store handler
         */
        /**
         * Handle getting a value from the store
         * @param messagePayload {Object} the incoming message payload
         * @param store {Object} the store to get the value from
         * @param callback {function} callback function
         */
        var handleGet = function(messagePayload, store, callback) {
            if (!messagePayload.name) {
                return callback('STOREHANDLER: Get: no name');
            }
            store.getValue(messagePayload.name)
                .then(function(result) {
                    return callback(null, result);
                })
                .catch(function(err) {
                    return callback(err);
                });
        };
        /**
         * Handle setting a value in the store
         * @param messagePayload {Object} the incoming message payload
         * @param store {Object} the store to set the value in
         * @param callback {function} callback function
         */
        var handleSet = function(messagePayload, store, callback) {
            if (!messagePayload.name) {
                return callback('STOREHANDLER: Set: no name');
            }
            if (!messagePayload.value) {
                return callback('STOREHANDLER: Set: no value');
            }
            store.setValue(messagePayload.name, messagePayload.value, messagePayload.expiresInMinutes)
                .then(function(result) {
                    return callback(null, result);
                })
                .catch(function(err) {
                    return callback(err);
                });
        };
        /**
         * Handle removing a value in the store
         * @param messagePayload {Object} the incoming message payload
         * @param store {Object} the store to remove the value in
         * @param callback {function} callback function
         */
        var handleRemove = function(messagePayload, store, callback) {
            if (!messagePayload.name) {
                return callback('STOREHANDLER: Remove: no name');
            }
            store.removeValue(messagePayload.name)
                .then(function(result) {
                    return callback(null, result);
                })
                .catch(function(err) {
                    return callback(err);
                });
        };
        /**
         * decode a message and forward it on
         * @param message
         * @param {IStore} store the store to forward messages to
         * @callback callback
         */
        var handleStoreMessage = function(message, store, callback) {
            if (!message.payload) {
                return callback('STOREHANDLER: empty payload', null);
            }
            if (!store) {
                return callback('STOREHANDLER: no store');
            }
            switch (message.commandType) {
                case 'GET':
                    handleGet(message.payload, store, callback);
                    break;
                case 'SET':
                    handleSet(message.payload, store, callback);
                    break;
                case 'REMOVE':
                    handleRemove(message.payload, store, callback);
                    break;
                default:
                    callback("unknown store command " + message.commandType, null);
                    break;
            }
        };
        /**
         * Gets a closure to deal with passing messages to the attached store
         * @param store
         * @returns {{handleMessage: handleMessage}}
         */
        var getHandler = function(store) {
            return ({
                handleMessage: function(message, callback) {
                    return handleStoreMessage(message, store, callback);
                }
            });
        };


        /***/
    })
    /******/
]);


// WEBPACK FOOTER //
// iframe_receiver/bundle.js