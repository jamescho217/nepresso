/*! 2021-02-06 13:51  */ ! function a(b, c, d) {
    function e(g, h) {
        if (!c[g]) {
            if (!b[g]) {
                var i = "function" == typeof require && require;
                if (!h && i) return i(g, !0);
                if (f) return f(g, !0);
                var j = new Error("Cannot find module '" + g + "'");
                throw j.code = "MODULE_NOT_FOUND", j
            }
            var k = c[g] = {
                exports: {}
            };
            b[g][0].call(k.exports, function(a) {
                var c = b[g][1][a];
                return e(c ? c : a)
            }, k, k.exports, a, b, c, d)
        }
        return c[g].exports
    }
    for (var f = "function" == typeof require && require, g = 0; g < d.length; g++) e(d[g]);
    return e
}({
    1: [function(a, b, c) {
        "use strict";

        function d(a, b) {
            if (!(a instanceof b)) throw new TypeError("Cannot call a class as a function")
        }
        Object.defineProperty(c, "__esModule", {
            value: !0
        });
        var e = function() {
                function a(a, b) {
                    for (var c = 0; c < b.length; c++) {
                        var d = b[c];
                        d.enumerable = d.enumerable || !1, d.configurable = !0, "value" in d && (d.writable = !0), Object.defineProperty(a, d.key, d)
                    }
                }
                return function(b, c, d) {
                    return c && a(b.prototype, c), d && a(b, d), b
                }
            }(),
            f = function() {
                function a() {
                    d(this, a)
                }
                return e(a, null, [{
                    key: "getCookieExpiresString",
                    value: function(a) {
                        var b = new Date,
                            c = new Date(b.getTime() + a);
                        return "expires=" + c.toGMTString() + ";"
                    }
                }, {
                    key: "getPathString",
                    value: function(a) {
                        return "path=" + a + ";"
                    }
                }, {
                    key: "bake",
                    value: function(b) {
                        var c = arguments.length > 1 && void 0 !== arguments[1] ? arguments[1] : null;
                        document.cookie = "smartbanner_exited=1; " + (b ? a.getCookieExpiresString(b) : "") + " " + (c ? a.getPathString(c) : "")
                    }
                }, {
                    key: "unbake",
                    value: function() {
                        document.cookie = "smartbanner_exited=; expires=Thu, 01 Jan 1970 00:00:01 GMT;"
                    }
                }, {
                    key: "baked",
                    get: function() {
                        var a = document.cookie.replace(/(?:(?:^|.*;\s*)smartbanner_exited\s*\=\s*([^;]*).*$)|^.*$/, "$1");
                        return "1" === a
                    }
                }]), a
            }();
        c.default = f
    }, {}],
    2: [function(a, b, c) {
        (function(a) {
            "use strict";

            function b(a, b) {
                if (!(a instanceof b)) throw new TypeError("Cannot call a class as a function")
            }
            Object.defineProperty(c, "__esModule", {
                value: !0
            });
            var d = function() {
                    function a(a, b) {
                        for (var c = 0; c < b.length; c++) {
                            var d = b[c];
                            d.enumerable = d.enumerable || !1, d.configurable = !0, "value" in d && (d.writable = !0), Object.defineProperty(a, d.key, d)
                        }
                    }
                    return function(b, c, d) {
                        return c && a(b.prototype, c), d && a(b, d), b
                    }
                }(),
                e = function() {
                    function c() {
                        b(this, c)
                    }
                    return d(c, null, [{
                        key: "platform",
                        value: function() {
                            return /iPhone|iPad|iPod/i.test(window.navigator.userAgent) ? "ios" : /Android/i.test(window.navigator.userAgent) ? "android" : void 0
                        }
                    }, {
                        key: "userAgentMatchesRegex",
                        value: function(a) {
                            return new RegExp(a).test(window.navigator.userAgent)
                        }
                    }, {
                        key: "jQueryMobilePage",
                        value: function() {
                            return "undefined" != typeof a.$ && "undefined" !== a.$.mobile && null !== document.querySelector(".ui-page")
                        }
                    }, {
                        key: "wrapperElement",
                        value: function() {
                            var a = c.jQueryMobilePage() ? ".ui-page" : "html";
                            return document.querySelectorAll(a)
                        }
                    }]), c
                }();
            c.default = e
        }).call(this, "undefined" != typeof global ? global : "undefined" != typeof self ? self : "undefined" != typeof window ? window : {})
    }, {}],
    3: [function(a, b, c) {
        "use strict";

        function d(a) {
            return a && a.__esModule ? a : {
                default: a
            }
        }
        var e = a("./smartbanner.js"),
            f = d(e),
            g = void 0;
        window.addEventListener("load", function() {
            g = new f.default, g.publish()
        })
    }, {
        "./smartbanner.js": 7
    }],
    4: [function(a, b, c) {
        "use strict";

        function d(a, b) {
            if (!(a instanceof b)) throw new TypeError("Cannot call a class as a function")
        }

        function e(a) {
            return a.indexOf("smartbanner:") !== -1 && a.split(":")[1].length > 0
        }

        function f(a) {
            var b = a.split("-");
            return b.map(function(a, c) {
                c > 0 && (b[c] = a.charAt(0).toUpperCase() + a.substring(1))
            }), b.join("")
        }
        Object.defineProperty(c, "__esModule", {
            value: !0
        });
        var g = function() {
            function a(a, b) {
                for (var c = 0; c < b.length; c++) {
                    var d = b[c];
                    d.enumerable = d.enumerable || !1, d.configurable = !0, "value" in d && (d.writable = !0), Object.defineProperty(a, d.key, d)
                }
            }
            return function(b, c, d) {
                return c && a(b.prototype, c), d && a(b, d), b
            }
        }();
        a("./polyfills/array/from.js"), a("./polyfills/array/includes.js");
        var h = function() {
            function a() {
                d(this, a)
            }
            return g(a, [{
                key: "parse",
                value: function() {
                    var a = document.getElementsByTagName("meta"),
                        b = {},
                        c = null;
                    return Array.from(a).forEach(function(a) {
                        var d = a.getAttribute("name"),
                            g = a.getAttribute("content");
                        d && g && e(d) && g.length > 0 && (c = d.split(":")[1], Array.from(c).includes("-") && (c = f(c)), b[c] = g)
                    }), b
                }
            }]), a
        }();
        c.default = h
    }, {
        "./polyfills/array/from.js": 5,
        "./polyfills/array/includes.js": 6
    }],
    5: [function(a, b, c) {
        "use strict";
        Array.from || (Array.from = function() {
            var a = Object.prototype.toString,
                b = function(b) {
                    return "function" == typeof b || "[object Function]" === a.call(b)
                },
                c = function(a) {
                    var b = Number(a);
                    return isNaN(b) ? 0 : 0 !== b && isFinite(b) ? (b > 0 ? 1 : -1) * Math.floor(Math.abs(b)) : b
                },
                d = Math.pow(2, 53) - 1,
                e = function(a) {
                    var b = c(a);
                    return Math.min(Math.max(b, 0), d)
                };
            return function(a) {
                var c = this,
                    d = Object(a);
                if (null == a) throw new TypeError("Array.from requires an array-like object - not null or undefined");
                var f, g = arguments.length > 1 ? arguments[1] : void 0;
                if ("undefined" != typeof g) {
                    if (!b(g)) throw new TypeError("Array.from: when provided, the second argument must be a function");
                    arguments.length > 2 && (f = arguments[2])
                }
                for (var h, i = e(d.length), j = b(c) ? Object(new c(i)) : new Array(i), k = 0; k < i;) h = d[k], g ? j[k] = "undefined" == typeof f ? g(h, k) : g.call(f, h, k) : j[k] = h, k += 1;
                return j.length = i, j
            }
        }())
    }, {}],
    6: [function(a, b, c) {
        "use strict";
        Array.prototype.includes || (Array.prototype.includes = function(a) {
            if (null == this) throw new TypeError("Array.prototype.includes called on null or undefined");
            var b = Object(this),
                c = parseInt(b.length, 10) || 0;
            if (0 === c) return !1;
            var d, e = parseInt(arguments[1], 10) || 0;
            e >= 0 ? d = e : (d = c + e, d < 0 && (d = 0));
            for (var f; d < c;) {
                if (f = b[d], a === f || a !== a && f !== f) return !0;
                d++
            }
            return !1
        })
    }, {}],
    7: [function(a, b, c) {
        "use strict";

        function d(a) {
            return a && a.__esModule ? a : {
                default: a
            }
        }

        function e(a, b) {
            if (!(a instanceof b)) throw new TypeError("Cannot call a class as a function")
        }

        function f(a, b) {
            b.exit(), a.preventDefault()
        }

        function g(a) {
            this.positioningDisabled || j(a.data.height)
        }

        function h(a) {
            var b = document.querySelector(".js_smartbanner__exit");
            b.addEventListener("click", function(b) {
                return f(b, a)
            }), p.default.jQueryMobilePage() && $(document).on("pagebeforeshow", a, g)
        }

        function i() {
            p.default.jQueryMobilePage() && $(document).off("pagebeforeshow", g)
        }

        function j(a) {
            for (var b, c = p.default.wrapperElement(), d = 0, e = c.length; d < e; d++)
                if (b = c[d], p.default.jQueryMobilePage()) {
                    if (b.getAttribute(t.originalTop)) continue;
                    var f = parseFloat(getComputedStyle(b).top);
                    b.setAttribute(t.originalTop, isNaN(f) ? 0 : f), b.style.top = a + "px"
                } else {
                    if (b.getAttribute(t.originalMarginTop)) continue;
                    var g = parseFloat(getComputedStyle(b).marginTop);
                    b.setAttribute(t.originalMarginTop, isNaN(g) ? 0 : g), b.style.marginTop = a + "px"
                }
        }

        function k() {
            for (var a, b = p.default.wrapperElement(), c = 0, d = b.length; c < d; c++) a = b[c], p.default.jQueryMobilePage() && a.getAttribute(t.originalTop) ? a.style.top = a.getAttribute(t.originalTop) + "px" : a.getAttribute(t.originalMarginTop) && (a.style.marginTop = a.getAttribute(t.originalMarginTop) + "px")
        }
        Object.defineProperty(c, "__esModule", {
            value: !0
        });
        var l = function() {
                function a(a, b) {
                    for (var c = 0; c < b.length; c++) {
                        var d = b[c];
                        d.enumerable = d.enumerable || !1, d.configurable = !0, "value" in d && (d.writable = !0), Object.defineProperty(a, d.key, d)
                    }
                }
                return function(b, c, d) {
                    return c && a(b.prototype, c), d && a(b, d), b
                }
            }(),
            m = a("./optionparser.js"),
            n = d(m),
            o = a("./detector.js"),
            p = d(o),
            q = a("./bakery.js"),
            r = d(q),
            s = "android,ios",
            t = {
                originalTop: "data-smartbanner-original-top",
                originalMarginTop: "data-smartbanner-original-margin-top"
            },
            u = function() {
                function a() {
                    e(this, a);
                    var b = new n.default;
                    this.options = b.parse(), this.platform = p.default.platform()
                }
                return l(a, [{
                    key: "publish",
                    value: function() {
                        if (0 === Object.keys(this.options).length) throw new Error("No options detected. Please consult documentation.");
                        if (r.default.baked) return !1;
                        if (this.userAgentExcluded) return !1;
                        if (!this.platformEnabled && !this.userAgentIncluded) return !1;
                        var a = document.createElement("div");
                        document.querySelector("body").appendChild(a), a.outerHTML = this.html, this.positioningDisabled || j(this.height), h(this)
                    }
                }, {
                    key: "exit",
                    value: function() {
                        i(), this.positioningDisabled || k();
                        var a = document.querySelector(".js_smartbanner");
                        document.querySelector("body").removeChild(a), r.default.bake(this.hideTtl, this.hidePath)
                    }
                }, {
                    key: "originalTop",
                    get: function() {
                        var a = p.default.wrapperElement()[0];
                        return parseFloat(a.getAttribute(t.originalTop))
                    }
                }, {
                    key: "originalTopMargin",
                    get: function() {
                        var a = p.default.wrapperElement()[0];
                        return parseFloat(a.getAttribute(t.originalMarginTop))
                    }
                }, {
                    key: "priceSuffix",
                    get: function() {
                        return "ios" === this.platform ? this.options.priceSuffixApple : "android" === this.platform ? this.options.priceSuffixGoogle : ""
                    }
                }, {
                    key: "icon",
                    get: function() {
                        return "android" === this.platform ? this.options.iconGoogle : this.options.iconApple
                    }
                }, {
                    key: "buttonUrl",
                    get: function() {
                        return "android" === this.platform ? this.options.buttonUrlGoogle : "ios" === this.platform ? this.options.buttonUrlApple : "#"
                    }
                }, {
                    key: "html",
                    get: function() {
                        var a = this.options.customDesignModifier ? this.options.customDesignModifier : this.platform;
                        return '<div class="smartbanner smartbanner--' + a + ' js_smartbanner">\n      <a href="javascript:void();" class="smartbanner__exit js_smartbanner__exit"></a>\n      <div class="smartbanner__icon" style="background-image: url(' + this.icon + ');"></div>\n      <div class="smartbanner__info">\n        <div>\n          <div class="smartbanner__info__title">' + this.options.title + '</div>\n          <div class="smartbanner__info__author">' + this.options.author + '</div>\n          <div class="smartbanner__info__price">' + this.options.price + this.priceSuffix + '</div>\n        </div>\n      </div>\n      <a href="' + this.buttonUrl + '" target="_blank" class="smartbanner__button"><span class="smartbanner__button__label">' + this.options.button + "</span></a>\n    </div>"
                    }
                }, {
                    key: "height",
                    get: function() {
                        var a = document.querySelector(".js_smartbanner").offsetHeight;
                        return void 0 !== a ? a : 0
                    }
                }, {
                    key: "platformEnabled",
                    get: function() {
                        var a = this.options.enabledPlatforms || s;
                        return a && a.replace(/\s+/g, "").split(",").indexOf(this.platform) !== -1
                    }
                }, {
                    key: "positioningDisabled",
                    get: function() {
                        return "true" === this.options.disablePositioning
                    }
                }, {
                    key: "userAgentExcluded",
                    get: function() {
                        return !!this.options.excludeUserAgentRegex && p.default.userAgentMatchesRegex(this.options.excludeUserAgentRegex)
                    }
                }, {
                    key: "userAgentIncluded",
                    get: function() {
                        return !!this.options.includeUserAgentRegex && p.default.userAgentMatchesRegex(this.options.includeUserAgentRegex)
                    }
                }, {
                    key: "hideTtl",
                    get: function() {
                        return !!this.options.hideTtl && parseInt(this.options.hideTtl)
                    }
                }]), a
            }();
        c.default = u
    }, {
        "./bakery.js": 1,
        "./detector.js": 2,
        "./optionparser.js": 4
    }]
}, {}, [3]);