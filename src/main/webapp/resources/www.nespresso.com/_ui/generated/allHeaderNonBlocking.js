/*! 2021-02-06 13:51  */ ! function(a, b, c) {
    var d, e = ["webkit", "Moz", "ms", "O"],
        f = {};

    function g(a, c) {
        var d, e = b.createElement(a || "div");
        for (d in c) e[d] = c[d];
        return e
    }

    function h(a) {
        for (var b = 1, c = arguments.length; b < c; b++) a.appendChild(arguments[b]);
        return a
    }
    var i = function() {
        var a = g("style", {
            type: "text/css"
        });
        return h(b.getElementsByTagName("head")[0], a), a.sheet || a.styleSheet
    }();

    function j(a, b, c, e) {
        var g = ["opacity", b, ~~(100 * a), c, e].join("-"),
            h = .01 + c / e * 100,
            j = Math.max(1 - (1 - a) / b * (100 - h), a),
            k = d.substring(0, d.indexOf("Animation")).toLowerCase(),
            l = k && "-" + k + "-" || "";
        return f[g] || (i.insertRule("@" + l + "keyframes " + g + "{0%{opacity:" + j + "}" + h + "%{opacity:" + a + "}" + (h + .01) + "%{opacity:1}" + (h + b) % 100 + "%{opacity:" + a + "}100%{opacity:" + j + "}}", i.cssRules.length), f[g] = 1), g
    }

    function k(a, b) {
        var d, f, g = a.style;
        if (g[b] !== c) return b;
        for (b = b.charAt(0).toUpperCase() + b.slice(1), f = 0; f < e.length; f++)
            if (d = e[f] + b, g[d] !== c) return d
    }

    function l(a, b) {
        for (var c in b) a.style[k(a, c) || c] = b[c];
        return a
    }

    function m(a) {
        for (var b = 1; b < arguments.length; b++) {
            var d = arguments[b];
            for (var e in d) a[e] === c && (a[e] = d[e])
        }
        return a
    }

    function n(a) {
        for (var b = {
                x: a.offsetLeft,
                y: a.offsetTop
            }; a = a.offsetParent;) b.x += a.offsetLeft, b.y += a.offsetTop;
        return b
    }
    var o = {
        lines: 12,
        length: 7,
        width: 5,
        radius: 10,
        rotate: 0,
        corners: 1,
        color: "#000",
        speed: 1,
        trail: 100,
        opacity: .25,
        fps: 20,
        zIndex: 2e9,
        className: "spinner",
        top: "auto",
        left: "auto",
        position: "relative"
    };

    function p(a) {
        return this.spin ? void(this.opts = m(a || {}, p.defaults, o)) : new p(a)
    }
    p.defaults = {}, m(p.prototype, {
            spin: function(a) {
                this.stop();
                var b, c, e = this,
                    f = e.opts,
                    h = e.el = l(g(0, {
                        className: f.className
                    }), {
                        position: f.position,
                        width: 0,
                        zIndex: f.zIndex
                    }),
                    i = f.radius + f.length + f.width;
                if (a && (a.insertBefore(h, a.firstChild || null), c = n(a), b = n(h), l(h, {
                        left: ("auto" == f.left ? c.x - b.x + (a.offsetWidth >> 1) : parseInt(f.left, 10) + i) + "px",
                        top: ("auto" == f.top ? c.y - b.y + (a.offsetHeight >> 1) : parseInt(f.top, 10) + i) + "px"
                    })), h.setAttribute("aria-role", "progressbar"), e.lines(h, e.opts), !d) {
                    var j = 0,
                        k = f.fps,
                        m = k / f.speed,
                        o = (1 - f.opacity) / (m * f.trail / 100),
                        p = m / f.lines;
                    ! function a() {
                        j++;
                        for (var b = f.lines; b; b--) {
                            var c = Math.max(1 - (j + b * p) % m * o, f.opacity);
                            e.opacity(h, f.lines - b, c, f)
                        }
                        e.timeout = e.el && setTimeout(a, ~~(1e3 / k))
                    }()
                }
                return e
            },
            stop: function() {
                var a = this.el;
                return a && (clearTimeout(this.timeout), a.parentNode && a.parentNode.removeChild(a), this.el = c), this
            },
            lines: function(a, b) {
                var c, e = 0;

                function f(a, c) {
                    return l(g(), {
                        position: "absolute",
                        width: b.length + b.width + "px",
                        height: b.width + "px",
                        background: a,
                        boxShadow: c,
                        transformOrigin: "left",
                        transform: "rotate(" + ~~(360 / b.lines * e + b.rotate) + "deg) translate(" + b.radius + "px,0)",
                        borderRadius: (b.corners * b.width >> 1) + "px"
                    })
                }
                for (; e < b.lines; e++) c = l(g(), {
                    position: "absolute",
                    top: 1 + ~(b.width / 2) + "px",
                    transform: b.hwaccel ? "translate3d(0,0,0)" : "",
                    opacity: b.opacity,
                    animation: d && j(b.opacity, b.trail, e, b.lines) + " " + 1 / b.speed + "s linear infinite"
                }), b.shadow && h(c, l(f("#000", "0 0 4px #000"), {
                    top: "2px"
                })), h(a, h(c, f(b.color, "0 0 1px rgba(0,0,0,.1)")));
                return a
            },
            opacity: function(a, b, c) {
                b < a.childNodes.length && (a.childNodes[b].style.opacity = c)
            }
        }),
        function() {
            function a(a, b) {
                return g("<" + a + ' xmlns="urn:schemas-microsoft.com:vml" class="spin-vml">', b)
            }
            var b = l(g("group"), {
                behavior: "url(#default#VML)"
            });
            !k(b, "transform") && b.adj ? (i.addRule(".spin-vml", "behavior:url(#default#VML)"), p.prototype.lines = function(b, c) {
                var d = c.length + c.width,
                    e = 2 * d;

                function f() {
                    return l(a("group", {
                        coordsize: e + " " + e,
                        coordorigin: -d + " " + -d
                    }), {
                        width: e,
                        height: e
                    })
                }
                var g, i = 2 * -(c.width + c.length) + "px",
                    j = l(f(), {
                        position: "absolute",
                        top: i,
                        left: i
                    });

                function k(b, e, g) {
                    h(j, h(l(f(), {
                        rotation: 360 / c.lines * b + "deg",
                        left: ~~e
                    }), h(l(a("roundrect", {
                        arcsize: c.corners
                    }), {
                        width: d,
                        height: c.width,
                        left: c.radius,
                        top: -c.width >> 1,
                        filter: g
                    }), a("fill", {
                        color: c.color,
                        opacity: c.opacity
                    }), a("stroke", {
                        opacity: 0
                    }))))
                }
                if (c.shadow)
                    for (g = 1; g <= c.lines; g++) k(g, -2, "progid:DXImageTransform.Microsoft.Blur(pixelradius=2,makeshadow=1,shadowopacity=.3)");
                for (g = 1; g <= c.lines; g++) k(g);
                return h(b, j)
            }, p.prototype.opacity = function(a, b, c, d) {
                var e = a.firstChild;
                d = d.shadow && d.lines || 0, e && b + d < e.childNodes.length && (e = e.childNodes[b + d], e = e && e.firstChild, e = e && e.firstChild, e && (e.opacity = c))
            }) : d = k(b, "animation")
        }(), "function" == typeof define && define.amd ? define(function() {
            return p
        }) : a.Spinner = p
}(window, document);
"use strict";
var dummyStorage = function(a) {
        var b = a || window,
            c = "__dummyStorage__";
        return b[c] = b[c] || {}, {
            getItem: function(a) {
                return b[c][a] || null
            },
            setItem: function(a, d) {
                b[c][a] = d
            },
            removeItem: function(a) {
                delete b[c][a]
            }
        }
    },
    safeSessionStorage = function(a) {
        var b = a || window,
            c = Date.now();
        try {
            return b.sessionStorage.setItem("test-" + c, "1234"), b.sessionStorage.removeItem("test-" + c), b.sessionStorage
        } catch (a) {
            return dummyStorage(b)
        }
    },
    safeLocalStorage = function(a) {
        var b = a || window,
            c = Date.now();
        try {
            return b.localStorage.setItem("test-" + c, "1234"), b.localStorage.removeItem("test-" + c), b.localStorage
        } catch (a) {
            return safeSessionStorage(b)
        }
    },
    safeStorages = {
        safeLocalStorage: safeLocalStorage,
        safeSessionStorage: safeSessionStorage
    };
"undefined" != typeof module && module.exports && (module.exports = safeStorages);
var cookieWrapper = function(a) {
    var b = {};

    function c(a) {
        return a ? $.isArray(a) ? a.map(c) : a.replace(/[^\w\s:.!?',]/gi, "") : a
    }
    return b.get = function() {
        return c($.cookie(a))
    }, b.set = function(b) {
        $.cookie(a, c(b), {
            path: "/"
        })
    }, b.remove = function() {
        void 0 !== $.cookie(a) && $.cookie(a, "", {
            path: "/",
            expires: -1
        })
    }, b
};

function clone(a) {
    var b = {};
    for (var c in a) a.hasOwnProperty(c) && (b[c] = a[c]);
    return b
}

function obj2arr(a) {
    var b = [];
    for (var c in a) a.hasOwnProperty(c) && b.push(a[c]);
    return b
}

function log() {
    try {
        console.log.apply(console, arguments)
    } catch (a) {}
}
Array.prototype.isArray = !0, Array.prototype.repeat = function(a, b, c) {
    for (; b;) this[--b] = c ? a() : a;
    return this
}, Array.prototype.unique = function() {
    for (var a = this.concat(), b = 0; b < a.length; ++b)
        for (var c = b + 1; c < a.length; ++c) a[b] === a[c] && a.splice(c--, 1);
    return a
};

function flatten(a, b) {
    var c = [],
        d = [];
    return a.map(function(a, e) {
        a[b].map(function(a) {
            a.group = e, a.index = d.length, d.push(a)
        }), c.push(a)
    }), d
}

function range(a, b) {
    var c = [];
    b || (b = a - 1, a = 0);
    for (var d = a; d <= b; d++) c.push(d);
    return c
}

function buildIndex(a, b, c) {
    var d = c || {};
    return a.map(function(a, c) {
        a[b] && a[b] instanceof Array && a[b].map(function(a) {
            d[a] || (d[a] = []), d[a].push(c)
        })
    }), d
}

function buildFilteredIndex(a, b) {
    var c = {},
        d = {};
    return a.map(function(a, e) {
        a[b] && a[b].isArray && a[b].map(function(b) {
            c[b] || (c[b] = [], d[b] = []), d[b].indexOf(a.id) === -1 && (d[b].push(a.id), c[b].push(e))
        })
    }), c
}

function fiveInRangeAround(a, b) {
    return b <= 5 ? range(1, b) : a < 4 ? range(1, 5) : a > b - 3 ? range(b - 4, b) : range(a - 2, Math.min(a + 2, b))
}

function isEmpty(a) {
    if (null === a) return !0;
    if (a.length && a.length > 0) return !1;
    if (0 === a.length) return !0;
    for (var b in a)
        if (a.hasOwnProperty(b)) return !1;
    return !0
}

function isEmptyOrAllValuesAreFalse(a) {
    if ("object" == typeof a) {
        if (isEmpty(a)) return !0;
        for (var b in a)
            if (a.hasOwnProperty(b) && a[b] !== !1) return !1
    } else if (a) return !1;
    return !0
}

function initDialog(a, b, c) {
    var d = {};
    $.extend(d, {
        autoOpen: !1,
        resizable: !1,
        draggable: !1,
        modal: !1,
        closeText: "",
        dialogClass: "custom-dropdown-dialog",
        open: function() {
            a.addClass("dialogOpened")
        },
        close: function() {
            a.removeClass("dialogOpened")
        },
        show: {
            effect: "slide",
            direction: "up",
            duration: 300,
            easing: "easeInOutCirc"
        },
        hide: {
            effect: "slide",
            direction: "up",
            duration: 300,
            easing: "easeInOutCirc"
        },
        clickOutside: !0,
        clickOutsideTrigger: a
    }, c), b.dialog(d), a.on("click", function() {
        var c = "open";
        return a.hasClass("dialogOpened") && (c = "close"), b.dialog(c), !1
    })
}

function getHash() {
    var a = location.hash;
    return "" !== a && (a = decodeURIComponent(a.slice(1))), a
}

function setHash(a) {
    getHash() !== a && (history.pushState ? history.pushState({}, a, "#" + a) : location.hash = a ? a : "")
}

function setUrl(a, b) {
    function c(a) {
        return a.substr(a.lastIndexOf("/") + 1)
    }

    function d(a, b) {
        var c = a.split("/");
        return c[c.length - 1] = "" + b, c.join("/")
    }
    if (history.pushState && (a || (a = location.pathname + "/" + Math.round(10 * Math.random()) + (getHash() ? "#" + getHash() : "")), history.pushState({}, "new product", a), b)) {
        var e = c(a);
        $(".lang li a").each(function() {
            var a = $(this),
                b = a.attr("href");
            a.attr("href", d(b, e))
        })
    }
}
$(function() {
    function a(a) {
        var b = a.keyCode ? a.keyCode : a.which,
            c = a.shiftKey ? a.shiftKey : 16 === b,
            d = $(this).parents(".nes_bloc_pass"),
            e = d.find(".nes_pass-caps");
        b >= 65 && b <= 90 && !c || b >= 97 && b <= 122 && c ? (d.find(".tt-container").addClass("nes-pas-caps-active"), e.show()) : (d.find(".tt-container").removeClass("nes-pas-caps-active"), $(".nes_pass-caps").hide())
    }
    $('input[type="password"]').on("keypress", a)
});
var DialogSemaphore = function() {
    var a = null;
    return {
        myTurn: function(b) {
            if (a && (null === b || null !== b && a[0] !== b[0])) try {
                a.dialog("close")
            } catch (a) {}
            a = b
        }
    }
}();

function keepDialogOpen(a) {
    "undefined" != typeof a.stopPropagation ? a.stopPropagation() : a.cancelBubble = !0
}

function oldBrowser() {
    if (!$.cookie("okToUseOldBrowser")) {
        var a = $("#outdated-browser");
        a.dialog({
            resizable: !1,
            autoOpen: !0,
            draggable: !1,
            closeOnEscape: !1,
            closeText: "",
            modal: !0,
            width: 724,
            height: 250,
            dialogClass: "ui-popin popin-dialog-open confirm-info-dialog no-close",
            hide: {
                effect: "fadeOut",
                duration: 300
            },
            open: function() {
                $(".ui-widget-overlay").addClass("overlay-dark"), $(this).on("click", ".btn.confirm", function() {
                    return $.cookie("okToUseOldBrowser", "true"), a.dialog("close"), !1
                })
            }
        })
    }
}
var CollectionUtils = function() {
    function a(a, b) {
        var c = {};
        if (!a || !a.length) return c;
        for (var d = 0; d < a.length; d++) {
            var e = a[d];
            e.hasOwnProperty(b) && (c[e[b]] = e)
        }
        return c
    }
    return {
        mapCollection: a
    }
}();

function objForEach(a, b) {
    for (var c in a) a.hasOwnProperty(c) && b(c, a[c])
}

function roundToHalf(a) {
    return Math.round(2 * a) / 2
}

function getVisuallyHidden(a) {
    return a ? '<span class="visually-hidden">' + a + "</span>" : ""
}

function a11yNotifyUser(a, b) {
    var c = $("#a11y-notification-area");
    if (b) c.html('<span class="a11y-tooltip">' + a + "</span>");
    else {
        var d = c.find(".a11y-tooltip").text() || "";
        d = d ? d + ", " : "", c.text(d + a)
    }
}

function a11yFocusOnMessage(a) {
    var b = $("#a11y-message-area");
    a && setTimeout(function() {
        b.removeClass("display-none").text(a).focus()
    }, 0)
}

function a11yFocusAfterAngularProcess(a) {
    a && setTimeout(function() {
        document.getElementById(a).focus()
    }, 0)
}

function a11yFocusOnLogin(a) {
    var b = $("#user-is-logged button");
    b.length && (a.remove(), b.focus())
}

function a11yFocusOnDescLogged(a) {
    var b = $("#user-is-logged button"),
        c = config.labels.authentication.descLogged;
    !b.length && c && (a.remove(), a11yFocusOnMessage(c))
}
var preventAddingAnchor = !1;

function disableSkipLinksURLModification() {
    preventAddingAnchor = !0
}

function handleClickOnSkipLinks(a, b) {
    var c = $(b).attr("href"),
        d = $(c);
    if (d.length && d.focus(), preventAddingAnchor) return a.preventDefault(), !1
}
var pageStatusBuffer = cookieWrapper("pageStatusBuffer");

function loadComponent(a, b, c) {
    var d = $(a);
    log("loading component: selector, url, type", a, b, c), d.load(b, function() {
        d.show(), log("component loaded: selector, url, type", a, b, c), $(function() {
            $(document).trigger("componentLoaded").trigger("componentLoaded:" + c)
        })
    })
}

function removeSpecialCharacter(a) {
    return a ? a.replace(/[^a-z0-9\/:.#?=,-_]/gi, "") : ""
}
var BlockingLoadingFactory = function() {
    return function(a) {
        return {
            show: function() {
                a.show().focus()
            },
            hide: function() {
                a.hide()
            }
        }
    }
}();
! function(a) {
    var b = "?v=" + a.cacheBusting,
        c = "responsive/";

    function d(b) {
        var c, d = [];
        for (c = 0; c < b.length; c++) {
            var e = b[c].copied ? "/generated/" : "/vendor/";
            d.push(a.resUrl + e + b[c].path)
        }
        return d
    }
    var e = {};
    e.productBrowserBlock = d([{
        path: "mejs/mediaelementplayer.min.css" + b,
        copied: !0
    }, {
        path: "mejs/mediaelement-and-player.min.js" + b,
        copied: !0
    }]), e.welcomeOffersBlock = d([{
        path: "components/welcomeOffersBlock.css" + b,
        copied: !0
    }]), e.discoveryOffersBlock = d([{
        path: c + "components/discoveryOffersBlock.css" + b,
        copied: !0
    }]), e.assistanceCallback = d([{
        path: "jquery.ui.datepicker.css" + b,
        copied: !0
    }, {
        path: "callbackLinkeo.js" + b,
        copied: !0
    }]), e.subscription = d([{
        path: "subscription.js" + b,
        copied: !0
    }]), a.components = e
}(window.config = window.config || {
    resUrl: "/broken"
}), $(function() {
    var a = {
        TAB: 9
    };
    $(document).on("keydown", "body:not(.a11y-navigation)", function(b) {
        var c = b.keyCode || b.which;
        c === a.TAB && $("body").addClass("a11y-navigation")
    }), $(document).on("mousedown", "body.a11y-navigation", function() {
        $("body").removeClass("a11y-navigation")
    })
});

function storageWrapper(a, b, c) {
    function d(a) {
        return a
    }
    var e = c || d,
        f = b || d;

    function g() {
        try {
            var b = "test" + (new Date).getTime();
            return a.setItem(b, "test"), a.removeItem(b), !0
        } catch (a) {
            return !1
        }
    }

    function h(b, c) {
        try {
            return a.setItem(b, f(c)), !0
        } catch (a) {
            return !1
        }
    }

    function i(b) {
        try {
            return e(a.getItem(b)) || null
        } catch (a) {
            return !1
        }
    }

    function j(b) {
        try {
            return a.removeItem(b), !0
        } catch (a) {
            return !1
        }
    }

    function k() {
        try {
            return a.clear(), !0
        } catch (a) {
            return !1
        }
    }
    return {
        isAvailable: g,
        set: h,
        get: i,
        remove: j,
        clear: k
    }
}
"undefined" != typeof module && module.exports && (module.exports = storageWrapper),
    function() {
        var a = {
                function: !0,
                object: !0
            },
            b = a[typeof window] && window || this,
            c = b,
            d = a[typeof exports] && exports,
            e = a[typeof module] && module && !module.nodeType && module,
            f = d && e && "object" == typeof global && global;
        !f || f.global !== f && f.window !== f && f.self !== f || (b = f);
        var g = Math.pow(2, 53) - 1,
            h = /\bOpera/,
            i = this,
            j = Object.prototype,
            k = j.hasOwnProperty,
            l = j.toString;

        function m(a) {
            return a = String(a), a.charAt(0).toUpperCase() + a.slice(1)
        }

        function n(a, b, c) {
            var d = {
                "10.0": "10",
                6.4: "10 Technical Preview",
                6.3: "8.1",
                6.2: "8",
                6.1: "Server 2008 R2 / 7",
                "6.0": "Server 2008 / Vista",
                5.2: "Server 2003 / XP 64-bit",
                5.1: "XP",
                5.01: "2000 SP1",
                "5.0": "2000",
                "4.0": "NT",
                "4.90": "ME"
            };
            return b && c && /^Win/i.test(a) && !/^Windows Phone /i.test(a) && (d = d[/[\d.]+$/.exec(a)]) && (a = "Windows " + d), a = String(a), b && c && (a = a.replace(RegExp(b, "i"), c)), a = p(a.replace(/ ce$/i, " CE").replace(/\bhpw/i, "web").replace(/\bMacintosh\b/, "Mac OS").replace(/_PowerPC\b/i, " OS").replace(/\b(OS X) [^ \d]+/i, "$1").replace(/\bMac (OS X)\b/, "$1").replace(/\/(\d)/, " $1").replace(/_/g, ".").replace(/(?: BePC|[ .]*fc[ \d.]+)$/i, "").replace(/\bx86\.64\b/gi, "x86_64").replace(/\b(Windows Phone) OS\b/, "$1").replace(/\b(Chrome OS \w+) [\d.]+\b/, "$1").split(" on ")[0])
        }

        function o(a, b) {
            var c = -1,
                d = a ? a.length : 0;
            if ("number" == typeof d && d > -1 && d <= g)
                for (; ++c < d;) b(a[c], c, a);
            else q(a, b)
        }

        function p(a) {
            return a = v(a), /^(?:webOS|i(?:OS|P))/.test(a) ? a : m(a)
        }

        function q(a, b) {
            for (var c in a) k.call(a, c) && b(a[c], c, a)
        }

        function r(a) {
            return null == a ? m(a) : l.call(a).slice(8, -1)
        }

        function s(a, b) {
            var c = null != a ? typeof a[b] : "number";
            return !(/^(?:boolean|number|string|undefined)$/.test(c) || "object" == c && !a[b])
        }

        function t(a) {
            return String(a).replace(/([ -])(?!$)/g, "$1?")
        }

        function u(a, b) {
            var c = null;
            return o(a, function(d, e) {
                c = b(c, d, e, a)
            }), c
        }

        function v(a) {
            return String(a).replace(/^ +| +$/g, "")
        }

        function w(a) {
            var d = b,
                e = a && "object" == typeof a && "String" != r(a);
            e && (d = a, a = null);
            var f = d.navigator || {},
                g = f.userAgent || "";
            a || (a = g);
            var j, k, m = e || i == c,
                o = e ? !!f.likeChrome : /\bChrome\b/.test(a) && !/internal|\n/i.test(l.toString()),
                x = "Object",
                y = e ? x : "ScriptBridgingProxyObject",
                z = e ? x : "Environment",
                A = e && d.java ? "JavaPackage" : r(d.java),
                B = e ? x : "RuntimeObject",
                C = /\bJava/.test(A) && d.java,
                D = C && r(d.environment) == z,
                E = C ? "a" : "α",
                F = C ? "b" : "β",
                G = d.document || {},
                H = d.operamini || d.opera,
                I = h.test(I = e && H ? H["[[Class]]"] : r(H)) ? I : H = null,
                J = a,
                K = [],
                L = null,
                M = a == g,
                N = M && H && "function" == typeof H.version && H.version(),
                O = T([{
                    label: "EdgeHTML",
                    pattern: "Edge"
                }, "Trident", {
                    label: "WebKit",
                    pattern: "AppleWebKit"
                }, "iCab", "Presto", "NetFront", "Tasman", "KHTML", "Gecko"]),
                P = V(["Adobe AIR", "Arora", "Avant Browser", "Breach", "Camino", "Electron", "Epiphany", "Fennec", "Flock", "Galeon", "GreenBrowser", "iCab", "Iceweasel", "K-Meleon", "Konqueror", "Lunascape", "Maxthon", {
                    label: "Microsoft Edge",
                    pattern: "Edge"
                }, "Midori", "Nook Browser", "PaleMoon", "PhantomJS", "Raven", "Rekonq", "RockMelt", {
                    label: "Samsung Internet",
                    pattern: "SamsungBrowser"
                }, "SeaMonkey", {
                    label: "Silk",
                    pattern: "(?:Cloud9|Silk-Accelerated)"
                }, "Sleipnir", "SlimBrowser", {
                    label: "SRWare Iron",
                    pattern: "Iron"
                }, "Sunrise", "Swiftfox", "Waterfox", "WebPositive", "Opera Mini", {
                    label: "Opera Mini",
                    pattern: "OPiOS"
                }, "Opera", {
                    label: "Opera",
                    pattern: "OPR"
                }, "Chrome", {
                    label: "Chrome Mobile",
                    pattern: "(?:CriOS|CrMo)"
                }, {
                    label: "Firefox",
                    pattern: "(?:Firefox|Minefield)"
                }, {
                    label: "Firefox for iOS",
                    pattern: "FxiOS"
                }, {
                    label: "IE",
                    pattern: "IEMobile"
                }, {
                    label: "IE",
                    pattern: "MSIE"
                }, "Safari"]),
                Q = X([{
                    label: "BlackBerry",
                    pattern: "BB10"
                }, "BlackBerry", {
                    label: "Galaxy S",
                    pattern: "GT-I9000"
                }, {
                    label: "Galaxy S2",
                    pattern: "GT-I9100"
                }, {
                    label: "Galaxy S3",
                    pattern: "GT-I9300"
                }, {
                    label: "Galaxy S4",
                    pattern: "GT-I9500"
                }, {
                    label: "Galaxy S5",
                    pattern: "SM-G900"
                }, {
                    label: "Galaxy S6",
                    pattern: "SM-G920"
                }, {
                    label: "Galaxy S6 Edge",
                    pattern: "SM-G925"
                }, {
                    label: "Galaxy S7",
                    pattern: "SM-G930"
                }, {
                    label: "Galaxy S7 Edge",
                    pattern: "SM-G935"
                }, "Google TV", "Lumia", "iPad", "iPod", "iPhone", "Kindle", {
                    label: "Kindle Fire",
                    pattern: "(?:Cloud9|Silk-Accelerated)"
                }, "Nexus", "Nook", "PlayBook", "PlayStation Vita", "PlayStation", "TouchPad", "Transformer", {
                    label: "Wii U",
                    pattern: "WiiU"
                }, "Wii", "Xbox One", {
                    label: "Xbox 360",
                    pattern: "Xbox"
                }, "Xoom"]),
                R = U({
                    Apple: {
                        iPad: 1,
                        iPhone: 1,
                        iPod: 1
                    },
                    Archos: {},
                    Amazon: {
                        Kindle: 1,
                        "Kindle Fire": 1
                    },
                    Asus: {
                        Transformer: 1
                    },
                    "Barnes & Noble": {
                        Nook: 1
                    },
                    BlackBerry: {
                        PlayBook: 1
                    },
                    Google: {
                        "Google TV": 1,
                        Nexus: 1
                    },
                    HP: {
                        TouchPad: 1
                    },
                    HTC: {},
                    LG: {},
                    Microsoft: {
                        Xbox: 1,
                        "Xbox One": 1
                    },
                    Motorola: {
                        Xoom: 1
                    },
                    Nintendo: {
                        "Wii U": 1,
                        Wii: 1
                    },
                    Nokia: {
                        Lumia: 1
                    },
                    Samsung: {
                        "Galaxy S": 1,
                        "Galaxy S2": 1,
                        "Galaxy S3": 1,
                        "Galaxy S4": 1
                    },
                    Sony: {
                        PlayStation: 1,
                        "PlayStation Vita": 1
                    }
                }),
                S = W(["Windows Phone", "Android", "CentOS", {
                    label: "Chrome OS",
                    pattern: "CrOS"
                }, "Debian", "Fedora", "FreeBSD", "Gentoo", "Haiku", "Kubuntu", "Linux Mint", "OpenBSD", "Red Hat", "SuSE", "Ubuntu", "Xubuntu", "Cygwin", "Symbian OS", "hpwOS", "webOS ", "webOS", "Tablet OS", "Tizen", "Linux", "Mac OS X", "Macintosh", "Mac", "Windows 98;", "Windows "]);

            function T(b) {
                return u(b, function(b, c) {
                    return b || RegExp("\\b" + (c.pattern || t(c)) + "\\b", "i").exec(a) && (c.label || c)
                })
            }

            function U(b) {
                return u(b, function(b, c, d) {
                    return b || (c[Q] || c[/^[a-z]+(?: +[a-z]+\b)*/i.exec(Q)] || RegExp("\\b" + t(d) + "(?:\\b|\\w*\\d)", "i").exec(a)) && d
                })
            }

            function V(b) {
                return u(b, function(b, c) {
                    return b || RegExp("\\b" + (c.pattern || t(c)) + "\\b", "i").exec(a) && (c.label || c)
                })
            }

            function W(b) {
                return u(b, function(b, c) {
                    var d = c.pattern || t(c);
                    return !b && (b = RegExp("\\b" + d + "(?:/[\\d.]+|[ \\w.]*)", "i").exec(a)) && (b = n(b, d, c.label || c)), b
                })
            }

            function X(b) {
                return u(b, function(b, c) {
                    var d = c.pattern || t(c);
                    return !b && (b = RegExp("\\b" + d + " *\\d+[.\\w_]*", "i").exec(a) || RegExp("\\b" + d + " *\\w+-[\\w]*", "i").exec(a) || RegExp("\\b" + d + "(?:; *(?:[a-z]+[_-])?[a-z]+\\d+|[^ ();-]*)", "i").exec(a)) && ((b = String(c.label && !RegExp(d, "i").test(c.label) ? c.label : b).split("/"))[1] && !/[\d.]+/.test(b[0]) && (b[0] += " " + b[1]), c = c.label || c, b = p(b[0].replace(RegExp(d, "i"), c).replace(RegExp("; *(?:" + c + "[_-])?", "i"), " ").replace(RegExp("(" + c + ")[-_.]?(\\w)", "i"), "$1 $2"))), b
                })
            }

            function Y(b) {
                return u(b, function(b, c) {
                    return b || (RegExp(c + "(?:-[\\d.]+/|(?: for [\\w-]+)?[ /-])([\\d.]+[^ ();/_-]*)", "i").exec(a) || 0)[1] || null
                })
            }

            function Z() {
                return this.description || ""
            }
            if (O && (O = [O]), R && !Q && (Q = X([R])), (j = /\bGoogle TV\b/.exec(Q)) && (Q = j[0]), /\bSimulator\b/i.test(a) && (Q = (Q ? Q + " " : "") + "Simulator"), "Opera Mini" == P && /\bOPiOS\b/.test(a) && K.push("running in Turbo/Uncompressed mode"), "IE" == P && /\blike iPhone OS\b/.test(a) ? (j = w(a.replace(/like iPhone OS/, "")), R = j.manufacturer, Q = j.product) : /^iP/.test(Q) ? (P || (P = "Safari"), S = "iOS" + ((j = / OS ([\d_]+)/i.exec(a)) ? " " + j[1].replace(/_/g, ".") : "")) : "Konqueror" != P || /buntu/i.test(S) ? R && "Google" != R && (/Chrome/.test(P) && !/\bMobile Safari\b/i.test(a) || /\bVita\b/.test(Q)) || /\bAndroid\b/.test(S) && /^Chrome/.test(P) && /\bVersion\//i.test(a) ? (P = "Android Browser", S = /\bAndroid\b/.test(S) ? S : "Android") : "Silk" == P ? (/\bMobi/i.test(a) || (S = "Android", K.unshift("desktop mode")), /Accelerated *= *true/i.test(a) && K.unshift("accelerated")) : "PaleMoon" == P && (j = /\bFirefox\/([\d.]+)\b/.exec(a)) ? K.push("identifying as Firefox " + j[1]) : "Firefox" == P && (j = /\b(Mobile|Tablet|TV)\b/i.exec(a)) ? (S || (S = "Firefox OS"), Q || (Q = j[1])) : !P || (j = !/\bMinefield\b/i.test(a) && /\b(?:Firefox|Safari)\b/.exec(P)) ? (P && !Q && /[\/,]|^[^(]+?\)/.test(a.slice(a.indexOf(j + "/") + 8)) && (P = null), (j = Q || R || S) && (Q || R || /\b(?:Android|Symbian OS|Tablet OS|webOS)\b/.test(S)) && (P = /[a-z]+(?: Hat)?/i.exec(/\bAndroid\b/.test(S) ? S : j) + " Browser")) : "Electron" == P && (j = (/\bChrome\/([\d.]+)\b/.exec(a) || 0)[1]) && K.push("Chromium " + j) : S = "Kubuntu", N || (N = Y(["(?:Cloud9|CriOS|CrMo|Edge|FxiOS|IEMobile|Iron|Opera ?Mini|OPiOS|OPR|Raven|SamsungBrowser|Silk(?!/[\\d.]+$))", "Version", t(P), "(?:Firefox|Minefield|NetFront)"])), (j = "iCab" == O && parseFloat(N) > 3 && "WebKit" || /\bOpera\b/.test(P) && (/\bOPR\b/.test(a) ? "Blink" : "Presto") || /\b(?:Midori|Nook|Safari)\b/i.test(a) && !/^(?:Trident|EdgeHTML)$/.test(O) && "WebKit" || !O && /\bMSIE\b/i.test(a) && ("Mac OS" == S ? "Tasman" : "Trident") || "WebKit" == O && /\bPlayStation\b(?! Vita\b)/i.test(P) && "NetFront") && (O = [j]), "IE" == P && (j = (/; *(?:XBLWP|ZuneWP)(\d+)/i.exec(a) || 0)[1]) ? (P += " Mobile", S = "Windows Phone " + (/\+$/.test(j) ? j : j + ".x"), K.unshift("desktop mode")) : /\bWPDesktop\b/i.test(a) ? (P = "IE Mobile", S = "Windows Phone 8.x", K.unshift("desktop mode"), N || (N = (/\brv:([\d.]+)/.exec(a) || 0)[1])) : "IE" != P && "Trident" == O && (j = /\brv:([\d.]+)/.exec(a)) && (P && K.push("identifying as " + P + (N ? " " + N : "")), P = "IE", N = j[1]), M) {
                if (s(d, "global"))
                    if (C && (j = C.lang.System, J = j.getProperty("os.arch"), S = S || j.getProperty("os.name") + " " + j.getProperty("os.version")), m && s(d, "system") && (j = [d.system])[0]) {
                        S || (S = j[0].os || null);
                        try {
                            j[1] = d.require("ringo/engine").version, N = j[1].join("."), P = "RingoJS"
                        } catch (a) {
                            j[0].global.system == d.system && (P = "Narwhal")
                        }
                    } else "object" == typeof d.process && !d.process.browser && (j = d.process) ? "object" == typeof j.versions ? "string" == typeof j.versions.electron ? (K.push("Node " + j.versions.node), P = "Electron", N = j.versions.electron) : "string" == typeof j.versions.nw && (K.push("Chromium " + N, "Node " + j.versions.node), P = "NW.js", N = j.versions.nw) : (P = "Node.js", J = j.arch, S = j.platform, N = /[\d.]+/.exec(j.version), N = N ? N[0] : "unknown") : D && (P = "Rhino");
                else r(j = d.runtime) == y ? (P = "Adobe AIR", S = j.flash.system.Capabilities.os) : r(j = d.phantom) == B ? (P = "PhantomJS", N = (j = j.version || null) && j.major + "." + j.minor + "." + j.patch) : "number" == typeof G.documentMode && (j = /\bTrident\/(\d+)/i.exec(a)) ? (N = [N, G.documentMode], (j = +j[1] + 4) != N[1] && (K.push("IE " + N[1] + " mode"), O && (O[1] = ""), N[1] = j), N = "IE" == P ? String(N[1].toFixed(1)) : N[0]) : "number" == typeof G.documentMode && /^(?:Chrome|Firefox)\b/.test(P) && (K.push("masking as " + P + " " + N), P = "IE", N = "11.0", O = ["Trident"], S = "Windows");
                S = S && p(S)
            }
            if (N && (j = /(?:[ab]|dp|pre|[ab]\d+pre)(?:\d+\+?)?$/i.exec(N) || /(?:alpha|beta)(?: ?\d)?/i.exec(a + ";" + (M && f.appMinorVersion)) || /\bMinefield\b/i.test(a) && "a") && (L = /b/i.test(j) ? "beta" : "alpha", N = N.replace(RegExp(j + "\\+?$"), "") + ("beta" == L ? F : E) + (/\d+\+?/.exec(j) || "")), "Fennec" == P || "Firefox" == P && /\b(?:Android|Firefox OS)\b/.test(S)) P = "Firefox Mobile";
            else if ("Maxthon" == P && N) N = N.replace(/\.[\d.]+/, ".x");
            else if (/\bXbox\b/i.test(Q)) "Xbox 360" == Q && (S = null), "Xbox 360" == Q && /\bIEMobile\b/.test(a) && K.unshift("mobile mode");
            else if (!/^(?:Chrome|IE|Opera)$/.test(P) && (!P || Q || /Browser|Mobi/.test(P)) || "Windows CE" != S && !/Mobi/i.test(a))
                if ("IE" == P && M) try {
                    null === d.external && K.unshift("platform preview")
                } catch (a) {
                    K.unshift("embedded")
                } else(/\bBlackBerry\b/.test(Q) || /\bBB10\b/.test(a)) && (j = (RegExp(Q.replace(/ +/g, " *") + "/([.\\d]+)", "i").exec(a) || 0)[1] || N) ? (j = [j, /BB10/.test(a)], S = (j[1] ? (Q = null, R = "BlackBerry") : "Device Software") + " " + j[0], N = null) : this != q && "Wii" != Q && (M && H || /Opera/.test(P) && /\b(?:MSIE|Firefox)\b/i.test(a) || "Firefox" == P && /\bOS X (?:\d+\.){2,}/.test(S) || "IE" == P && (S && !/^Win/.test(S) && N > 5.5 || /\bWindows XP\b/.test(S) && N > 8 || 8 == N && !/\bTrident\b/.test(a))) && !h.test(j = w.call(q, a.replace(h, "") + ";")) && j.name && (j = "ing as " + j.name + ((j = j.version) ? " " + j : ""), h.test(P) ? (/\bIE\b/.test(j) && "Mac OS" == S && (S = null), j = "identify" + j) : (j = "mask" + j, P = I ? p(I.replace(/([a-z])([A-Z])/g, "$1 $2")) : "Opera", /\bIE\b/.test(j) && (S = null), M || (N = null)), O = ["Presto"], K.push(j));
                else P += " Mobile";
            (j = (/\bAppleWebKit\/([\d.]+\+?)/i.exec(a) || 0)[1]) && (j = [parseFloat(j.replace(/\.(\d)$/, ".0$1")), j], "Safari" == P && "+" == j[1].slice(-1) ? (P = "WebKit Nightly", L = "alpha", N = j[1].slice(0, -1)) : N != j[1] && N != (j[2] = (/\bSafari\/([\d.]+\+?)/i.exec(a) || 0)[1]) || (N = null), j[1] = (/\bChrome\/([\d.]+)/i.exec(a) || 0)[1], 537.36 == j[0] && 537.36 == j[2] && parseFloat(j[1]) >= 28 && "WebKit" == O && (O = ["Blink"]), M && (o || j[1]) ? (O && (O[1] = "like Chrome"), j = j[1] || (j = j[0], j < 530 ? 1 : j < 532 ? 2 : j < 532.05 ? 3 : j < 533 ? 4 : j < 534.03 ? 5 : j < 534.07 ? 6 : j < 534.1 ? 7 : j < 534.13 ? 8 : j < 534.16 ? 9 : j < 534.24 ? 10 : j < 534.3 ? 11 : j < 535.01 ? 12 : j < 535.02 ? "13+" : j < 535.07 ? 15 : j < 535.11 ? 16 : j < 535.19 ? 17 : j < 536.05 ? 18 : j < 536.1 ? 19 : j < 537.01 ? 20 : j < 537.11 ? "21+" : j < 537.13 ? 23 : j < 537.18 ? 24 : j < 537.24 ? 25 : j < 537.36 ? 26 : "Blink" != O ? "27" : "28")) : (O && (O[1] = "like Safari"), j = j[0], j = j < 400 ? 1 : j < 500 ? 2 : j < 526 ? 3 : j < 533 ? 4 : j < 534 ? "4+" : j < 535 ? 5 : j < 537 ? 6 : j < 538 ? 7 : j < 601 ? 8 : "8"), O && (O[1] += " " + (j += "number" == typeof j ? ".x" : /[.+]/.test(j) ? "" : "+")), "Safari" == P && (!N || parseInt(N) > 45) && (N = j)), "Opera" == P && (j = /\bzbov|zvav$/.exec(S)) ? (P += " ", K.unshift("desktop mode"), "zvav" == j ? (P += "Mini", N = null) : P += "Mobile", S = S.replace(RegExp(" *" + j + "$"), "")) : "Safari" == P && /\bChrome\b/.exec(O && O[1]) && (K.unshift("desktop mode"), P = "Chrome Mobile", N = null, /\bOS X\b/.test(S) ? (R = "Apple", S = "iOS 4.3+") : S = null), N && 0 == N.indexOf(j = /[\d.]+$/.exec(S)) && a.indexOf("/" + j + "-") > -1 && (S = v(S.replace(j, ""))), O && !/\b(?:Avant|Nook)\b/.test(P) && (/Browser|Lunascape|Maxthon/.test(P) || "Safari" != P && /^iOS/.test(S) && /\bSafari\b/.test(O[1]) || /^(?:Adobe|Arora|Breach|Midori|Opera|Phantom|Rekonq|Rock|Samsung Internet|Sleipnir|Web)/.test(P) && O[1]) && (j = O[O.length - 1]) && K.push(j), K.length && (K = ["(" + K.join("; ") + ")"]), R && Q && Q.indexOf(R) < 0 && K.push("on " + R), Q && K.push((/^on /.test(K[K.length - 1]) ? "" : "on ") + Q), S && (j = / ([\d.+]+)$/.exec(S), k = j && "/" == S.charAt(S.length - j[0].length - 1), S = {
                architecture: 32,
                family: j && !k ? S.replace(j[0], "") : S,
                version: j ? j[1] : null,
                toString: function() {
                    var a = this.version;
                    return this.family + (a && !k ? " " + a : "") + (64 == this.architecture ? " 64-bit" : "")
                }
            }), (j = /\b(?:AMD|IA|Win|WOW|x86_|x)64\b/i.exec(J)) && !/\bi686\b/i.test(J) ? (S && (S.architecture = 64, S.family = S.family.replace(RegExp(" *" + j), "")), P && (/\bWOW64\b/i.test(a) || M && /\w(?:86|32)$/.test(f.cpuClass || f.platform) && !/\bWin64; x64\b/i.test(a)) && K.unshift("32-bit")) : S && /^OS X/.test(S.family) && "Chrome" == P && parseFloat(N) >= 39 && (S.architecture = 64), a || (a = null);
            var $ = {};
            return $.description = a, $.layout = O && O[0], $.manufacturer = R, $.name = P, $.prerelease = L, $.product = Q, $.ua = a, $.version = P && N, $.os = S || {
                architecture: null,
                family: null,
                version: null,
                toString: function() {
                    return "null"
                }
            }, $.parse = w, $.toString = Z, $.version && K.unshift(N), $.name && K.unshift(P), S && P && (S != String(S).split(" ")[0] || S != P.split(" ")[0] && !Q) && K.push(Q ? "(" + S + ")" : "on " + S), K.length && ($.description = K.join(" ")), $
        }
        var x = w();
        "function" == typeof define && "object" == typeof define.amd && define.amd ? (b.platform = x, define(function() {
            return x
        })) : d && e ? q(x, function(a, b) {
            d[b] = a
        }) : b.platform = x
    }.call(this);
var formFactor = {},
    _BREAKPOINTS = {
        narrow: {
            min: 0,
            max: 767,
            value: "NARROW"
        },
        medium: {
            min: 768,
            max: 995,
            value: "MEDIUM"
        },
        wide: {
            min: 996,
            value: "WIDE"
        }
    };
formFactor.getInnerWidth = function() {
    return window.innerWidth
}, formFactor.getOuterWidth = function() {
    return window.outerWidth
}, formFactor.getViewportWidth = function() {
    return Math.min(formFactor.getOuterWidth() || 1 / 0, formFactor.getInnerWidth() || 1 / 0)
}, formFactor.detect = function() {
    var a = formFactor.getViewportWidth();
    return a <= _BREAKPOINTS.narrow.max ? _BREAKPOINTS.narrow.value : a >= _BREAKPOINTS.medium.min && a <= _BREAKPOINTS.medium.max ? _BREAKPOINTS.medium.value : _BREAKPOINTS.wide.value
}, "undefined" != typeof module && module.exports && (module.exports = formFactor);
var dataArrange = {};
dataArrange.forEach = function(a, b) {
    for (var c in a) a.hasOwnProperty(c) && b(a[c], c)
}, dataArrange.normalizeInt = function(a) {
    var b = ~~Number(a);
    return (String(b) === a || b === a) && b > 0 ? b : 0
}, dataArrange.toFloat = function(a) {
    var b = parseFloat(a);
    return b > 0 ? b : 0
}, dataArrange.copyObject = function(a) {
    return JSON.parse(JSON.stringify(a))
}, dataArrange.arrToObj = function(a, b) {
    var c, d, e = {},
        f = "undefined" != typeof b ? b : "id";
    for (c = 0; c < a.length; c++) d = a[c], e[d[f]] = d;
    return e
}, dataArrange.objToArr = function(a) {
    var b = [];
    return dataArrange.forEach(a, function(a) {
        b.push(a)
    }), b
}, dataArrange.enrichArr = function(a, b) {
    var c, d, e = "details",
        f = "id";
    for (c = 0; c < a.length; c++) d = a[c], d[e] = b[d[f]];
    return a
}, dataArrange.replaceArr = function(a, b) {
    var c, d, e = [];
    for (d = 0; d < a.length; d++) c = a[d], b[c] && e.push(b[c]);
    return e
}, dataArrange.objToString = function(a) {
    return dataArrange.objToArr(a).join(", ")
}, dataArrange.objToArrTexts = function(a) {
    var b = [];
    return dataArrange.forEach(a, function(a, c) {
        "string" == typeof a && "" !== a && "id" !== c ? b.push(a) : a && "object" == typeof a && a.label && b.push(a.label)
    }), b
}, dataArrange.objObjToObjArrTexts = function(a) {
    var b = {};
    return dataArrange.forEach(a, function(a, c) {
        b[c] = dataArrange.objToArrTexts(a)
    }), b
}, dataArrange.arrTextsToStr = function(a) {
    return a.join(", ")
}, dataArrange.inArray = function(a, b) {
    return a.filter(function(a) {
        return a === b
    }).length > 0
}, dataArrange.arrayFindById = function(a, b, c) {
    var d = "undefined" == typeof c ? "id" : c;
    return a.filter(function(a) {
        return a[d] === b
    })[0] || !1
}, dataArrange.arrayFindIndex = function(a, b) {
    var c = a.filter(function(a) {
        return a.id === b
    });
    return c.length ? a.indexOf(c[0]) : -1
}, dataArrange.arrayUnique = function(a) {
    for (var b = [], c = 0; c < a.length; c++) b.indexOf(a[c]) === -1 && b.push(a[c]);
    return b
}, dataArrange.objectPickFirstItemWithTrueField = function(a, b) {
    var c, d;
    for (c in a)
        if (a.hasOwnProperty(c) && (d = a[c], d[b])) return d;
    return null
}, dataArrange.arrayInArray = function(a, b, c) {
    var d = c || "id";
    return a.filter(function(a) {
        return b.indexOf(a[d]) >= 0
    })
}, dataArrange.extend = function(a, b) {
    return dataArrange.forEach(b, function(b, c) {
        a[c] = b
    }), a
}, dataArrange.messageFilter = function() {
    if (!arguments[0] || !arguments[0].replace) return arguments[0];
    var a = arguments[0],
        b = Array.prototype.slice.call(arguments, 1);
    return a.replace(/{([0-9]*)}/g, function(a, c) {
        var d = b[c];
        return "undefined" == typeof d || null === d ? "" : d
    })
}, dataArrange.closestHighestNumberInArray = function(a, b) {
    var c = Math.max.apply(null, a),
        d = 0;
    for (d; d < a.length; d++) a[d] >= b && a[d] < c && (c = a[d]);
    return c
}, dataArrange.isEmptyObject = function(a) {
    for (var b in a)
        if (a.hasOwnProperty(b)) return !1;
    return !0
}, dataArrange.getShortProductId = function(a) {
    return "string" == typeof a ? a.split("/").pop() : ""
}, dataArrange.stripHtmlTags = function(a) {
    return "string" == typeof a ? a.replace(/<\/?[^>]+(>|$)/g, "") : a
}, dataArrange.isNumeric = function(a) {
    return ("string" == typeof a || "number" == typeof a) && a - parseFloat(a) + 1 >= 0
}, "undefined" != typeof module && module.exports && (module.exports = dataArrange);
var promiseHelper = function() {
    function a(a) {
        return new Promise(function(a, c) {
            b(a, c)
        });

        function b(d, e) {
            a.length || e("no promises fulfilled"), Promise.all(a).then(function(a) {
                d(a)
            }, function() {
                return c(a), b(d, e), !1
            })
        }

        function c(a) {
            var b;

            function c(a, b) {
                var c;
                b.then(null, function() {
                    for (c = 0; c < a.length; c++)
                        if (b === a[c]) {
                            a.splice(c, 1);
                            break
                        }
                })
            }
            for (b = 0; b < a.length; b++) c(a, a[b])
        }
    }

    function b(a) {
        var b = a.length;
        return new Promise(function(c) {
            function d() {
                b--, 0 === b && c(a)
            }
            a.forEach(function(a) {
                a.then(d, d)
            })
        })
    }
    return {
        processPromises: a,
        settle: b
    }
}();
"undefined" != typeof module && module.exports && (module.exports = promiseHelper);

function imageResizer() {
    var a = "small";

    function b(b, d) {
        return c(b, a, d)
    }

    function c(a, b, c) {
        var d = e(a);
        return a + d + "impolicy=" + b + "&imwidth=" + c
    }

    function d(a, b, c, d) {
        var f = e(a);
        return a + f + "impolicy=" + b + "&imwidth=" + c * d + " " + d + "x"
    }

    function e(a) {
        return a.indexOf("?") > -1 ? a.match(/\&$/) ? "" : "&" : "?"
    }

    function f(a, b, c, e) {
        var f, g = [];
        for (f = 1; f <= e; ++f) g.push(d(a, b, c, f));
        return g.join(", ")
    }
    return {
        getImageUrl: c,
        getSmallImageProfile: b,
        getImageUrlWithMaxDPR: f
    }
}
"undefined" != typeof module && module.exports && (module.exports = imageResizer), ! function(a) {
        function b(d) {
            if (c[d]) return c[d].exports;
            var e = c[d] = {
                exports: {},
                id: d,
                loaded: !1
            };
            return a[d].call(e.exports, e, e.exports, b), e.loaded = !0, e.exports
        }
        var c = {};
        return b.m = a, b.c = c, b.p = "", b(0)
    }([function(a, b, c) {
        (function(a) {
            a.promotionHelper = c(7), a.standingOrdersHelper = c(9), a.discoveryOfferHelper = c(12), a.trackingHelper = c(10), a.sharedHelpers = c(8), a.customEventHelper = c(4), a.productHelper = c(6), a.checkoutHelper = c(3), a.impressionHelper = c(5), a.transactionHelper = c(11), a.multipleContactsHelper = c(14), a.guestCheckoutHelper = c(13), a.cartHelper = c(2), a.gtmListener = c(1)
        }).call(b, function() {
            return this
        }())
    }, function(a, b) {
        function c(a, b, c) {
            function d(a) {
                a.isGuestCheckout ? u(a, function(a) {
                    H(a)
                }) : t(a, function(a) {
                    b.transaction ? H(a, "transaction") : H(a)
                })
            }

            function e(a) {
                var c = b.app.app;
                return a.isGuestCheckout ? transactionHelper.getGuestCheckoutTransactionDataForGTM(a, c).then(function(a) {
                    var b = dataArrange.copyObject(a);
                    b.event = "customTransaction", H(a), H(b)
                }) : (H(transactionHelper.getTransactionDataForGTM(a, c)), void H(transactionHelper.getCustomTransactionDataForGTM(a, c), "event_pageView"));
            }

            function f(a) {
                H(checkoutHelper.getCheckoutDataForGTM(a), "event_pageView")
            }

            function g(a) {
                H(multipleContactsHelper.getDataForGTM(a), "event_pageView")
            }

            function h(a) {
                guestCheckoutHelper.getGuestCheckoutDataForGTM(a).then(function(a) {
                    H(a, "event_pageView")
                })
            }

            function i(a) {
                H(w(a), "event_pageView")
            }

            function j(a) {
                var b = a.cartUpdates.item.filter(function(a) {
                        return a.quantity.productQuantity > 0
                    }),
                    c = a.cartUpdates.item.filter(function(a) {
                        return a.quantity.productQuantity < 0
                    });
                b.length && H(y(b)), c.length && H(z(c))
            }

            function k(a) {
                H(A(a.products), "event_pageView")
            }

            function l(a) {
                H(B(a))
            }

            function m(a) {
                H(impressionHelper.getProductImpressionClickEventData(a.products))
            }

            function n(a) {
                var b, c = a.products,
                    d = [],
                    e = [];
                for (b = 0; b < c.length; b++) c[b].isStandingOrderItem ? e.push(c[b]) : d.push(c[b]);
                window.impressionsOnScroll = impressionHelper.getProductImpressionScrollEventData(d), window.impressionsOnScrollSO = impressionHelper.getProductImpressionScrollEventData(e)
            }

            function o(a) {
                window.promotionsOnScroll = a
            }

            function p(a) {
                H(C(a))
            }

            function q(a) {
                H(D(a))
            }

            function r(a) {
                H(E(a), "event_pageView")
            }

            function s(a) {
                H(F(a), "event_pageView")
            }

            function t(a, c) {
                function d(a) {
                    var b = w(a);
                    e.clubMemberID = b.clubMemberID, e.clubMemberStatus = sharedHelpers.getBooleanAsString(b.clubMemberStatus), e.clubMemberLevel = b.clubMemberLevel, e.clubMemberTierID = b.clubMemberTierID, e.clubMemberTitle = a.user.clubMember.clubMemberTitle, e.clubMemberLoginStatus = sharedHelpers.getBooleanAsString(b.clubMemberLoginStatus), e.machineOwner = sharedHelpers.getBooleanAsString(b.machineOwner), e.machineOwned = b.machineOwned, e.preferredTechnology = b.preferredTechnology, e.emailSubscriber = sharedHelpers.getBooleanAsString(a.user.clubMember.emailSubscriber), e.selectionList = b.selectionList, e.contactPreferenceSelected = b.contactPreferenceSelected
                }
                var e = {
                    event: "event_pageView",
                    language: a.page.pageInfo.language,
                    isEnvironmentProd: sharedHelpers.getBooleanAsString(a.app.isEnvironmentProd),
                    pageName: a.page.pageInfo.pageName,
                    pageType: a.page.pageInfo.type,
                    pageCategory: a.page.pageInfo.primaryCategory,
                    pageSubCategory: sharedHelpers.getValuesFromArray(a.page.pageInfo.secondaryCategory, sharedHelpers.textSeparator),
                    pageTechnology: sharedHelpers.getValuesFromArray(a.page.pageInfo.technology, sharedHelpers.eventSeparator),
                    pageVariant: a.page.pageInfo.variant,
                    market: a.app.market,
                    version: sharedHelpers.getValueOrEmptyString(a.app.version),
                    breadcrumbUID: a.page.pageInfo.breadcrumbUID,
                    currency: a.app.currency,
                    clubMemberID: "",
                    clubMemberStatus: "",
                    clubMemberLevel: "",
                    clubMemberTierID: "",
                    clubMemberTitle: "",
                    clubMemberLoginStatus: sharedHelpers.getBooleanAsString(!1),
                    machineOwner: "",
                    machineOwned: "",
                    preferredTechnology: "",
                    emailSubscriber: "",
                    contactPreferenceSelected: "",
                    selectionList: "",
                    device: sharedHelpers.getValueOrEmptyString(a.app.deviceType),
                    cartData: {
                        currencyCode: a.app.currency,
                        products: [],
                        quotationConfig: ""
                    }
                };
                a.page.pageInfo.formFactor && (e.formFactor = a.page.pageInfo.formFactor), b.user && b.user.isLoggedIn ? (e.clubMemberLoginStatus = !0, trackingHelper.customerTrackingData().then(function(a) {
                    d(a), napi.data().user().setSessionData(a), v(e, c)
                }, function() {
                    v(e, c)
                })) : (trackingHelper.clearUserData(), v(e, c))
            }

            function u(a, b) {
                var c = {
                    event: "event_virtualPageView",
                    pageName: a.stepName + " | Nespresso",
                    pageType: a.page.pageInfo.type,
                    pageCategory: a.pageCategory,
                    pageSubCategory: a.pageSubCategory,
                    pageTechnology: sharedHelpers.getValuesFromArray(a.page.pageInfo.technology, sharedHelpers.eventSeparator),
                    pageVariant: a.page.pageInfo.variant,
                    market: a.app.market,
                    version: sharedHelpers.getValueOrEmptyString(a.app.version),
                    breadCrumbID: a.breadcrumbUID,
                    currency: a.app.currency,
                    clubMemberID: "",
                    clubMemberStatus: "",
                    clubMemberLevel: "",
                    clubMemberLevelID: "",
                    clubMemberTitle: "",
                    clubMemberLoginStatus: ""
                };
                b(c)
            }

            function v(a, c) {
                napi.market().read().then(function(d) {
                    var e = b.user && b.user.isLoggedIn;
                    a.cartData.quotationConfig = cartHelper.getQuotationConfig(d.lightQuotation, e), cartHelper.getCartGTMObject().then(function(b) {
                        a.cartData.products = b.products, c(a)
                    })
                })
            }

            function w(a) {
                var b = a.user,
                    c = a.user.clubMember;
                return {
                    event: "userLogin",
                    eventCategory: "User Engagement",
                    eventAction: "User Login",
                    clubMemberID: c.clubMemberID,
                    clubMemberStatus: sharedHelpers.getBooleanAsString(c.clubMemberStatus),
                    clubMemberLevel: sharedHelpers.getValueOrEmptyString(c.clubMemberLevel),
                    clubMemberTierID: sharedHelpers.getValueOrEmptyString(c.clubMemberTierID),
                    clubMemberTitle: c.clubMemberTitle,
                    clubMemberLoginStatus: sharedHelpers.getBooleanAsString(b.isLoggedIn),
                    machineOwned: sharedHelpers.getValuesFromArray(sharedHelpers.getMachineIDs(c.memberPreferences.machineOwned), sharedHelpers.eventSeparator),
                    preferredTechnology: sharedHelpers.getValueOrEmptyString(c.memberPreferences.preferredTechnology),
                    machineOwner: sharedHelpers.getBooleanAsString(c.memberPreferences.machineOwner),
                    emailSubscriber: sharedHelpers.getBooleanAsString(c.emailSubscriber),
                    contactPreferenceSelected: sharedHelpers.getValuesFromArray(c.contactPreferenceSelected, sharedHelpers.textSeparator),
                    selectionList: c.segments && c.segments.selectionIds ? sharedHelpers.getValuesFromArray(c.segments.selectionIds, sharedHelpers.eventSeparator) : "",
                    persistentBasketLoaded: sharedHelpers.getBooleanAsString(c.persistentBasketLoaded)
                }
            }

            function x(a) {
                for (var b = 0; b < a.length; b++)
                    if (a[b].associateSubscription) return !0;
                return !1
            }

            function y(a) {
                return {
                    event: "addToCart",
                    currencyCode: b.app.app.currency,
                    subscriptionIncludedInProductAction: x(a),
                    ecommerce: {
                        add: {
                            actionField: {},
                            products: productHelper.getProducts(a, productHelper.extendGtmProductForAddToCart)
                        }
                    }
                }
            }

            function z(a) {
                return {
                    event: "removeFromCart",
                    currencyCode: b.app.app.currency,
                    subscriptionIncludedInProductAction: x(a),
                    ecommerce: {
                        remove: {
                            actionField: {},
                            products: productHelper.getProducts(a, productHelper.extendGtmProductForRemoveFromCart)
                        }
                    }
                }
            }

            function A(a) {
                return {
                    event: "detailView",
                    currencyCode: b.app.app.currency,
                    ecommerce: {
                        detail: {
                            actionField: {},
                            products: productHelper.getProducts(a)
                        }
                    }
                }
            }

            function B(a) {
                return {
                    event: "productClick",
                    currencyCode: b.app.app.currency,
                    ecommerce: {
                        click: {
                            actionField: {
                                list: a.products[0].list
                            },
                            products: productHelper.getProducts(a.products)
                        }
                    }
                }
            }

            function C(a) {
                return {
                    event: "promoSliderChange",
                    currencyCode: b.app.app.currency,
                    ecommerce: {
                        promoView: {
                            promotions: [a.promotion]
                        }
                    }
                }
            }

            function D(a) {
                return {
                    event: "promoClick",
                    currencyCode: b.app.app.currency,
                    ecommerce: {
                        promoClick: {
                            promotions: [a.promotion]
                        }
                    }
                }
            }

            function E(a) {
                var c = b.page.page,
                    d = {
                        event: "newAccountRegistration",
                        newAccountStep: a.step,
                        contactPreferenceSelected: sharedHelpers.getValuesFromArray(a.contactPreferenceSelected, sharedHelpers.textSeparator),
                        emailSubscriber: sharedHelpers.getBooleanAsString(a.emailSubscriber)
                    };
                return "B2B" === c.pageInfo.segmentBusiness && (d.isNewCustomer = sharedHelpers.getBooleanAsString(a.isNewCustomer)), d
            }

            function F(a) {
                var c = b.page.page,
                    d = {
                        event: "customEvent",
                        newAccountStep: a.step,
                        eventCategory: "User Engagement",
                        eventAction: "New User Account Creation",
                        eventLabel: sharedHelpers.getValueOrEmptyString(a.machineRegistrationLabel),
                        machineOwner: sharedHelpers.getBooleanAsString(a.machineOwner),
                        machineOwned: a.machineOwned ? sharedHelpers.getValueOrEmptyString(a.machineOwned.machineID) : "",
                        preferredTechnology: sharedHelpers.getValueOrEmptyString(a.preferredTechnology),
                        contactPreferenceSelected: sharedHelpers.getValuesFromArray(a.contactPreferenceSelected, sharedHelpers.textSeparator),
                        emailSubscriber: sharedHelpers.getBooleanAsString(a.emailSubscriber)
                    };
                return "B2B" === c.pageInfo.segmentBusiness && (d.isNewCustomer = sharedHelpers.getBooleanAsString(a.isNewCustomer)), d
            }

            function G(b) {
                var c = [];
                return a && (c = a.filter(function(a) {
                    if (a.event === b) return a
                })), c.length
            }

            function H(b, d) {
                var e, f, g, h = b.event;
                if (e = Q(b), c) return void a.push(e);
                if (R[h]) {
                    for (f = R[h], a.push(e), g = 0; g < f.length; g++) H(f[g]);
                    delete R[h]
                } else {
                    if (d && !G(d)) return R[d] || (R[d] = []), void R[d].push(e);
                    a.push(e)
                }
            }

            function I(a) {
                var c = b.app.app,
                    d = b.page.page;
                standingOrdersHelper.getGtmStepData(a, c, d).then(H)
            }

            function J(a) {
                var c, d = b.app.app,
                    e = a.item[0];
                c = standingOrdersHelper.getGtmCartUpdate(e, d), H(c)
            }

            function K(a) {
                discoveryOfferHelper.getPageView(a).then(function(a) {
                    H(a)
                })
            }

            function L(a) {
                H(discoveryOfferHelper.getDetailPack(a))
            }

            function M(a) {
                H(discoveryOfferHelper.getNotInterested(a))
            }

            function N(a) {
                discoveryOfferHelper.getOfferSelected(a).then(function(a) {
                    H(a)
                })
            }

            function O(a) {
                H(discoveryOfferHelper.getAddToBasket(a.cartUpdates))
            }

            function P(a) {
                H(a, "event_pageView")
            }

            function Q(a) {
                var c = b.app.app,
                    d = b.page.page,
                    e = dataArrange.copyObject(a);
                return e.landscape = c.landscape, e.segmentBusiness = d.pageInfo.segmentBusiness, e
            }
            var R = {};
            return {
                pushPageView: d,
                pushTransaction: e,
                pushCheckout: f,
                pushMultipleContacts: g,
                pushGuestCheckout: h,
                pushUserLogin: i,
                pushCartUpdates: j,
                pushProductDetail: k,
                pushProductClick: l,
                pushProductImpressionClick: m,
                pushProductImpressionScroll: n,
                pushPromotionImpressionScroll: o,
                pushPromotionSlide: p,
                pushPromotionClick: q,
                pushRegistrationStepDetail: r,
                pushNewAccountCreationDetail: s,
                pushItem: H,
                pushNavigationStep: I,
                pushDiscoveryOfferPageView: K,
                pushStandingOrdersCartUpdate: J,
                pushDiscoveryOfferDetailPack: L,
                pushDiscoveryOfferNotInterested: M,
                pushDiscoveryOfferOfferSelected: N,
                pushDiscoveryOfferAddToBasket: O,
                pushCustomEvent: P
            }
        }
        "undefined" != typeof a && a.exports && (a.exports = c)
    }, function(a, b) {
        var c = function() {
            function a() {
                var a, b = {
                    products: []
                };
                return c({
                    expandProducts: !0
                }).then(function(c) {
                    return d(c).then(function(c) {
                        return c.length > 0 && (a = productHelper.getProducts(c, e), b.products = a), b
                    })
                }, function() {
                    return b
                })
            }

            function b(a, b) {
                var c = "";
                if (b) {
                    var d = a && a.enabledForModes && a.enabledForModes.length > 0 && a.enabledForModes.indexOf("IDENTIFIED_CUSTOMER") >= 0;
                    c = d ? "Quotation Enabled" : "Quotation Disabled"
                } else {
                    var e = a && a.enabledForModes && a.enabledForModes.length > 0 && a.enabledForModes.indexOf("ANONYMOUS") >= 0;
                    c = e ? "Quotation Enabled - Anonymous" : "Quotation Disabled - Anonymous"
                }
                return c
            }

            function c(a) {
                return napi.cart().read(a).then(function(a) {
                    return a
                })
            }

            function d(a) {
                var b, c = [];
                return a.forEach(function(a) {
                    return a ? (b = trackingHelper.getPadlCartUpdateItem({
                        product: a,
                        quantityDifference: a.quantity
                    }), void c.push(b)) : Promise.reject("cartHelper: Invalid product passed to function")
                }), Promise.all(c).then(function(a) {
                    return a
                })
            }

            function e(a, b) {
                return b.dimension177 = a.quantity.capsuleQuantity, b.dimension178 = a.quantity.machineQuantity, b.dimension179 = a.quantity.accessoryQuantity, b
            }

            function f(b) {
                a().then(function(a) {
                    b.productList = a.products, customEventHelper.track(b)
                })
            }
            return {
                getCartGTMObject: a,
                getCartProducts: c,
                extendGtmProductForCart: e,
                trackCart: f,
                getPadlCartProducts: d,
                getQuotationConfig: b
            }
        }();
        "undefined" != typeof a && a.exports && (a.exports = c)
    }, function(a, b) {
        var c = function() {
            function a(a) {
                function b(b) {
                    e = {
                        clubActionId: a.cart.attributes.clubActionID[0],
                        language: h
                    }, d = napi.catalog().getProduct(f[b].productInfo.productLocalSKU, e).then(function(c) {
                        var d = f[b].price,
                            e = "subscription_range",
                            g = "giftcards";
                        return c.rootCategory === e || c.rootCategory === g ? (c.unitPrice = d.productPrice, a.cart.item[b].price.productPrice = d) : a.cart.item[b].price.productPrice = c.price, productHelper.getPadlProductModel(c, a.cart.attributes.clubActionID)
                    }), g.push(d)
                }
                var c, d, e, f = a.cart.item,
                    g = [],
                    h = "en",
                    i = f.length;
                for (c = 0; c < i; c++) b(c);
                return Promise.all(g).then(function(b) {
                    var d = !1;
                    for (c = 0, i = b.length; c < i; c++) dataArrange.extend(f[c], b[c]), b[c].isDiscoveryOfferItem && (d = !0);
                    return a.cart.discoveryOfferIncluded = d, a
                })
            }

            function b(a) {
                var b = trackingHelper.getAssociateSubscriptionWithProduct(a),
                    c = b.cart,
                    d = a.easyOrder ? a.easyOrder : {},
                    e = padl.app,
                    f = padl.page;
                return {
                    event: "checkout",
                    currencyCode: e.currency,
                    discoveryOfferIncluded: sharedHelpers.getBooleanAsString(c.discoveryOfferIncluded),
                    subscriptionIncludedInProductAction: b.containSubscription,
                    easyOrderIncludedInCheckout: d.easyOrderIncludedInPurchase,
                    ecommerce: {
                        checkout: {
                            actionField: {
                                step: 1,
                                checkoutStepName: f.pageInfo.pageName,
                                clubActionID: sharedHelpers.getValuesFromArray(c.attributes.clubActionID, sharedHelpers.eventSeparator),
                                shippingAddressCity: c.profile.shippingAddress.saCity,
                                shippingAddressState: sharedHelpers.getValueOrEmptyString(c.profile.shippingAddress.saStateProvince),
                                shippingAddressCountry: c.profile.shippingAddress.saCountry,
                                billingAddressCity: c.profile.billingAddress.baCity,
                                billingAddressState: sharedHelpers.getValueOrEmptyString(c.profile.billingAddress.baStateProvince),
                                billingAddressCountry: c.profile.billingAddress.baCountry,
                                checkoutMainPaymentMethod: sharedHelpers.getPropretyOrEmptyString(c.attributes, "mainPaymentMethod"),
                                checkoutPaymentMethods: sharedHelpers.getIdsFromPaymentMethods(c.attributes.paymentMethods),
                                checkoutShippingMethodID: sharedHelpers.getPropretyOrEmptyString(c.attributes, "shippingMethodID"),
                                deliveryOption_Priority: sharedHelpers.getPropretyOrEmptyString(c.attributes.deliveryOptions, "priority"),
                                deliveryOption_Signature: sharedHelpers.getPropretyOrEmptyString(c.attributes.deliveryOptions, "signature"),
                                deliveryOption_Recycling: sharedHelpers.getPropretyOrEmptyString(c.attributes.deliveryOptions, "recycling")
                            },
                            products: productHelper.getProducts(c.item, productHelper.extendGtmProductForCheckoutSummary)
                        }
                    }
                }
            }
            return {
                getCheckoutDataForPadl: a,
                getCheckoutDataForGTM: b
            }
        }();
        "undefined" != typeof a && a.exports && (a.exports = c)
    }, function(a, b) {
        var c = function() {
            function a(a) {
                if (!a || "object" != typeof a) return !1;
                var b, c = {},
                    d = padl.user ? padl.user : {},
                    e = d.clubMember ? d.clubMember.clubMemberID : "";
                switch (a.category) {
                    case "so_learn_more":
                        c.eventAction = "Standing Order - Click to Learn More", c.eventCategory = "Standing Order Action", c.event = "standingOrder";
                        break;
                    case "so_create_order":
                        c.eventAction = "Standing Order - Create New Recurring Order", c.eventCategory = "Standing Order Action", c.event = "standingOrder";
                        break;
                    case "so_convert_to_easy_order":
                        c.eventAction = "Click", c.eventCategory = "User Engagement", c.event = "customEvent", c.eventLabel = "Standing Order - Make This An Easy Order";
                        break;
                    case "so_view_previous_orders":
                        c.eventAction = "Standing Orders - Access to previous orders", c.eventCategory = "Standing Order Action", c.event = "standingOrder";
                        break;
                    case "so_tab_select":
                        b = a.tabName, c.eventAction = "Standing Order - Tab Select", c.eventCategory = "Standing Order Action", c.event = "standingOrder", c.eventLabel = "Standing Order - " + b;
                        break;
                    case "so_view_error":
                        c.eventAction = "Click", c.eventCategory = "User Engagement", c.event = "standingOrder", c.eventLabel = "Standing Order - Investigate Order Error";
                        break;
                    case "so_toggle_order_details":
                        b = a.isExpanded ? "Collapse Order Details" : "Expand Order Details", c.eventAction = "Click", c.eventCategory = "User Engagement", c.event = "standingOrder", c.eventLabel = "Standing Order - " + b;
                        break;
                    case "so_edit_next_shipment":
                        c.eventAction = "Standing Order - Edit Next Shipment", c.eventCategory = "Standing Order Action", c.event = "standingOrder";
                        break;
                    case "so_manage_order":
                        c.eventAction = "Standing Order - Manage Easy Order", c.eventCategory = "Standing Order Action", c.event = "standingOrder";
                        break;
                    case "so_cancel_order":
                        c.eventAction = "Standing Order - Cancel Order", c.eventCategory = "Standing Order Action", c.event = "standingOrder";
                        break;
                    case "so_place_order":
                        c.eventAction = "Standing Order - Place Recurring Order", c.eventCategory = "Standing Order Action", c.event = "standingOrder";
                        break;
                    case "so_continue_order":
                        c.event = "customEvent", c.eventCategory = "User Engagement", c.eventAction = "Click", c.eventLabel = "Standing Order - Proceed To Next Step";
                        break;
                    case "so_add_promotion_code":
                        c.event = "standingOrder", c.eventCategory = "User Engagement", c.eventAction = "Click", c.eventLabel = "Standing Order - Add Promotion Code";
                        break;
                    case "so_edit_products":
                        c.eventAction = "Standing Order - Edit Products", c.eventCategory = "Standing Order Action", c.event = "standingOrder";
                        break;
                    case "so_skip_next_shipment":
                        c.eventAction = "Standing Order - Skip Next Shipment", c.eventCategory = "Standing Order Action", c.event = "standingOrder";
                        break;
                    case "so_back_to_easyorders":
                        c.eventAction = "Standing Order - Back to Easy Orders", c.eventCategory = "Standing Order Action", c.event = "standingOrder";
                        break;
                    case "so_subscription_event":
                        c.event = "customEvent", c.eventCategory = "Standing Order Action", c.eventAction = "Standing Order - " + a.action + " - Subscription Process", c.eventLabel = "Standing Order - " + a.label, c.standingOrderFunnelType = "Subscription Standard Checkout Flow", "Accepted In Order" === a.action && (c.standingOrderRevenue = sharedHelpers.getValueOrEmptyString(a.standingOrderRevenue), c.standingOrderCapsules = sharedHelpers.getValueOrEmptyString(a.standingOrderCapsules), c.standingOrderType = "New - From Scratch", c.standingOrderFrequency = sharedHelpers.getValueOrEmptyString(a.standingOrderFrequency)), c.clubMemberID = e;
                        break;
                    case "so_read_details":
                        c.eventAction = "Standing Order - Read Details", c.eventCategory = "Standing Order Action", c.event = "standingOrder";
                        break;
                    case "so_change_gift_technology":
                        b = a.technologyName, c.eventAction = "Standing Order - Change Technology for Complementary Gifts", c.eventCategory = "Standing Order Action", c.label = "Standing Order - " + b, c.event = "standingOrder";
                        break;
                    case "so_select_complementary_gift":
                        c.eventAction = "Standing Order - Select Complementary Gift", c.eventCategory = "Standing Order Action", c.event = "standingOrder";
                        break;
                    case "so_continue_saving_gift":
                        c.eventAction = "Standing Order - Continue Saving Gift", c.eventCategory = "Standing Order Action", c.event = "standingOrder";
                        break;
                    case "so_edit_complementary_gift":
                        c.eventAction = "Standing Order - Edit Complementary Gift", c.eventCategory = "Standing Order Action", c.event = "standingOrder";
                        break;
                    case "so_changed_complementary_gift":
                        c.eventAction = "Standing Order - Changed Complementary Gift", c.eventCategory = "Standing Order Action", c.event = "standingOrder";
                        break;
                    case "so_confirm_next_shipment_date":
                        c.eventAction = "Standing Order - Confirm Next Shipment Date", c.eventCategory = "Standing Order Action", c.event = "standingOrder";
                        break;
                    case "so_create_nickname":
                        c.eventAction = "Standing Order - Create Nickname for Easy Order", c.eventCategory = "Standing Order Action", c.event = "standingOrder";
                        break;
                    case "so_nickname_too_long":
                        c.eventAction = "Standing Order - Easy Order Nickname Too Long", c.eventCategory = "Standing Order Action", c.event = "standingOrder";
                        break;
                    case "account_reorder":
                        c.event = "customEvent", c.eventCategory = "User Engagement", c.eventAction = "Click", c.eventLabel = "My Account - My Orders - Reorder";
                        break;
                    case "account_view_details":
                        c.event = "customEvent", c.eventCategory = "User Engagement", c.eventAction = "Click", c.eventLabel = "My Account - My Orders - View More Details";
                        break;
                    case "account_save_express_checkout":
                        b = a.activated ? "Express Checkout Activated" : "Express Checkout Deactivated", c.event = "customEvent", c.eventCategory = "User Engagement", c.eventAction = "My Account Checkout Settings - Save Preferences", c.eventLabel = "My Account Checkout Settings - " + b;
                        break;
                    case "account_machine_add":
                        b = a.machineName, c.event = "customEvent", c.eventCategory = "User Engagement", c.eventAction = "My Account - Add Machine", c.eventLabel = "My Account - Add " + b;
                        break;
                    case "account_machine_edit":
                        b = a.machineName, c.event = "customEvent", c.eventCategory = "User Engagement", c.eventAction = "My Account - Save Machine", c.eventLabel = "My Account - Save " + b;
                        break;
                    case "account_machine_remove":
                        b = a.machineName, c.event = "customEvent", c.eventCategory = "User Engagement", c.eventAction = "My Account - Remove Machine", c.eventLabel = "My Account - Remove " + b;
                        break;
                    case "contact_preferences":
                        b = "By " + sharedHelpers.getValuesFromArray(a.contactPreferenceSelected, sharedHelpers.textSeparator), c.event = "customEvent", c.eventCategory = "User Engagement", c.eventAction = "My Account - Contact Preferences", c.eventLabel = "My Account Contact Preferences - GDPR Global optin - " + b, c["nonInteraction Setting - Default FALSE"] = 0;
                        break;
                    case "account_alerts":
                        b = sharedHelpers.getValuesFromArray(a.selectedAlerts, sharedHelpers.textSeparator), c.event = "customEvent", c.eventCategory = "My Account Action", c.eventAction = "My Account - Alert Settings", c.eventLabel = "My Account - " + b;
                        break;
                    case "checkout_invoice":
                        c.event = "customEvent", c.eventCategory = "Ecommerce", c.eventAction = "Checkout Interaction - Checkout Payment - Invoice Information", c.eventLabel = "Invoice Information - Initial Selection - " + a.invoiceType;
                        break;
                    case "checkout_invoice_final":
                        c.event = "customEvent", c.eventCategory = "Ecommerce", c.eventAction = "Checkout Interaction - Checkout Payment - Invoice Information", c.eventLabel = "Invoice Information - Final Selection - " + a.invoiceType;
                        break;
                    case "rnr_pdp_tab_select":
                        c.event = "customEvent", c.eventCategory = "User Engagement", c.eventAction = "Rating and Reviews - " + a.tabName + " Tab Click", c.eventLabel = "R&R Product: " + a.productName;
                        break;
                    case "rnr_write_a_review_click":
                        c.event = "customEvent", c.eventCategory = "User Engagement", c.eventAction = "Rating and Reviews - Write Review", c.eventLabel = "R&R Product: " + a.productName;
                        break;
                    case "rnr_submit_a_review_click":
                        c.event = "customEvent", c.eventCategory = "User Engagement", c.eventAction = "Rating and Reviews - Submit Review", c.eventLabel = "R&R Product: " + a.productName, c.friendRecommend = sharedHelpers.getBooleanAsString(a.friendRecommend), c.reviewAnonymously = sharedHelpers.getBooleanAsString(a.reviewAnonymously), c.starRatingSubmitted = sharedHelpers.getValueOrEmptyString(a.starRatingSubmitted);
                        break;
                    case "rnr_was_it_helpful_click":
                        c.event = "customEvent", c.eventCategory = "User Engagement", c.eventAction = "Rating and Reviews - Was This Helpful Click", c.eventLabel = "R&R Product: " + a.productName;
                        break;
                    case "consent_recapture_keep_my_preferences_click":
                        c.event = "customEvent", c.eventCategory = "User Engagement", c.eventAction = "Click", c.eventLabel = "GDPR agree consent", c["nonInteraction Setting - Default FALSE"] = 0;
                        break;
                    case "consent_recapture_update_my_preferences_click":
                        c.event = "customEvent", c.eventCategory = "User Engagement", c.eventAction = "Click", c.eventLabel = "GDPR want to update consent", c["nonInteraction Setting - Default FALSE"] = 0;
                        break;
                    case "lead_form_submit":
                        c.event = "customEvent", c.eventCategory = "User Engagement", c.eventAction = "Click", c.eventLabel = "Short lead form - Sent", c["nonInteraction Setting - Default FALSE"] = 1, c.companyType = sharedHelpers.getValuesFromArray(a.companyType, "");
                        break;
                    case "subscription_events":
                        c.event = "customEvent", c.eventCategory = "User Engagement", c.eventAction = "Click", c.eventLabel = "Subscription - User Click - " + a.customerAction, c["nonInteraction Setting - Default FALSE"] = 0;
                        break;
                    case "register_machine_click":
                        c.event = "customEvent", c.eventCategory = "User Engagement", c.eventAction = "My Subscriptions Page - Register My Machine Start", c.eventLabel = "My Subscriptions Page - Register My Machine Start", c.clubMemberID = e;
                        break;
                    case "subscription_CTA_click":
                        c.event = "customEvent", c.eventCategory = "User Engagement", c.eventAction = "Click to Subscription Landing Page - Machine Subscription", c.eventLabel = "Click to Subscription Landing Page from Machine " + a.page, c.clubMemberID = e;
                        break;
                    case "display_subscription_CTA_button":
                        c.event = "customEvent", c.eventCategory = "User Engagement", c.eventAction = "Display Subscription CTA button - Machine " + a.page, c.eventLabel = "Display Subscription CTA button - Machine " + a.page;
                        break;
                    case "subscription_myAccount_events":
                        c.event = "customEvent", c.eventCategory = "User Engagement", c.eventAction = "My Account - " + a.eventAction, c.eventLabel = "My Account - " + a.eventLabel, c.clubMemberID = e;
                        break;
                    case "subscription_edit_CC_click":
                        c.event = "customEvent", c.eventCategory = "User Engagement", c.eventAction = "My Account - Edit Credit Card", c.eventLabel = "My Account - Edit Credit Card", c.clubMemberID = e;
                        break;
                    case "multiple_contacts_events":
                        var f = padl.page.pageInfo.breadcrumbUID.toLowerCase().indexOf("checkout") !== -1 ? "Checkout " : "Easy Order ";
                        c.event = "customEvent", c.eventRaisedBy = "FreeHTML", c.eventCategory = "User Engagement", c.eventAction = a.action, c.eventLabel = "Multiple Contact - " + f + a.customerAction, c["nonInteraction Setting - Default FALSE"] = 0, c.rolesType = a.rolesType;
                        break;
                    case "miniCart_events":
                        c.event = "customEvent", c.eventCategory = "Mini-Cart", c.eventAction = a.eventAction, c.eventLabel = a.eventLabel;
                        break;
                    case "subscription_purchased":
                        c.event = "customEvent", c.eventCategory = "Ecommerce", c.eventAction = "Subscription Plan Purchase", c.eventLabel = "Subscription Plan Purchase - " + a.subscription.profileId + " - " + a.subscriptionMonthlyFee, c.clubMemberID = e, c.subscriptionIncludedInOrder = !0, c.subscriptionCategory = a.subscription.subscriptionCategory, c.monthlySubscriptionAmount = a.subscriptionMonthlyFee, c.paymentWithClubCredit = a.paymentWithClubCredit, c.totalSubscriptionAnnualValue = 12 * a.subscriptionMonthlyFee, c.monthlySubscriptionAnnualValue = a.subscriptionMonthlyFee, c.subscriptionUser = d.subscriptionUser, c.easyOrderIncludedInPurchase = !1, c.subscriptionProductDetails = [{
                            subscriptionName: "Subscription Fee - " + a.subscription.profileId,
                            subscriptionid: a.subscription.id,
                            subscriptionPrice: a.subscriptionMonthlyFee,
                            subscriptionCategory: a.subscription.subscriptionCategory
                        }], a.easyOrder.easyOrderIncludedInPurchase && (c.easyOrderIncludedInPurchase = !0, c.standingOrderType = "New - From Scratch - Subscription Standard Checkout Process", c.standingOrderFunnelType = "Subscription Standard Checkout Flow", c.standingOrderFrequency = a.easyOrder.easyOrderFrequency);
                        break;
                    case "multiple_contacts_my_contacts_events":
                        c.event = "customEvent", c.eventRaisedBy = "FreeHTML", c.eventCategory = "User Engagement", c.eventAction = a.action, c.eventLabel = "Multiple Contact - " + a.eventLabel, c.nonInteraction = 0, c.rolesType = a.rolesType;
                        break;
                    case "guest_checkout_login_lightBox":
                        c.event = "customEvent", c.eventCategory = "Exception", c.eventAction = "Guest Checkout Out Error", c.eventLabel = "The user of this email address is limited to the login option";
                        break;
                    case "guest_checkout_marketing_preference":
                        c.event = "customEvent", c.eventCategory = "Guest Checkout", c.eventAction = "Guest Checkout Marketing Preferences", c.eventLabel = a.eventLabel;
                        break;
                    case "guest_checkout_account_creation":
                        c.event = "customEvent", c.newAccountStep = "Guest Checkout", c.eventCategory = "User Engagement", c.eventAction = "New Account Creation", c.eventLabel = "Guest Checkout", c.guestCheckoutAccountOption = a.guestCheckoutAccountOption, c.guestCheckoutAccountComplete = a.guestCheckoutAccountComplete;
                        break;
                    case "INVOICE_PDF":
                        c.eventAction = "Click", c.eventCategory = "User Engagement", c.event = "customEvent", c.eventLabel = "PDF Download - My Orders";
                        break;
                    case "INVOICE_NOT_AVAILABLE":
                        c.eventAction = "Click", c.eventCategory = "User Engagement", c.event = "customEvent", c.eventLabel = "Self service invoice - Invoice NA";
                        break;
                    case "ORDER_NOT_INVOICED":
                        c.eventAction = "Click", c.eventCategory = "User Engagement", c.event = "customEvent", c.eventLabel = "Self service invoice - Order not invoiced";
                        break;
                    case "DOWNLOAD_PDF_INVOICE":
                        c.eventAction = "Click", c.eventCategory = "User Engagement", c.event = "customEvent", c.eventLabel = "PDF Download - Order Details";
                        break;
                    default:
                        c = !1
                }
                return c
            }

            function b(b) {
                var c = a(b);
                return c ? napi.data().customEvent().setEventData({
                    customEvent: c
                }) : Promise.reject("CustomEvent: Invalid data structure passed to the default event")
            }
            return {
                track: b
            }
        }();
        "undefined" != typeof a && a.exports && (a.exports = c)
    }, function(a, b) {
        var c = function() {
            function a(a) {
                return {
                    event: "productImpressionOnClick",
                    currencyCode: padl.app.currency,
                    ecommerce: {
                        impressions: productHelper.getProducts(a, productHelper.extendGtmProductWithExtraAttributes)
                    }
                }
            }

            function b(a) {
                var b, c, d = {};
                if (b = productHelper.getProducts(a, productHelper.extendGtmProductWithExtraAttributes), !b.length) return {};
                for (c = 0; c < b.length; c++) d[b[c].id] = b[c];
                return d.currencyCode = padl.app.currency, d
            }
            return {
                getProductImpressionScrollEventData: b,
                getProductImpressionClickEventData: a
            }
        }();
        "undefined" != typeof a && a.exports && (a.exports = c)
    }, function(a, b) {
        var c = function() {
            function a(a) {
                return b(a).then(function(a) {
                    return {
                        products: [a]
                    }
                })
            }

            function b(a, b) {
                var c = {};
                return a.id ? a.technologies ? (c = {
                    category: {
                        type: a.bundled ? q : r,
                        primaryCategory: a.rootCategory,
                        technology: a.technologies.map(function(a) {
                            return a.id ? dataArrange.getShortProductId(a.id) : dataArrange.getShortProductId(a)
                        })
                    },
                    productInfo: {
                        productLocalSKU: a.legacyId,
                        productLocalName: a.name,
                        productInternationalSKU: a.internationalId,
                        productInternationalName: a.internationalName,
                        belongsToProductSelections: a.productSelections
                    },
                    price: {
                        productPrice: a.unitPrice,
                        isEcoTax: !1
                    },
                    packagingType: a.packagingType,
                    isDiscoveryOfferItem: !1
                }, dataArrange.isNumeric(a.position) && (c.position = a.position), a.list && (c.list = a.list), trackingHelper.getPadlCartUpdateItemSecondaryCategories(a).then(function(e) {
                    return c.category.secondaryCategory = e, d(a.id, b).then(function(a) {
                        return c.isDiscoveryOfferItem = a, c
                    })
                })) : Promise.reject("Missing product technologies list") : Promise.reject("Missing product info")
            }

            function d(a, b) {
                var c;
                return c = napi.market().read().then(function(b) {
                    var c, d, e = !1;
                    for (c = b.discoveryOfferBundleProducts || [], d = 0; d < c.length; d++)
                        if (a === c[d]) {
                            e = !0;
                            break
                        }
                    return e ? Promise.resolve(!0) : Promise.reject(!1)
                }), c.catch(function() {
                    var c, d = [];
                    if (b && b.length) {
                        for (c = 0; c < b.length; c++) d.push(napi.promotion().getClubAction(b[c]).catch(function() {
                            return {
                                products: {}
                            }
                        }));
                        return Promise.all(d).then(function(b) {
                            for (c = 0; c < b.length; c++) {
                                var d = b[c].products;
                                if (d.hasOwnProperty(a)) return Promise.resolve(!0)
                            }
                            return Promise.resolve(!1)
                        }).catch(function() {
                            return Promise.resolve(!1)
                        })
                    }
                    return Promise.resolve(!1)
                })
            }

            function e(a, b) {
                t.getProductsListHandler = a, t.productsListCache && !b || (t.productsListCache = a())
            }

            function f(b) {
                function c(b) {
                    var c;
                    return a(b).then(function(a) {
                        return g[b.internationalId] && (c = g[b.internationalId], a.products[0].list = c.list, a.products[0].position = c.position, a.products[0].isStandingOrderItem = c.isSOItem), a.products[0]
                    })
                }
                var d, e, f, g = t.getProductsListHandler(),
                    h = [];
                for (d in g)
                    if ("" !== d && g.hasOwnProperty(d) && (!b || b && !t.productsListCache[d])) {
                        var i = {
                            language: s
                        };
                        e = g[d].code, f = napi.catalog().getProduct(e, i).then(c, function() {}), h.push(f)
                    }
                return h
            }

            function g() {
                var a, b = {
                    products: []
                };
                return a = f(!0), e(t.getProductsListHandler, !0), a.length ? Promise.all(a).then(function(a) {
                    for (var c = 0; c < a.length; c++) a[c] && b.products.push(a[c]);
                    return napi.data().product().setProductImpressionClickData(b), b
                }) : Promise.resolve()
            }

            function h(a) {
                var b, c = {
                    products: []
                };
                return a && a.refreshCache && (t.productsListCache = t.getProductsListHandler()), b = f(), b.length ? Promise.all(b).then(function(a) {
                    for (var b = 0; b < a.length; b++) a[b] && c.products.push(a[b]);
                    return napi.data().product().setProductImpressionScrollData(c), c
                }) : (napi.data().product().setProductImpressionScrollData(c), Promise.resolve(c))
            }

            function i(a) {
                napi.catalog().getProduct(a.code).then(function(b) {
                    b.list = a.list, b.position = a.position, c.getPadlProductDetail(b).then(function(a) {
                        napi.data().product().setProductClickData(a)
                    })
                })
            }

            function j(a, b) {
                var c, d, e, f = [];
                for (e = 0; e < a.length; e++) c = a[e], d = k(c), dataArrange.isNumeric(c.position) && (d.position = c.position), "function" == typeof b ? f.push(b(c, d)) : f.push(d);
                return f
            }

            function k(a) {
                var b = {
                        name: a.productInfo.productInternationalName,
                        id: a.productInfo.productInternationalSKU,
                        dimension43: sharedHelpers.getBooleanAsString(!!a.isStandingOrderItem),
                        dimension44: sharedHelpers.getBooleanAsString(!!a.isDiscoveryOfferItem),
                        dimension53: a.productInfo.productLocalSKU,
                        dimension54: a.productInfo.productLocalName,
                        dimension55: sharedHelpers.getValuesFromArray(a.category.secondaryCategory, sharedHelpers.textSeparator),
                        dimension56: sharedHelpers.getValuesFromArray(a.category.technology, sharedHelpers.eventSeparator),
                        dimension57: a.category.type,
                        price: a.price.productPrice,
                        dimension162: sharedHelpers.getValueOrEmptyString(a.packagingType),
                        category: a.category.primaryCategory,
                        brand: padl.app.brand
                    },
                    c = a.associateSubscription;
                return a.quantity && (b.quantity = Math.abs(a.quantity.productQuantity)), a.list && (b.list = a.list), dataArrange.isNumeric(a.position) && (b.position = a.position), a.coupon && (b.coupon = a.coupon.code, b.metric2 = a.coupon.amount || "0"), c && (b.dimension165 = a.associateSubscription.subscriptionCategory, b.dimension166 = a.associateSubscription.price, c.profileId && (b.name = a.productInfo.productInternationalName + " - " + c.profileId)), b
            }

            function l(a, b) {
                return b.metric10 = a.quantity.capsuleQuantity, b.metric11 = a.quantity.machineQuantity, b.metric12 = a.quantity.accessoryQuantity, a.ratings && (b.dimension90 = a.ratings.average, b.dimension91 = a.ratings.reviews), b
            }

            function m(a, b) {
                return b.quantity = -a.quantity.productQuantity, b.metric13 = a.quantity.capsuleQuantity ? -a.quantity.capsuleQuantity : 0, b.metric14 = a.quantity.machineQuantity ? -a.quantity.machineQuantity : 0, b.metric15 = a.quantity.accessoryQuantity ? -a.quantity.accessoryQuantity : 0, a.ratings && (b.dimension90 = a.ratings.average, b.dimension91 = a.ratings.reviews), b
            }

            function n(a, b) {
                return b.metric5 = sharedHelpers.getValueOrEmptyString(a.quantity.machineQuantity),
                    b.metric6 = sharedHelpers.getValueOrEmptyString(a.quantity.capsuleQuantity), b.metric9 = sharedHelpers.getValueOrEmptyString(a.quantity.accessoryQuantity), b.dimension59 = sharedHelpers.getBooleanAsString(a.isAddedByUser), b.dimension88 = sharedHelpers.getValueOrEmptyString(a.productInfo.colorShade), b
            }

            function o(a, b) {
                return b.metric16 = a.quantity.capsuleQuantity, b.metric17 = a.quantity.machineQuantity, b.metric18 = a.quantity.accessoryQuantity, b
            }

            function p(a, b) {
                return a.list && (b.list = a.list), dataArrange.isNumeric(a.position) && (b.position = a.position), b
            }
            var q = "bundle",
                r = "single",
                s = "en",
                t = {};
            return {
                getPadlProductDetail: a,
                setupImpressions: e,
                trackImpressionOnClick: g,
                trackImpressionOnScroll: h,
                trackProductClick: i,
                getProducts: j,
                getBaseGTMProduct: k,
                getPadlProductModel: b,
                extendGtmProductForRemoveFromCart: m,
                extendGtmProductForAddToCart: l,
                extendGtmProductForTransaction: n,
                extendGtmProductForCheckoutSummary: o,
                extendGtmProductWithExtraAttributes: p,
                isDiscoveryOffer: d
            }
        }();
        "undefined" != typeof a && a.exports && (a.exports = c)
    }, function(a, b) {
        var c = function() {
            function a(a, b) {
                e.getPromotionsListHandler = a, e.promotionsListCache && !b || (e.promotionsListCache = a())
            }

            function b() {
                var a = e.getPromotionsListHandler(),
                    b = {
                        promotion: {}
                    };
                return dataArrange.extend(f, a), b.promotion = f, napi.data().promotion().setPromotionScrollData(b), b
            }

            function c(a) {
                napi.data().promotion().setPromotionClickData({
                    promotion: a
                })
            }

            function d(a, b) {
                var c = a.id;
                if (c) {
                    if (b) {
                        if (g[c]) return;
                        g[c] = a
                    }
                    napi.data().promotion().setPromotionSlideData({
                        promotion: a
                    })
                }
            }
            var e = {},
                f = {},
                g = {};
            return {
                setupImpressions: a,
                trackImpressionOnScroll: b,
                trackPromotionClick: c,
                trackPromotionSlide: d
            }
        }();
        "undefined" != typeof a && a.exports && (a.exports = c)
    }, function(a, b) {
        var c = function() {
            function a(a) {
                var b = "object" == typeof a && dataArrange.isEmptyObject(a),
                    c = Array.isArray(a) && !a.length;
                return !a || b || c ? "false" : "true"
            }

            function b(a, b) {
                return a && "object" == typeof a && a.hasOwnProperty(b) ? a[b] : ""
            }

            function d(a) {
                var b = [];
                return dataArrange.forEach(a, function(a) {
                    "undefined" != typeof a.machineID && b.push(a.machineID)
                }), b
            }

            function e(a, b) {
                if (a) {
                    var c = b || h,
                        d = a.filter(function(a) {
                            return "string" == typeof a || "boolean" == typeof a
                        });
                    return d.join(c)
                }
                return ""
            }

            function f(b) {
                return "true" === a(b) ? b : ""
            }

            function g(a) {
                return c.getValuesFromArray(a.map(function(a) {
                    return a.paymentMethodID
                }), c.eventSeparator)
            }
            var h = "|",
                i = "|||";
            return {
                getBooleanAsString: a,
                getPropretyOrEmptyString: b,
                getValuesFromArray: e,
                getValueOrEmptyString: f,
                textSeparator: h,
                eventSeparator: i,
                getMachineIDs: d,
                getIdsFromPaymentMethods: g
            }
        }();
        "undefined" != typeof a && a.exports && (a.exports = c)
    }, function(a, b) {
        var c = function() {
            function a(a, c, d) {
                var e = {
                        event: "event_virtualPageView",
                        pageName: b(a.stepIndex),
                        pageType: "account",
                        pageTag: sharedHelpers.getPropretyOrEmptyString(d.pageInfo, "pageTag"),
                        pageCategory: "my-standing-orders",
                        pageSubCategory: "",
                        pageTechnology: sharedHelpers.getValuesFromArray(d.pageInfo.technology, sharedHelpers.eventSeparator),
                        pageVariant: sharedHelpers.getPropretyOrEmptyString(d.pageInfo, "variant"),
                        market: sharedHelpers.getPropretyOrEmptyString(c, "market"),
                        version: sharedHelpers.getPropretyOrEmptyString(c, "version"),
                        landscape: sharedHelpers.getPropretyOrEmptyString(c, "landscape"),
                        segmentBusiness: sharedHelpers.getPropretyOrEmptyString(d.pageInfo, "segmentBusiness"),
                        breadCrumbUID: sharedHelpers.getPropretyOrEmptyString(d.pageInfo, "breadcrumbUID"),
                        currency: sharedHelpers.getPropretyOrEmptyString(c, "currency"),
                        clubMemberID: "",
                        clubMemberStatus: "",
                        clubMemberLevel: "",
                        clubMemberTierID: "",
                        clubMemberTitle: "",
                        clubMemberLoginStatus: sharedHelpers.getBooleanAsString(!1),
                        machineOwner: "",
                        machineOwned: "",
                        preferredTechnology: ""
                    },
                    f = trackingHelper.customerTrackingData(function(a) {
                        return a
                    });
                return Promise.all([f]).then(function(a) {
                    var b = a[0].user;
                    return e.clubMemberID = sharedHelpers.getValueOrEmptyString(b.clubMember.clubMemberID), e.clubMemberStatus = sharedHelpers.getBooleanAsString(b.clubMember.clubMemberStatus), e.clubMemberLevel = sharedHelpers.getValueOrEmptyString(b.clubMember.clubMemberLevel), e.clubMemberTierID = sharedHelpers.getValueOrEmptyString(b.clubMember.clubMemberTierID), e.clubMemberTitle = sharedHelpers.getValueOrEmptyString(b.clubMember.clubMemberTitle), e.clubMemberLoginStatus = sharedHelpers.getBooleanAsString(b.isLoggedIn), e.machineOwner = sharedHelpers.getBooleanAsString(b.clubMember.memberPreferences.machineOwner), e.machineOwned = sharedHelpers.getValuesFromArray(sharedHelpers.getMachineIDs(b.clubMember.memberPreferences.machineOwned), sharedHelpers.eventSeparator), e.preferredTechnology = sharedHelpers.getValueOrEmptyString(b.clubMember.memberPreferences.preferredTechnology), e
                }).catch(function() {
                    return e
                })
            }

            function b(a) {
                return -1 < a && a < f.length ? f[a] : ""
            }

            function c(a, b) {
                var c, d, e = a.productInfo,
                    f = sharedHelpers.getValueOrEmptyString(e.productInternationalName),
                    g = {
                        event: "standingOrder",
                        eventCategory: "Standing Order Action",
                        currencyCode: sharedHelpers.getPropretyOrEmptyString(b, "currency"),
                        standingOrder: {
                            ecommerce: {}
                        }
                    };
                return a.quantity.productQuantity > 0 ? (d = productHelper.extendGtmProductForAddToCart, c = "add", g.eventAction = "Standing Order - Add to Basket", g.eventLabel = "Standing Order - Add " + f) : (d = productHelper.extendGtmProductForRemoveFromCart, c = "remove", g.eventAction = "Standing Order - Remove from Basket", g.eventLabel = "Standing Order - Remove " + f), g.standingOrder.ecommerce[c] = {
                    actionField: {},
                    products: productHelper.getProducts([a], d)
                }, g
            }

            function d(a) {
                var b, c, d = [],
                    e = padl.user ? padl.events.user : {},
                    f = e.clubMember ? e.clubMember.clubMemberID : "",
                    h = 0,
                    i = a.delivery.deliveryMethod.services;
                for (a.totals.withShippingCost.taxLines.length && (h = parseFloat(a.totals.withShippingCost.taxLines[0].amount.toString().replace(",", "."))), b = {
                        transactionID: a.id,
                        attributes: {
                            deliveryOptions: {
                                recycling: sharedHelpers.getBooleanAsString(dataArrange.inArray(i, "RECYCLING")),
                                signature: sharedHelpers.getBooleanAsString(dataArrange.inArray(i, "SIGNATURE")),
                                priority: sharedHelpers.getBooleanAsString(dataArrange.inArray(i, "PRIORITY"))
                            },
                            paymentMethods: [{
                                paymentMethodID: a.payment.paymentMethod.nesoaId,
                                paymentMethodAmount: a.totals.withShippingCost.grandTotal
                            }],
                            shippingMethodID: a.delivery.deliveryMethod.nesoaId,
                            taxSystemID: "1",
                            coupon: {
                                code: null,
                                amount: 0
                            },
                            clubActionID: [],
                            mainPaymentMethod: a.payment.paymentMethod.nesoaId
                        },
                        newClient: !1,
                        profile: {
                            shippingAddress: transactionHelper.getShippingAddress(a.delivery.deliveryAddressFull),
                            billingAddress: transactionHelper.getBillingAddress(a.payment.billingAddressFull),
                            profileInfo: {
                                clubMemberID: f,
                                cookieID: ""
                            }
                        },
                        total: {
                            currency: a.currency,
                            clubActionTotalAmount: 0,
                            userCredit: 0,
                            rebateAmount: 0,
                            price: {
                                shippingFees: a.totals.withShippingCost.shippingCost,
                                taxTotalAmount: h,
                                transactionSubtotal: a.totals.withShippingCost.subTotal,
                                transactionTotal: a.totals.withShippingCost.grandTotal
                            }
                        },
                        item: [],
                        discoveryOfferIncluded: !1,
                        standingOrderType: g[a.orderType] || "",
                        standingOrderFrequency: a.frequencyLabel.toLowerCase()
                    }, c = 0; c < a.orderContents.length; c++) d.push(napi.catalog().getProduct(a.orderContents[c].productId));
                return Promise.all(d).then(function(c) {
                    var d, e, f, g, h, i = [];
                    for (h = 0; h < c.length; h++) i.push(productHelper.getPadlProductModel(c[h]));
                    return Promise.all(i).then(function(c) {
                        for (h = 0; h < c.length; h++) f = "accessories" !== c[h].category.primaryCategory, g = "accessories" === c[h].category.primaryCategory, d = a.orderContents[h], e = d.quantity, c[h].isDiscoveryOfferItem = !1, c[h].isStandingOrderItem = !0, c[h].isAddedByUser = !0, c[h].quantity = {
                            productQuantity: e,
                            capsuleQuantity: f ? e : 0,
                            machineQuantity: 0,
                            accessoryQuantity: g ? e : 0
                        }, b.item.push(c[h]);
                        return {
                            transaction: b
                        }
                    })
                })
            }

            function e(a, b) {
                var c, d, e = a.transaction,
                    f = 0;
                for (d = 0; d < e.item.length; d++) f += e.item[d].quantity.capsuleQuantity;
                return c = productHelper.getProducts(e.item, productHelper.extendGtmProductForTransaction), {
                    event: "standingOrder",
                    eventCategory: "Standing Order Action",
                    eventAction: "Standing Order - Completed Order",
                    eventLabel: "Standing Order ID - " + sharedHelpers.getValueOrEmptyString(e.transactionID),
                    standingOrderRevenue: e.total.price.transactionSubtotal,
                    standingOrderCapsules: f,
                    standingOrderType: e.standingOrderType,
                    standingOrderFrequency: e.standingOrderFrequency,
                    currencyCode: e.total.currency,
                    transactionTotal: e.total.price.transactionTotal,
                    userCreditAmountUsed: e.total.userCredit,
                    newClient: sharedHelpers.getBooleanAsString(e.newClient),
                    standingOrder: {
                        ecommerce: {
                            purchase: {
                                actionField: {
                                    id: e.transactionID,
                                    affiliation: b.affiliation,
                                    revenue: e.total.price.transactionSubtotal,
                                    tax: e.total.price.taxTotalAmount,
                                    shipping: e.total.price.shippingFees,
                                    shippingAddressCity: e.profile.shippingAddress.saCity,
                                    shippingAddressState: e.profile.shippingAddress.saStateProvince,
                                    shippingAddressCountry: e.profile.shippingAddress.saCountry,
                                    billingAddressCity: e.profile.billingAddress.baCity,
                                    billingAddressState: e.profile.billingAddress.baStateProvince,
                                    billingAddressCountry: e.profile.billingAddress.baCountry,
                                    checkoutMainPaymentMethod: e.attributes.mainPaymentMethod,
                                    checkoutPaymentMethods: e.attributes.paymentMethods[0].paymentMethodID,
                                    checkoutShippingMethodID: e.attributes.shippingMethodID,
                                    deliveryOption_Priority: sharedHelpers.getValueOrEmptyString(e.attributes.deliveryOptions.priority),
                                    deliveryOption_Signature: sharedHelpers.getValueOrEmptyString(e.attributes.deliveryOptions.signature),
                                    deliveryOption_Recycling: sharedHelpers.getValueOrEmptyString(e.attributes.deliveryOptions.recycling)
                                },
                                products: c
                            }
                        }
                    }
                }
            }
            var f = ["plp-coffee", "edit-my-standing-orders-shipping-dates", "edit-my-standing-orders-delivery-info", "edit-my-standing-orders-payment-info", "edit-my-standing-orders-order-review"],
                g = {
                    new: "New - From Scratch",
                    from: "New - Copied from Existing",
                    recurring: "Editing existing"
                };
            return {
                getGtmStepData: a,
                getGtmCartUpdate: c,
                getTransactionFromSOComplete: d,
                getGtmSOComplete: e
            }
        }();
        "undefined" != typeof a && a.exports && (a.exports = c)
    }, function(a, b) {
        var c = function() {
            function a(a, b, c, d) {
                var e = {
                    product: a,
                    quantityDifference: b
                };
                return c && (e.promotionCode = c), d && (e.subscription = d), e
            }

            function b(a) {
                switch (typeof a.defaultDelivery) {
                    case "boolean":
                        return a.defaultDelivery;
                    case "string":
                        return "true" === a.defaultDelivery;
                    case "number":
                        return a.defaultDelivery > 0;
                    default:
                        return !1
                }
            }

            function d(a) {
                if (a && a.length) return a.filter(b).shift() || a.shift()
            }

            function e() {
                return t().then(function(a) {
                    var b = [];
                    return a.forEach(function(a) {
                        b.push(napi.catalog().getProduct(a.productId).catch(function(a) {
                            return a && "RESOURCE_NOT_FOUND" === a.errorReason ? null : Promise.reject(a)
                        }))
                    }), Promise.all(b).then(function(a) {
                        return a.filter(function(a) {
                            return null !== a
                        }).map(function(a) {
                            return {
                                productId: a.id,
                                name: a.name
                            }
                        })
                    })
                })
            }

            function f(a) {
                return {
                    machineID: dataArrange.getShortProductId(a.productId),
                    machineName: a.name
                }
            }

            function g(a) {
                var b = [];
                if (!a.supercategories || "object" != typeof a.supercategories) return Promise.reject("Missing product `supercategories`");
                for (var c = 0; c < a.supercategories.length; c++) b.push(napi.catalog().getCategory(a.supercategories[c], N));
                return Promise.all(b).then(function(a) {
                    for (var b = [], c = a.filter(function(a) {
                            return a.type === K && a.name
                        }).map(function(a) {
                            return a.name
                        }), d = 0; d < c.length; d++) b.indexOf(c[d]) < 0 && b.push(c[d]);
                    return b
                })
            }

            function h(a) {
                var b = {
                        productQuantity: a.quantityDifference,
                        capsuleQuantity: 0,
                        machineQuantity: 0,
                        accessoryQuantity: 0
                    },
                    c = {
                        accessory: "accessoryQuantity",
                        capsule: "capsuleQuantity",
                        machine: "machineQuantity"
                    },
                    d = a.product.bundled,
                    e = a.quantityDifference,
                    f = c[a.product.type];
                return f && (b[f] = d ? e * a.product.unitQuantity : e), b
            }

            function i(a, b) {
                var c = "tracking-helper-subscription-breadcrumbUID";
                return b && a.id === b.invoicingProductCode ? {
                    invoicingProductCode: b.invoicingProductCode,
                    profileId: b.profileId,
                    price: a.unitPrice,
                    subscriptionCategory: safeLocalStorage().getItem(c)
                } : null
            }

            function j(a) {
                var b = {},
                    c = a.product,
                    d = a.subscription,
                    e = i(c, d);
                if (!c) return Promise.reject("Missing product info");
                if (!a.quantityDifference) return Promise.reject("Missing cart line change quantity difference");
                if (!c.technologies) return Promise.reject("Missing product technologies list");
                b = {
                    category: {
                        type: c.bundled ? L : M,
                        primaryCategory: c.type,
                        technology: c.technologies.map(dataArrange.getShortProductId)
                    },
                    productInfo: {
                        productLocalSKU: c.legacyId,
                        productLocalName: c.name,
                        productInternationalSKU: c.internationalId,
                        productInternationalName: c.internationalName,
                        belongsToProductSelections: c.productSelections
                    },
                    price: {
                        productPrice: c.unitPrice
                    },
                    quantity: h(a),
                    isDiscoveryOfferItem: !1,
                    isStandingOrderItem: !!c.isStandingOrderItem
                }, e && (b.associateSubscription = e);
                var f = a.promotionCode ? a.promotionCode : c.promotionCode,
                    j = f ? [f] : [],
                    m = g(c),
                    n = productHelper.isDiscoveryOffer(c.id, j),
                    o = l(c);
                return Promise.all([m, n, o].map(k)).then(function(a) {
                    var c = a.shift(),
                        d = a.shift(),
                        e = a.shift();
                    return c ? (b.category.secondaryCategory = c, b.isDiscoveryOfferItem = Boolean(d), e && (b.ratings = e), b) : Promise.reject("Missing product `supercategories`")
                })
            }

            function k(a) {
                return a.catch(function() {})
            }

            function l(a) {
                return napi.market().read().then(function(b) {
                    return b.ratingsEnabled && a.ratingsEnabled ? napi.ratings().summary(a.legacyId).then(function(a) {
                        return {
                            average: a.ratingAverage,
                            reviews: a.reviewCount
                        }
                    }, function() {
                        return null
                    }) : null
                })
            }

            function m(a) {
                var b;
                return a && a.length ? (b = a.map(j), Promise.all(b).then(function(a) {
                    napi.data().cart().update({
                        cartUpdates: {
                            item: a
                        }
                    })
                })) : Promise.resolve()
            }

            function n(b, c) {
                var d, e, f, g, h = [],
                    i = b.cartLines,
                    j = c.cartLines,
                    k = !1;
                for (d = i.map(function(a) {
                        return a.id
                    }), e = j.map(function(a) {
                        return a.id
                    }), f = 0; f < d.length; f++) {
                    var l = e.indexOf(d[f]);
                    if (l >= 0) {
                        var m = j[l].quantity - i[f].quantity;
                        k = "SUB" === j[l].legacyId && b.subscription.profileId !== c.subscription.profileId, m = k ? -1 : m, (m || k) && h.push(a(j[l], m, b.promotionCode, b.subscription))
                    } else h.push(a(i[f], -i[f].quantity, b.promotionCode, b.subscription))
                }
                for (g = 0; g < e.length; g++) {
                    for (var n = {}, o = 0; o < j.length; o++) j[o].id === e[g] && (n = j[o]);
                    k = "SUB" === n.legacyId && b.subscription && b.subscription.profileId !== c.subscription.profileId, m = k ? 1 : j[g].quantity, (d.indexOf(e[g]) < 0 || k) && h.push(a(j[g], m, c.promotionCode, c.subscription))
                }
                return h
            }

            function o(b, c, d) {
                var e;
                for (e = 0; e < b.length && c.id !== b[e].legacyId; e++);
                return a(b[e], (parseInt(c.quantity, 10) || 0) - (parseInt(d, 10) || 0), c.promotionCode)
            }

            function p(a) {
                if ("function" != typeof a) throw "Invalid input parameter";
                return function() {
                    var b = arguments;
                    return napi.cart().read({
                        expandProducts: !0,
                        forceFull: !0
                    }).then(function(c) {
                        var d = a.apply(null, b);
                        return d.then(function(a) {
                            napi.cart().read({
                                expandProducts: !0,
                                forceFull: !0
                            }).then(function(b) {
                                a.promotionCode && (c.promotionCode = a.promotionCode), m(n(c, b))
                            })
                        }), d
                    })
                }
            }

            function q(a, b) {
                var c, d = a.tiers;
                return d && d.length ? (c = d.filter(function(a) {
                    return !!a && b === a.id
                }), c.length && c[0] ? c[0].title : null) : null
            }

            function r(a, b, c) {
                return napi.getConfig().then(function(d) {
                    var e = d.market,
                        f = O.get(a + "-" + e),
                        g = !f || (new Date).getTime() > f.time + 1e3 * c;
                    return !g && f.value ? f.value : b().then(function(b) {
                        return O.set(a + "-" + e, {
                            time: (new Date).getTime(),
                            value: b
                        }), b
                    })
                })
            }

            function s(a) {
                return napi.getConfig().then(function(b) {
                    var c = b.market;
                    O.set(a + "-" + c, null)
                })
            }

            function t() {
                return r(R, napi.customer().getMachines, P)
            }

            function u() {
                return r(Q, napi.customer().getAddresses, P)
            }

            function v() {
                return r(S, napi.market().getLeClubConfig, 10 * P)
            }

            function w() {
                return napi.subscription ? napi.subscription().getSubscriptions() : Promise.resolve()
            }

            function x(a, b) {
                var d = [],
                    f = [],
                    g = {},
                    h = [],
                    i = !1;
                return d.push(u().then(function(a) {
                    f = a
                })), d.push(v().then(function(a) {
                    g = a
                })), b.withMachines && d.push(e().then(function(a) {
                    h = a
                })), d.push(w().then(function(a) {
                    dataArrange.isEmptyObject(a) || (i = !0)
                })), promiseHelper.settle(d).then(function() {
                    var b, d = a.clubStatus,
                        e = d && d.tier ? d.tier.toString() : null,
                        j = c.getMainAddress(f);
                    return a.optIns = a.optIns || [], b = {
                        clubMemberID: a.memberNumber,
                        clubMemberStatus: a.clubMemberStatus,
                        clubMemberLevel: c.getTierTitleById(g, e),
                        clubMemberTierID: e,
                        clubMemberEmail: a.email,
                        emailSubscriber: dataArrange.inArray(a.optIns, "Email"),
                        contactPreferenceSelected: a.optIns,
                        productSelectionLists: a.productSelections,
                        persistentBasketLoaded: a.persistentBasketLoaded,
                        memberPreferences: {
                            machineOwner: h.length > 0,
                            machineOwned: h.map(c.getMachineTrackingData),
                            preferredTechnology: dataArrange.getShortProductId(a.preferredTechnology)
                        }
                    }, "CompanyInfo" === a.type ? (b.clubMemberFirstName = a.companyName, b.clubMemberLastName = a.contactName) : (b.clubMemberFirstName = a.firstName, b.clubMemberLastName = a.lastName), j && (j.firstPhone && (b.clubMemberPhone = j.firstPhone.number), j.civility && (b.clubMemberTitle = j.civility.label)), a.referralCode && (b.referralCode = a.referralCode), a.selectionIDs && (b.segments = {
                        selectionIds: a.selectionIDs
                    }), {
                        user: {
                            isLoggedIn: !0,
                            subscriptionUser: i,
                            clubMember: b
                        }
                    }
                }, function(a) {
                    return Promise.reject({
                        error: "Failed to assemble tracking object",
                        reason: a
                    })
                })
            }

            function y(a, b) {
                var c = A("user-full");
                if (c && !a) return Promise.resolve(c);
                var d = b || {
                    withMachines: !0
                };
                return napi.customer().read().then(function(a) {
                    return x(a, d).then(function(a) {
                        return B("user-full", a), a
                    })
                }, function(a) {
                    return C("user-full"), Promise.all([s(Q), s(S), s(R), Promise.reject(a)])
                })
            }

            function z(a, b) {
                var c = {
                    registration: {
                        step: "Machine info",
                        machineRegistrationLabel: b.machineRegistrationLabel,
                        machineOwner: !!a,
                        machineOwned: {
                            machineID: a,
                            machineName: b.machineName
                        },
                        contactPreferenceSelected: b.contactPreferenceSelected,
                        emailSubscriber: b.emailSubscriber,
                        preferredTechnology: b.preferredTechnology
                    }
                };
                return c
            }

            function A(a) {
                return O.get(U + "-" + a)
            }

            function B(a, b) {
                return O.set(U + "-" + a, b)
            }

            function C(a) {
                return O.remove(U + "-" + a)
            }

            function D() {
                C("user-full")
            }

            function E(a) {
                if (!$(a.parentElementSelector).length) return [];
                var b = $(a.parentElementSelector).find(":checked");
                return $.map(b, function(b) {
                    return b.getAttribute(a.attributeName)
                })
            }

            function F(a, b) {
                return b.forEach(function(b) {
                    a[b.dataAttribute] = E(b)
                }), a
            }

            function G(a) {
                var b = A(T) || {};
                a && (b = $.extend(b, a)), B(T, b)
            }

            function H() {
                C(T)
            }

            function I(a) {
                var b = a.cartLines;
                if (a.containSubscription = !1, b && b.subscription) {
                    var c, d = b.subscription,
                        e = a.cart ? a.cart : a.transaction;
                    for (c = 0; c < b.cartLines.length; c++) b.cartLines[c].legacyId === d.invoicingProductCode && (d.price = b.cartLines[c].unitPrice);
                    e.item.map(function(b) {
                        return b.productInfo.productLocalSKU === d.invoicingProductCode ? (a.containSubscription = !0, b.associateSubscription = d) : b.associateSubscription = {
                            subscriptionCategory: d.subscriptionCategory,
                            price: d.price
                        }, b
                    })
                }
                return a
            }

            function J(a) {
                var b = a.cartLines;
                a.subscription = a.subscription || {};
                var c;
                for (c = 0; c < b.length; c++)
                    if (b[c].legacyId === a.subscription.invoicingProductCode) return b[c].unitPrice
            }
            var K = "ProductCategory",
                L = "bundle",
                M = "single",
                N = "en",
                O = storageWrapper(window.sessionStorage, JSON.stringify, JSON.parse),
                P = 120,
                Q = "customerAddressesCache",
                R = "customerMachinesCache",
                S = "leClubCache",
                T = "registrationData",
                U = "trackingHelper";
            return {
                customerTrackingData: y,
                isDefaultAddress: b,
                getCartChanges: n,
                getCartLineChangesByLegacyId: o,
                getMainAddress: d,
                getMachineTrackingData: f,
                getPadlCartUpdateItem: j,
                getPadlCartUpdateItemQuantity: h,
                getPadlCartUpdateItemSecondaryCategories: g,
                getTierTitleById: q,
                trackCartUpdate: m,
                wrapCartUpdate: p,
                getRegistrationMachineTrackingData: z,
                getStoredEventData: A,
                setStoredEventData: B,
                removeStoredEventData: C,
                clearUserData: D,
                extendTrackedData: F,
                storeRegistrationData: G,
                clearRegistrationData: H,
                getAssociateSubscriptionWithProduct: I,
                getSubscriptionFeeFromCartLines: J
            }
        }();
        "undefined" != typeof a && a.exports && (a.exports = c)
    }, function(a, b) {
        var c = function() {
            function a(a, c) {
                var d = trackingHelper.getAssociateSubscriptionWithProduct(a),
                    e = d.transaction,
                    f = padl.user ? padl.user : {},
                    g = padl.page ? padl.page.pageInfo : {},
                    h = f.clubMember ? f.clubMember : {},
                    i = h.memberPreferences ? h.memberPreferences : {},
                    j = e.attributes.deliveryOptions || {},
                    k = {};
                return e.standingOrderFrequency ? standingOrdersHelper.getGtmSOComplete(a, c) : (k = {
                    event: "transaction",
                    currencyCode: e.total.currency,
                    transactionTotal: e.total.price.transactionTotal,
                    userCreditAmountUsed: sharedHelpers.getValueOrEmptyString(e.total.userCredit),
                    newClient: sharedHelpers.getBooleanAsString(e.newClient),
                    clubMemberID: sharedHelpers.getValueOrEmptyString(h.clubMemberID),
                    subscriptionUser: f.subscriptionUser,
                    discoveryOfferIncluded: sharedHelpers.getBooleanAsString(e.discoveryOfferIncluded),
                    easyOrderIncludedInPurchase: !1,
                    paymentWithClubCredit: e.total.userCredit > 0,
                    clubMemberStatus: sharedHelpers.getBooleanAsString(h.clubMemberStatus),
                    clubMemberLevel: sharedHelpers.getValueOrEmptyString(h.clubMemberLevel),
                    clubMemberTierID: sharedHelpers.getValueOrEmptyString(h.clubMemberTierID),
                    clubMemberTitle: sharedHelpers.getValueOrEmptyString(h.clubMemberTitle),
                    clubMemberLoginStatus: sharedHelpers.getValueOrEmptyString(h.clubMemberStatus),
                    machineOwner: sharedHelpers.getBooleanAsString(i.machineOwner),
                    machineOwned: i.machineOwned,
                    preferredTechnology: sharedHelpers.getValueOrEmptyString(i.preferredTechnology),
                    emailSubscriber: h.emailSubscriber,
                    contactPreferenceSelected: h.contactPreferenceSelected,
                    formFactor: sharedHelpers.getValueOrEmptyString(g.formFactor),
                    device: sharedHelpers.getValueOrEmptyString(c.deviceType),
                    subscriptionIncludedInOrder: !1,
                    ecommerce: {
                        purchase: {
                            actionField: {
                                id: e.transactionID,
                                affiliation: "Nespresso Online Store",
                                revenue: e.total.price.transactionSubtotal,
                                tax: sharedHelpers.getValueOrEmptyString(e.total.price.taxTotalAmount),
                                shipping: sharedHelpers.getValueOrEmptyString(e.total.price.shippingFees),
                                clubActionID: sharedHelpers.getValuesFromArray(e.attributes.clubActionID, sharedHelpers.eventSeparator),
                                clubActionTotalAmount: e.total.clubActionTotalAmount,
                                coupon: sharedHelpers.getValueOrEmptyString(e.attributes.coupon.code),
                                rebateAmount: e.total.rebateAmount,
                                shippingAddressCity: e.profile.shippingAddress.saCity,
                                shippingAddressState: sharedHelpers.getValueOrEmptyString(e.profile.shippingAddress.saStateProvince),
                                shippingAddressCountry: e.profile.shippingAddress.saCountry,
                                billingAddressCity: e.profile.billingAddress.baCity,
                                billingAddressState: sharedHelpers.getValueOrEmptyString(e.profile.billingAddress.baStateProvince),
                                billingAddressCountry: e.profile.billingAddress.baCountry,
                                checkoutMainPaymentMethod: e.attributes.mainPaymentMethod,
                                checkoutPaymentMethods: sharedHelpers.getIdsFromPaymentMethods(e.attributes.paymentMethods),
                                checkoutShippingMethodID: e.attributes.shippingMethodID,
                                deliveryOption_Priority: sharedHelpers.getValueOrEmptyString(j.priority),
                                deliveryOption_Signature: sharedHelpers.getValueOrEmptyString(j.signature),
                                deliveryOption_Recycling: sharedHelpers.getValueOrEmptyString(j.recycling)
                            },
                            products: productHelper.getProducts(e.item, productHelper.extendGtmProductForTransaction)
                        }
                    }
                }, b(k, a))
            }

            function b(a, b) {
                var c = trackingHelper.getAssociateSubscriptionWithProduct(b),
                    d = c.cartLines ? c.cartLines.subscription : null,
                    e = d && !dataArrange.isEmptyObject(d),
                    f = c.easyOrder;
                if (f && f.easyOrderIncludedInPurchase && (a.easyOrderIncludedInPurchase = !0, a.standingOrderType = "New - From Scratch - Subscription Standard Checkout Process", a.standingOrderFunnelType = "Subscription Standard Checkout Flow", a.standingOrderFrequency = f.easyOrderFrequency), e) {
                    var g = trackingHelper.getSubscriptionFeeFromCartLines(b.cartLines);
                    a.subscriptionIncludedInOrder = !0, a.monthlySubscriptionAmount = g, a.subscriptionCategory = d.subscriptionCategory, a.monthlySubscriptionAnnualValue = g, a.totalSubscriptionAnnualValue = 12 * g, a.ecommerce.purchase.subscriptionProductDetails = {
                        subscriptionName: "Subscription Fee - " + d.profileId,
                        subscriptionid: d.id,
                        subscriptionPrice: g,
                        subscriptionCategory: d.subscriptionCategory
                    }
                }
                return a
            }

            function c(a) {
                function b(b) {
                    e = {
                        clubActionId: a.transaction.attributes.clubActionID[0]
                    }, d = napi.catalog().getProduct(f[b].productInfo.productLocalSKU, e).then(function(c) {
                        var d = "giftcards";
                        return c.rootCategory === d ? a.transaction.item[b].price.productPrice = f[b].price.productPrice : a.transaction.item[b].price.productPrice = c.price, productHelper.isDiscoveryOffer(c.id, a.transaction.attributes.clubActionID)
                    }), g.push(d)
                }
                var c, d, e, f = a.transaction.item,
                    g = [],
                    h = f.length;
                for (c = 0; c < h; c++) b(c);
                return Promise.all(g).then(function(b) {
                    var d = !1;
                    for (c = 0, h = b.length; c < h; c++) a.transaction.item[c].isDiscoveryOfferItem = b[c], b[c] && (d = !0);
                    return a.transaction.discoveryOfferIncluded = d, a
                })
            }

            function d(b, c) {
                var d = a(b, c);
                return d.event = "customTransaction", d
            }

            function e(a, b) {
                var c = padl.page ? padl.page.pageInfo : {},
                    d = a.cart,
                    e = d.item,
                    f = [],
                    g = {},
                    h = padl.user ? padl.user : {},
                    i = h.clubMember ? h.clubMember : {},
                    j = i.memberPreferences ? i.memberPreferences : {};
                g = {
                    event: "transaction",
                    currencyCode: a.currency,
                    transactionTotal: a.cartTotal,
                    userCreditAmountUsed: "",
                    newClient: "false",
                    subscriptionUser: !1,
                    guestCheckoutOption: "TRUE",
                    guestOrder: "TRUE",
                    discoveryOfferIncluded: "FALSE",
                    easyOrderIncludedInPurchase: !1,
                    paymentWithClubCredit: !1,
                    clubMemberStatus: sharedHelpers.getBooleanAsString(i.clubMemberStatus),
                    clubMemberLevel: sharedHelpers.getValueOrEmptyString(i.clubMemberLevel),
                    clubMemberTierID: sharedHelpers.getValueOrEmptyString(i.clubMemberID),
                    clubMemberTitle: sharedHelpers.getValueOrEmptyString(i.clubMemberTitle),
                    clubMemberLoginStatus: i.clubMemberID ? "True" : "False",
                    machineOwner: sharedHelpers.getBooleanAsString(j.machineOwner),
                    machineOwned: sharedHelpers.getValueOrEmptyString(j.machineOwned),
                    preferredTechnology: sharedHelpers.getValueOrEmptyString(j.preferredTechnology),
                    emailSubscriber: sharedHelpers.getValueOrEmptyString(i.emailSubscriber),
                    contactPreferenceSelected: "",
                    formFactor: sharedHelpers.getValueOrEmptyString(c.formFactor),
                    device: sharedHelpers.getValueOrEmptyString(b.deviceType),
                    subscriptionIncludedInOrder: !1,
                    guestCheckoutAccountOption: a.guestCheckoutAccountOption,
                    ecommerce: {
                        purchase: {
                            actionField: {
                                id: a.orderId,
                                affiliation: "Nespresso Online Store",
                                revenue: a.cartTotal,
                                tax: sharedHelpers.getValueOrEmptyString(a.tax),
                                shipping: sharedHelpers.getValueOrEmptyString(a.shippingCost),
                                clubActionID: sharedHelpers.getValuesFromArray(d.attributes.clubActionID, sharedHelpers.eventSeparator),
                                clubActionTotalAmount: a.cartTotal,
                                coupon: "",
                                rebateAmount: "",
                                shippingAddressCity: sharedHelpers.getValueOrEmptyString(d.profile.shippingAddress.saCity),
                                shippingAddressState: sharedHelpers.getValueOrEmptyString(d.profile.shippingAddress.saStateProvince),
                                shippingAddressCountry: sharedHelpers.getValueOrEmptyString(d.profile.shippingAddress.saCountry),
                                ShippingAdressPostalCode: sharedHelpers.getValueOrEmptyString(d.profile.shippingAddress.saPostalCode),
                                billingAddressCity: sharedHelpers.getValueOrEmptyString(d.profile.billingAddress.baCity),
                                billingAddressState: sharedHelpers.getValueOrEmptyString(d.profile.billingAddress.baStateProvince),
                                billingAddressCountry: sharedHelpers.getValueOrEmptyString(d.profile.billingAddress.baCountry),
                                BillingAdressPostalCode: sharedHelpers.getValueOrEmptyString(d.profile.billingAddress.baPostalCode),
                                checkoutMainPaymentMethod: sharedHelpers.getValueOrEmptyString(d.attributes.mainPaymentMethod),
                                checkoutPaymentMethods: sharedHelpers.getValueOrEmptyString(d.attributes.paymentMethods),
                                checkoutShippingMethodID: sharedHelpers.getValueOrEmptyString(d.attributes.shippingMethodID),
                                deliveryOption_Priority: sharedHelpers.getValueOrEmptyString(d.attributes.deliveryOptions.priority),
                                deliveryOption_Signature: sharedHelpers.getValueOrEmptyString(d.attributes.deliveryOptions.signature),
                                deliveryOption_Recycling: sharedHelpers.getValueOrEmptyString(d.attributes.deliveryOptions.recycling)
                            },
                            products: productHelper.getProducts(d.item, productHelper.extendGtmProductForCheckoutSummary)
                        }
                    }
                };
                for (var k = 0; k < e.length; k++) {
                    var l = napi.catalog().getProduct(e[k].productInfo.productLocalSKU, {
                        clubActionId: "",
                        language: "en"
                    }).then(function(a) {
                        return productHelper.isDiscoveryOffer(a.id, d.attributes.clubActionID).then(function(a) {
                            return a
                        })
                    });
                    f.push(l)
                }
                return Promise.all(f).then(function(a) {
                    for (k = 0, length = a.length; k < length; k++)
                        if (a[k]) {
                            g.discoveryOfferIncluded = "TRUE";
                            break
                        }
                    return g
                })
            }

            function f(a) {
                return {
                    saCity: a.city,
                    saCountry: a.country,
                    saLine1: a.addressLine1,
                    saLine2: a.addressLine2,
                    saPostalCode: a.zipCode,
                    saStateProvince: a.region
                }
            }

            function g(a) {
                return {
                    baCity: a.city,
                    baCountry: a.country,
                    baLine1: a.addressLine1,
                    baLine2: a.addressLine2,
                    baPostalCode: a.zipCode,
                    baStateProvince: a.region
                }
            }

            function h(a) {
                return a ? napi.data().transaction().setOrder(a) : Promise.reject("TransactionEvent: Invalid data structure passed to the default event")
            }
            return {
                getTransactionDataForGTM: a,
                getTransactionDataForPADL: c,
                getCustomTransactionDataForGTM: d,
                getShippingAddress: f,
                getBillingAddress: g,
                getGuestCheckoutTransactionDataForGTM: e,
                track: h
            }
        }();
        "undefined" != typeof a && a.exports && (a.exports = c)
    }, function(a, b) {
        var c = function() {
            function a(a) {
                var b = a.discoveryOffer,
                    c = b.products,
                    d = {
                        event: i,
                        eventAction: sharedHelpers.getPropretyOrEmptyString(b, "action"),
                        eventLabel: sharedHelpers.getPropretyOrEmptyString(b, "label"),
                        ecommerce: {
                            impressions: []
                        }
                    };
                return h(c, b.clubActionId).then(function(a) {
                    return d.ecommerce.impressions = a, d
                }, function() {
                    return d
                })
            }

            function b(a) {
                return {
                    event: i,
                    eventAction: sharedHelpers.getPropretyOrEmptyString(a, "action"),
                    eventLabel: sharedHelpers.getPropretyOrEmptyString(a, "label")
                }
            }

            function c(a) {
                return {
                    event: i,
                    eventAction: sharedHelpers.getPropretyOrEmptyString(a, "action")
                }
            }

            function d(a) {
                var b = {
                    event: i,
                    eventAction: sharedHelpers.getPropretyOrEmptyString(a, "action"),
                    eventLabel: sharedHelpers.getPropretyOrEmptyString(a, "label"),
                    ecommerce: {
                        click: {
                            actionField: {
                                list: a.products[0].list
                            },
                            products: []
                        }
                    }
                };
                return h(a.products, a.clubActionId).then(function(a) {
                    return b.ecommerce.click.products = a, b
                }, function() {
                    return b
                })
            }

            function e(a) {
                return {
                    event: i,
                    eventAction: "Discovery Offer - Add to Cart",
                    eventLabel: sharedHelpers.getPropretyOrEmptyString(a, "label"),
                    currencyCode: padl.app.currency,
                    ecommerce: {
                        add: {
                            actionField: {},
                            products: productHelper.getProducts(a.item, productHelper.extendGtmProductForAddToCart)
                        }
                    }
                }
            }

            function f(a, b, c, d) {
                return d ? g(a, b, d).then(function(a) {
                    return Promise.all([trackingHelper.getPadlCartUpdateItem({
                        product: a.packProduct,
                        quantityDifference: 1
                    }), trackingHelper.getPadlCartUpdateItem({
                        product: a.giftProduct,
                        quantityDifference: 1
                    })]).then(function(a) {
                        var b = {
                            cartUpdates: {
                                item: [],
                                label: c
                            }
                        };
                        return b.cartUpdates.item = a.map(function(a) {
                            return a.isDiscoveryOfferItem = !0, a
                        }), b
                    })
                }) : Promise.reject("Missing club action id")
            }

            function g(a, b, c) {
                var d = {};
                return c && (d = {
                    clubActionId: c
                }), Promise.all([napi.catalog().getProduct(a, d), napi.catalog().getProduct(b, d)]).then(function(a) {
                    var b = a.shift() || [],
                        c = a.shift() || [];
                    return {
                        packProduct: b,
                        giftProduct: c
                    }
                })
            }

            function h(a, b) {
                function c(a) {
                    return a.list = i[a.legacyId].list, a.position = i[a.legacyId].position, productHelper.getPadlProductModel(a)
                }
                var d, e, f, g = {},
                    h = [],
                    i = [],
                    j = [];
                for (b && (g = {
                        clubActionId: b
                    }), f = 0; f < a.length; f++) d = a[f].code, i[d] = a[f], e = napi.catalog().getProduct(d, g).then(c), h.push(e);
                return promiseHelper.processPromises(h).then(function(a) {
                    for (f = 0; f < a.length; f++) a[f].isDiscoveryOfferItem = !0, j.push(productHelper.getBaseGTMProduct(a[f]));
                    return j
                }, function() {
                    return j
                })
            }
            var i = "discoveryOffer";
            return {
                getPageView: a,
                getDetailPack: b,
                getNotInterested: c,
                getOfferSelected: d,
                getCartDetail: f,
                getAddToBasket: e
            }
        }();
        "undefined" != typeof a && a.exports && (a.exports = c)
    }, function(a, b) {
        var c = function() {
            function a(a) {
                var b = padl.app,
                    c = a.cart,
                    d = c.item,
                    e = {
                        event: "checkout",
                        currencyCode: b.currency,
                        standingOrder: "FALSE",
                        guestCheckoutOption: "TRUE",
                        discoveryOfferIncluded: "FALSE",
                        guestOrder: "TRUE",
                        ecommerce: {
                            checkout: {
                                actionField: {
                                    step: a.step,
                                    checkoutStepName: a.stepName,
                                    clubActionID: sharedHelpers.getValuesFromArray(c.attributes.clubActionID, sharedHelpers.eventSeparator),
                                    cartTotal: a.cartTotal,
                                    shippingAddressCity: c.profile.shippingAddress.saCity,
                                    shippingAddressState: c.profile.shippingAddress.saStateProvince,
                                    shippingAddressCountry: c.profile.shippingAddress.saCountry,
                                    shippingAddressPostalCode: c.profile.shippingAddress.saPostalCode,
                                    billingAddressCity: c.profile.billingAddress.baCity,
                                    billingAddressState: c.profile.billingAddress.baStateProvince,
                                    billingAddressCountry: c.profile.billingAddress.baCountry,
                                    billingAddressPostalCode: c.profile.billingAddress.baPostalCode,
                                    checkoutMainPaymentMethod: c.attributes.mainPaymentMethod,
                                    checkoutPaymentMethods: c.attributes.paymentMethods,
                                    checkoutShippingMethodID: c.attributes.shippingMethodID,
                                    deliveryOption_Priority: c.attributes.deliveryOptions.priority,
                                    deliveryOption_Signature: c.attributes.deliveryOptions.signature,
                                    deliveryOption_Recycling: c.attributes.deliveryOptions.recycling
                                },
                                products: productHelper.getProducts(c.item, productHelper.extendGtmProductForCheckoutSummary)
                            }
                        }
                    },
                    f = [],
                    g = "en",
                    h = {
                        clubActionId: a.cart.attributes.clubActionID[0],
                        language: g
                    };
                a.guestCheckoutAccountOption && (e.guestCheckoutAccountOption = a.guestCheckoutAccountOption), a.guestCheckoutAccountFeature && (e.guestCheckoutAccountFeature = a.guestCheckoutAccountFeature);
                for (var i = 0; i < d.length; i++) {
                    var j = napi.catalog().getProduct(d[i].productInfo.productLocalSKU, h).then(function(a) {
                        return productHelper.isDiscoveryOffer(a.id, c.attributes.clubActionID).then(function(a) {
                            return a
                        })
                    });
                    f.push(j)
                }
                return Promise.all(f).then(function(a) {
                    for (i = 0, length = a.length; i < length; i++)
                        if (a[i]) {
                            e.discoveryOfferIncluded = "TRUE";
                            break
                        }
                    return e
                })
            }

            function b(a) {
                return a ? napi.data().checkout().setGuestCheckout(a) : Promise.reject("guestCheckout: Invalid data structure passed to the default event")
            }
            return {
                getGuestCheckoutDataForGTM: a,
                track: b
            }
        }();
        "undefined" != typeof a && a.exports && (a.exports = c)
    }, function(a, b) {
        var c = function() {
            function a(a) {
                var b = window.padl.page.pageInfo,
                    c = b && b.breadcrumbUID.toLowerCase().indexOf("checkout") !== -1 ? "checkout" : "easy-order",
                    d = {
                        event: "event_virtualPageView",
                        pageTechnology: "Pro",
                        segmentBusiness: "B2B"
                    };
                return "MYCONTACTS" === a.page ? (d.pageName = "my-account-" + a.pageName, d.breadcrumbUID = "my-account:::my-account-" + a.breadcrumbUID, d.pageType = "My account") : (d.pageName = c + "-" + a.step + a.action, d.breadcrumbUID = c + ":::" + c + "-" + a.step + a.action, d.pageType = "checkout" === c ? "Checkout" : "Easy Order", d.pageCategory = "", d.pageSubCategory = ""), d
            }

            function b(a) {
                return a ? napi.data().checkout().setMultipleContacts(a) : Promise.reject("multipleContacts: Invalid data structure passed to the default event")
            }
            return {
                getDataForGTM: a,
                track: b
            }
        }();
        "undefined" != typeof a && a.exports && (a.exports = c)
    }]),
    function(a, b, c) {
        var d = a(document);
        d.on("click", "a.track-promotion-click, .track-promotion-click a", function() {
            var b = a(this),
                d = this;
            b.hasClass("track-promotion-click") || (b = b.parents(".track-promotion-click"), d = b[0]), c.trackPromotionClick(g(d, "link"))
        }), d.ready(function() {
            e(), d.one("promotionsUpdated.padl", f).on("promotionsUpdated.padl", e).on("promotionsUpdated.padl", c.trackImpressionOnScroll), a(".track-promotion-impression").length && d.trigger("promotionsUpdated.padl")
        }), d.on("track", function(a, b) {
            var d = g(b.slideItem);
            c.trackPromotionSlide(d, b.autoTriggered)
        });

        function e() {
            var b;
            dataArrange.forEach(padlPromotions.promotions, function(c, d) {
                b = a("#" + d), b.length && (h(b.prev(), c), b.detach())
            })
        }

        function f() {
            c.setupImpressions(function() {
                var b, c = {};
                return a(".track-promotion-impression").each(function(a, d) {
                    b = d.getAttribute("data-promotion-item-id"), b && (c[b] = g(d))
                }), c
            })
        }

        function g(a, b) {
            var c = b ? "data-" + b : "data-promotion";
            return {
                id: a.getAttribute(c + "-item-id"),
                name: a.getAttribute(c + "-name"),
                creative: a.getAttribute(c + "-creative"),
                position: a.getAttribute(c + "-position")
            }
        }

        function h(a, b) {
            var c = b.data,
                d = b.link;
            c && a.addClass("track-promotion-impression").attr({
                "data-promotion-item-id": c.id,
                "data-promotion-name": c.name,
                "data-promotion-creative": c.creative,
                "data-promotion-position": c.position
            }), d && a.addClass("track-promotion-click").attr({
                "data-link-item-id": d.id,
                "data-link-name": d.name,
                "data-link-creative": d.creative,
                "data-link-position": d.position
            })
        }
    }(jQuery, trackingHelper, promotionHelper),
    function(a) {
        var b = a(document);
        b.on("discoveryOffer.pageView", function(a, b) {
            napi.data().discoveryOffer().navigate(b)
        }).on("discoveryOffer.tabSelect", function(a, b) {
            napi.data().discoveryOffer().navigate(b)
        }).on("discoveryOffer.openDetailPack", function(a, b) {
            napi.data().discoveryOffer().openDetailPack(b)
        }).on("discoveryOffer.closeDetailPack", function(a, b) {
            napi.data().discoveryOffer().closeDetailPack(b)
        }).on("discoveryOffer.notInterested", function(a, b) {
            napi.data().discoveryOffer().notInterested(b)
        }).on("discoveryOffer.offerSelected", function(a, b) {
            napi.data().discoveryOffer().offerSelected(b)
        }).on("discoveryOffer.addToBasket", function(a, b) {
            var c = b.products.packProductCode,
                d = b.products.giftProductCode,
                e = b.clubActionId,
                f = b.label;
            discoveryOfferHelper.getCartDetail(c, d, f, e).then(function(a) {
                napi.data().discoveryOffer().setCartUpdate(a)
            }, function(a) {
                log(a)
            })
        })
    }(jQuery),
    function(a, b, c) {
        var d = a(document);
        d.on("standingOrder.cartUpdated", function(a, d, e) {
            var f = d.quantity - e;
            0 !== f && b.getPadlCartUpdateItem({
                product: d,
                quantityDifference: f
            }).then(function(a) {
                var b = {
                    standingOrder: {
                        item: [a]
                    }
                };
                c.data().standingOrders().setCartUpdate(b)
            })
        }).on("standingOrder.stepHasChanged", function(a, b) {
            var e = {
                standingOrder: {
                    stepIndex: b
                }
            };
            c.data().standingOrders().setNavigationStep(e), d.trigger("productsUpdated.padl")
        }).on("standingOrder.complete", function(a, b) {
            standingOrdersHelper.getTransactionFromSOComplete(b).then(function(a) {
                c.data().transaction().setOrder(a)
            })
        })
    }(jQuery, trackingHelper, napi),
    function(a, b, c, d, e, f) {
        var g = a(document),
            h = e.getStoredEventData("registrationData"),
            i = "checkoutTrackingData",
            j = "recurringOrder.cartLinesPerTechnology",
            k = "recurringOrder.trackingHelper-easyOrderFrequency",
            l = "tracking-helper-subscription-breadcrumbUID",
            m = [{
                parentElementSelector: "#my-account-contact-methods",
                attributeName: "data-track-preference-name",
                dataAttribute: "contactPreferenceSelected"
            }, {
                parentElementSelector: "#my-alerts",
                attributeName: "data-track-alert-name",
                dataAttribute: "selectedAlerts"
            }, {
                parentElementSelector: "#CompanyType",
                attributeName: "data-track-company-type",
                dataAttribute: "companyType"
            }];

        function n(a, b) {
            a.data().on("*", function(a, c) {
                switch (a) {
                    case "navigation.pageView":
                        b.pushPageView(c);
                        break;
                    case "transaction.ready":
                        b.pushTransaction(c);
                        break;
                    case "checkout.step":
                        b.pushCheckout(c);
                        break;
                    case "checkout.multipleContacts":
                        b.pushMultipleContacts(c);
                        break;
                    case "user.login":
                        b.pushUserLogin(c);
                        break;
                    case "user.logout":
                        log("history removed");
                        break;
                    case "cart.update":
                        b.pushCartUpdates(c);
                        break;
                    case "product.detailView":
                        b.pushProductDetail(c);
                        break;
                    case "product.impressionsClick":
                        b.pushProductImpressionClick(c);
                        break;
                    case "product.impressionsScroll":
                        b.pushProductImpressionScroll(c);
                        break;
                    case "product.click":
                        b.pushProductClick(c);
                        break;
                    case "registration.step":
                        b.pushRegistrationStepDetail(c);
                        break;
                    case "registration.newAccount":
                        b.pushNewAccountCreationDetail(c);
                        break;
                    case "promotion.click":
                        b.pushPromotionClick(c);
                        break;
                    case "promotion.slide":
                        b.pushPromotionSlide(c);
                        break;
                    case "promotion.scroll":
                        b.pushPromotionImpressionScroll(c.promotion);
                        break;
                    case "customEvent.default":
                        b.pushCustomEvent(c.customEvent);
                        break;
                    case "standingOrders.navigation":
                        b.pushNavigationStep(c.standingOrder);
                        break;
                    case "standingOrders.cartUpdate":
                        b.pushStandingOrdersCartUpdate(c.standingOrder);
                        break;
                    case "discoveryOffer.pageView":
                        b.pushDiscoveryOfferPageView(c);
                        break;
                    case "discoveryOffer.openDetailPack":
                    case "discoveryOffer.closeDetailPack":
                        b.pushDiscoveryOfferDetailPack(c);
                        break;
                    case "discoveryOffer.notInterested":
                        b.pushDiscoveryOfferNotInterested(c);
                        break;
                    case "discoveryOffer.offerSelected":
                        b.pushDiscoveryOfferOfferSelected(c);
                        break;
                    case "discoveryOffer.cartUpdate":
                        b.pushDiscoveryOfferAddToBasket(c);
                        break;
                    case "checkout.guestCheckout":
                        b.pushGuestCheckout(c)
                }
            })
        }
        n(c, gtmListener(gtmDataObject, b));
        var o;
        o = formFactor && "function" == typeof formFactor.detect ? formFactor.detect() : "non-responsive", jQuery.extend(!0, b.page, {
            page: {
                pageInfo: {
                    formFactor: o
                }
            }
        }), jQuery.extend(!0, b.app, {
            app: {
                deviceType: platform.product || "Desktop"
            }
        });
        var p = d.extend(d.extend(b.app, b.page), b.pageInstanceID);
        p && c.data().navigation().navigate(p), b.transaction && transactionHelper.getTransactionDataForPADL(b.transaction).then(function(a) {
            var b = JSON.parse(e.getStoredEventData(i));
            jQuery.extend(!0, a, b), safeSessionStorage().removeItem(j), safeSessionStorage().removeItem(k), safeLocalStorage().removeItem(l), c.data().transaction().setOrder(a);
            var d = {
                category: "subscription_purchased",
                paymentWithClubCredit: a.transaction.total.userCredit > 0,
                subscriptionMonthlyFee: e.getSubscriptionFeeFromCartLines(a.cartLines),
                subscription: a.cartLines.subscription,
                easyOrder: a.easyOrder
            };
            customEventHelper.track(d)
        }), b.checkout && b.checkout.step && checkoutHelper.getCheckoutDataForPadl(d.copyObject(b.checkout.step)).then(function(a) {
            c.cart().read({
                forceFull: !0,
                expandProducts: !0
            }).then(function(b) {
                var f = safeSessionStorage().getItem(j),
                    g = {
                        cartLines: b,
                        easyOrder: {
                            easyOrderIncludedInPurchase: !d.isEmptyObject(f),
                            easyOrderFrequency: safeSessionStorage().getItem(k)
                        }
                    };
                b.subscription && (b.subscription.subscriptionCategory = safeLocalStorage().getItem(l)), jQuery.extend(!0, a, g), e.setStoredEventData(i, JSON.stringify(g)), c.data().checkout().setCheckoutData(a)
            })
        });

        function q() {
            f.setupImpressions(function() {
                var b = {};
                return a("[data-product-item-id]").each(function(a, c) {
                    b[c.getAttribute("data-product-item-id")] = {
                        code: c.getAttribute("data-product-code"),
                        list: c.getAttribute("data-product-section"),
                        position: d.normalizeInt(c.getAttribute("data-product-position")),
                        isSOItem: "true" === c.getAttribute("data-product-so"),
                        element: c
                    }
                }), b
            })
        }
        if (g.ready(function() {
                g.one("productsUpdated.padl", q).on("productsUpdated.padl", f.trackImpressionOnScroll).on("productsUpdatedRefreshCache.padl", f.trackImpressionOnScroll.bind(null, {
                    refreshCache: !0
                })), g.on("click.padl", function() {
                    g.one("productsUpdated.padl", f.trackImpressionOnClick)
                }), a("[data-product-item-id]").parents("[data-ng-repeat]").length || g.trigger("productsUpdated.padl")
            }), b.registration) {
            var r = b.registration.registration;
            window.onbeforeunload = function() {
                var b, c = a("[name=hasNumber]:checked"),
                    d = "true" === c.val() || !c.length,
                    f = ".contact-method__input",
                    g = "trackPreferenceName";
                a("#ta-registration-member-number").length && (b = !d, r.isNewCustomer = b), a(f).length && a(f + ":checked").each(function() {
                    r.contactPreferenceSelected.push(a(this).data(g))
                }), e.storeRegistrationData(r)
            }, c.data().registration().setRegistrationStepData(r)
        }!b.registration && h && (config.isRegistrationAlmostDonePage ? (c.data().registration().setNewAccountCreationData(h), e.clearRegistrationData()) : c.customer().read().then(function() {
            c.data().registration().setNewAccountCreationData(h), e.clearRegistrationData()
        })), g.on("click", ".clear-session-customer-cart", function() {
            c.data().user().setLogoutData()
        }), g.on("click", ".track-product-click", function() {
            var a = {
                code: this.getAttribute("data-product-code"),
                list: this.getAttribute("data-product-section"),
                position: d.normalizeInt(this.getAttribute("data-product-position"))
            };
            f.trackProductClick(a)
        }), g.on("click", ".track-click", function() {
            try {
                var a = this.getAttribute("data-track-click"),
                    b = JSON.parse(a);
                b && (b = e.extendTrackedData(b, m), customEventHelper.track(b))
            } catch (a) {
                log("Error occured while parsing track data as JSON.")
            }
        });
        var s = a(".order-summary__confirmation-button--bottom, .order-summary__confirmation-button--top");
        s.on("click", function() {
            var b = a(".order-summary__easyorder-contract-checkbox:checked");
            if (b.length) try {
                var c = this.getAttribute("data-track-easyOrder"),
                    d = JSON.parse(c);
                d && customEventHelper.track(d)
            } catch (a) {
                log("Error occured while parsing track data as JSON.")
            }
        });
        var t = a(".delivery-mode__continue-button");
        t.on("click", function() {
            var b = a(".delivery-method-selector:checked");
            if (b.length) try {
                var c = {
                    category: this.getAttribute("category"),
                    action: this.getAttribute("action"),
                    label: this.getAttribute("label") + " - " + b.attr("title") + " - " + this.getAttribute("subscriptionType")
                };
                c && this.getAttribute("category") && customEventHelper.track(c)
            } catch (a) {
                log("Error occured while parsing track data as JSON.")
            }
        }), g.on("trackCustom", function(a, b) {
            customEventHelper.track(b)
        })
    }(jQuery, window[config.padl.namespace].dataLayer, napi, dataArrange, trackingHelper, productHelper),
    function(a, b, c) {
        var d, e, f = b.documentElement,
            g = a.setTimeout,
            h = b.getElementsByTagName("script")[0],
            i = {}.toString,
            j = [],
            k = 0,
            l = function() {},
            m = "MozAppearance" in f.style,
            n = m && !!b.createRange().compareNode,
            o = n ? f : h.parentNode,
            p = a.opera && "[object Opera]" == i.call(a.opera),
            q = !!b.attachEvent && !p,
            r = "webkitAppearance" in f.style && !("async" in b.createElement("script")),
            s = m ? "object" : q || r ? "script" : "img",
            t = q ? "script" : r ? "img" : s,
            u = Array.isArray || function(a) {
                return "[object Array]" == i.call(a)
            },
            v = function(a) {
                return Object(a) === a
            },
            w = function(a) {
                return "string" == typeof a
            },
            x = function(a) {
                return "[object Function]" == i.call(a)
            },
            y = function() {
                h && h.parentNode || (h = b.getElementsByTagName("script")[0])
            },
            z = [],
            A = {},
            B = {
                timeout: function(a, b) {
                    return b.length && (a.timeout = b[0]), a
                }
            };

        function C(a) {
            return !a || "loaded" == a || "complete" == a || "uninitialized" == a
        }

        function D(a, c, d, f, i, j) {
            var k, m, n = b.createElement("script");
            f = f || e.errorTimeout, n.src = a;
            for (m in d) n.setAttribute(m, d[m]);
            c = j ? F : c || l, n.onreadystatechange = n.onload = function() {
                !k && C(n.readyState) && (k = 1, c(), n.onload = n.onreadystatechange = null)
            }, g(function() {
                k || (k = 1, c(1))
            }, f), y(), i ? n.onload() : h.parentNode.insertBefore(n, h)
        }

        function E(a, c, d, f, i, j) {
            var k, m = b.createElement("link");
            f = f || e.errorTimeout, c = j ? F : c || l, m.href = a, m.rel = "stylesheet", m.type = "text/css";
            for (k in d) m.setAttribute(k, d[k]);
            i || (y(), h.parentNode.insertBefore(m, h), g(c, 0))
        }

        function F() {
            var a = j.shift();
            k = 1, a ? a.t ? g(function() {
                ("c" == a.t ? e.injectCss : e.injectJs)(a.s, 0, a.a, a.x, a.e, 1)
            }, 0) : (a(), F()) : k = 0
        }

        function G(a, c, d, f, i, l, m) {
            m = m || e.errorTimeout;
            var p = b.createElement(a),
                q = 0,
                r = 0,
                s = {
                    t: d,
                    s: c,
                    e: i,
                    a: l,
                    x: m
                };
            1 === A[c] && (r = 1, A[c] = []);

            function t(b) {
                if (!q && C(p.readyState) && (s.r = q = 1, !k && F(), b)) {
                    "img" != a && g(function() {
                        o.removeChild(p)
                    }, 50);
                    for (var d in A[c]) A[c].hasOwnProperty(d) && A[c][d].onload();
                    p.onload = p.onreadystatechange = null
                }
            }
            "object" == a ? (p.data = c, p.setAttribute("type", "text/css")) : (p.src = c, p.type = a), p.width = p.height = "0", p.onerror = p.onload = p.onreadystatechange = function() {
                t.call(this, r)
            }, j.splice(f, 0, s), "img" != a && (r || 2 === A[c] ? (y(), o.insertBefore(p, n ? null : h), g(t, m)) : A[c].push(p))
        }

        function H(a, b, c, d, e) {
            return k = 0, b = b || "j", w(a) ? G("c" == b ? t : s, a, b, this.i++, c, d, e) : (j.splice(this.i++, 0, a), 1 == j.length && F()), this
        }

        function I() {
            var a = e;
            return a.loader = {
                load: H,
                i: 0
            }, a
        }
        e = function(a) {
            var b, d, f = this.yepnope.loader;

            function g(a) {
                var b, c, d, e = a.split("!"),
                    f = z.length,
                    g = e.pop(),
                    h = e.length,
                    i = {
                        url: g,
                        origUrl: g,
                        prefixes: e
                    };
                for (c = 0; c < h; c++) d = e[c].split("="), b = B[d.shift()], b && (i = b(i, d));
                for (c = 0; c < f; c++) i = z[c](i);
                return i
            }

            function h(a) {
                var b = a.split("?")[0];
                return b.substr(b.lastIndexOf(".") + 1)
            }

            function i(a, b, d, e, f) {
                var i = g(a),
                    j = i.autoCallback;
                h(i.url);
                if (!i.bypass) return b && (b = x(b) ? b : b[a] || b[e] || b[a.split("/").pop().split("?")[0]]), i.instead ? i.instead(a, b, d, e, f) : (A[i.url] && i.reexecute !== !0 ? i.noexec = !0 : A[i.url] = 1, a && d.load(i.url, i.forceCSS || !i.forceJS && "css" == h(i.url) ? "c" : c, i.noexec, i.attrs, i.timeout), (x(b) || x(j)) && d.load(function() {
                    I(), b && b(i.origUrl, f, e), j && j(i.origUrl, f, e), A[i.url] = 2
                }), void 0)
            }

            function j(a, b) {
                var c, d, e = !!a.test,
                    f = e ? a.yep : a.nope,
                    g = a.load || a.both,
                    h = a.callback || l,
                    j = h,
                    k = a.complete || l;

                function m(a, f) {
                    if ("" === a || a) {
                        if (w(a)) f || (h = function() {
                            var a = [].slice.call(arguments);
                            j.apply(this, a), k()
                        }), i(a, h, b, 0, e);
                        else if (v(a)) {
                            c = function() {
                                var b, c = 0;
                                for (b in a) a.hasOwnProperty(b) && c++;
                                return c
                            }();
                            for (d in a) a.hasOwnProperty(d) && (f || --c || (x(h) ? h = function() {
                                var a = [].slice.call(arguments);
                                j.apply(this, a), k()
                            } : h[d] = function(a) {
                                return function() {
                                    var b = [].slice.call(arguments);
                                    a && a.apply(this, b), k()
                                }
                            }(j[d])), i(a[d], h, b, d, e))
                        }
                    } else !f && k()
                }
                m(f, !!g || !!a.complete), g && m(g), !g && !!a.complete && m("")
            }
            if (w(a)) i(a, 0, f, 0);
            else if (u(a))
                for (b = 0; b < a.length; b++) d = a[b], w(d) ? i(d, 0, f, 0) : u(d) ? e(d) : v(d) && j(d, f);
            else v(a) && j(a, f)
        }, e.addPrefix = function(a, b) {
            B[a] = b
        }, e.addFilter = function(a) {
            z.push(a)
        }, e.errorTimeout = 1e4, null == b.readyState && b.addEventListener && (b.readyState = "loading", b.addEventListener("DOMContentLoaded", d = function() {
            b.removeEventListener("DOMContentLoaded", d, 0), b.readyState = "complete"
        }, 0)), a.yepnope = I(), a.yepnope.executeStack = F, a.yepnope.injectJs = D, a.yepnope.injectCss = E
    }(this, document);
var passwordStrengthPlugin = function(a) {
    var b = {
            progressBar: ".progress-bar",
            tooltip: ".tooltip",
            rules: {
                minCharacters: 8,
                hasNumber: /\d+/
            }
        },
        c = {
            minCharacters: !1,
            hasNumber: !1,
            hasCapitalLetter: !1
        };
    a.fn.passwordStrength = function(c) {
        var g = a(this),
            h = a.extend(b, c),
            i = a(h.progressBar);
        if (g.length && i.length) {
            var j = h.rules,
                k = Object.keys(j).length,
                l = a(h.tooltip),
                m = function() {
                    var a = g.val();
                    if (i.removeClass("progress-bar-weak progress-bar-medium progress-bar-strong").find(".progress-bar__result-info, #a11y-review-password-error").html(""), a.length) {
                        var b = d(a, j);
                        e(b, k, g, i)
                    }
                    f(l)
                };
            config.callbacks.marketRead().then(function(b) {
                b.passwordShouldContainCapitalLetter && (j.hasCapitalLetter = /[A-Z]/, k++, a(".js-tooltip-content-list-hasCapitalLetter").append(config.labels.passwordStrength.containsCapital).removeClass("display-none")), m()
            }).catch(log), g.on("input", m)
        }
    };

    function d(a, b) {
        var d = 0;
        return a.length >= b.minCharacters && (d++, c.minCharacters = !0), a.match(b.hasNumber) && (d++, c.hasNumber = !0), b.hasCapitalLetter && a.match(b.hasCapitalLetter) && (d++, c.hasCapitalLetter = !0), d
    }

    function e(a, b, c, d) {
        var e = "medium",
            f = !1,
            g = config.labels.passwordStrength,
            h = "";
        a === b ? (e = "strong", f = !0) : (1 === a && 3 === b || 0 === a) && (e = "weak"), d.addClass("progress-bar-" + e).find(".progress-bar__result-info").html(g[e]), f || (h = dataArrange.messageFilter(g.a11yReviewPassword, g[e])), c.attr("aria-invalid", !f), d.find("#a11y-review-password-error").html(h)
    }

    function f(a) {
        for (var b in c) b && (a.find(".js-tooltip-content-list-" + b).toggleClass("validated", c[b]), c[b] = !1)
    }
    return {
        getValidatedRules: d
    }
}($ || jQuery);
"undefined" != typeof module && module.exports && (module.exports = passwordStrengthPlugin),
    function(a) {
        "function" == typeof define && define.amd ? define(["jquery"], a) : a(jQuery)
    }(function(a) {
        a.ui = a.ui || {};
        var b = (a.ui.version = "1.12.1", 0),
            c = Array.prototype.slice;
        a.cleanData = function(b) {
            return function(c) {
                var d, e, f;
                for (f = 0; null != (e = c[f]); f++) try {
                    d = a._data(e, "events"), d && d.remove && a(e).triggerHandler("remove")
                } catch (a) {}
                b(c)
            }
        }(a.cleanData), a.widget = function(b, c, d) {
            var e, f, g, h = {},
                i = b.split(".")[0];
            b = b.split(".")[1];
            var j = i + "-" + b;
            return d || (d = c, c = a.Widget), a.isArray(d) && (d = a.extend.apply(null, [{}].concat(d))), a.expr[":"][j.toLowerCase()] = function(b) {
                return !!a.data(b, j)
            }, a[i] = a[i] || {}, e = a[i][b], f = a[i][b] = function(a, b) {
                return this._createWidget ? void(arguments.length && this._createWidget(a, b)) : new f(a, b)
            }, a.extend(f, e, {
                version: d.version,
                _proto: a.extend({}, d),
                _childConstructors: []
            }), g = new c, g.options = a.widget.extend({}, g.options), a.each(d, function(b, d) {
                return a.isFunction(d) ? void(h[b] = function() {
                    function a() {
                        return c.prototype[b].apply(this, arguments)
                    }

                    function e(a) {
                        return c.prototype[b].apply(this, a)
                    }
                    return function() {
                        var b, c = this._super,
                            f = this._superApply;
                        return this._super = a, this._superApply = e, b = d.apply(this, arguments), this._super = c, this._superApply = f, b
                    }
                }()) : void(h[b] = d)
            }), f.prototype = a.widget.extend(g, {
                widgetEventPrefix: e ? g.widgetEventPrefix || b : b
            }, h, {
                constructor: f,
                namespace: i,
                widgetName: b,
                widgetFullName: j
            }), e ? (a.each(e._childConstructors, function(b, c) {
                var d = c.prototype;
                a.widget(d.namespace + "." + d.widgetName, f, c._proto)
            }), delete e._childConstructors) : c._childConstructors.push(f), a.widget.bridge(b, f), f
        }, a.widget.extend = function(b) {
            for (var d, e, f = c.call(arguments, 1), g = 0, h = f.length; g < h; g++)
                for (d in f[g]) e = f[g][d], f[g].hasOwnProperty(d) && void 0 !== e && (a.isPlainObject(e) ? b[d] = a.isPlainObject(b[d]) ? a.widget.extend({}, b[d], e) : a.widget.extend({}, e) : b[d] = e);
            return b
        }, a.widget.bridge = function(b, d) {
            var e = d.prototype.widgetFullName || b;
            a.fn[b] = function(f) {
                var g = "string" == typeof f,
                    h = c.call(arguments, 1),
                    i = this;
                return g ? this.length || "instance" !== f ? this.each(function() {
                    var c, d = a.data(this, e);
                    return "instance" === f ? (i = d, !1) : d ? a.isFunction(d[f]) && "_" !== f.charAt(0) ? (c = d[f].apply(d, h), c !== d && void 0 !== c ? (i = c && c.jquery ? i.pushStack(c.get()) : c, !1) : void 0) : a.error("no such method '" + f + "' for " + b + " widget instance") : a.error("cannot call methods on " + b + " prior to initialization; attempted to call method '" + f + "'")
                }) : i = void 0 : (h.length && (f = a.widget.extend.apply(null, [f].concat(h))), this.each(function() {
                    var b = a.data(this, e);
                    b ? (b.option(f || {}), b._init && b._init()) : a.data(this, e, new d(f, this))
                })), i
            }
        }, a.Widget = function() {}, a.Widget._childConstructors = [], a.Widget.prototype = {
            widgetName: "widget",
            widgetEventPrefix: "",
            defaultElement: "<div>",
            options: {
                classes: {},
                disabled: !1,
                create: null
            },
            _createWidget: function(c, d) {
                d = a(d || this.defaultElement || this)[0], this.element = a(d), this.uuid = b++, this.eventNamespace = "." + this.widgetName + this.uuid, this.bindings = a(), this.hoverable = a(), this.focusable = a(), this.classesElementLookup = {}, d !== this && (a.data(d, this.widgetFullName, this), this._on(!0, this.element, {
                    remove: function(a) {
                        a.target === d && this.destroy()
                    }
                }), this.document = a(d.style ? d.ownerDocument : d.document || d), this.window = a(this.document[0].defaultView || this.document[0].parentWindow)), this.options = a.widget.extend({}, this.options, this._getCreateOptions(), c), this._create(), this.options.disabled && this._setOptionDisabled(this.options.disabled), this._trigger("create", null, this._getCreateEventData()), this._init()
            },
            _getCreateOptions: function() {
                return {}
            },
            _getCreateEventData: a.noop,
            _create: a.noop,
            _init: a.noop,
            destroy: function() {
                var b = this;
                this._destroy(), a.each(this.classesElementLookup, function(a, c) {
                    b._removeClass(c, a)
                }), this.element.off(this.eventNamespace).removeData(this.widgetFullName), this.widget().off(this.eventNamespace).removeAttr("aria-disabled"), this.bindings.off(this.eventNamespace)
            },
            _destroy: a.noop,
            widget: function() {
                return this.element
            },
            option: function(b, c) {
                var d, e, f, g = b;
                if (0 === arguments.length) return a.widget.extend({}, this.options);
                if ("string" == typeof b)
                    if (g = {}, d = b.split("."), b = d.shift(), d.length) {
                        for (e = g[b] = a.widget.extend({}, this.options[b]), f = 0; f < d.length - 1; f++) e[d[f]] = e[d[f]] || {}, e = e[d[f]];
                        if (b = d.pop(), 1 === arguments.length) return void 0 === e[b] ? null : e[b];
                        e[b] = c
                    } else {
                        if (1 === arguments.length) return void 0 === this.options[b] ? null : this.options[b];
                        g[b] = c
                    }
                return this._setOptions(g), this
            },
            _setOptions: function(a) {
                var b;
                for (b in a) this._setOption(b, a[b]);
                return this
            },
            _setOption: function(a, b) {
                return "classes" === a && this._setOptionClasses(b), this.options[a] = b, "disabled" === a && this._setOptionDisabled(b), this
            },
            _setOptionClasses: function(b) {
                var c, d, e;
                for (c in b) e = this.classesElementLookup[c], b[c] !== this.options.classes[c] && e && e.length && (d = a(e.get()), this._removeClass(e, c), d.addClass(this._classes({
                    element: d,
                    keys: c,
                    classes: b,
                    add: !0
                })))
            },
            _setOptionDisabled: function(a) {
                this._toggleClass(this.widget(), this.widgetFullName + "-disabled", null, !!a), a && (this._removeClass(this.hoverable, null, "ui-state-hover"), this._removeClass(this.focusable, null, "ui-state-focus"))
            },
            enable: function() {
                return this._setOptions({
                    disabled: !1
                })
            },
            disable: function() {
                return this._setOptions({
                    disabled: !0
                })
            },
            _classes: function(b) {
                var c = [],
                    d = this;
                b = a.extend({
                    element: this.element,
                    classes: this.options.classes || {}
                }, b);

                function e(e, f) {
                    var g, h;
                    for (h = 0; h < e.length; h++) g = d.classesElementLookup[e[h]] || a(), g = a(b.add ? a.unique(g.get().concat(b.element.get())) : g.not(b.element).get()), d.classesElementLookup[e[h]] = g, c.push(e[h]), f && b.classes[e[h]] && c.push(b.classes[e[h]])
                }
                return this._on(b.element, {
                    remove: "_untrackClassesElement"
                }), b.keys && e(b.keys.match(/\S+/g) || [], !0), b.extra && e(b.extra.match(/\S+/g) || []), c.join(" ")
            },
            _untrackClassesElement: function(b) {
                var c = this;
                a.each(c.classesElementLookup, function(d, e) {
                    a.inArray(b.target, e) !== -1 && (c.classesElementLookup[d] = a(e.not(b.target).get()))
                })
            },
            _removeClass: function(a, b, c) {
                return this._toggleClass(a, b, c, !1)
            },
            _addClass: function(a, b, c) {
                return this._toggleClass(a, b, c, !0)
            },
            _toggleClass: function(a, b, c, d) {
                d = "boolean" == typeof d ? d : c;
                var e = "string" == typeof a || null === a,
                    f = {
                        extra: e ? b : c,
                        keys: e ? a : b,
                        element: e ? this.element : a,
                        add: d
                    };
                return f.element.toggleClass(this._classes(f), d), this
            },
            _on: function(b, c, d) {
                var e, f = this;
                "boolean" != typeof b && (d = c, c = b, b = !1), d ? (c = e = a(c), this.bindings = this.bindings.add(c)) : (d = c, c = this.element, e = this.widget()), a.each(d, function(d, g) {
                    function h() {
                        if (b || f.options.disabled !== !0 && !a(this).hasClass("ui-state-disabled")) return ("string" == typeof g ? f[g] : g).apply(f, arguments)
                    }
                    "string" != typeof g && (h.guid = g.guid = g.guid || h.guid || a.guid++);
                    var i = d.match(/^([\w:-]*)\s*(.*)$/),
                        j = i[1] + f.eventNamespace,
                        k = i[2];
                    k ? e.on(j, k, h) : c.on(j, h)
                })
            },
            _off: function(b, c) {
                c = (c || "").split(" ").join(this.eventNamespace + " ") + this.eventNamespace, b.off(c).off(c), this.bindings = a(this.bindings.not(b).get()), this.focusable = a(this.focusable.not(b).get()), this.hoverable = a(this.hoverable.not(b).get())
            },
            _delay: function(a, b) {
                function c() {
                    return ("string" == typeof a ? d[a] : a).apply(d, arguments)
                }
                var d = this;
                return setTimeout(c, b || 0)
            },
            _hoverable: function(b) {
                this.hoverable = this.hoverable.add(b), this._on(b, {
                    mouseenter: function(b) {
                        this._addClass(a(b.currentTarget), null, "ui-state-hover")
                    },
                    mouseleave: function(b) {
                        this._removeClass(a(b.currentTarget), null, "ui-state-hover")
                    }
                })
            },
            _focusable: function(b) {
                this.focusable = this.focusable.add(b), this._on(b, {
                    focusin: function(b) {
                        this._addClass(a(b.currentTarget), null, "ui-state-focus")
                    },
                    focusout: function(b) {
                        this._removeClass(a(b.currentTarget), null, "ui-state-focus")
                    }
                })
            },
            _trigger: function(b, c, d) {
                var e, f, g = this.options[b];
                if (d = d || {}, c = a.Event(c), c.type = (b === this.widgetEventPrefix ? b : this.widgetEventPrefix + b).toLowerCase(), c.target = this.element[0], f = c.originalEvent)
                    for (e in f) e in c || (c[e] = f[e]);
                return this.element.trigger(c, d), !(a.isFunction(g) && g.apply(this.element[0], [c].concat(d)) === !1 || c.isDefaultPrevented())
            }
        }, a.each({
            show: "fadeIn",
            hide: "fadeOut"
        }, function(b, c) {
            a.Widget.prototype["_" + b] = function(d, e, f) {
                "string" == typeof e && (e = {
                    effect: e
                });
                var g, h = e ? e === !0 || "number" == typeof e ? c : e.effect || c : b;
                e = e || {}, "number" == typeof e && (e = {
                    duration: e
                }), g = !a.isEmptyObject(e), e.complete = f, e.delay && d.delay(e.delay), g && a.effects && a.effects.effect[h] ? d[b](e) : h !== b && d[h] ? d[h](e.duration, e.easing, f) : d.queue(function(c) {
                    a(this)[b](), f && f.call(d[0]), c()
                })
            }
        });
        a.widget;
        ! function() {
            var b, c = Math.max,
                d = Math.abs,
                e = /left|center|right/,
                f = /top|center|bottom/,
                g = /[\+\-]\d+(\.[\d]+)?%?/,
                h = /^\w+/,
                i = /%$/,
                j = a.fn.position;

            function k(a, b, c) {
                return [parseFloat(a[0]) * (i.test(a[0]) ? b / 100 : 1), parseFloat(a[1]) * (i.test(a[1]) ? c / 100 : 1)]
            }

            function l(b, c) {
                return parseInt(a.css(b, c), 10) || 0
            }

            function m(b) {
                var c = b[0];
                return 9 === c.nodeType ? {
                    width: b.width(),
                    height: b.height(),
                    offset: {
                        top: 0,
                        left: 0
                    }
                } : a.isWindow(c) ? {
                    width: b.width(),
                    height: b.height(),
                    offset: {
                        top: b.scrollTop(),
                        left: b.scrollLeft()
                    }
                } : c.preventDefault ? {
                    width: 0,
                    height: 0,
                    offset: {
                        top: c.pageY,
                        left: c.pageX
                    }
                } : {
                    width: b.outerWidth(),
                    height: b.outerHeight(),
                    offset: b.offset()
                }
            }
            a.position = {
                scrollbarWidth: function() {
                    if (void 0 !== b) return b;
                    var c, d, e = a("<div style='display:block;position:absolute;width:50px;height:50px;overflow:hidden;'><div style='height:100px;width:auto;'></div></div>"),
                        f = e.children()[0];
                    return a("body").append(e), c = f.offsetWidth, e.css("overflow", "scroll"), d = f.offsetWidth, c === d && (d = e[0].clientWidth), e.remove(), b = c - d
                },
                getScrollInfo: function(b) {
                    var c = b.isWindow || b.isDocument ? "" : b.element.css("overflow-x"),
                        d = b.isWindow || b.isDocument ? "" : b.element.css("overflow-y"),
                        e = "scroll" === c || "auto" === c && b.width < b.element[0].scrollWidth,
                        f = "scroll" === d || "auto" === d && b.height < b.element[0].scrollHeight;
                    return {
                        width: f ? a.position.scrollbarWidth() : 0,
                        height: e ? a.position.scrollbarWidth() : 0
                    }
                },
                getWithinInfo: function(b) {
                    var c = a(b || window),
                        d = a.isWindow(c[0]),
                        e = !!c[0] && 9 === c[0].nodeType,
                        f = !d && !e;
                    return {
                        element: c,
                        isWindow: d,
                        isDocument: e,
                        offset: f ? a(b).offset() : {
                            left: 0,
                            top: 0
                        },
                        scrollLeft: c.scrollLeft(),
                        scrollTop: c.scrollTop(),
                        width: c.outerWidth(),
                        height: c.outerHeight()
                    }
                }
            }, a.fn.position = function(b) {
                if (!b || !b.of) return j.apply(this, arguments);
                b = a.extend({}, b);
                var i, n, o, p, q, r, s = a(b.of),
                    t = a.position.getWithinInfo(b.within),
                    u = a.position.getScrollInfo(t),
                    v = (b.collision || "flip").split(" "),
                    w = {};
                return r = m(s), s[0].preventDefault && (b.at = "left top"), n = r.width, o = r.height, p = r.offset, q = a.extend({}, p), a.each(["my", "at"], function() {
                    var a, c, d = (b[this] || "").split(" ");
                    1 === d.length && (d = e.test(d[0]) ? d.concat(["center"]) : f.test(d[0]) ? ["center"].concat(d) : ["center", "center"]), d[0] = e.test(d[0]) ? d[0] : "center", d[1] = f.test(d[1]) ? d[1] : "center", a = g.exec(d[0]), c = g.exec(d[1]), w[this] = [a ? a[0] : 0, c ? c[0] : 0], b[this] = [h.exec(d[0])[0], h.exec(d[1])[0]]
                }), 1 === v.length && (v[1] = v[0]), "right" === b.at[0] ? q.left += n : "center" === b.at[0] && (q.left += n / 2), "bottom" === b.at[1] ? q.top += o : "center" === b.at[1] && (q.top += o / 2), i = k(w.at, n, o), q.left += i[0], q.top += i[1], this.each(function() {
                    var e, f, g = a(this),
                        h = g.outerWidth(),
                        j = g.outerHeight(),
                        m = l(this, "marginLeft"),
                        r = l(this, "marginTop"),
                        x = h + m + l(this, "marginRight") + u.width,
                        y = j + r + l(this, "marginBottom") + u.height,
                        z = a.extend({}, q),
                        A = k(w.my, g.outerWidth(), g.outerHeight());
                    "right" === b.my[0] ? z.left -= h : "center" === b.my[0] && (z.left -= h / 2), "bottom" === b.my[1] ? z.top -= j : "center" === b.my[1] && (z.top -= j / 2), z.left += A[0], z.top += A[1], e = {
                        marginLeft: m,
                        marginTop: r
                    }, a.each(["left", "top"], function(c, d) {
                        a.ui.position[v[c]] && a.ui.position[v[c]][d](z, {
                            targetWidth: n,
                            targetHeight: o,
                            elemWidth: h,
                            elemHeight: j,
                            collisionPosition: e,
                            collisionWidth: x,
                            collisionHeight: y,
                            offset: [i[0] + A[0], i[1] + A[1]],
                            my: b.my,
                            at: b.at,
                            within: t,
                            elem: g
                        })
                    }), b.using && (f = function(a) {
                        var e = p.left - z.left,
                            f = e + n - h,
                            i = p.top - z.top,
                            k = i + o - j,
                            l = {
                                target: {
                                    element: s,
                                    left: p.left,
                                    top: p.top,
                                    width: n,
                                    height: o
                                },
                                element: {
                                    element: g,
                                    left: z.left,
                                    top: z.top,
                                    width: h,
                                    height: j
                                },
                                horizontal: f < 0 ? "left" : e > 0 ? "right" : "center",
                                vertical: k < 0 ? "top" : i > 0 ? "bottom" : "middle"
                            };
                        n < h && d(e + f) < n && (l.horizontal = "center"), o < j && d(i + k) < o && (l.vertical = "middle"), c(d(e), d(f)) > c(d(i), d(k)) ? l.important = "horizontal" : l.important = "vertical", b.using.call(this, a, l)
                    }), g.offset(a.extend(z, {
                        using: f
                    }))
                })
            }, a.ui.position = {
                fit: {
                    left: function(a, b) {
                        var d, e = b.within,
                            f = e.isWindow ? e.scrollLeft : e.offset.left,
                            g = e.width,
                            h = a.left - b.collisionPosition.marginLeft,
                            i = f - h,
                            j = h + b.collisionWidth - g - f;
                        b.collisionWidth > g ? i > 0 && j <= 0 ? (d = a.left + i + b.collisionWidth - g - f, a.left += i - d) : j > 0 && i <= 0 ? a.left = f : i > j ? a.left = f + g - b.collisionWidth : a.left = f : i > 0 ? a.left += i : j > 0 ? a.left -= j : a.left = c(a.left - h, a.left)
                    },
                    top: function(a, b) {
                        var d, e = b.within,
                            f = e.isWindow ? e.scrollTop : e.offset.top,
                            g = b.within.height,
                            h = a.top - b.collisionPosition.marginTop,
                            i = f - h,
                            j = h + b.collisionHeight - g - f;
                        b.collisionHeight > g ? i > 0 && j <= 0 ? (d = a.top + i + b.collisionHeight - g - f, a.top += i - d) : j > 0 && i <= 0 ? a.top = f : i > j ? a.top = f + g - b.collisionHeight : a.top = f : i > 0 ? a.top += i : j > 0 ? a.top -= j : a.top = c(a.top - h, a.top)
                    }
                },
                flip: {
                    left: function(a, b) {
                        var c, e, f = b.within,
                            g = f.offset.left + f.scrollLeft,
                            h = f.width,
                            i = f.isWindow ? f.scrollLeft : f.offset.left,
                            j = a.left - b.collisionPosition.marginLeft,
                            k = j - i,
                            l = j + b.collisionWidth - h - i,
                            m = "left" === b.my[0] ? -b.elemWidth : "right" === b.my[0] ? b.elemWidth : 0,
                            n = "left" === b.at[0] ? b.targetWidth : "right" === b.at[0] ? -b.targetWidth : 0,
                            o = -2 * b.offset[0];
                        k < 0 ? (c = a.left + m + n + o + b.collisionWidth - h - g, (c < 0 || c < d(k)) && (a.left += m + n + o)) : l > 0 && (e = a.left - b.collisionPosition.marginLeft + m + n + o - i, (e > 0 || d(e) < l) && (a.left += m + n + o))
                    },
                    top: function(a, b) {
                        var c, e, f = b.within,
                            g = f.offset.top + f.scrollTop,
                            h = f.height,
                            i = f.isWindow ? f.scrollTop : f.offset.top,
                            j = a.top - b.collisionPosition.marginTop,
                            k = j - i,
                            l = j + b.collisionHeight - h - i,
                            m = "top" === b.my[1],
                            n = m ? -b.elemHeight : "bottom" === b.my[1] ? b.elemHeight : 0,
                            o = "top" === b.at[1] ? b.targetHeight : "bottom" === b.at[1] ? -b.targetHeight : 0,
                            p = -2 * b.offset[1];
                        k < 0 ? (e = a.top + n + o + p + b.collisionHeight - h - g, (e < 0 || e < d(k)) && (a.top += n + o + p)) : l > 0 && (c = a.top - b.collisionPosition.marginTop + n + o + p - i, (c > 0 || d(c) < l) && (a.top += n + o + p))
                    }
                },
                flipfit: {
                    left: function() {
                        a.ui.position.flip.left.apply(this, arguments), a.ui.position.fit.left.apply(this, arguments)
                    },
                    top: function() {
                        a.ui.position.flip.top.apply(this, arguments), a.ui.position.fit.top.apply(this, arguments)
                    }
                }
            }
        }();
        a.ui.position, a.extend(a.expr[":"], {
            data: a.expr.createPseudo ? a.expr.createPseudo(function(b) {
                return function(c) {
                    return !!a.data(c, b)
                }
            }) : function(b, c, d) {
                return !!a.data(b, d[3])
            }
        }), a.fn.extend({
            disableSelection: function() {
                var a = "onselectstart" in document.createElement("div") ? "selectstart" : "mousedown";
                return function() {
                    return this.on(a + ".ui-disableSelection", function(a) {
                        a.preventDefault()
                    })
                }
            }(),
            enableSelection: function() {
                return this.off(".ui-disableSelection")
            }
        });
        a.ui.focusable = function(b, c) {
            var e, f, g, h, i, j = b.nodeName.toLowerCase();
            return "area" === j ? (e = b.parentNode, f = e.name, !(!b.href || !f || "map" !== e.nodeName.toLowerCase()) && (g = a("img[usemap='#" + f + "']"), g.length > 0 && g.is(":visible"))) : (/^(input|select|textarea|button|object)$/.test(j) ? (h = !b.disabled, h && (i = a(b).closest("fieldset")[0], i && (h = !i.disabled))) : h = "a" === j ? b.href || c : c, h && a(b).is(":visible") && d(a(b)))
        };

        function d(a) {
            for (var b = a.css("visibility");
                "inherit" === b;) a = a.parent(), b = a.css("visibility");
            return "hidden" !== b
        }
        a.extend(a.expr[":"], {
            focusable: function(b) {
                return a.ui.focusable(b, null != a.attr(b, "tabindex"))
            }
        });
        a.ui.focusable, a.fn.form = function() {
            return "string" == typeof this[0].form ? this.closest("form") : a(this[0].form)
        }, a.ui.formResetMixin = {
            _formResetHandler: function() {
                var b = a(this);
                setTimeout(function() {
                    var c = b.data("ui-form-reset-instances");
                    a.each(c, function() {
                        this.refresh()
                    })
                })
            },
            _bindFormResetHandler: function() {
                if (this.form = this.element.form(), this.form.length) {
                    var a = this.form.data("ui-form-reset-instances") || [];
                    a.length || this.form.on("reset.ui-form-reset", this._formResetHandler), a.push(this), this.form.data("ui-form-reset-instances", a);
                }
            },
            _unbindFormResetHandler: function() {
                if (this.form.length) {
                    var b = this.form.data("ui-form-reset-instances");
                    b.splice(a.inArray(this, b), 1), b.length ? this.form.data("ui-form-reset-instances", b) : this.form.removeData("ui-form-reset-instances").off("reset.ui-form-reset")
                }
            }
        };
        "1.7" === a.fn.jquery.substring(0, 3) && (a.each(["Width", "Height"], function(b, c) {
            var d = "Width" === c ? ["Left", "Right"] : ["Top", "Bottom"],
                e = c.toLowerCase(),
                f = {
                    innerWidth: a.fn.innerWidth,
                    innerHeight: a.fn.innerHeight,
                    outerWidth: a.fn.outerWidth,
                    outerHeight: a.fn.outerHeight
                };

            function g(b, c, e, f) {
                return a.each(d, function() {
                    c -= parseFloat(a.css(b, "padding" + this)) || 0, e && (c -= parseFloat(a.css(b, "border" + this + "Width")) || 0), f && (c -= parseFloat(a.css(b, "margin" + this)) || 0)
                }), c
            }
            a.fn["inner" + c] = function(b) {
                return void 0 === b ? f["inner" + c].call(this) : this.each(function() {
                    a(this).css(e, g(this, b) + "px")
                })
            }, a.fn["outer" + c] = function(b, d) {
                return "number" != typeof b ? f["outer" + c].call(this, b) : this.each(function() {
                    a(this).css(e, g(this, b, !0, d) + "px")
                })
            }
        }), a.fn.addBack = function(a) {
            return this.add(null == a ? this.prevObject : this.prevObject.filter(a))
        });
        var e = (a.ui.keyCode = {
            BACKSPACE: 8,
            COMMA: 188,
            DELETE: 46,
            DOWN: 40,
            END: 35,
            ENTER: 13,
            ESCAPE: 27,
            HOME: 36,
            LEFT: 37,
            PAGE_DOWN: 34,
            PAGE_UP: 33,
            PERIOD: 190,
            RIGHT: 39,
            SPACE: 32,
            TAB: 9,
            UP: 38
        }, a.ui.escapeSelector = function() {
            var a = /([!"#$%&'()*+,.\/:;<=>?@[\]^`{|}~])/g;
            return function(b) {
                return b.replace(a, "\\$1")
            }
        }(), a.fn.labels = function() {
            var b, c, d, e, f;
            return this[0].labels && this[0].labels.length ? this.pushStack(this[0].labels) : (e = this.eq(0).parents("label"), d = this.attr("id"), d && (b = this.eq(0).parents().last(), f = b.add(b.length ? b.siblings() : this.siblings()), c = "label[for='" + a.ui.escapeSelector(d) + "']", e = e.add(f.find(c).addBack(c))), this.pushStack(e))
        }, a.fn.scrollParent = function(b) {
            var c = this.css("position"),
                d = "absolute" === c,
                e = b ? /(auto|scroll|hidden)/ : /(auto|scroll)/,
                f = this.parents().filter(function() {
                    var b = a(this);
                    return (!d || "static" !== b.css("position")) && e.test(b.css("overflow") + b.css("overflow-y") + b.css("overflow-x"))
                }).eq(0);
            return "fixed" !== c && f.length ? f : a(this[0].ownerDocument || document)
        }, a.extend(a.expr[":"], {
            tabbable: function(b) {
                var c = a.attr(b, "tabindex"),
                    d = null != c;
                return (!d || c >= 0) && a.ui.focusable(b, d)
            }
        }), a.fn.extend({
            uniqueId: function() {
                var a = 0;
                return function() {
                    return this.each(function() {
                        this.id || (this.id = "ui-id-" + ++a)
                    })
                }
            }(),
            removeUniqueId: function() {
                return this.each(function() {
                    /^ui-id-\d+$/.test(this.id) && a(this).removeAttr("id")
                })
            }
        }), a.ui.ie = !!/msie [\w.]+/.exec(navigator.userAgent.toLowerCase()), !1);
        a(document).on("mouseup", function() {
            e = !1
        });
        a.widget("ui.mouse", {
            version: "1.12.1",
            options: {
                cancel: "input, textarea, button, select, option",
                distance: 1,
                delay: 0
            },
            _mouseInit: function() {
                var b = this;
                this.element.on("mousedown." + this.widgetName, function(a) {
                    return b._mouseDown(a)
                }).on("click." + this.widgetName, function(c) {
                    if (!0 === a.data(c.target, b.widgetName + ".preventClickEvent")) return a.removeData(c.target, b.widgetName + ".preventClickEvent"), c.stopImmediatePropagation(), !1
                }), this.started = !1
            },
            _mouseDestroy: function() {
                this.element.off("." + this.widgetName), this._mouseMoveDelegate && this.document.off("mousemove." + this.widgetName, this._mouseMoveDelegate).off("mouseup." + this.widgetName, this._mouseUpDelegate)
            },
            _mouseDown: function(b) {
                if (!e) {
                    this._mouseMoved = !1, this._mouseStarted && this._mouseUp(b), this._mouseDownEvent = b;
                    var c = this,
                        d = 1 === b.which,
                        f = !("string" != typeof this.options.cancel || !b.target.nodeName) && a(b.target).closest(this.options.cancel).length;
                    return !(d && !f && this._mouseCapture(b)) || (this.mouseDelayMet = !this.options.delay, this.mouseDelayMet || (this._mouseDelayTimer = setTimeout(function() {
                        c.mouseDelayMet = !0
                    }, this.options.delay)), this._mouseDistanceMet(b) && this._mouseDelayMet(b) && (this._mouseStarted = this._mouseStart(b) !== !1, !this._mouseStarted) ? (b.preventDefault(), !0) : (!0 === a.data(b.target, this.widgetName + ".preventClickEvent") && a.removeData(b.target, this.widgetName + ".preventClickEvent"), this._mouseMoveDelegate = function(a) {
                        return c._mouseMove(a)
                    }, this._mouseUpDelegate = function(a) {
                        return c._mouseUp(a)
                    }, this.document.on("mousemove." + this.widgetName, this._mouseMoveDelegate).on("mouseup." + this.widgetName, this._mouseUpDelegate), b.preventDefault(), e = !0, !0))
                }
            },
            _mouseMove: function(b) {
                if (this._mouseMoved) {
                    if (a.ui.ie && (!document.documentMode || document.documentMode < 9) && !b.button) return this._mouseUp(b);
                    if (!b.which)
                        if (b.originalEvent.altKey || b.originalEvent.ctrlKey || b.originalEvent.metaKey || b.originalEvent.shiftKey) this.ignoreMissingWhich = !0;
                        else if (!this.ignoreMissingWhich) return this._mouseUp(b)
                }
                return (b.which || b.button) && (this._mouseMoved = !0), this._mouseStarted ? (this._mouseDrag(b), b.preventDefault()) : (this._mouseDistanceMet(b) && this._mouseDelayMet(b) && (this._mouseStarted = this._mouseStart(this._mouseDownEvent, b) !== !1, this._mouseStarted ? this._mouseDrag(b) : this._mouseUp(b)), !this._mouseStarted)
            },
            _mouseUp: function(b) {
                this.document.off("mousemove." + this.widgetName, this._mouseMoveDelegate).off("mouseup." + this.widgetName, this._mouseUpDelegate), this._mouseStarted && (this._mouseStarted = !1, b.target === this._mouseDownEvent.target && a.data(b.target, this.widgetName + ".preventClickEvent", !0), this._mouseStop(b)), this._mouseDelayTimer && (clearTimeout(this._mouseDelayTimer), delete this._mouseDelayTimer), this.ignoreMissingWhich = !1, e = !1, b.preventDefault()
            },
            _mouseDistanceMet: function(a) {
                return Math.max(Math.abs(this._mouseDownEvent.pageX - a.pageX), Math.abs(this._mouseDownEvent.pageY - a.pageY)) >= this.options.distance
            },
            _mouseDelayMet: function() {
                return this.mouseDelayMet
            },
            _mouseStart: function() {},
            _mouseDrag: function() {},
            _mouseStop: function() {},
            _mouseCapture: function() {
                return !0
            }
        }), a.ui.plugin = {
            add: function(b, c, d) {
                var e, f = a.ui[b].prototype;
                for (e in d) f.plugins[e] = f.plugins[e] || [], f.plugins[e].push([c, d[e]])
            },
            call: function(a, b, c, d) {
                var e, f = a.plugins[b];
                if (f && (d || a.element[0].parentNode && 11 !== a.element[0].parentNode.nodeType))
                    for (e = 0; e < f.length; e++) a.options[f[e][0]] && f[e][1].apply(a.element, c)
            }
        }, a.ui.safeActiveElement = function(a) {
            var b;
            try {
                b = a.activeElement
            } catch (c) {
                b = a.body
            }
            return b || (b = a.body), b.nodeName || (b = a.body), b
        }, a.ui.safeBlur = function(b) {
            b && "body" !== b.nodeName.toLowerCase() && a(b).trigger("blur")
        };
        a.widget("ui.draggable", a.ui.mouse, {
            version: "1.12.1",
            widgetEventPrefix: "drag",
            options: {
                addClasses: !0,
                appendTo: "parent",
                axis: !1,
                connectToSortable: !1,
                containment: !1,
                cursor: "auto",
                cursorAt: !1,
                grid: !1,
                handle: !1,
                helper: "original",
                iframeFix: !1,
                opacity: !1,
                refreshPositions: !1,
                revert: !1,
                revertDuration: 500,
                scope: "default",
                scroll: !0,
                scrollSensitivity: 20,
                scrollSpeed: 20,
                snap: !1,
                snapMode: "both",
                snapTolerance: 20,
                stack: !1,
                zIndex: !1,
                drag: null,
                start: null,
                stop: null
            },
            _create: function() {
                "original" === this.options.helper && this._setPositionRelative(), this.options.addClasses && this._addClass("ui-draggable"), this._setHandleClassName(), this._mouseInit()
            },
            _setOption: function(a, b) {
                this._super(a, b), "handle" === a && (this._removeHandleClassName(), this._setHandleClassName())
            },
            _destroy: function() {
                return (this.helper || this.element).is(".ui-draggable-dragging") ? void(this.destroyOnClear = !0) : (this._removeHandleClassName(), void this._mouseDestroy())
            },
            _mouseCapture: function(b) {
                var c = this.options;
                return !(this.helper || c.disabled || a(b.target).closest(".ui-resizable-handle").length > 0) && (this.handle = this._getHandle(b), !!this.handle && (this._blurActiveElement(b), this._blockFrames(c.iframeFix === !0 ? "iframe" : c.iframeFix), !0))
            },
            _blockFrames: function(b) {
                this.iframeBlocks = this.document.find(b).map(function() {
                    var b = a(this);
                    return a("<div>").css("position", "absolute").appendTo(b.parent()).outerWidth(b.outerWidth()).outerHeight(b.outerHeight()).offset(b.offset())[0]
                })
            },
            _unblockFrames: function() {
                this.iframeBlocks && (this.iframeBlocks.remove(), delete this.iframeBlocks)
            },
            _blurActiveElement: function(b) {
                var c = a.ui.safeActiveElement(this.document[0]),
                    d = a(b.target);
                d.closest(c).length || a.ui.safeBlur(c)
            },
            _mouseStart: function(b) {
                var c = this.options;
                return this.helper = this._createHelper(b), this._addClass(this.helper, "ui-draggable-dragging"), this._cacheHelperProportions(), a.ui.ddmanager && (a.ui.ddmanager.current = this), this._cacheMargins(), this.cssPosition = this.helper.css("position"), this.scrollParent = this.helper.scrollParent(!0), this.offsetParent = this.helper.offsetParent(), this.hasFixedAncestor = this.helper.parents().filter(function() {
                    return "fixed" === a(this).css("position")
                }).length > 0, this.positionAbs = this.element.offset(), this._refreshOffsets(b), this.originalPosition = this.position = this._generatePosition(b, !1), this.originalPageX = b.pageX, this.originalPageY = b.pageY, c.cursorAt && this._adjustOffsetFromHelper(c.cursorAt), this._setContainment(), this._trigger("start", b) === !1 ? (this._clear(), !1) : (this._cacheHelperProportions(), a.ui.ddmanager && !c.dropBehaviour && a.ui.ddmanager.prepareOffsets(this, b), this._mouseDrag(b, !0), a.ui.ddmanager && a.ui.ddmanager.dragStart(this, b), !0)
            },
            _refreshOffsets: function(a) {
                this.offset = {
                    top: this.positionAbs.top - this.margins.top,
                    left: this.positionAbs.left - this.margins.left,
                    scroll: !1,
                    parent: this._getParentOffset(),
                    relative: this._getRelativeOffset()
                }, this.offset.click = {
                    left: a.pageX - this.offset.left,
                    top: a.pageY - this.offset.top
                }
            },
            _mouseDrag: function(b, c) {
                if (this.hasFixedAncestor && (this.offset.parent = this._getParentOffset()), this.position = this._generatePosition(b, !0), this.positionAbs = this._convertPositionTo("absolute"), !c) {
                    var d = this._uiHash();
                    if (this._trigger("drag", b, d) === !1) return this._mouseUp(new a.Event("mouseup", b)), !1;
                    this.position = d.position
                }
                return this.helper[0].style.left = this.position.left + "px", this.helper[0].style.top = this.position.top + "px", a.ui.ddmanager && a.ui.ddmanager.drag(this, b), !1
            },
            _mouseStop: function(b) {
                var c = this,
                    d = !1;
                return a.ui.ddmanager && !this.options.dropBehaviour && (d = a.ui.ddmanager.drop(this, b)), this.dropped && (d = this.dropped, this.dropped = !1), "invalid" === this.options.revert && !d || "valid" === this.options.revert && d || this.options.revert === !0 || a.isFunction(this.options.revert) && this.options.revert.call(this.element, d) ? a(this.helper).animate(this.originalPosition, parseInt(this.options.revertDuration, 10), function() {
                    c._trigger("stop", b) !== !1 && c._clear()
                }) : this._trigger("stop", b) !== !1 && this._clear(), !1
            },
            _mouseUp: function(b) {
                return this._unblockFrames(), a.ui.ddmanager && a.ui.ddmanager.dragStop(this, b), this.handleElement.is(b.target) && this.element.trigger("focus"), a.ui.mouse.prototype._mouseUp.call(this, b)
            },
            cancel: function() {
                return this.helper.is(".ui-draggable-dragging") ? this._mouseUp(new a.Event("mouseup", {
                    target: this.element[0]
                })) : this._clear(), this
            },
            _getHandle: function(b) {
                return !this.options.handle || !!a(b.target).closest(this.element.find(this.options.handle)).length
            },
            _setHandleClassName: function() {
                this.handleElement = this.options.handle ? this.element.find(this.options.handle) : this.element, this._addClass(this.handleElement, "ui-draggable-handle")
            },
            _removeHandleClassName: function() {
                this._removeClass(this.handleElement, "ui-draggable-handle")
            },
            _createHelper: function(b) {
                var c = this.options,
                    d = a.isFunction(c.helper),
                    e = d ? a(c.helper.apply(this.element[0], [b])) : "clone" === c.helper ? this.element.clone().removeAttr("id") : this.element;
                return e.parents("body").length || e.appendTo("parent" === c.appendTo ? this.element[0].parentNode : c.appendTo), d && e[0] === this.element[0] && this._setPositionRelative(), e[0] === this.element[0] || /(fixed|absolute)/.test(e.css("position")) || e.css("position", "absolute"), e
            },
            _setPositionRelative: function() {
                /^(?:r|a|f)/.test(this.element.css("position")) || (this.element[0].style.position = "relative")
            },
            _adjustOffsetFromHelper: function(b) {
                "string" == typeof b && (b = b.split(" ")), a.isArray(b) && (b = {
                    left: +b[0],
                    top: +b[1] || 0
                }), "left" in b && (this.offset.click.left = b.left + this.margins.left), "right" in b && (this.offset.click.left = this.helperProportions.width - b.right + this.margins.left), "top" in b && (this.offset.click.top = b.top + this.margins.top), "bottom" in b && (this.offset.click.top = this.helperProportions.height - b.bottom + this.margins.top)
            },
            _isRootNode: function(a) {
                return /(html|body)/i.test(a.tagName) || a === this.document[0]
            },
            _getParentOffset: function() {
                var b = this.offsetParent.offset(),
                    c = this.document[0];
                return "absolute" === this.cssPosition && this.scrollParent[0] !== c && a.contains(this.scrollParent[0], this.offsetParent[0]) && (b.left += this.scrollParent.scrollLeft(), b.top += this.scrollParent.scrollTop()), this._isRootNode(this.offsetParent[0]) && (b = {
                    top: 0,
                    left: 0
                }), {
                    top: b.top + (parseInt(this.offsetParent.css("borderTopWidth"), 10) || 0),
                    left: b.left + (parseInt(this.offsetParent.css("borderLeftWidth"), 10) || 0)
                }
            },
            _getRelativeOffset: function() {
                if ("relative" !== this.cssPosition) return {
                    top: 0,
                    left: 0
                };
                var a = this.element.position(),
                    b = this._isRootNode(this.scrollParent[0]);
                return {
                    top: a.top - (parseInt(this.helper.css("top"), 10) || 0) + (b ? 0 : this.scrollParent.scrollTop()),
                    left: a.left - (parseInt(this.helper.css("left"), 10) || 0) + (b ? 0 : this.scrollParent.scrollLeft())
                }
            },
            _cacheMargins: function() {
                this.margins = {
                    left: parseInt(this.element.css("marginLeft"), 10) || 0,
                    top: parseInt(this.element.css("marginTop"), 10) || 0,
                    right: parseInt(this.element.css("marginRight"), 10) || 0,
                    bottom: parseInt(this.element.css("marginBottom"), 10) || 0
                }
            },
            _cacheHelperProportions: function() {
                this.helperProportions = {
                    width: this.helper.outerWidth(),
                    height: this.helper.outerHeight()
                }
            },
            _setContainment: function() {
                var b, c, d, e = this.options,
                    f = this.document[0];
                return this.relativeContainer = null, e.containment ? "window" === e.containment ? void(this.containment = [a(window).scrollLeft() - this.offset.relative.left - this.offset.parent.left, a(window).scrollTop() - this.offset.relative.top - this.offset.parent.top, a(window).scrollLeft() + a(window).width() - this.helperProportions.width - this.margins.left, a(window).scrollTop() + (a(window).height() || f.body.parentNode.scrollHeight) - this.helperProportions.height - this.margins.top]) : "document" === e.containment ? void(this.containment = [0, 0, a(f).width() - this.helperProportions.width - this.margins.left, (a(f).height() || f.body.parentNode.scrollHeight) - this.helperProportions.height - this.margins.top]) : e.containment.constructor === Array ? void(this.containment = e.containment) : ("parent" === e.containment && (e.containment = this.helper[0].parentNode), c = a(e.containment), d = c[0], void(d && (b = /(scroll|auto)/.test(c.css("overflow")), this.containment = [(parseInt(c.css("borderLeftWidth"), 10) || 0) + (parseInt(c.css("paddingLeft"), 10) || 0), (parseInt(c.css("borderTopWidth"), 10) || 0) + (parseInt(c.css("paddingTop"), 10) || 0), (b ? Math.max(d.scrollWidth, d.offsetWidth) : d.offsetWidth) - (parseInt(c.css("borderRightWidth"), 10) || 0) - (parseInt(c.css("paddingRight"), 10) || 0) - this.helperProportions.width - this.margins.left - this.margins.right, (b ? Math.max(d.scrollHeight, d.offsetHeight) : d.offsetHeight) - (parseInt(c.css("borderBottomWidth"), 10) || 0) - (parseInt(c.css("paddingBottom"), 10) || 0) - this.helperProportions.height - this.margins.top - this.margins.bottom], this.relativeContainer = c))) : void(this.containment = null)
            },
            _convertPositionTo: function(a, b) {
                b || (b = this.position);
                var c = "absolute" === a ? 1 : -1,
                    d = this._isRootNode(this.scrollParent[0]);
                return {
                    top: b.top + this.offset.relative.top * c + this.offset.parent.top * c - ("fixed" === this.cssPosition ? -this.offset.scroll.top : d ? 0 : this.offset.scroll.top) * c,
                    left: b.left + this.offset.relative.left * c + this.offset.parent.left * c - ("fixed" === this.cssPosition ? -this.offset.scroll.left : d ? 0 : this.offset.scroll.left) * c
                }
            },
            _generatePosition: function(a, b) {
                var c, d, e, f, g = this.options,
                    h = this._isRootNode(this.scrollParent[0]),
                    i = a.pageX,
                    j = a.pageY;
                return h && this.offset.scroll || (this.offset.scroll = {
                    top: this.scrollParent.scrollTop(),
                    left: this.scrollParent.scrollLeft()
                }), b && (this.containment && (this.relativeContainer ? (d = this.relativeContainer.offset(), c = [this.containment[0] + d.left, this.containment[1] + d.top, this.containment[2] + d.left, this.containment[3] + d.top]) : c = this.containment, a.pageX - this.offset.click.left < c[0] && (i = c[0] + this.offset.click.left), a.pageY - this.offset.click.top < c[1] && (j = c[1] + this.offset.click.top), a.pageX - this.offset.click.left > c[2] && (i = c[2] + this.offset.click.left), a.pageY - this.offset.click.top > c[3] && (j = c[3] + this.offset.click.top)), g.grid && (e = g.grid[1] ? this.originalPageY + Math.round((j - this.originalPageY) / g.grid[1]) * g.grid[1] : this.originalPageY, j = c ? e - this.offset.click.top >= c[1] || e - this.offset.click.top > c[3] ? e : e - this.offset.click.top >= c[1] ? e - g.grid[1] : e + g.grid[1] : e, f = g.grid[0] ? this.originalPageX + Math.round((i - this.originalPageX) / g.grid[0]) * g.grid[0] : this.originalPageX, i = c ? f - this.offset.click.left >= c[0] || f - this.offset.click.left > c[2] ? f : f - this.offset.click.left >= c[0] ? f - g.grid[0] : f + g.grid[0] : f), "y" === g.axis && (i = this.originalPageX), "x" === g.axis && (j = this.originalPageY)), {
                    top: j - this.offset.click.top - this.offset.relative.top - this.offset.parent.top + ("fixed" === this.cssPosition ? -this.offset.scroll.top : h ? 0 : this.offset.scroll.top),
                    left: i - this.offset.click.left - this.offset.relative.left - this.offset.parent.left + ("fixed" === this.cssPosition ? -this.offset.scroll.left : h ? 0 : this.offset.scroll.left)
                }
            },
            _clear: function() {
                this._removeClass(this.helper, "ui-draggable-dragging"), this.helper[0] === this.element[0] || this.cancelHelperRemoval || this.helper.remove(), this.helper = null, this.cancelHelperRemoval = !1, this.destroyOnClear && this.destroy()
            },
            _trigger: function(b, c, d) {
                return d = d || this._uiHash(), a.ui.plugin.call(this, b, [c, d, this], !0), /^(drag|start|stop)/.test(b) && (this.positionAbs = this._convertPositionTo("absolute"), d.offset = this.positionAbs), a.Widget.prototype._trigger.call(this, b, c, d)
            },
            plugins: {},
            _uiHash: function() {
                return {
                    helper: this.helper,
                    position: this.position,
                    originalPosition: this.originalPosition,
                    offset: this.positionAbs
                }
            }
        }), a.ui.plugin.add("draggable", "connectToSortable", {
            start: function(b, c, d) {
                var e = a.extend({}, c, {
                    item: d.element
                });
                d.sortables = [], a(d.options.connectToSortable).each(function() {
                    var c = a(this).sortable("instance");
                    c && !c.options.disabled && (d.sortables.push(c), c.refreshPositions(), c._trigger("activate", b, e))
                })
            },
            stop: function(b, c, d) {
                var e = a.extend({}, c, {
                    item: d.element
                });
                d.cancelHelperRemoval = !1, a.each(d.sortables, function() {
                    var a = this;
                    a.isOver ? (a.isOver = 0, d.cancelHelperRemoval = !0, a.cancelHelperRemoval = !1, a._storedCSS = {
                        position: a.placeholder.css("position"),
                        top: a.placeholder.css("top"),
                        left: a.placeholder.css("left")
                    }, a._mouseStop(b), a.options.helper = a.options._helper) : (a.cancelHelperRemoval = !0, a._trigger("deactivate", b, e))
                })
            },
            drag: function(b, c, d) {
                a.each(d.sortables, function() {
                    var e = !1,
                        f = this;
                    f.positionAbs = d.positionAbs, f.helperProportions = d.helperProportions, f.offset.click = d.offset.click, f._intersectsWith(f.containerCache) && (e = !0, a.each(d.sortables, function() {
                        return this.positionAbs = d.positionAbs, this.helperProportions = d.helperProportions, this.offset.click = d.offset.click, this !== f && this._intersectsWith(this.containerCache) && a.contains(f.element[0], this.element[0]) && (e = !1), e
                    })), e ? (f.isOver || (f.isOver = 1, d._parent = c.helper.parent(), f.currentItem = c.helper.appendTo(f.element).data("ui-sortable-item", !0), f.options._helper = f.options.helper, f.options.helper = function() {
                        return c.helper[0]
                    }, b.target = f.currentItem[0], f._mouseCapture(b, !0), f._mouseStart(b, !0, !0), f.offset.click.top = d.offset.click.top, f.offset.click.left = d.offset.click.left, f.offset.parent.left -= d.offset.parent.left - f.offset.parent.left, f.offset.parent.top -= d.offset.parent.top - f.offset.parent.top, d._trigger("toSortable", b), d.dropped = f.element, a.each(d.sortables, function() {
                        this.refreshPositions()
                    }), d.currentItem = d.element, f.fromOutside = d), f.currentItem && (f._mouseDrag(b), c.position = f.position)) : f.isOver && (f.isOver = 0, f.cancelHelperRemoval = !0, f.options._revert = f.options.revert, f.options.revert = !1, f._trigger("out", b, f._uiHash(f)), f._mouseStop(b, !0), f.options.revert = f.options._revert, f.options.helper = f.options._helper, f.placeholder && f.placeholder.remove(), c.helper.appendTo(d._parent), d._refreshOffsets(b), c.position = d._generatePosition(b, !0), d._trigger("fromSortable", b), d.dropped = !1, a.each(d.sortables, function() {
                        this.refreshPositions()
                    }))
                })
            }
        }), a.ui.plugin.add("draggable", "cursor", {
            start: function(b, c, d) {
                var e = a("body"),
                    f = d.options;
                e.css("cursor") && (f._cursor = e.css("cursor")), e.css("cursor", f.cursor)
            },
            stop: function(b, c, d) {
                var e = d.options;
                e._cursor && a("body").css("cursor", e._cursor)
            }
        }), a.ui.plugin.add("draggable", "opacity", {
            start: function(b, c, d) {
                var e = a(c.helper),
                    f = d.options;
                e.css("opacity") && (f._opacity = e.css("opacity")), e.css("opacity", f.opacity)
            },
            stop: function(b, c, d) {
                var e = d.options;
                e._opacity && a(c.helper).css("opacity", e._opacity)
            }
        }), a.ui.plugin.add("draggable", "scroll", {
            start: function(a, b, c) {
                c.scrollParentNotHidden || (c.scrollParentNotHidden = c.helper.scrollParent(!1)), c.scrollParentNotHidden[0] !== c.document[0] && "HTML" !== c.scrollParentNotHidden[0].tagName && (c.overflowOffset = c.scrollParentNotHidden.offset())
            },
            drag: function(b, c, d) {
                var e = d.options,
                    f = !1,
                    g = d.scrollParentNotHidden[0],
                    h = d.document[0];
                g !== h && "HTML" !== g.tagName ? (e.axis && "x" === e.axis || (d.overflowOffset.top + g.offsetHeight - b.pageY < e.scrollSensitivity ? g.scrollTop = f = g.scrollTop + e.scrollSpeed : b.pageY - d.overflowOffset.top < e.scrollSensitivity && (g.scrollTop = f = g.scrollTop - e.scrollSpeed)), e.axis && "y" === e.axis || (d.overflowOffset.left + g.offsetWidth - b.pageX < e.scrollSensitivity ? g.scrollLeft = f = g.scrollLeft + e.scrollSpeed : b.pageX - d.overflowOffset.left < e.scrollSensitivity && (g.scrollLeft = f = g.scrollLeft - e.scrollSpeed))) : (e.axis && "x" === e.axis || (b.pageY - a(h).scrollTop() < e.scrollSensitivity ? f = a(h).scrollTop(a(h).scrollTop() - e.scrollSpeed) : a(window).height() - (b.pageY - a(h).scrollTop()) < e.scrollSensitivity && (f = a(h).scrollTop(a(h).scrollTop() + e.scrollSpeed))), e.axis && "y" === e.axis || (b.pageX - a(h).scrollLeft() < e.scrollSensitivity ? f = a(h).scrollLeft(a(h).scrollLeft() - e.scrollSpeed) : a(window).width() - (b.pageX - a(h).scrollLeft()) < e.scrollSensitivity && (f = a(h).scrollLeft(a(h).scrollLeft() + e.scrollSpeed)))), f !== !1 && a.ui.ddmanager && !e.dropBehaviour && a.ui.ddmanager.prepareOffsets(d, b)
            }
        }), a.ui.plugin.add("draggable", "snap", {
            start: function(b, c, d) {
                var e = d.options;
                d.snapElements = [], a(e.snap.constructor !== String ? e.snap.items || ":data(ui-draggable)" : e.snap).each(function() {
                    var b = a(this),
                        c = b.offset();
                    this !== d.element[0] && d.snapElements.push({
                        item: this,
                        width: b.outerWidth(),
                        height: b.outerHeight(),
                        top: c.top,
                        left: c.left
                    })
                })
            },
            drag: function(b, c, d) {
                var e, f, g, h, i, j, k, l, m, n, o = d.options,
                    p = o.snapTolerance,
                    q = c.offset.left,
                    r = q + d.helperProportions.width,
                    s = c.offset.top,
                    t = s + d.helperProportions.height;
                for (m = d.snapElements.length - 1; m >= 0; m--) i = d.snapElements[m].left - d.margins.left, j = i + d.snapElements[m].width, k = d.snapElements[m].top - d.margins.top, l = k + d.snapElements[m].height, r < i - p || q > j + p || t < k - p || s > l + p || !a.contains(d.snapElements[m].item.ownerDocument, d.snapElements[m].item) ? (d.snapElements[m].snapping && d.options.snap.release && d.options.snap.release.call(d.element, b, a.extend(d._uiHash(), {
                    snapItem: d.snapElements[m].item
                })), d.snapElements[m].snapping = !1) : ("inner" !== o.snapMode && (e = Math.abs(k - t) <= p, f = Math.abs(l - s) <= p, g = Math.abs(i - r) <= p, h = Math.abs(j - q) <= p, e && (c.position.top = d._convertPositionTo("relative", {
                    top: k - d.helperProportions.height,
                    left: 0
                }).top), f && (c.position.top = d._convertPositionTo("relative", {
                    top: l,
                    left: 0
                }).top), g && (c.position.left = d._convertPositionTo("relative", {
                    top: 0,
                    left: i - d.helperProportions.width
                }).left), h && (c.position.left = d._convertPositionTo("relative", {
                    top: 0,
                    left: j
                }).left)), n = e || f || g || h, "outer" !== o.snapMode && (e = Math.abs(k - s) <= p, f = Math.abs(l - t) <= p, g = Math.abs(i - q) <= p, h = Math.abs(j - r) <= p, e && (c.position.top = d._convertPositionTo("relative", {
                    top: k,
                    left: 0
                }).top), f && (c.position.top = d._convertPositionTo("relative", {
                    top: l - d.helperProportions.height,
                    left: 0
                }).top), g && (c.position.left = d._convertPositionTo("relative", {
                    top: 0,
                    left: i
                }).left), h && (c.position.left = d._convertPositionTo("relative", {
                    top: 0,
                    left: j - d.helperProportions.width
                }).left)), !d.snapElements[m].snapping && (e || f || g || h || n) && d.options.snap.snap && d.options.snap.snap.call(d.element, b, a.extend(d._uiHash(), {
                    snapItem: d.snapElements[m].item
                })), d.snapElements[m].snapping = e || f || g || h || n)
            }
        }), a.ui.plugin.add("draggable", "stack", {
            start: function(b, c, d) {
                var e, f = d.options,
                    g = a.makeArray(a(f.stack)).sort(function(b, c) {
                        return (parseInt(a(b).css("zIndex"), 10) || 0) - (parseInt(a(c).css("zIndex"), 10) || 0)
                    });
                g.length && (e = parseInt(a(g[0]).css("zIndex"), 10) || 0, a(g).each(function(b) {
                    a(this).css("zIndex", e + b)
                }), this.css("zIndex", e + g.length))
            }
        }), a.ui.plugin.add("draggable", "zIndex", {
            start: function(b, c, d) {
                var e = a(c.helper),
                    f = d.options;
                e.css("zIndex") && (f._zIndex = e.css("zIndex")), e.css("zIndex", f.zIndex)
            },
            stop: function(b, c, d) {
                var e = d.options;
                e._zIndex && a(c.helper).css("zIndex", e._zIndex)
            }
        });
        a.ui.draggable;
        a.widget("ui.resizable", a.ui.mouse, {
            version: "1.12.1",
            widgetEventPrefix: "resize",
            options: {
                alsoResize: !1,
                animate: !1,
                animateDuration: "slow",
                animateEasing: "swing",
                aspectRatio: !1,
                autoHide: !1,
                classes: {
                    "ui-resizable-se": "ui-icon ui-icon-gripsmall-diagonal-se"
                },
                containment: !1,
                ghost: !1,
                grid: !1,
                handles: "e,s,se",
                helper: !1,
                maxHeight: null,
                maxWidth: null,
                minHeight: 10,
                minWidth: 10,
                zIndex: 90,
                resize: null,
                start: null,
                stop: null
            },
            _num: function(a) {
                return parseFloat(a) || 0
            },
            _isNumber: function(a) {
                return !isNaN(parseFloat(a))
            },
            _hasScroll: function(b, c) {
                if ("hidden" === a(b).css("overflow")) return !1;
                var d = c && "left" === c ? "scrollLeft" : "scrollTop",
                    e = !1;
                return b[d] > 0 || (b[d] = 1, e = b[d] > 0, b[d] = 0, e)
            },
            _create: function() {
                var b, c = this.options,
                    d = this;
                this._addClass("ui-resizable"), a.extend(this, {
                    _aspectRatio: !!c.aspectRatio,
                    aspectRatio: c.aspectRatio,
                    originalElement: this.element,
                    _proportionallyResizeElements: [],
                    _helper: c.helper || c.ghost || c.animate ? c.helper || "ui-resizable-helper" : null
                }), this.element[0].nodeName.match(/^(canvas|textarea|input|select|button|img)$/i) && (this.element.wrap(a("<div class='ui-wrapper' style='overflow: hidden;'></div>").css({
                    position: this.element.css("position"),
                    width: this.element.outerWidth(),
                    height: this.element.outerHeight(),
                    top: this.element.css("top"),
                    left: this.element.css("left")
                })), this.element = this.element.parent().data("ui-resizable", this.element.resizable("instance")), this.elementIsWrapper = !0, b = {
                    marginTop: this.originalElement.css("marginTop"),
                    marginRight: this.originalElement.css("marginRight"),
                    marginBottom: this.originalElement.css("marginBottom"),
                    marginLeft: this.originalElement.css("marginLeft")
                }, this.element.css(b), this.originalElement.css("margin", 0), this.originalResizeStyle = this.originalElement.css("resize"), this.originalElement.css("resize", "none"), this._proportionallyResizeElements.push(this.originalElement.css({
                    position: "static",
                    zoom: 1,
                    display: "block"
                })), this.originalElement.css(b), this._proportionallyResize()), this._setupHandles(), c.autoHide && a(this.element).on("mouseenter", function() {
                    c.disabled || (d._removeClass("ui-resizable-autohide"), d._handles.show())
                }).on("mouseleave", function() {
                    c.disabled || d.resizing || (d._addClass("ui-resizable-autohide"), d._handles.hide())
                }), this._mouseInit()
            },
            _destroy: function() {
                this._mouseDestroy();
                var b, c = function(b) {
                    a(b).removeData("resizable").removeData("ui-resizable").off(".resizable").find(".ui-resizable-handle").remove()
                };
                return this.elementIsWrapper && (c(this.element), b = this.element, this.originalElement.css({
                    position: b.css("position"),
                    width: b.outerWidth(),
                    height: b.outerHeight(),
                    top: b.css("top"),
                    left: b.css("left")
                }).insertAfter(b), b.remove()), this.originalElement.css("resize", this.originalResizeStyle), c(this.originalElement), this
            },
            _setOption: function(a, b) {
                switch (this._super(a, b), a) {
                    case "handles":
                        this._removeHandles(), this._setupHandles()
                }
            },
            _setupHandles: function() {
                var b, c, d, e, f, g = this.options,
                    h = this;
                if (this.handles = g.handles || (a(".ui-resizable-handle", this.element).length ? {
                        n: ".ui-resizable-n",
                        e: ".ui-resizable-e",
                        s: ".ui-resizable-s",
                        w: ".ui-resizable-w",
                        se: ".ui-resizable-se",
                        sw: ".ui-resizable-sw",
                        ne: ".ui-resizable-ne",
                        nw: ".ui-resizable-nw"
                    } : "e,s,se"), this._handles = a(), this.handles.constructor === String)
                    for ("all" === this.handles && (this.handles = "n,e,s,w,se,sw,ne,nw"), d = this.handles.split(","), this.handles = {}, c = 0; c < d.length; c++) b = a.trim(d[c]), e = "ui-resizable-" + b, f = a("<div>"), this._addClass(f, "ui-resizable-handle " + e), f.css({
                        zIndex: g.zIndex
                    }), this.handles[b] = ".ui-resizable-" + b, this.element.append(f);
                this._renderAxis = function(b) {
                    var c, d, e, f;
                    b = b || this.element;
                    for (c in this.handles) this.handles[c].constructor === String ? this.handles[c] = this.element.children(this.handles[c]).first().show() : (this.handles[c].jquery || this.handles[c].nodeType) && (this.handles[c] = a(this.handles[c]), this._on(this.handles[c], {
                        mousedown: h._mouseDown
                    })), this.elementIsWrapper && this.originalElement[0].nodeName.match(/^(textarea|input|select|button)$/i) && (d = a(this.handles[c], this.element), f = /sw|ne|nw|se|n|s/.test(c) ? d.outerHeight() : d.outerWidth(), e = ["padding", /ne|nw|n/.test(c) ? "Top" : /se|sw|s/.test(c) ? "Bottom" : /^e$/.test(c) ? "Right" : "Left"].join(""), b.css(e, f), this._proportionallyResize()), this._handles = this._handles.add(this.handles[c])
                }, this._renderAxis(this.element), this._handles = this._handles.add(this.element.find(".ui-resizable-handle")), this._handles.disableSelection(), this._handles.on("mouseover", function() {
                    h.resizing || (this.className && (f = this.className.match(/ui-resizable-(se|sw|ne|nw|n|e|s|w)/i)), h.axis = f && f[1] ? f[1] : "se")
                }), g.autoHide && (this._handles.hide(), this._addClass("ui-resizable-autohide"))
            },
            _removeHandles: function() {
                this._handles.remove()
            },
            _mouseCapture: function(b) {
                var c, d, e = !1;
                for (c in this.handles) d = a(this.handles[c])[0], (d === b.target || a.contains(d, b.target)) && (e = !0);
                return !this.options.disabled && e
            },
            _mouseStart: function(b) {
                var c, d, e, f = this.options,
                    g = this.element;
                return this.resizing = !0, this._renderProxy(), c = this._num(this.helper.css("left")), d = this._num(this.helper.css("top")), f.containment && (c += a(f.containment).scrollLeft() || 0, d += a(f.containment).scrollTop() || 0), this.offset = this.helper.offset(), this.position = {
                    left: c,
                    top: d
                }, this.size = this._helper ? {
                    width: this.helper.width(),
                    height: this.helper.height()
                } : {
                    width: g.width(),
                    height: g.height()
                }, this.originalSize = this._helper ? {
                    width: g.outerWidth(),
                    height: g.outerHeight()
                } : {
                    width: g.width(),
                    height: g.height()
                }, this.sizeDiff = {
                    width: g.outerWidth() - g.width(),
                    height: g.outerHeight() - g.height()
                }, this.originalPosition = {
                    left: c,
                    top: d
                }, this.originalMousePosition = {
                    left: b.pageX,
                    top: b.pageY
                }, this.aspectRatio = "number" == typeof f.aspectRatio ? f.aspectRatio : this.originalSize.width / this.originalSize.height || 1, e = a(".ui-resizable-" + this.axis).css("cursor"), a("body").css("cursor", "auto" === e ? this.axis + "-resize" : e), this._addClass("ui-resizable-resizing"), this._propagate("start", b), !0
            },
            _mouseDrag: function(b) {
                var c, d, e = this.originalMousePosition,
                    f = this.axis,
                    g = b.pageX - e.left || 0,
                    h = b.pageY - e.top || 0,
                    i = this._change[f];
                return this._updatePrevProperties(), !!i && (c = i.apply(this, [b, g, h]), this._updateVirtualBoundaries(b.shiftKey), (this._aspectRatio || b.shiftKey) && (c = this._updateRatio(c, b)), c = this._respectSize(c, b), this._updateCache(c), this._propagate("resize", b), d = this._applyChanges(), !this._helper && this._proportionallyResizeElements.length && this._proportionallyResize(), a.isEmptyObject(d) || (this._updatePrevProperties(), this._trigger("resize", b, this.ui()), this._applyChanges()), !1)
            },
            _mouseStop: function(b) {
                this.resizing = !1;
                var c, d, e, f, g, h, i, j = this.options,
                    k = this;
                return this._helper && (c = this._proportionallyResizeElements, d = c.length && /textarea/i.test(c[0].nodeName), e = d && this._hasScroll(c[0], "left") ? 0 : k.sizeDiff.height, f = d ? 0 : k.sizeDiff.width, g = {
                    width: k.helper.width() - f,
                    height: k.helper.height() - e
                }, h = parseFloat(k.element.css("left")) + (k.position.left - k.originalPosition.left) || null, i = parseFloat(k.element.css("top")) + (k.position.top - k.originalPosition.top) || null, j.animate || this.element.css(a.extend(g, {
                    top: i,
                    left: h
                })), k.helper.height(k.size.height), k.helper.width(k.size.width), this._helper && !j.animate && this._proportionallyResize()), a("body").css("cursor", "auto"), this._removeClass("ui-resizable-resizing"), this._propagate("stop", b), this._helper && this.helper.remove(), !1
            },
            _updatePrevProperties: function() {
                this.prevPosition = {
                    top: this.position.top,
                    left: this.position.left
                }, this.prevSize = {
                    width: this.size.width,
                    height: this.size.height
                }
            },
            _applyChanges: function() {
                var a = {};
                return this.position.top !== this.prevPosition.top && (a.top = this.position.top + "px"), this.position.left !== this.prevPosition.left && (a.left = this.position.left + "px"), this.size.width !== this.prevSize.width && (a.width = this.size.width + "px"), this.size.height !== this.prevSize.height && (a.height = this.size.height + "px"), this.helper.css(a), a
            },
            _updateVirtualBoundaries: function(a) {
                var b, c, d, e, f, g = this.options;
                f = {
                    minWidth: this._isNumber(g.minWidth) ? g.minWidth : 0,
                    maxWidth: this._isNumber(g.maxWidth) ? g.maxWidth : 1 / 0,
                    minHeight: this._isNumber(g.minHeight) ? g.minHeight : 0,
                    maxHeight: this._isNumber(g.maxHeight) ? g.maxHeight : 1 / 0
                }, (this._aspectRatio || a) && (b = f.minHeight * this.aspectRatio, d = f.minWidth / this.aspectRatio, c = f.maxHeight * this.aspectRatio, e = f.maxWidth / this.aspectRatio, b > f.minWidth && (f.minWidth = b), d > f.minHeight && (f.minHeight = d), c < f.maxWidth && (f.maxWidth = c), e < f.maxHeight && (f.maxHeight = e)), this._vBoundaries = f
            },
            _updateCache: function(a) {
                this.offset = this.helper.offset(), this._isNumber(a.left) && (this.position.left = a.left), this._isNumber(a.top) && (this.position.top = a.top), this._isNumber(a.height) && (this.size.height = a.height), this._isNumber(a.width) && (this.size.width = a.width)
            },
            _updateRatio: function(a) {
                var b = this.position,
                    c = this.size,
                    d = this.axis;
                return this._isNumber(a.height) ? a.width = a.height * this.aspectRatio : this._isNumber(a.width) && (a.height = a.width / this.aspectRatio), "sw" === d && (a.left = b.left + (c.width - a.width), a.top = null), "nw" === d && (a.top = b.top + (c.height - a.height), a.left = b.left + (c.width - a.width)), a
            },
            _respectSize: function(a) {
                var b = this._vBoundaries,
                    c = this.axis,
                    d = this._isNumber(a.width) && b.maxWidth && b.maxWidth < a.width,
                    e = this._isNumber(a.height) && b.maxHeight && b.maxHeight < a.height,
                    f = this._isNumber(a.width) && b.minWidth && b.minWidth > a.width,
                    g = this._isNumber(a.height) && b.minHeight && b.minHeight > a.height,
                    h = this.originalPosition.left + this.originalSize.width,
                    i = this.originalPosition.top + this.originalSize.height,
                    j = /sw|nw|w/.test(c),
                    k = /nw|ne|n/.test(c);
                return f && (a.width = b.minWidth), g && (a.height = b.minHeight), d && (a.width = b.maxWidth), e && (a.height = b.maxHeight), f && j && (a.left = h - b.minWidth), d && j && (a.left = h - b.maxWidth), g && k && (a.top = i - b.minHeight), e && k && (a.top = i - b.maxHeight), a.width || a.height || a.left || !a.top ? a.width || a.height || a.top || !a.left || (a.left = null) : a.top = null, a
            },
            _getPaddingPlusBorderDimensions: function(a) {
                for (var b = 0, c = [], d = [a.css("borderTopWidth"), a.css("borderRightWidth"), a.css("borderBottomWidth"), a.css("borderLeftWidth")], e = [a.css("paddingTop"), a.css("paddingRight"), a.css("paddingBottom"), a.css("paddingLeft")]; b < 4; b++) c[b] = parseFloat(d[b]) || 0, c[b] += parseFloat(e[b]) || 0;
                return {
                    height: c[0] + c[2],
                    width: c[1] + c[3]
                }
            },
            _proportionallyResize: function() {
                if (this._proportionallyResizeElements.length)
                    for (var a, b = 0, c = this.helper || this.element; b < this._proportionallyResizeElements.length; b++) a = this._proportionallyResizeElements[b], this.outerDimensions || (this.outerDimensions = this._getPaddingPlusBorderDimensions(a)), a.css({
                        height: c.height() - this.outerDimensions.height || 0,
                        width: c.width() - this.outerDimensions.width || 0
                    })
            },
            _renderProxy: function() {
                var b = this.element,
                    c = this.options;
                this.elementOffset = b.offset(), this._helper ? (this.helper = this.helper || a("<div style='overflow:hidden;'></div>"), this._addClass(this.helper, this._helper), this.helper.css({
                    width: this.element.outerWidth(),
                    height: this.element.outerHeight(),
                    position: "absolute",
                    left: this.elementOffset.left + "px",
                    top: this.elementOffset.top + "px",
                    zIndex: ++c.zIndex
                }), this.helper.appendTo("body").disableSelection()) : this.helper = this.element
            },
            _change: {
                e: function(a, b) {
                    return {
                        width: this.originalSize.width + b
                    }
                },
                w: function(a, b) {
                    var c = this.originalSize,
                        d = this.originalPosition;
                    return {
                        left: d.left + b,
                        width: c.width - b
                    }
                },
                n: function(a, b, c) {
                    var d = this.originalSize,
                        e = this.originalPosition;
                    return {
                        top: e.top + c,
                        height: d.height - c
                    }
                },
                s: function(a, b, c) {
                    return {
                        height: this.originalSize.height + c
                    }
                },
                se: function(b, c, d) {
                    return a.extend(this._change.s.apply(this, arguments), this._change.e.apply(this, [b, c, d]))
                },
                sw: function(b, c, d) {
                    return a.extend(this._change.s.apply(this, arguments), this._change.w.apply(this, [b, c, d]))
                },
                ne: function(b, c, d) {
                    return a.extend(this._change.n.apply(this, arguments), this._change.e.apply(this, [b, c, d]))
                },
                nw: function(b, c, d) {
                    return a.extend(this._change.n.apply(this, arguments), this._change.w.apply(this, [b, c, d]))
                }
            },
            _propagate: function(b, c) {
                a.ui.plugin.call(this, b, [c, this.ui()]), "resize" !== b && this._trigger(b, c, this.ui())
            },
            plugins: {},
            ui: function() {
                return {
                    originalElement: this.originalElement,
                    element: this.element,
                    helper: this.helper,
                    position: this.position,
                    size: this.size,
                    originalSize: this.originalSize,
                    originalPosition: this.originalPosition
                }
            }
        }), a.ui.plugin.add("resizable", "animate", {
            stop: function(b) {
                var c = a(this).resizable("instance"),
                    d = c.options,
                    e = c._proportionallyResizeElements,
                    f = e.length && /textarea/i.test(e[0].nodeName),
                    g = f && c._hasScroll(e[0], "left") ? 0 : c.sizeDiff.height,
                    h = f ? 0 : c.sizeDiff.width,
                    i = {
                        width: c.size.width - h,
                        height: c.size.height - g
                    },
                    j = parseFloat(c.element.css("left")) + (c.position.left - c.originalPosition.left) || null,
                    k = parseFloat(c.element.css("top")) + (c.position.top - c.originalPosition.top) || null;
                c.element.animate(a.extend(i, k && j ? {
                    top: k,
                    left: j
                } : {}), {
                    duration: d.animateDuration,
                    easing: d.animateEasing,
                    step: function() {
                        var d = {
                            width: parseFloat(c.element.css("width")),
                            height: parseFloat(c.element.css("height")),
                            top: parseFloat(c.element.css("top")),
                            left: parseFloat(c.element.css("left"))
                        };
                        e && e.length && a(e[0]).css({
                            width: d.width,
                            height: d.height
                        }), c._updateCache(d), c._propagate("resize", b)
                    }
                })
            }
        }), a.ui.plugin.add("resizable", "containment", {
            start: function() {
                var b, c, d, e, f, g, h, i = a(this).resizable("instance"),
                    j = i.options,
                    k = i.element,
                    l = j.containment,
                    m = l instanceof a ? l.get(0) : /parent/.test(l) ? k.parent().get(0) : l;
                m && (i.containerElement = a(m), /document/.test(l) || l === document ? (i.containerOffset = {
                    left: 0,
                    top: 0
                }, i.containerPosition = {
                    left: 0,
                    top: 0
                }, i.parentData = {
                    element: a(document),
                    left: 0,
                    top: 0,
                    width: a(document).width(),
                    height: a(document).height() || document.body.parentNode.scrollHeight
                }) : (b = a(m), c = [], a(["Top", "Right", "Left", "Bottom"]).each(function(a, d) {
                    c[a] = i._num(b.css("padding" + d))
                }), i.containerOffset = b.offset(), i.containerPosition = b.position(), i.containerSize = {
                    height: b.innerHeight() - c[3],
                    width: b.innerWidth() - c[1]
                }, d = i.containerOffset, e = i.containerSize.height, f = i.containerSize.width, g = i._hasScroll(m, "left") ? m.scrollWidth : f, h = i._hasScroll(m) ? m.scrollHeight : e, i.parentData = {
                    element: m,
                    left: d.left,
                    top: d.top,
                    width: g,
                    height: h
                }))
            },
            resize: function(b) {
                var c, d, e, f, g = a(this).resizable("instance"),
                    h = g.options,
                    i = g.containerOffset,
                    j = g.position,
                    k = g._aspectRatio || b.shiftKey,
                    l = {
                        top: 0,
                        left: 0
                    },
                    m = g.containerElement,
                    n = !0;
                m[0] !== document && /static/.test(m.css("position")) && (l = i), j.left < (g._helper ? i.left : 0) && (g.size.width = g.size.width + (g._helper ? g.position.left - i.left : g.position.left - l.left), k && (g.size.height = g.size.width / g.aspectRatio, n = !1), g.position.left = h.helper ? i.left : 0), j.top < (g._helper ? i.top : 0) && (g.size.height = g.size.height + (g._helper ? g.position.top - i.top : g.position.top), k && (g.size.width = g.size.height * g.aspectRatio, n = !1), g.position.top = g._helper ? i.top : 0), e = g.containerElement.get(0) === g.element.parent().get(0), f = /relative|absolute/.test(g.containerElement.css("position")), e && f ? (g.offset.left = g.parentData.left + g.position.left, g.offset.top = g.parentData.top + g.position.top) : (g.offset.left = g.element.offset().left, g.offset.top = g.element.offset().top), c = Math.abs(g.sizeDiff.width + (g._helper ? g.offset.left - l.left : g.offset.left - i.left)), d = Math.abs(g.sizeDiff.height + (g._helper ? g.offset.top - l.top : g.offset.top - i.top)), c + g.size.width >= g.parentData.width && (g.size.width = g.parentData.width - c, k && (g.size.height = g.size.width / g.aspectRatio, n = !1)), d + g.size.height >= g.parentData.height && (g.size.height = g.parentData.height - d, k && (g.size.width = g.size.height * g.aspectRatio, n = !1)), n || (g.position.left = g.prevPosition.left, g.position.top = g.prevPosition.top, g.size.width = g.prevSize.width, g.size.height = g.prevSize.height)
            },
            stop: function() {
                var b = a(this).resizable("instance"),
                    c = b.options,
                    d = b.containerOffset,
                    e = b.containerPosition,
                    f = b.containerElement,
                    g = a(b.helper),
                    h = g.offset(),
                    i = g.outerWidth() - b.sizeDiff.width,
                    j = g.outerHeight() - b.sizeDiff.height;
                b._helper && !c.animate && /relative/.test(f.css("position")) && a(this).css({
                    left: h.left - e.left - d.left,
                    width: i,
                    height: j
                }), b._helper && !c.animate && /static/.test(f.css("position")) && a(this).css({
                    left: h.left - e.left - d.left,
                    width: i,
                    height: j
                })
            }
        }), a.ui.plugin.add("resizable", "alsoResize", {
            start: function() {
                var b = a(this).resizable("instance"),
                    c = b.options;
                a(c.alsoResize).each(function() {
                    var b = a(this);
                    b.data("ui-resizable-alsoresize", {
                        width: parseFloat(b.width()),
                        height: parseFloat(b.height()),
                        left: parseFloat(b.css("left")),
                        top: parseFloat(b.css("top"))
                    })
                })
            },
            resize: function(b, c) {
                var d = a(this).resizable("instance"),
                    e = d.options,
                    f = d.originalSize,
                    g = d.originalPosition,
                    h = {
                        height: d.size.height - f.height || 0,
                        width: d.size.width - f.width || 0,
                        top: d.position.top - g.top || 0,
                        left: d.position.left - g.left || 0
                    };
                a(e.alsoResize).each(function() {
                    var b = a(this),
                        d = a(this).data("ui-resizable-alsoresize"),
                        e = {},
                        f = b.parents(c.originalElement[0]).length ? ["width", "height"] : ["width", "height", "top", "left"];
                    a.each(f, function(a, b) {
                        var c = (d[b] || 0) + (h[b] || 0);
                        c && c >= 0 && (e[b] = c || null)
                    }), b.css(e)
                })
            },
            stop: function() {
                a(this).removeData("ui-resizable-alsoresize")
            }
        }), a.ui.plugin.add("resizable", "ghost", {
            start: function() {
                var b = a(this).resizable("instance"),
                    c = b.size;
                b.ghost = b.originalElement.clone(), b.ghost.css({
                    opacity: .25,
                    display: "block",
                    position: "relative",
                    height: c.height,
                    width: c.width,
                    margin: 0,
                    left: 0,
                    top: 0
                }), b._addClass(b.ghost, "ui-resizable-ghost"), a.uiBackCompat !== !1 && "string" == typeof b.options.ghost && b.ghost.addClass(this.options.ghost), b.ghost.appendTo(b.helper)
            },
            resize: function() {
                var b = a(this).resizable("instance");
                b.ghost && b.ghost.css({
                    position: "relative",
                    height: b.size.height,
                    width: b.size.width
                })
            },
            stop: function() {
                var b = a(this).resizable("instance");
                b.ghost && b.helper && b.helper.get(0).removeChild(b.ghost.get(0))
            }
        }), a.ui.plugin.add("resizable", "grid", {
            resize: function() {
                var b, c = a(this).resizable("instance"),
                    d = c.options,
                    e = c.size,
                    f = c.originalSize,
                    g = c.originalPosition,
                    h = c.axis,
                    i = "number" == typeof d.grid ? [d.grid, d.grid] : d.grid,
                    j = i[0] || 1,
                    k = i[1] || 1,
                    l = Math.round((e.width - f.width) / j) * j,
                    m = Math.round((e.height - f.height) / k) * k,
                    n = f.width + l,
                    o = f.height + m,
                    p = d.maxWidth && d.maxWidth < n,
                    q = d.maxHeight && d.maxHeight < o,
                    r = d.minWidth && d.minWidth > n,
                    s = d.minHeight && d.minHeight > o;
                d.grid = i, r && (n += j), s && (o += k), p && (n -= j), q && (o -= k), /^(se|s|e)$/.test(h) ? (c.size.width = n, c.size.height = o) : /^(ne)$/.test(h) ? (c.size.width = n, c.size.height = o, c.position.top = g.top - m) : /^(sw)$/.test(h) ? (c.size.width = n, c.size.height = o, c.position.left = g.left - l) : ((o - k <= 0 || n - j <= 0) && (b = c._getPaddingPlusBorderDimensions(this)), o - k > 0 ? (c.size.height = o, c.position.top = g.top - m) : (o = k - b.height, c.size.height = o, c.position.top = g.top + f.height - o), n - j > 0 ? (c.size.width = n, c.position.left = g.left - l) : (n = j - b.width, c.size.width = n, c.position.left = g.left + f.width - n))
            }
        });
        var f = (a.ui.resizable, /ui-corner-([a-z]){2,6}/g);
        a.widget("ui.controlgroup", {
            version: "1.12.1",
            defaultElement: "<div>",
            options: {
                direction: "horizontal",
                disabled: null,
                onlyVisible: !0,
                items: {
                    button: "input[type=button], input[type=submit], input[type=reset], button, a",
                    controlgroupLabel: ".ui-controlgroup-label",
                    checkboxradio: "input[type='checkbox'], input[type='radio']",
                    selectmenu: "select",
                    spinner: ".ui-spinner-input"
                }
            },
            _create: function() {
                this._enhance()
            },
            _enhance: function() {
                this.element.attr("role", "toolbar"), this.refresh()
            },
            _destroy: function() {
                this._callChildMethod("destroy"), this.childWidgets.removeData("ui-controlgroup-data"), this.element.removeAttr("role"), this.options.items.controlgroupLabel && this.element.find(this.options.items.controlgroupLabel).find(".ui-controlgroup-label-contents").contents().unwrap()
            },
            _initWidgets: function() {
                var b = this,
                    c = [];
                a.each(this.options.items, function(d, e) {
                    var f, g = {};
                    if (e) return "controlgroupLabel" === d ? (f = b.element.find(e), f.each(function() {
                        var b = a(this);
                        b.children(".ui-controlgroup-label-contents").length || b.contents().wrapAll("<span class='ui-controlgroup-label-contents'></span>")
                    }), b._addClass(f, null, "ui-widget ui-widget-content ui-state-default"), void(c = c.concat(f.get()))) : void(a.fn[d] && (g = b["_" + d + "Options"] ? b["_" + d + "Options"]("middle") : {
                        classes: {}
                    }, b.element.find(e).each(function() {
                        var e = a(this),
                            f = e[d]("instance"),
                            h = a.widget.extend({}, g);
                        if ("button" !== d || !e.parent(".ui-spinner").length) {
                            f || (f = e[d]()[d]("instance")), f && (h.classes = b._resolveClassesValues(h.classes, f)), e[d](h);
                            var i = e[d]("widget");
                            a.data(i[0], "ui-controlgroup-data", f ? f : e[d]("instance")), c.push(i[0])
                        }
                    })))
                }), this.childWidgets = a(a.unique(c)), this._addClass(this.childWidgets, "ui-controlgroup-item")
            },
            _callChildMethod: function(b) {
                this.childWidgets.each(function() {
                    var c = a(this),
                        d = c.data("ui-controlgroup-data");
                    d && d[b] && d[b]()
                })
            },
            _updateCornerClass: function(a, b) {
                var c = "ui-corner-top ui-corner-bottom ui-corner-left ui-corner-right ui-corner-all",
                    d = this._buildSimpleOptions(b, "label").classes.label;
                this._removeClass(a, null, c), this._addClass(a, null, d)
            },
            _buildSimpleOptions: function(a, b) {
                var c = "vertical" === this.options.direction,
                    d = {
                        classes: {}
                    };
                return d.classes[b] = {
                    middle: "",
                    first: "ui-corner-" + (c ? "top" : "left"),
                    last: "ui-corner-" + (c ? "bottom" : "right"),
                    only: "ui-corner-all"
                }[a], d
            },
            _spinnerOptions: function(a) {
                var b = this._buildSimpleOptions(a, "ui-spinner");
                return b.classes["ui-spinner-up"] = "", b.classes["ui-spinner-down"] = "", b
            },
            _buttonOptions: function(a) {
                return this._buildSimpleOptions(a, "ui-button")
            },
            _checkboxradioOptions: function(a) {
                return this._buildSimpleOptions(a, "ui-checkboxradio-label")
            },
            _selectmenuOptions: function(a) {
                var b = "vertical" === this.options.direction;
                return {
                    width: !!b && "auto",
                    classes: {
                        middle: {
                            "ui-selectmenu-button-open": "",
                            "ui-selectmenu-button-closed": ""
                        },
                        first: {
                            "ui-selectmenu-button-open": "ui-corner-" + (b ? "top" : "tl"),
                            "ui-selectmenu-button-closed": "ui-corner-" + (b ? "top" : "left")
                        },
                        last: {
                            "ui-selectmenu-button-open": b ? "" : "ui-corner-tr",
                            "ui-selectmenu-button-closed": "ui-corner-" + (b ? "bottom" : "right")
                        },
                        only: {
                            "ui-selectmenu-button-open": "ui-corner-top",
                            "ui-selectmenu-button-closed": "ui-corner-all"
                        }
                    }[a]
                }
            },
            _resolveClassesValues: function(b, c) {
                var d = {};
                return a.each(b, function(e) {
                    var g = c.options.classes[e] || "";
                    g = a.trim(g.replace(f, "")), d[e] = (g + " " + b[e]).replace(/\s+/g, " ")
                }), d
            },
            _setOption: function(a, b) {
                return "direction" === a && this._removeClass("ui-controlgroup-" + this.options.direction), this._super(a, b), "disabled" === a ? void this._callChildMethod(b ? "disable" : "enable") : void this.refresh()
            },
            refresh: function() {
                var b, c = this;
                this._addClass("ui-controlgroup ui-controlgroup-" + this.options.direction), "horizontal" === this.options.direction && this._addClass(null, "ui-helper-clearfix"), this._initWidgets(), b = this.childWidgets, this.options.onlyVisible && (b = b.filter(":visible")), b.length && (a.each(["first", "last"], function(a, d) {
                    var e = b[d]().data("ui-controlgroup-data");
                    if (e && c["_" + e.widgetName + "Options"]) {
                        var f = c["_" + e.widgetName + "Options"](1 === b.length ? "only" : d);
                        f.classes = c._resolveClassesValues(f.classes, e), e.element[e.widgetName](f)
                    } else c._updateCornerClass(b[d](), d)
                }), this._callChildMethod("refresh"))
            }
        });
        a.widget("ui.checkboxradio", [a.ui.formResetMixin, {
            version: "1.12.1",
            options: {
                disabled: null,
                label: null,
                icon: !0,
                classes: {
                    "ui-checkboxradio-label": "ui-corner-all",
                    "ui-checkboxradio-icon": "ui-corner-all"
                }
            },
            _getCreateOptions: function() {
                var b, c, d = this,
                    e = this._super() || {};
                return this._readType(), c = this.element.labels(), this.label = a(c[c.length - 1]), this.label.length || a.error("No label found for checkboxradio widget"), this.originalLabel = "", this.label.contents().not(this.element[0]).each(function() {
                    d.originalLabel += 3 === this.nodeType ? a(this).text() : this.outerHTML
                }), this.originalLabel && (e.label = this.originalLabel), b = this.element[0].disabled, null != b && (e.disabled = b), e
            },
            _create: function() {
                var a = this.element[0].checked;
                this._bindFormResetHandler(), null == this.options.disabled && (this.options.disabled = this.element[0].disabled), this._setOption("disabled", this.options.disabled), this._addClass("ui-checkboxradio", "ui-helper-hidden-accessible"), this._addClass(this.label, "ui-checkboxradio-label", "ui-button ui-widget"), "radio" === this.type && this._addClass(this.label, "ui-checkboxradio-radio-label"), this.options.label && this.options.label !== this.originalLabel ? this._updateLabel() : this.originalLabel && (this.options.label = this.originalLabel), this._enhance(), a && (this._addClass(this.label, "ui-checkboxradio-checked", "ui-state-active"), this.icon && this._addClass(this.icon, null, "ui-state-hover")), this._on({
                    change: "_toggleClasses",
                    focus: function() {
                        this._addClass(this.label, null, "ui-state-focus ui-visual-focus")
                    },
                    blur: function() {
                        this._removeClass(this.label, null, "ui-state-focus ui-visual-focus")
                    }
                })
            },
            _readType: function() {
                var b = this.element[0].nodeName.toLowerCase();
                this.type = this.element[0].type, "input" === b && /radio|checkbox/.test(this.type) || a.error("Can't create checkboxradio on element.nodeName=" + b + " and element.type=" + this.type)
            },
            _enhance: function() {
                this._updateIcon(this.element[0].checked)
            },
            widget: function() {
                return this.label
            },
            _getRadioGroup: function() {
                var b, c = this.element[0].name,
                    d = "input[name='" + a.ui.escapeSelector(c) + "']";
                return c ? (b = this.form.length ? a(this.form[0].elements).filter(d) : a(d).filter(function() {
                    return 0 === a(this).form().length
                }), b.not(this.element)) : a([])
            },
            _toggleClasses: function() {
                var b = this.element[0].checked;
                this._toggleClass(this.label, "ui-checkboxradio-checked", "ui-state-active", b), this.options.icon && "checkbox" === this.type && this._toggleClass(this.icon, null, "ui-icon-check ui-state-checked", b)._toggleClass(this.icon, null, "ui-icon-blank", !b), "radio" === this.type && this._getRadioGroup().each(function() {
                    var b = a(this).checkboxradio("instance");
                    b && b._removeClass(b.label, "ui-checkboxradio-checked", "ui-state-active")
                })
            },
            _destroy: function() {
                this._unbindFormResetHandler(), this.icon && (this.icon.remove(), this.iconSpace.remove())
            },
            _setOption: function(a, b) {
                if ("label" !== a || b) return this._super(a, b), "disabled" === a ? (this._toggleClass(this.label, null, "ui-state-disabled", b), void(this.element[0].disabled = b)) : void this.refresh()
            },
            _updateIcon: function(b) {
                var c = "ui-icon ui-icon-background ";
                this.options.icon ? (this.icon || (this.icon = a("<span>"), this.iconSpace = a("<span> </span>"), this._addClass(this.iconSpace, "ui-checkboxradio-icon-space")), "checkbox" === this.type ? (c += b ? "ui-icon-check ui-state-checked" : "ui-icon-blank", this._removeClass(this.icon, null, b ? "ui-icon-blank" : "ui-icon-check")) : c += "ui-icon-blank", this._addClass(this.icon, "ui-checkboxradio-icon", c), b || this._removeClass(this.icon, null, "ui-icon-check ui-state-checked"), this.icon.prependTo(this.label).after(this.iconSpace)) : void 0 !== this.icon && (this.icon.remove(), this.iconSpace.remove(), delete this.icon)
            },
            _updateLabel: function() {
                var a = this.label.contents().not(this.element[0]);
                this.icon && (a = a.not(this.icon[0])), this.iconSpace && (a = a.not(this.iconSpace[0])), a.remove(), this.label.append(this.options.label)
            },
            refresh: function() {
                var a = this.element[0].checked,
                    b = this.element[0].disabled;
                this._updateIcon(a), this._toggleClass(this.label, "ui-checkboxradio-checked", "ui-state-active", a), null !== this.options.label && this._updateLabel(), b !== this.options.disabled && this._setOptions({
                    disabled: b
                })
            }
        }]);
        a.ui.checkboxradio;
        a.widget("ui.button", {
            version: "1.12.1",
            defaultElement: "<button>",
            options: {
                classes: {
                    "ui-button": "ui-corner-all"
                },
                disabled: null,
                icon: null,
                iconPosition: "beginning",
                label: null,
                showLabel: !0
            },
            _getCreateOptions: function() {
                var a, b = this._super() || {};
                return this.isInput = this.element.is("input"), a = this.element[0].disabled, null != a && (b.disabled = a), this.originalLabel = this.isInput ? this.element.val() : this.element.html(), this.originalLabel && (b.label = this.originalLabel), b
            },
            _create: function() {
                !this.option.showLabel & !this.options.icon && (this.options.showLabel = !0), null == this.options.disabled && (this.options.disabled = this.element[0].disabled || !1), this.hasTitle = !!this.element.attr("title"), this.options.label && this.options.label !== this.originalLabel && (this.isInput ? this.element.val(this.options.label) : this.element.html(this.options.label)), this._addClass("ui-button", "ui-widget"), this._setOption("disabled", this.options.disabled), this._enhance(), this.element.is("a") && this._on({
                    keyup: function(b) {
                        b.keyCode === a.ui.keyCode.SPACE && (b.preventDefault(), this.element[0].click ? this.element[0].click() : this.element.trigger("click"))
                    }
                })
            },
            _enhance: function() {
                this.element.is("button") || this.element.attr("role", "button"), this.options.icon && (this._updateIcon("icon", this.options.icon), this._updateTooltip())
            },
            _updateTooltip: function() {
                this.title = this.element.attr("title"), this.options.showLabel || this.title || this.element.attr("title", this.options.label)
            },
            _updateIcon: function(b, c) {
                var d = "iconPosition" !== b,
                    e = d ? this.options.iconPosition : c,
                    f = "top" === e || "bottom" === e;
                this.icon ? d && this._removeClass(this.icon, null, this.options.icon) : (this.icon = a("<span>"), this._addClass(this.icon, "ui-button-icon", "ui-icon"), this.options.showLabel || this._addClass("ui-button-icon-only")), d && this._addClass(this.icon, null, c), this._attachIcon(e), f ? (this._addClass(this.icon, null, "ui-widget-icon-block"), this.iconSpace && this.iconSpace.remove()) : (this.iconSpace || (this.iconSpace = a("<span> </span>"), this._addClass(this.iconSpace, "ui-button-icon-space")), this._removeClass(this.icon, null, "ui-wiget-icon-block"), this._attachIconSpace(e))
            },
            _destroy: function() {
                this.element.removeAttr("role"), this.icon && this.icon.remove(), this.iconSpace && this.iconSpace.remove(), this.hasTitle || this.element.removeAttr("title")
            },
            _attachIconSpace: function(a) {
                this.icon[/^(?:end|bottom)/.test(a) ? "before" : "after"](this.iconSpace)
            },
            _attachIcon: function(a) {
                this.element[/^(?:end|bottom)/.test(a) ? "append" : "prepend"](this.icon)
            },
            _setOptions: function(a) {
                var b = void 0 === a.showLabel ? this.options.showLabel : a.showLabel,
                    c = void 0 === a.icon ? this.options.icon : a.icon;
                b || c || (a.showLabel = !0), this._super(a)
            },
            _setOption: function(a, b) {
                "icon" === a && (b ? this._updateIcon(a, b) : this.icon && (this.icon.remove(), this.iconSpace && this.iconSpace.remove())), "iconPosition" === a && this._updateIcon(a, b), "showLabel" === a && (this._toggleClass("ui-button-icon-only", null, !b), this._updateTooltip()), "label" === a && (this.isInput ? this.element.val(b) : (this.element.html(b), this.icon && (this._attachIcon(this.options.iconPosition), this._attachIconSpace(this.options.iconPosition)))), this._super(a, b), "disabled" === a && (this._toggleClass(null, "ui-state-disabled", b), this.element[0].disabled = b, b && this.element.blur())
            },
            refresh: function() {
                var a = this.element.is("input, button") ? this.element[0].disabled : this.element.hasClass("ui-button-disabled");
                a !== this.options.disabled && this._setOptions({
                    disabled: a
                }), this._updateTooltip()
            }
        }), a.uiBackCompat !== !1 && (a.widget("ui.button", a.ui.button, {
            options: {
                text: !0,
                icons: {
                    primary: null,
                    secondary: null
                }
            },
            _create: function() {
                this.options.showLabel && !this.options.text && (this.options.showLabel = this.options.text), !this.options.showLabel && this.options.text && (this.options.text = this.options.showLabel), this.options.icon || !this.options.icons.primary && !this.options.icons.secondary ? this.options.icon && (this.options.icons.primary = this.options.icon) : this.options.icons.primary ? this.options.icon = this.options.icons.primary : (this.options.icon = this.options.icons.secondary, this.options.iconPosition = "end"), this._super()
            },
            _setOption: function(a, b) {
                return "text" === a ? void this._super("showLabel", b) : ("showLabel" === a && (this.options.text = b), "icon" === a && (this.options.icons.primary = b), "icons" === a && (b.primary ? (this._super("icon", b.primary), this._super("iconPosition", "beginning")) : b.secondary && (this._super("icon", b.secondary), this._super("iconPosition", "end"))), void this._superApply(arguments))
            }
        }), a.fn.button = function(b) {
            return function() {
                return !this.length || this.length && "INPUT" !== this[0].tagName || this.length && "INPUT" === this[0].tagName && "checkbox" !== this.attr("type") && "radio" !== this.attr("type") ? b.apply(this, arguments) : (a.ui.checkboxradio || a.error("Checkboxradio widget missing"), 0 === arguments.length ? this.checkboxradio({
                    icon: !1
                }) : this.checkboxradio.apply(this, arguments))
            }
        }(a.fn.button), a.fn.buttonset = function() {
            return a.ui.controlgroup || a.error("Controlgroup widget missing"), "option" === arguments[0] && "items" === arguments[1] && arguments[2] ? this.controlgroup.apply(this, [arguments[0], "items.button", arguments[2]]) : "option" === arguments[0] && "items" === arguments[1] ? this.controlgroup.apply(this, [arguments[0], "items.button"]) : ("object" == typeof arguments[0] && arguments[0].items && (arguments[0].items = {
                button: arguments[0].items
            }), this.controlgroup.apply(this, arguments))
        });
        a.ui.button;
        a.widget("ui.dialog", {
            version: "1.12.1",
            options: {
                appendTo: "body",
                autoOpen: !0,
                buttons: [],
                classes: {
                    "ui-dialog": "ui-corner-all",
                    "ui-dialog-titlebar": "ui-corner-all"
                },
                closeOnEscape: !0,
                closeText: "Close",
                draggable: !0,
                hide: null,
                height: "auto",
                maxHeight: null,
                maxWidth: null,
                minHeight: 150,
                minWidth: 150,
                modal: !1,
                position: {
                    my: "center",
                    at: "center",
                    of: window,
                    collision: "fit",
                    using: function(b) {
                        var c = a(this).css(b).offset().top;
                        c < 0 && a(this).css("top", b.top - c)
                    }
                },
                resizable: !0,
                show: null,
                title: null,
                width: 300,
                beforeClose: null,
                close: null,
                drag: null,
                dragStart: null,
                dragStop: null,
                focus: null,
                open: null,
                resize: null,
                resizeStart: null,
                resizeStop: null
            },
            sizeRelatedOptions: {
                buttons: !0,
                height: !0,
                maxHeight: !0,
                maxWidth: !0,
                minHeight: !0,
                minWidth: !0,
                width: !0
            },
            resizableRelatedOptions: {
                maxHeight: !0,
                maxWidth: !0,
                minHeight: !0,
                minWidth: !0
            },
            _create: function() {
                this.originalCss = {
                    display: this.element[0].style.display,
                    width: this.element[0].style.width,
                    minHeight: this.element[0].style.minHeight,
                    maxHeight: this.element[0].style.maxHeight,
                    height: this.element[0].style.height
                }, this.originalPosition = {
                    parent: this.element.parent(),
                    index: this.element.parent().children().index(this.element)
                }, this.originalTitle = this.element.attr("title"), null == this.options.title && null != this.originalTitle && (this.options.title = this.originalTitle), this.options.disabled && (this.options.disabled = !1), this._createWrapper(), this.element.show().removeAttr("title").appendTo(this.uiDialog), this._addClass("ui-dialog-content", "ui-widget-content"), this._createTitlebar(), this._createButtonPane(), this.options.draggable && a.fn.draggable && this._makeDraggable(), this.options.resizable && a.fn.resizable && this._makeResizable(), this._isOpen = !1, this._trackFocus()
            },
            _init: function() {
                this.options.autoOpen && this.open()
            },
            _appendTo: function() {
                var b = this.options.appendTo;
                return b && (b.jquery || b.nodeType) ? a(b) : this.document.find(b || "body").eq(0)
            },
            _destroy: function() {
                var a, b = this.originalPosition;
                this._untrackInstance(), this._destroyOverlay(), this.element.removeUniqueId().css(this.originalCss).detach(), this.uiDialog.remove(), this.originalTitle && this.element.attr("title", this.originalTitle), a = b.parent.children().eq(b.index), a.length && a[0] !== this.element[0] ? a.before(this.element) : b.parent.append(this.element)
            },
            widget: function() {
                return this.uiDialog
            },
            disable: a.noop,
            enable: a.noop,
            close: function(b) {
                var c = this;
                this._isOpen && this._trigger("beforeClose", b) !== !1 && (this._isOpen = !1, this._focusedElement = null, this._destroyOverlay(), this._untrackInstance(), this.opener.filter(":focusable").trigger("focus").length || a.ui.safeBlur(a.ui.safeActiveElement(this.document[0])), this._hide(this.uiDialog, this.options.hide, function() {
                    c._trigger("close", b)
                }))
            },
            isOpen: function() {
                return this._isOpen
            },
            moveToTop: function() {
                this._moveToTop()
            },
            _moveToTop: function(b, c) {
                var d = !1,
                    e = this.uiDialog.siblings(".ui-front:visible").map(function() {
                        return +a(this).css("z-index")
                    }).get(),
                    f = Math.max.apply(null, e);
                return f >= +this.uiDialog.css("z-index") && (this.uiDialog.css("z-index", f + 1), d = !0), d && !c && this._trigger("focus", b), d
            },
            open: function() {
                var b = this;
                return this._isOpen ? void(this._moveToTop() && this._focusTabbable()) : (this._isOpen = !0, this.opener = a(a.ui.safeActiveElement(this.document[0])), this._size(), this._position(), this._createOverlay(), this._moveToTop(null, !0), this.overlay && this.overlay.css("z-index", this.uiDialog.css("z-index") - 1), this._show(this.uiDialog, this.options.show, function() {
                    b._focusTabbable(), b._trigger("focus")
                }), this._makeFocusTarget(), void this._trigger("open"))
            },
            _focusTabbable: function() {
                var a = this._focusedElement;
                a || (a = this.element.find("[autofocus]")), a.length || (a = this.element.find(":tabbable")), a.length || (a = this.uiDialogButtonPane.find(":tabbable")), a.length || (a = this.uiDialogTitlebarClose.filter(":tabbable")), a.length || (a = this.uiDialog), a.eq(0).trigger("focus")
            },
            _keepFocus: function(b) {
                function c() {
                    var b = a.ui.safeActiveElement(this.document[0]),
                        c = this.uiDialog[0] === b || a.contains(this.uiDialog[0], b);
                    c || this._focusTabbable()
                }
                b.preventDefault(), c.call(this), this._delay(c)
            },
            _createWrapper: function() {
                this.uiDialog = a("<div>").hide().attr({
                    tabIndex: -1,
                    role: "dialog"
                }).appendTo(this._appendTo()), this._addClass(this.uiDialog, "ui-dialog", "ui-widget ui-widget-content ui-front"), this._on(this.uiDialog, {
                    keydown: function(b) {
                        if (this.options.closeOnEscape && !b.isDefaultPrevented() && b.keyCode && b.keyCode === a.ui.keyCode.ESCAPE) return b.preventDefault(), void this.close(b);
                        if (b.keyCode === a.ui.keyCode.TAB && !b.isDefaultPrevented()) {
                            var c = this.uiDialog.find(":tabbable"),
                                d = c.filter(":first"),
                                e = c.filter(":last");
                            b.target !== e[0] && b.target !== this.uiDialog[0] || b.shiftKey ? b.target !== d[0] && b.target !== this.uiDialog[0] || !b.shiftKey || (this._delay(function() {
                                e.trigger("focus")
                            }), b.preventDefault()) : (this._delay(function() {
                                d.trigger("focus")
                            }), b.preventDefault())
                        }
                    },
                    mousedown: function(a) {
                        this._moveToTop(a) && this._focusTabbable()
                    }
                }), this.element.find("[aria-describedby]").length || this.uiDialog.attr({
                    "aria-describedby": this.element.uniqueId().attr("id")
                })
            },
            _createTitlebar: function() {
                var b;
                this.uiDialogTitlebar = a("<div>"), this._addClass(this.uiDialogTitlebar, "ui-dialog-titlebar", "ui-widget-header ui-helper-clearfix"), this._on(this.uiDialogTitlebar, {
                    mousedown: function(b) {
                        a(b.target).closest(".ui-dialog-titlebar-close") || this.uiDialog.trigger("focus")
                    }
                }), this.uiDialogTitlebarClose = a("<button type='button'></button>").button({
                    label: a("<a>").text(this.options.closeText).html(),
                    icon: "ui-icon-closethick",
                    showLabel: !1
                }).appendTo(this.uiDialogTitlebar), this._addClass(this.uiDialogTitlebarClose, "ui-dialog-titlebar-close"), this._on(this.uiDialogTitlebarClose, {
                    click: function(a) {
                        a.preventDefault(), this.close(a)
                    }
                }), b = a("<span>").uniqueId().prependTo(this.uiDialogTitlebar), this._addClass(b, "ui-dialog-title"), this._title(b), this.uiDialogTitlebar.prependTo(this.uiDialog), this.uiDialog.attr({
                    "aria-labelledby": b.attr("id")
                })
            },
            _title: function(a) {
                this.options.title ? a.text(this.options.title) : a.html("&#160;")
            },
            _createButtonPane: function() {
                this.uiDialogButtonPane = a("<div>"), this._addClass(this.uiDialogButtonPane, "ui-dialog-buttonpane", "ui-widget-content ui-helper-clearfix"), this.uiButtonSet = a("<div>").appendTo(this.uiDialogButtonPane), this._addClass(this.uiButtonSet, "ui-dialog-buttonset"), this._createButtons()
            },
            _createButtons: function() {
                var b = this,
                    c = this.options.buttons;
                return this.uiDialogButtonPane.remove(), this.uiButtonSet.empty(), a.isEmptyObject(c) || a.isArray(c) && !c.length ? void this._removeClass(this.uiDialog, "ui-dialog-buttons") : (a.each(c, function(c, d) {
                    var e, f;
                    d = a.isFunction(d) ? {
                        click: d,
                        text: c
                    } : d, d = a.extend({
                        type: "button"
                    }, d), e = d.click, f = {
                        icon: d.icon,
                        iconPosition: d.iconPosition,
                        showLabel: d.showLabel,
                        icons: d.icons,
                        text: d.text
                    }, delete d.click, delete d.icon, delete d.iconPosition, delete d.showLabel, delete d.icons, "boolean" == typeof d.text && delete d.text, a("<button></button>", d).button(f).appendTo(b.uiButtonSet).on("click", function() {
                        e.apply(b.element[0], arguments)
                    })
                }), this._addClass(this.uiDialog, "ui-dialog-buttons"), void this.uiDialogButtonPane.appendTo(this.uiDialog))
            },
            _makeDraggable: function() {
                var b = this,
                    c = this.options;

                function d(a) {
                    return {
                        position: a.position,
                        offset: a.offset
                    }
                }
                this.uiDialog.draggable({
                    cancel: ".ui-dialog-content, .ui-dialog-titlebar-close",
                    handle: ".ui-dialog-titlebar",
                    containment: "document",
                    start: function(c, e) {
                        b._addClass(a(this), "ui-dialog-dragging"), b._blockFrames(), b._trigger("dragStart", c, d(e))
                    },
                    drag: function(a, c) {
                        b._trigger("drag", a, d(c))
                    },
                    stop: function(e, f) {
                        var g = f.offset.left - b.document.scrollLeft(),
                            h = f.offset.top - b.document.scrollTop();
                        c.position = {
                            my: "left top",
                            at: "left" + (g >= 0 ? "+" : "") + g + " top" + (h >= 0 ? "+" : "") + h,
                            of: b.window
                        }, b._removeClass(a(this), "ui-dialog-dragging"), b._unblockFrames(), b._trigger("dragStop", e, d(f))
                    }
                })
            },
            _makeResizable: function() {
                var b = this,
                    c = this.options,
                    d = c.resizable,
                    e = this.uiDialog.css("position"),
                    f = "string" == typeof d ? d : "n,e,s,w,se,sw,ne,nw";

                function g(a) {
                    return {
                        originalPosition: a.originalPosition,
                        originalSize: a.originalSize,
                        position: a.position,
                        size: a.size
                    }
                }
                this.uiDialog.resizable({
                    cancel: ".ui-dialog-content",
                    containment: "document",
                    alsoResize: this.element,
                    maxWidth: c.maxWidth,
                    maxHeight: c.maxHeight,
                    minWidth: c.minWidth,
                    minHeight: this._minHeight(),
                    handles: f,
                    start: function(c, d) {
                        b._addClass(a(this), "ui-dialog-resizing"), b._blockFrames(), b._trigger("resizeStart", c, g(d))
                    },
                    resize: function(a, c) {
                        b._trigger("resize", a, g(c))
                    },
                    stop: function(d, e) {
                        var f = b.uiDialog.offset(),
                            h = f.left - b.document.scrollLeft(),
                            i = f.top - b.document.scrollTop();
                        c.height = b.uiDialog.height(), c.width = b.uiDialog.width(), c.position = {
                            my: "left top",
                            at: "left" + (h >= 0 ? "+" : "") + h + " top" + (i >= 0 ? "+" : "") + i,
                            of: b.window
                        }, b._removeClass(a(this), "ui-dialog-resizing"), b._unblockFrames(), b._trigger("resizeStop", d, g(e))
                    }
                }).css("position", e)
            },
            _trackFocus: function() {
                this._on(this.widget(), {
                    focusin: function(b) {
                        this._makeFocusTarget(), this._focusedElement = a(b.target)
                    }
                })
            },
            _makeFocusTarget: function() {
                this._untrackInstance(), this._trackingInstances().unshift(this)
            },
            _untrackInstance: function() {
                var b = this._trackingInstances(),
                    c = a.inArray(this, b);
                c !== -1 && b.splice(c, 1)
            },
            _trackingInstances: function() {
                var a = this.document.data("ui-dialog-instances");
                return a || (a = [], this.document.data("ui-dialog-instances", a)), a
            },
            _minHeight: function() {
                var a = this.options;
                return "auto" === a.height ? a.minHeight : Math.min(a.minHeight, a.height)
            },
            _position: function() {
                var a = this.uiDialog.is(":visible");
                a || this.uiDialog.show(), this.uiDialog.position(this.options.position), a || this.uiDialog.hide()
            },
            _setOptions: function(b) {
                var c = this,
                    d = !1,
                    e = {};
                a.each(b, function(a, b) {
                    c._setOption(a, b), a in c.sizeRelatedOptions && (d = !0), a in c.resizableRelatedOptions && (e[a] = b)
                }), d && (this._size(), this._position()), this.uiDialog.is(":data(ui-resizable)") && this.uiDialog.resizable("option", e)
            },
            _setOption: function(b, c) {
                var d, e, f = this.uiDialog;
                "disabled" !== b && (this._super(b, c), "appendTo" === b && this.uiDialog.appendTo(this._appendTo()), "buttons" === b && this._createButtons(), "closeText" === b && this.uiDialogTitlebarClose.button({
                    label: a("<a>").text("" + this.options.closeText).html()
                }), "draggable" === b && (d = f.is(":data(ui-draggable)"), d && !c && f.draggable("destroy"), !d && c && this._makeDraggable()), "position" === b && this._position(), "resizable" === b && (e = f.is(":data(ui-resizable)"), e && !c && f.resizable("destroy"), e && "string" == typeof c && f.resizable("option", "handles", c), e || c === !1 || this._makeResizable()), "title" === b && this._title(this.uiDialogTitlebar.find(".ui-dialog-title")))
            },
            _size: function() {
                var a, b, c, d = this.options;
                this.element.show().css({
                    width: "auto",
                    minHeight: 0,
                    maxHeight: "none",
                    height: 0
                }), d.minWidth > d.width && (d.width = d.minWidth), a = this.uiDialog.css({
                    height: "auto",
                    width: d.width
                }).outerHeight(), b = Math.max(0, d.minHeight - a), c = "number" == typeof d.maxHeight ? Math.max(0, d.maxHeight - a) : "none", "auto" === d.height ? this.element.css({
                    minHeight: b,
                    maxHeight: c,
                    height: "auto"
                }) : this.element.height(Math.max(0, d.height - a)), this.uiDialog.is(":data(ui-resizable)") && this.uiDialog.resizable("option", "minHeight", this._minHeight())
            },
            _blockFrames: function() {
                this.iframeBlocks = this.document.find("iframe").map(function() {
                    var b = a(this);
                    return a("<div>").css({
                        position: "absolute",
                        width: b.outerWidth(),
                        height: b.outerHeight()
                    }).appendTo(b.parent()).offset(b.offset())[0]
                })
            },
            _unblockFrames: function() {
                this.iframeBlocks && (this.iframeBlocks.remove(), delete this.iframeBlocks)
            },
            _allowInteraction: function(b) {
                return !!a(b.target).closest(".ui-dialog").length || !!a(b.target).closest(".ui-datepicker").length
            },
            _createOverlay: function() {
                if (this.options.modal) {
                    var b = !0;
                    this._delay(function() {
                        b = !1
                    }), this.document.data("ui-dialog-overlays") || this._on(this.document, {
                        focusin: function(a) {
                            b || this._allowInteraction(a) || (a.preventDefault(), this._trackingInstances()[0]._focusTabbable())
                        }
                    }), this.overlay = a("<div>").appendTo(this._appendTo()), this._addClass(this.overlay, null, "ui-widget-overlay ui-front"), this._on(this.overlay, {
                        mousedown: "_keepFocus"
                    }), this.document.data("ui-dialog-overlays", (this.document.data("ui-dialog-overlays") || 0) + 1)
                }
            },
            _destroyOverlay: function() {
                if (this.options.modal && this.overlay) {
                    var a = this.document.data("ui-dialog-overlays") - 1;
                    a ? this.document.data("ui-dialog-overlays", a) : (this._off(this.document, "focusin"), this.document.removeData("ui-dialog-overlays")), this.overlay.remove(), this.overlay = null
                }
            }
        }), a.uiBackCompat !== !1 && a.widget("ui.dialog", a.ui.dialog, {
            options: {
                dialogClass: ""
            },
            _createWrapper: function() {
                this._super(), this.uiDialog.addClass(this.options.dialogClass)
            },
            _setOption: function(a, b) {
                "dialogClass" === a && this.uiDialog.removeClass(this.options.dialogClass).addClass(b), this._superApply(arguments)
            }
        });
        a.ui.dialog;
        a.widget("ui.tabs", {
            version: "1.12.1",
            delay: 300,
            options: {
                active: null,
                classes: {
                    "ui-tabs": "ui-corner-all",
                    "ui-tabs-nav": "ui-corner-all",
                    "ui-tabs-panel": "ui-corner-bottom",
                    "ui-tabs-tab": "ui-corner-top"
                },
                collapsible: !1,
                event: "click",
                heightStyle: "content",
                hide: null,
                show: null,
                activate: null,
                beforeActivate: null,
                beforeLoad: null,
                load: null
            },
            _isLocal: function() {
                var a = /#.*$/;
                return function(b) {
                    var c, d;
                    c = b.href.replace(a, ""), d = location.href.replace(a, "");
                    try {
                        c = decodeURIComponent(c)
                    } catch (a) {}
                    try {
                        d = decodeURIComponent(d)
                    } catch (a) {}
                    return b.hash.length > 1 && c === d
                }
            }(),
            _create: function() {
                var b = this,
                    c = this.options;
                this.running = !1, this._addClass("ui-tabs", "ui-widget ui-widget-content"), this._toggleClass("ui-tabs-collapsible", null, c.collapsible), this._processTabs(), c.active = this._initialActive(), a.isArray(c.disabled) && (c.disabled = a.unique(c.disabled.concat(a.map(this.tabs.filter(".ui-state-disabled"), function(a) {
                    return b.tabs.index(a)
                }))).sort()), this.options.active !== !1 && this.anchors.length ? this.active = this._findActive(c.active) : this.active = a(), this._refresh(), this.active.length && this.load(c.active)
            },
            _initialActive: function() {
                var b = this.options.active,
                    c = this.options.collapsible,
                    d = location.hash.substring(1);
                return null === b && (d && this.tabs.each(function(c, e) {
                    if (a(e).attr("aria-controls") === d) return b = c, !1
                }), null === b && (b = this.tabs.index(this.tabs.filter(".ui-tabs-active"))), null !== b && b !== -1 || (b = !!this.tabs.length && 0)), b !== !1 && (b = this.tabs.index(this.tabs.eq(b)), b === -1 && (b = !c && 0)), !c && b === !1 && this.anchors.length && (b = 0), b
            },
            _getCreateEventData: function() {
                return {
                    tab: this.active,
                    panel: this.active.length ? this._getPanelForTab(this.active) : a()
                }
            },
            _tabKeydown: function(b) {
                var c = a(a.ui.safeActiveElement(this.document[0])).closest("li"),
                    d = this.tabs.index(c),
                    e = !0;
                if (!this._handlePageNav(b)) {
                    switch (b.keyCode) {
                        case a.ui.keyCode.RIGHT:
                        case a.ui.keyCode.DOWN:
                            d++;
                            break;
                        case a.ui.keyCode.UP:
                        case a.ui.keyCode.LEFT:
                            e = !1, d--;
                            break;
                        case a.ui.keyCode.END:
                            d = this.anchors.length - 1;
                            break;
                        case a.ui.keyCode.HOME:
                            d = 0;
                            break;
                        case a.ui.keyCode.SPACE:
                            return b.preventDefault(), clearTimeout(this.activating), void this._activate(d);
                        case a.ui.keyCode.ENTER:
                            return b.preventDefault(), clearTimeout(this.activating), void this._activate(d !== this.options.active && d);
                        default:
                            return
                    }
                    b.preventDefault(), clearTimeout(this.activating), d = this._focusNextTab(d, e), b.ctrlKey || b.metaKey || (c.attr("aria-selected", "false"), this.tabs.eq(d).attr("aria-selected", "true"), this.activating = this._delay(function() {
                        this.option("active", d)
                    }, this.delay))
                }
            },
            _panelKeydown: function(b) {
                this._handlePageNav(b) || b.ctrlKey && b.keyCode === a.ui.keyCode.UP && (b.preventDefault(), this.active.trigger("focus"))
            },
            _handlePageNav: function(b) {
                return b.altKey && b.keyCode === a.ui.keyCode.PAGE_UP ? (this._activate(this._focusNextTab(this.options.active - 1, !1)), !0) : b.altKey && b.keyCode === a.ui.keyCode.PAGE_DOWN ? (this._activate(this._focusNextTab(this.options.active + 1, !0)), !0) : void 0
            },
            _findNextTab: function(b, c) {
                var d = this.tabs.length - 1;

                function e() {
                    return b > d && (b = 0), b < 0 && (b = d), b
                }
                for (; a.inArray(e(), this.options.disabled) !== -1;) b = c ? b + 1 : b - 1;
                return b
            },
            _focusNextTab: function(a, b) {
                return a = this._findNextTab(a, b), this.tabs.eq(a).trigger("focus"), a
            },
            _setOption: function(a, b) {
                return "active" === a ? void this._activate(b) : (this._super(a, b), "collapsible" === a && (this._toggleClass("ui-tabs-collapsible", null, b), b || this.options.active !== !1 || this._activate(0)), "event" === a && this._setupEvents(b), void("heightStyle" === a && this._setupHeightStyle(b)))
            },
            _sanitizeSelector: function(a) {
                return a ? a.replace(/[!"$%&'()*+,.\/:;<=>?@\[\]\^`{|}~]/g, "\\$&") : ""
            },
            refresh: function() {
                var b = this.options,
                    c = this.tablist.children(":has(a[href])");
                b.disabled = a.map(c.filter(".ui-state-disabled"), function(a) {
                    return c.index(a)
                }), this._processTabs(), b.active !== !1 && this.anchors.length ? this.active.length && !a.contains(this.tablist[0], this.active[0]) ? this.tabs.length === b.disabled.length ? (b.active = !1, this.active = a()) : this._activate(this._findNextTab(Math.max(0, b.active - 1), !1)) : b.active = this.tabs.index(this.active) : (b.active = !1, this.active = a()), this._refresh()
            },
            _refresh: function() {
                this._setOptionDisabled(this.options.disabled), this._setupEvents(this.options.event), this._setupHeightStyle(this.options.heightStyle), this.tabs.not(this.active).attr({
                    "aria-selected": "false",
                    "aria-expanded": "false",
                    tabIndex: -1
                }), this.panels.not(this._getPanelForTab(this.active)).hide().attr({
                    "aria-hidden": "true"
                }), this.active.length ? (this.active.attr({
                    "aria-selected": "true",
                    "aria-expanded": "true",
                    tabIndex: 0
                }), this._addClass(this.active, "ui-tabs-active", "ui-state-active"), this._getPanelForTab(this.active).show().attr({
                    "aria-hidden": "false"
                })) : this.tabs.eq(0).attr("tabIndex", 0)
            },
            _processTabs: function() {
                var b = this,
                    c = this.tabs,
                    d = this.anchors,
                    e = this.panels;
                this.tablist = this._getList().attr("role", "tablist"), this._addClass(this.tablist, "ui-tabs-nav", "ui-helper-reset ui-helper-clearfix ui-widget-header"), this.tablist.on("mousedown" + this.eventNamespace, "> li", function(b) {
                    a(this).is(".ui-state-disabled") && b.preventDefault()
                }).on("focus" + this.eventNamespace, ".ui-tabs-anchor", function() {
                    a(this).closest("li").is(".ui-state-disabled") && this.blur()
                }), this.tabs = this.tablist.find("> li:has(a[href])").attr({
                    role: "tab",
                    tabIndex: -1
                }), this._addClass(this.tabs, "ui-tabs-tab", "ui-state-default"), this.anchors = this.tabs.map(function() {
                    return a("a", this)[0]
                }).attr({
                    role: "presentation",
                    tabIndex: -1
                }), this._addClass(this.anchors, "ui-tabs-anchor"), this.panels = a(), this.anchors.each(function(c, d) {
                    var e, f, g, h = a(d).uniqueId().attr("id"),
                        i = a(d).closest("li"),
                        j = i.attr("aria-controls");
                    b._isLocal(d) ? (e = d.hash, g = e.substring(1), f = b.element.find(b._sanitizeSelector(e))) : (g = i.attr("aria-controls") || a({}).uniqueId()[0].id, e = "#" + g, f = b.element.find(e), f.length || (f = b._createPanel(g), f.insertAfter(b.panels[c - 1] || b.tablist)), f.attr("aria-live", "polite")), f.length && (b.panels = b.panels.add(f)), j && i.data("ui-tabs-aria-controls", j), i.attr({
                        "aria-controls": g,
                        "aria-labelledby": h
                    }), f.attr("aria-labelledby", h)
                }), this.panels.attr("role", "tabpanel"), this._addClass(this.panels, "ui-tabs-panel", "ui-widget-content"), c && (this._off(c.not(this.tabs)), this._off(d.not(this.anchors)), this._off(e.not(this.panels)))
            },
            _getList: function() {
                return this.tablist || this.element.find("ol, ul").eq(0)
            },
            _createPanel: function(b) {
                return a("<div>").attr("id", b).data("ui-tabs-destroy", !0)
            },
            _setOptionDisabled: function(b) {
                var c, d, e;
                for (a.isArray(b) && (b.length ? b.length === this.anchors.length && (b = !0) : b = !1), e = 0; d = this.tabs[e]; e++) c = a(d), b === !0 || a.inArray(e, b) !== -1 ? (c.attr("aria-disabled", "true"), this._addClass(c, null, "ui-state-disabled")) : (c.removeAttr("aria-disabled"), this._removeClass(c, null, "ui-state-disabled"));
                this.options.disabled = b, this._toggleClass(this.widget(), this.widgetFullName + "-disabled", null, b === !0)
            },
            _setupEvents: function(b) {
                var c = {};
                b && a.each(b.split(" "), function(a, b) {
                    c[b] = "_eventHandler"
                }), this._off(this.anchors.add(this.tabs).add(this.panels)), this._on(!0, this.anchors, {
                    click: function(a) {
                        a.preventDefault()
                    }
                }), this._on(this.anchors, c), this._on(this.tabs, {
                    keydown: "_tabKeydown"
                }), this._on(this.panels, {
                    keydown: "_panelKeydown"
                }), this._focusable(this.tabs), this._hoverable(this.tabs)
            },
            _setupHeightStyle: function(b) {
                var c, d = this.element.parent();
                "fill" === b ? (c = d.height(), c -= this.element.outerHeight() - this.element.height(), this.element.siblings(":visible").each(function() {
                    var b = a(this),
                        d = b.css("position");
                    "absolute" !== d && "fixed" !== d && (c -= b.outerHeight(!0))
                }), this.element.children().not(this.panels).each(function() {
                    c -= a(this).outerHeight(!0)
                }), this.panels.each(function() {
                    a(this).height(Math.max(0, c - a(this).innerHeight() + a(this).height()))
                }).css("overflow", "auto")) : "auto" === b && (c = 0, this.panels.each(function() {
                    c = Math.max(c, a(this).height("").height())
                }).height(c))
            },
            _eventHandler: function(b) {
                var c = this.options,
                    d = this.active,
                    e = a(b.currentTarget),
                    f = e.closest("li"),
                    g = f[0] === d[0],
                    h = g && c.collapsible,
                    i = h ? a() : this._getPanelForTab(f),
                    j = d.length ? this._getPanelForTab(d) : a(),
                    k = {
                        oldTab: d,
                        oldPanel: j,
                        newTab: h ? a() : f,
                        newPanel: i
                    };
                b.preventDefault(), f.hasClass("ui-state-disabled") || f.hasClass("ui-tabs-loading") || this.running || g && !c.collapsible || this._trigger("beforeActivate", b, k) === !1 || (c.active = !h && this.tabs.index(f), this.active = g ? a() : f, this.xhr && this.xhr.abort(), j.length || i.length || a.error("jQuery UI Tabs: Mismatching fragment identifier."), i.length && this.load(this.tabs.index(f), b), this._toggle(b, k))
            },
            _toggle: function(b, c) {
                var d = this,
                    e = c.newPanel,
                    f = c.oldPanel;
                this.running = !0;

                function g() {
                    d.running = !1, d._trigger("activate", b, c)
                }

                function h() {
                    d._addClass(c.newTab.closest("li"), "ui-tabs-active", "ui-state-active"), e.length && d.options.show ? d._show(e, d.options.show, g) : (e.show(), g())
                }
                f.length && this.options.hide ? this._hide(f, this.options.hide, function() {
                    d._removeClass(c.oldTab.closest("li"), "ui-tabs-active", "ui-state-active"), h()
                }) : (this._removeClass(c.oldTab.closest("li"), "ui-tabs-active", "ui-state-active"), f.hide(), h()), f.attr("aria-hidden", "true"), c.oldTab.attr({
                    "aria-selected": "false",
                    "aria-expanded": "false"
                }), e.length && f.length ? c.oldTab.attr("tabIndex", -1) : e.length && this.tabs.filter(function() {
                    return 0 === a(this).attr("tabIndex")
                }).attr("tabIndex", -1), e.attr("aria-hidden", "false"), c.newTab.attr({
                    "aria-selected": "true",
                    "aria-expanded": "true",
                    tabIndex: 0
                })
            },
            _activate: function(b) {
                var c, d = this._findActive(b);
                d[0] !== this.active[0] && (d.length || (d = this.active), c = d.find(".ui-tabs-anchor")[0], this._eventHandler({
                    target: c,
                    currentTarget: c,
                    preventDefault: a.noop
                }))
            },
            _findActive: function(b) {
                return b === !1 ? a() : this.tabs.eq(b)
            },
            _getIndex: function(b) {
                return "string" == typeof b && (b = this.anchors.index(this.anchors.filter("[href$='" + a.ui.escapeSelector(b) + "']"))), b
            },
            _destroy: function() {
                this.xhr && this.xhr.abort(), this.tablist.removeAttr("role").off(this.eventNamespace), this.anchors.removeAttr("role tabIndex").removeUniqueId(), this.tabs.add(this.panels).each(function() {
                    a.data(this, "ui-tabs-destroy") ? a(this).remove() : a(this).removeAttr("role tabIndex aria-live aria-busy aria-selected aria-labelledby aria-hidden aria-expanded")
                }), this.tabs.each(function() {
                    var b = a(this),
                        c = b.data("ui-tabs-aria-controls");
                    c ? b.attr("aria-controls", c).removeData("ui-tabs-aria-controls") : b.removeAttr("aria-controls")
                }), this.panels.show(), "content" !== this.options.heightStyle && this.panels.css("height", "")
            },
            enable: function(b) {
                var c = this.options.disabled;
                c !== !1 && (void 0 === b ? c = !1 : (b = this._getIndex(b), c = a.isArray(c) ? a.map(c, function(a) {
                    return a !== b ? a : null
                }) : a.map(this.tabs, function(a, c) {
                    return c !== b ? c : null
                })), this._setOptionDisabled(c))
            },
            disable: function(b) {
                var c = this.options.disabled;
                if (c !== !0) {
                    if (void 0 === b) c = !0;
                    else {
                        if (b = this._getIndex(b), a.inArray(b, c) !== -1) return;
                        c = a.isArray(c) ? a.merge([b], c).sort() : [b]
                    }
                    this._setOptionDisabled(c)
                }
            },
            load: function(b, c) {
                b = this._getIndex(b);
                var d = this,
                    e = this.tabs.eq(b),
                    f = e.find(".ui-tabs-anchor"),
                    g = this._getPanelForTab(e),
                    h = {
                        tab: e,
                        panel: g
                    },
                    i = function(a, b) {
                        "abort" === b && d.panels.stop(!1, !0), d._removeClass(e, "ui-tabs-loading"), g.removeAttr("aria-busy"), a === d.xhr && delete d.xhr
                    };
                this._isLocal(f[0]) || (this.xhr = a.ajax(this._ajaxSettings(f, c, h)), this.xhr && "canceled" !== this.xhr.statusText && (this._addClass(e, "ui-tabs-loading"), g.attr("aria-busy", "true"), this.xhr.done(function(a, b, e) {
                    setTimeout(function() {
                        g.html(a), d._trigger("load", c, h), i(e, b)
                    }, 1)
                }).fail(function(a, b) {
                    setTimeout(function() {
                        i(a, b)
                    }, 1)
                })))
            },
            _ajaxSettings: function(b, c, d) {
                var e = this;
                return {
                    url: b.attr("href").replace(/#.*$/, ""),
                    beforeSend: function(b, f) {
                        return e._trigger("beforeLoad", c, a.extend({
                            jqXHR: b,
                            ajaxSettings: f
                        }, d))
                    }
                }
            },
            _getPanelForTab: function(b) {
                var c = a(b).attr("aria-controls");
                return this.element.find(this._sanitizeSelector("#" + c))
            }
        }), a.uiBackCompat !== !1 && a.widget("ui.tabs", a.ui.tabs, {
            _processTabs: function() {
                this._superApply(arguments), this._addClass(this.tabs, "ui-tab")
            }
        });
        var g = (a.ui.tabs, "ui-effects-"),
            h = "ui-effects-style",
            i = "ui-effects-animated",
            j = a;
        a.effects = {
                effect: {}
            },
            function(a, b) {
                var c, d = "backgroundColor borderBottomColor borderLeftColor borderRightColor borderTopColor color columnRuleColor outlineColor textDecorationColor textEmphasisColor",
                    e = /^([\-+])=\s*(\d+\.?\d*)/,
                    f = [{
                        re: /rgba?\(\s*(\d{1,3})\s*,\s*(\d{1,3})\s*,\s*(\d{1,3})\s*(?:,\s*(\d?(?:\.\d+)?)\s*)?\)/,
                        parse: function(a) {
                            return [a[1], a[2], a[3], a[4]]
                        }
                    }, {
                        re: /rgba?\(\s*(\d+(?:\.\d+)?)\%\s*,\s*(\d+(?:\.\d+)?)\%\s*,\s*(\d+(?:\.\d+)?)\%\s*(?:,\s*(\d?(?:\.\d+)?)\s*)?\)/,
                        parse: function(a) {
                            return [2.55 * a[1], 2.55 * a[2], 2.55 * a[3], a[4]]
                        }
                    }, {
                        re: /#([a-f0-9]{2})([a-f0-9]{2})([a-f0-9]{2})/,
                        parse: function(a) {
                            return [parseInt(a[1], 16), parseInt(a[2], 16), parseInt(a[3], 16)]
                        }
                    }, {
                        re: /#([a-f0-9])([a-f0-9])([a-f0-9])/,
                        parse: function(a) {
                            return [parseInt(a[1] + a[1], 16), parseInt(a[2] + a[2], 16), parseInt(a[3] + a[3], 16)]
                        }
                    }, {
                        re: /hsla?\(\s*(\d+(?:\.\d+)?)\s*,\s*(\d+(?:\.\d+)?)\%\s*,\s*(\d+(?:\.\d+)?)\%\s*(?:,\s*(\d?(?:\.\d+)?)\s*)?\)/,
                        space: "hsla",
                        parse: function(a) {
                            return [a[1], a[2] / 100, a[3] / 100, a[4]]
                        }
                    }],
                    g = a.Color = function(b, c, d, e) {
                        return new a.Color.fn.parse(b, c, d, e)
                    },
                    h = {
                        rgba: {
                            props: {
                                red: {
                                    idx: 0,
                                    type: "byte"
                                },
                                green: {
                                    idx: 1,
                                    type: "byte"
                                },
                                blue: {
                                    idx: 2,
                                    type: "byte"
                                }
                            }
                        },
                        hsla: {
                            props: {
                                hue: {
                                    idx: 0,
                                    type: "degrees"
                                },
                                saturation: {
                                    idx: 1,
                                    type: "percent"
                                },
                                lightness: {
                                    idx: 2,
                                    type: "percent"
                                }
                            }
                        }
                    },
                    i = {
                        byte: {
                            floor: !0,
                            max: 255
                        },
                        percent: {
                            max: 1
                        },
                        degrees: {
                            mod: 360,
                            floor: !0
                        }
                    },
                    j = g.support = {},
                    k = a("<p>")[0],
                    l = a.each;
                k.style.cssText = "background-color:rgba(1,1,1,.5)", j.rgba = k.style.backgroundColor.indexOf("rgba") > -1, l(h, function(a, b) {
                    b.cache = "_" + a, b.props.alpha = {
                        idx: 3,
                        type: "percent",
                        def: 1
                    }
                });

                function m(a, b, c) {
                    var d = i[b.type] || {};
                    return null == a ? c || !b.def ? null : b.def : (a = d.floor ? ~~a : parseFloat(a), isNaN(a) ? b.def : d.mod ? (a + d.mod) % d.mod : 0 > a ? 0 : d.max < a ? d.max : a)
                }

                function n(b) {
                    var d = g(),
                        e = d._rgba = [];
                    return b = b.toLowerCase(), l(f, function(a, c) {
                        var f, g = c.re.exec(b),
                            i = g && c.parse(g),
                            j = c.space || "rgba";
                        if (i) return f = d[j](i), d[h[j].cache] = f[h[j].cache], e = d._rgba = f._rgba, !1
                    }), e.length ? ("0,0,0,0" === e.join() && a.extend(e, c.transparent), d) : c[b]
                }
                g.fn = a.extend(g.prototype, {
                    parse: function(d, e, f, i) {
                        if (d === b) return this._rgba = [null, null, null, null], this;
                        (d.jquery || d.nodeType) && (d = a(d).css(e), e = b);
                        var j = this,
                            k = a.type(d),
                            o = this._rgba = [];
                        return e !== b && (d = [d, e, f, i], k = "array"), "string" === k ? this.parse(n(d) || c._default) : "array" === k ? (l(h.rgba.props, function(a, b) {
                            o[b.idx] = m(d[b.idx], b)
                        }), this) : "object" === k ? (d instanceof g ? l(h, function(a, b) {
                            d[b.cache] && (j[b.cache] = d[b.cache].slice())
                        }) : l(h, function(b, c) {
                            var e = c.cache;
                            l(c.props, function(a, b) {
                                if (!j[e] && c.to) {
                                    if ("alpha" === a || null == d[a]) return;
                                    j[e] = c.to(j._rgba)
                                }
                                j[e][b.idx] = m(d[a], b, !0)
                            }), j[e] && a.inArray(null, j[e].slice(0, 3)) < 0 && (j[e][3] = 1, c.from && (j._rgba = c.from(j[e])))
                        }), this) : void 0
                    },
                    is: function(a) {
                        var b = g(a),
                            c = !0,
                            d = this;
                        return l(h, function(a, e) {
                            var f, g = b[e.cache];
                            return g && (f = d[e.cache] || e.to && e.to(d._rgba) || [], l(e.props, function(a, b) {
                                if (null != g[b.idx]) return c = g[b.idx] === f[b.idx]
                            })), c
                        }), c
                    },
                    _space: function() {
                        var a = [],
                            b = this;
                        return l(h, function(c, d) {
                            b[d.cache] && a.push(c)
                        }), a.pop()
                    },
                    transition: function(a, b) {
                        var c = g(a),
                            d = c._space(),
                            e = h[d],
                            f = 0 === this.alpha() ? g("transparent") : this,
                            j = f[e.cache] || e.to(f._rgba),
                            k = j.slice();
                        return c = c[e.cache], l(e.props, function(a, d) {
                            var e = d.idx,
                                f = j[e],
                                g = c[e],
                                h = i[d.type] || {};
                            null !== g && (null === f ? k[e] = g : (h.mod && (g - f > h.mod / 2 ? f += h.mod : f - g > h.mod / 2 && (f -= h.mod)), k[e] = m((g - f) * b + f, d)))
                        }), this[d](k)
                    },
                    blend: function(b) {
                        if (1 === this._rgba[3]) return this;
                        var c = this._rgba.slice(),
                            d = c.pop(),
                            e = g(b)._rgba;
                        return g(a.map(c, function(a, b) {
                            return (1 - d) * e[b] + d * a
                        }))
                    },
                    toRgbaString: function() {
                        var b = "rgba(",
                            c = a.map(this._rgba, function(a, b) {
                                return null == a ? b > 2 ? 1 : 0 : a
                            });
                        return 1 === c[3] && (c.pop(), b = "rgb("), b + c.join() + ")"
                    },
                    toHslaString: function() {
                        var b = "hsla(",
                            c = a.map(this.hsla(), function(a, b) {
                                return null == a && (a = b > 2 ? 1 : 0), b && b < 3 && (a = Math.round(100 * a) + "%"), a
                            });
                        return 1 === c[3] && (c.pop(), b = "hsl("), b + c.join() + ")"
                    },
                    toHexString: function(b) {
                        var c = this._rgba.slice(),
                            d = c.pop();
                        return b && c.push(~~(255 * d)), "#" + a.map(c, function(a) {
                            return a = (a || 0).toString(16), 1 === a.length ? "0" + a : a
                        }).join("")
                    },
                    toString: function() {
                        return 0 === this._rgba[3] ? "transparent" : this.toRgbaString()
                    }
                }), g.fn.parse.prototype = g.fn;

                function o(a, b, c) {
                    return c = (c + 1) % 1, 6 * c < 1 ? a + (b - a) * c * 6 : 2 * c < 1 ? b : 3 * c < 2 ? a + (b - a) * (2 / 3 - c) * 6 : a
                }
                h.hsla.to = function(a) {
                    if (null == a[0] || null == a[1] || null == a[2]) return [null, null, null, a[3]];
                    var b, c, d = a[0] / 255,
                        e = a[1] / 255,
                        f = a[2] / 255,
                        g = a[3],
                        h = Math.max(d, e, f),
                        i = Math.min(d, e, f),
                        j = h - i,
                        k = h + i,
                        l = .5 * k;
                    return b = i === h ? 0 : d === h ? 60 * (e - f) / j + 360 : e === h ? 60 * (f - d) / j + 120 : 60 * (d - e) / j + 240, c = 0 === j ? 0 : l <= .5 ? j / k : j / (2 - k), [Math.round(b) % 360, c, l, null == g ? 1 : g]
                }, h.hsla.from = function(a) {
                    if (null == a[0] || null == a[1] || null == a[2]) return [null, null, null, a[3]];
                    var b = a[0] / 360,
                        c = a[1],
                        d = a[2],
                        e = a[3],
                        f = d <= .5 ? d * (1 + c) : d + c - d * c,
                        g = 2 * d - f;
                    return [Math.round(255 * o(g, f, b + 1 / 3)), Math.round(255 * o(g, f, b)), Math.round(255 * o(g, f, b - 1 / 3)), e]
                }, l(h, function(c, d) {
                    var f = d.props,
                        h = d.cache,
                        i = d.to,
                        j = d.from;
                    g.fn[c] = function(c) {
                        if (i && !this[h] && (this[h] = i(this._rgba)), c === b) return this[h].slice();
                        var d, e = a.type(c),
                            k = "array" === e || "object" === e ? c : arguments,
                            n = this[h].slice();
                        return l(f, function(a, b) {
                            var c = k["object" === e ? a : b.idx];
                            null == c && (c = n[b.idx]), n[b.idx] = m(c, b)
                        }), j ? (d = g(j(n)), d[h] = n, d) : g(n)
                    }, l(f, function(b, d) {
                        g.fn[b] || (g.fn[b] = function(f) {
                            var g, h = a.type(f),
                                i = "alpha" === b ? this._hsla ? "hsla" : "rgba" : c,
                                j = this[i](),
                                k = j[d.idx];
                            return "undefined" === h ? k : ("function" === h && (f = f.call(this, k), h = a.type(f)), null == f && d.empty ? this : ("string" === h && (g = e.exec(f), g && (f = k + parseFloat(g[2]) * ("+" === g[1] ? 1 : -1))), j[d.idx] = f, this[i](j)))
                        })
                    })
                }), g.hook = function(b) {
                    var c = b.split(" ");
                    l(c, function(b, c) {
                        a.cssHooks[c] = {
                            set: function(b, d) {
                                var e, f, h = "";
                                if ("transparent" !== d && ("string" !== a.type(d) || (e = n(d)))) {
                                    if (d = g(e || d), !j.rgba && 1 !== d._rgba[3]) {
                                        for (f = "backgroundColor" === c ? b.parentNode : b;
                                            ("" === h || "transparent" === h) && f && f.style;) try {
                                            h = a.css(f, "backgroundColor"), f = f.parentNode
                                        } catch (a) {}
                                        d = d.blend(h && "transparent" !== h ? h : "_default")
                                    }
                                    d = d.toRgbaString()
                                }
                                try {
                                    b.style[c] = d
                                } catch (a) {}
                            }
                        }, a.fx.step[c] = function(b) {
                            b.colorInit || (b.start = g(b.elem, c), b.end = g(b.end), b.colorInit = !0), a.cssHooks[c].set(b.elem, b.start.transition(b.end, b.pos))
                        }
                    })
                }, g.hook(d), a.cssHooks.borderColor = {
                    expand: function(a) {
                        var b = {};
                        return l(["Top", "Right", "Bottom", "Left"], function(c, d) {
                            b["border" + d + "Color"] = a
                        }), b
                    }
                }, c = a.Color.names = {
                    aqua: "#00ffff",
                    black: "#000000",
                    blue: "#0000ff",
                    fuchsia: "#ff00ff",
                    gray: "#808080",
                    green: "#008000",
                    lime: "#00ff00",
                    maroon: "#800000",
                    navy: "#000080",
                    olive: "#808000",
                    purple: "#800080",
                    red: "#ff0000",
                    silver: "#c0c0c0",
                    teal: "#008080",
                    white: "#ffffff",
                    yellow: "#ffff00",
                    transparent: [null, null, null, 0],
                    _default: "#ffffff"
                }
            }(j),
            function() {
                var b = ["add", "remove", "toggle"],
                    c = {
                        border: 1,
                        borderBottom: 1,
                        borderColor: 1,
                        borderLeft: 1,
                        borderRight: 1,
                        borderTop: 1,
                        borderWidth: 1,
                        margin: 1,
                        padding: 1
                    };
                a.each(["borderLeftStyle", "borderRightStyle", "borderBottomStyle", "borderTopStyle"], function(b, c) {
                    a.fx.step[c] = function(a) {
                        ("none" !== a.end && !a.setAttr || 1 === a.pos && !a.setAttr) && (j.style(a.elem, c, a.end), a.setAttr = !0)
                    }
                });

                function d(b) {
                    var c, d, e = b.ownerDocument.defaultView ? b.ownerDocument.defaultView.getComputedStyle(b, null) : b.currentStyle,
                        f = {};
                    if (e && e.length && e[0] && e[e[0]])
                        for (d = e.length; d--;) c = e[d], "string" == typeof e[c] && (f[a.camelCase(c)] = e[c]);
                    else
                        for (c in e) "string" == typeof e[c] && (f[c] = e[c]);
                    return f
                }

                function e(b, d) {
                    var e, f, g = {};
                    for (e in d) f = d[e], b[e] !== f && (c[e] || !a.fx.step[e] && isNaN(parseFloat(f)) || (g[e] = f));
                    return g
                }
                a.fn.addBack || (a.fn.addBack = function(a) {
                    return this.add(null == a ? this.prevObject : this.prevObject.filter(a))
                }), a.effects.animateClass = function(c, f, g, h) {
                    var i = a.speed(f, g, h);
                    return this.queue(function() {
                        var f, g = a(this),
                            h = g.attr("class") || "",
                            j = i.children ? g.find("*").addBack() : g;
                        j = j.map(function() {
                            var b = a(this);
                            return {
                                el: b,
                                start: d(this)
                            }
                        }), f = function() {
                            a.each(b, function(a, b) {
                                c[b] && g[b + "Class"](c[b])
                            })
                        }, f(), j = j.map(function() {
                            return this.end = d(this.el[0]), this.diff = e(this.start, this.end), this
                        }), g.attr("class", h), j = j.map(function() {
                            var b = this,
                                c = a.Deferred(),
                                d = a.extend({}, i, {
                                    queue: !1,
                                    complete: function() {
                                        c.resolve(b)
                                    }
                                });
                            return this.el.animate(this.diff, d), c.promise()
                        }), a.when.apply(a, j.get()).done(function() {
                            f(), a.each(arguments, function() {
                                var b = this.el;
                                a.each(this.diff, function(a) {
                                    b.css(a, "")
                                })
                            }), i.complete.call(g[0])
                        })
                    })
                }, a.fn.extend({
                    addClass: function(b) {
                        return function(c, d, e, f) {
                            return d ? a.effects.animateClass.call(this, {
                                add: c
                            }, d, e, f) : b.apply(this, arguments)
                        }
                    }(a.fn.addClass),
                    removeClass: function(b) {
                        return function(c, d, e, f) {
                            return arguments.length > 1 ? a.effects.animateClass.call(this, {
                                remove: c
                            }, d, e, f) : b.apply(this, arguments)
                        }
                    }(a.fn.removeClass),
                    toggleClass: function(b) {
                        return function(c, d, e, f, g) {
                            return "boolean" == typeof d || void 0 === d ? e ? a.effects.animateClass.call(this, d ? {
                                add: c
                            } : {
                                remove: c
                            }, e, f, g) : b.apply(this, arguments) : a.effects.animateClass.call(this, {
                                toggle: c
                            }, d, e, f)
                        }
                    }(a.fn.toggleClass),
                    switchClass: function(b, c, d, e, f) {
                        return a.effects.animateClass.call(this, {
                            add: c,
                            remove: b
                        }, d, e, f)
                    }
                })
            }(),
            function() {
                a.expr && a.expr.filters && a.expr.filters.animated && (a.expr.filters.animated = function(b) {
                    return function(c) {
                        return !!a(c).data(i) || b(c)
                    }
                }(a.expr.filters.animated)), a.uiBackCompat !== !1 && a.extend(a.effects, {
                    save: function(a, b) {
                        for (var c = 0, d = b.length; c < d; c++) null !== b[c] && a.data(g + b[c], a[0].style[b[c]])
                    },
                    restore: function(a, b) {
                        for (var c, d = 0, e = b.length; d < e; d++) null !== b[d] && (c = a.data(g + b[d]), a.css(b[d], c))
                    },
                    setMode: function(a, b) {
                        return "toggle" === b && (b = a.is(":hidden") ? "show" : "hide"), b
                    },
                    createWrapper: function(b) {
                        if (b.parent().is(".ui-effects-wrapper")) return b.parent();
                        var c = {
                                width: b.outerWidth(!0),
                                height: b.outerHeight(!0),
                                float: b.css("float")
                            },
                            d = a("<div></div>").addClass("ui-effects-wrapper").css({
                                fontSize: "100%",
                                background: "transparent",
                                border: "none",
                                margin: 0,
                                padding: 0
                            }),
                            e = {
                                width: b.width(),
                                height: b.height()
                            },
                            f = document.activeElement;
                        try {
                            f.id
                        } catch (a) {
                            f = document.body
                        }
                        return b.wrap(d), (b[0] === f || a.contains(b[0], f)) && a(f).trigger("focus"), d = b.parent(), "static" === b.css("position") ? (d.css({
                            position: "relative"
                        }), b.css({
                            position: "relative"
                        })) : (a.extend(c, {
                            position: b.css("position"),
                            zIndex: b.css("z-index")
                        }), a.each(["top", "left", "bottom", "right"], function(a, d) {
                            c[d] = b.css(d), isNaN(parseInt(c[d], 10)) && (c[d] = "auto")
                        }), b.css({
                            position: "relative",
                            top: 0,
                            left: 0,
                            right: "auto",
                            bottom: "auto"
                        })), b.css(e), d.css(c).show()
                    },
                    removeWrapper: function(b) {
                        var c = document.activeElement;
                        return b.parent().is(".ui-effects-wrapper") && (b.parent().replaceWith(b), (b[0] === c || a.contains(b[0], c)) && a(c).trigger("focus")), b
                    }
                }), a.extend(a.effects, {
                    version: "1.12.1",
                    define: function(b, c, d) {
                        return d || (d = c, c = "effect"), a.effects.effect[b] = d, a.effects.effect[b].mode = c, d
                    },
                    scaledDimensions: function(a, b, c) {
                        if (0 === b) return {
                            height: 0,
                            width: 0,
                            outerHeight: 0,
                            outerWidth: 0
                        };
                        var d = "horizontal" !== c ? (b || 100) / 100 : 1,
                            e = "vertical" !== c ? (b || 100) / 100 : 1;
                        return {
                            height: a.height() * e,
                            width: a.width() * d,
                            outerHeight: a.outerHeight() * e,
                            outerWidth: a.outerWidth() * d
                        }
                    },
                    clipToBox: function(a) {
                        return {
                            width: a.clip.right - a.clip.left,
                            height: a.clip.bottom - a.clip.top,
                            left: a.clip.left,
                            top: a.clip.top
                        }
                    },
                    unshift: function(a, b, c) {
                        var d = a.queue();
                        b > 1 && d.splice.apply(d, [1, 0].concat(d.splice(b, c))), a.dequeue()
                    },
                    saveStyle: function(a) {
                        a.data(h, a[0].style.cssText)
                    },
                    restoreStyle: function(a) {
                        a[0].style.cssText = a.data(h) || "", a.removeData(h)
                    },
                    mode: function(a, b) {
                        var c = a.is(":hidden");
                        return "toggle" === b && (b = c ? "show" : "hide"), (c ? "hide" === b : "show" === b) && (b = "none"), b
                    },
                    getBaseline: function(a, b) {
                        var c, d;
                        switch (a[0]) {
                            case "top":
                                c = 0;
                                break;
                            case "middle":
                                c = .5;
                                break;
                            case "bottom":
                                c = 1;
                                break;
                            default:
                                c = a[0] / b.height
                        }
                        switch (a[1]) {
                            case "left":
                                d = 0;
                                break;
                            case "center":
                                d = .5;
                                break;
                            case "right":
                                d = 1;
                                break;
                            default:
                                d = a[1] / b.width
                        }
                        return {
                            x: d,
                            y: c
                        }
                    },
                    createPlaceholder: function(b) {
                        var c, d = b.css("position"),
                            e = b.position();
                        return b.css({
                            marginTop: b.css("marginTop"),
                            marginBottom: b.css("marginBottom"),
                            marginLeft: b.css("marginLeft"),
                            marginRight: b.css("marginRight")
                        }).outerWidth(b.outerWidth()).outerHeight(b.outerHeight()), /^(static|relative)/.test(d) && (d = "absolute", c = a("<" + b[0].nodeName + ">").insertAfter(b).css({
                            display: /^(inline|ruby)/.test(b.css("display")) ? "inline-block" : "block",
                            visibility: "hidden",
                            marginTop: b.css("marginTop"),
                            marginBottom: b.css("marginBottom"),
                            marginLeft: b.css("marginLeft"),
                            marginRight: b.css("marginRight"),
                            float: b.css("float")
                        }).outerWidth(b.outerWidth()).outerHeight(b.outerHeight()).addClass("ui-effects-placeholder"), b.data(g + "placeholder", c)), b.css({
                            position: d,
                            left: e.left,
                            top: e.top
                        }), c
                    },
                    removePlaceholder: function(a) {
                        var b = g + "placeholder",
                            c = a.data(b);
                        c && (c.remove(), a.removeData(b))
                    },
                    cleanUp: function(b) {
                        a.effects.restoreStyle(b), a.effects.removePlaceholder(b)
                    },
                    setTransition: function(b, c, d, e) {
                        return e = e || {}, a.each(c, function(a, c) {
                            var f = b.cssUnit(c);
                            f[0] > 0 && (e[c] = f[0] * d + f[1])
                        }), e
                    }
                });

                function b(b, c, d, e) {
                    return a.isPlainObject(b) && (c = b, b = b.effect), b = {
                        effect: b
                    }, null == c && (c = {}), a.isFunction(c) && (e = c, d = null, c = {}), ("number" == typeof c || a.fx.speeds[c]) && (e = d, d = c, c = {}), a.isFunction(d) && (e = d, d = null), c && a.extend(b, c), d = d || c.duration, b.duration = a.fx.off ? 0 : "number" == typeof d ? d : d in a.fx.speeds ? a.fx.speeds[d] : a.fx.speeds._default, b.complete = e || c.complete, b
                }

                function c(b) {
                    return !(b && "number" != typeof b && !a.fx.speeds[b]) || ("string" == typeof b && !a.effects.effect[b] || (!!a.isFunction(b) || "object" == typeof b && !b.effect))
                }
                a.fn.extend({
                    effect: function() {
                        var c = b.apply(this, arguments),
                            d = a.effects.effect[c.effect],
                            e = d.mode,
                            f = c.queue,
                            g = f || "fx",
                            h = c.complete,
                            j = c.mode,
                            k = [],
                            l = function(b) {
                                var c = a(this),
                                    d = a.effects.mode(c, j) || e;
                                c.data(i, !0), k.push(d), e && ("show" === d || d === e && "hide" === d) && c.show(), e && "none" === d || a.effects.saveStyle(c), a.isFunction(b) && b()
                            };
                        if (a.fx.off || !d) return j ? this[j](c.duration, h) : this.each(function() {
                            h && h.call(this)
                        });

                        function m(b) {
                            var f = a(this);

                            function g() {
                                f.removeData(i), a.effects.cleanUp(f), "hide" === c.mode && f.hide(), l()
                            }

                            function l() {
                                a.isFunction(h) && h.call(f[0]), a.isFunction(b) && b()
                            }
                            c.mode = k.shift(), a.uiBackCompat === !1 || e ? "none" === c.mode ? (f[j](), l()) : d.call(f[0], c, g) : (f.is(":hidden") ? "hide" === j : "show" === j) ? (f[j](), l()) : d.call(f[0], c, l)
                        }
                        return f === !1 ? this.each(l).each(m) : this.queue(g, l).queue(g, m)
                    },
                    show: function(a) {
                        return function(d) {
                            if (c(d)) return a.apply(this, arguments);
                            var e = b.apply(this, arguments);
                            return e.mode = "show", this.effect.call(this, e)
                        }
                    }(a.fn.show),
                    hide: function(a) {
                        return function(d) {
                            if (c(d)) return a.apply(this, arguments);
                            var e = b.apply(this, arguments);
                            return e.mode = "hide", this.effect.call(this, e)
                        }
                    }(a.fn.hide),
                    toggle: function(a) {
                        return function(d) {
                            if (c(d) || "boolean" == typeof d) return a.apply(this, arguments);
                            var e = b.apply(this, arguments);
                            return e.mode = "toggle", this.effect.call(this, e)
                        }
                    }(a.fn.toggle),
                    cssUnit: function(b) {
                        var c = this.css(b),
                            d = [];
                        return a.each(["em", "px", "%", "pt"], function(a, b) {
                            c.indexOf(b) > 0 && (d = [parseFloat(c), b])
                        }), d
                    },
                    cssClip: function(a) {
                        return a ? this.css("clip", "rect(" + a.top + "px " + a.right + "px " + a.bottom + "px " + a.left + "px)") : d(this.css("clip"), this)
                    },
                    transfer: function(b, c) {
                        var d = a(this),
                            e = a(b.to),
                            f = "fixed" === e.css("position"),
                            g = a("body"),
                            h = f ? g.scrollTop() : 0,
                            i = f ? g.scrollLeft() : 0,
                            j = e.offset(),
                            k = {
                                top: j.top - h,
                                left: j.left - i,
                                height: e.innerHeight(),
                                width: e.innerWidth()
                            },
                            l = d.offset(),
                            m = a("<div class='ui-effects-transfer'></div>").appendTo("body").addClass(b.className).css({
                                top: l.top - h,
                                left: l.left - i,
                                height: d.innerHeight(),
                                width: d.innerWidth(),
                                position: f ? "fixed" : "absolute"
                            }).animate(k, b.duration, b.easing, function() {
                                m.remove(), a.isFunction(c) && c()
                            })
                    }
                });

                function d(a, b) {
                    var c = b.outerWidth(),
                        d = b.outerHeight(),
                        e = /^rect\((-?\d*\.?\d*px|-?\d+%|auto),?\s*(-?\d*\.?\d*px|-?\d+%|auto),?\s*(-?\d*\.?\d*px|-?\d+%|auto),?\s*(-?\d*\.?\d*px|-?\d+%|auto)\)$/,
                        f = e.exec(a) || ["", 0, c, d, 0];
                    return {
                        top: parseFloat(f[1]) || 0,
                        right: "auto" === f[2] ? c : parseFloat(f[2]),
                        bottom: "auto" === f[3] ? d : parseFloat(f[3]),
                        left: parseFloat(f[4]) || 0
                    }
                }
                a.fx.step.clip = function(b) {
                    b.clipInit || (b.start = a(b.elem).cssClip(), "string" == typeof b.end && (b.end = d(b.end, b.elem)), b.clipInit = !0), a(b.elem).cssClip({
                        top: b.pos * (b.end.top - b.start.top) + b.start.top,
                        right: b.pos * (b.end.right - b.start.right) + b.start.right,
                        bottom: b.pos * (b.end.bottom - b.start.bottom) + b.start.bottom,
                        left: b.pos * (b.end.left - b.start.left) + b.start.left
                    })
                }
            }(),
            function() {
                var b = {};
                a.each(["Quad", "Cubic", "Quart", "Quint", "Expo"], function(a, c) {
                    b[c] = function(b) {
                        return Math.pow(b, a + 2)
                    }
                }), a.extend(b, {
                    Sine: function(a) {
                        return 1 - Math.cos(a * Math.PI / 2)
                    },
                    Circ: function(a) {
                        return 1 - Math.sqrt(1 - a * a)
                    },
                    Elastic: function(a) {
                        return 0 === a || 1 === a ? a : -Math.pow(2, 8 * (a - 1)) * Math.sin((80 * (a - 1) - 7.5) * Math.PI / 15)
                    },
                    Back: function(a) {
                        return a * a * (3 * a - 2)
                    },
                    Bounce: function(a) {
                        for (var b, c = 4; a < ((b = Math.pow(2, --c)) - 1) / 11;);
                        return 1 / Math.pow(4, 3 - c) - 7.5625 * Math.pow((3 * b - 2) / 22 - a, 2)
                    }
                }), a.each(b, function(b, c) {
                    a.easing["easeIn" + b] = c, a.easing["easeOut" + b] = function(a) {
                        return 1 - c(1 - a)
                    }, a.easing["easeInOut" + b] = function(a) {
                        return a < .5 ? c(2 * a) / 2 : 1 - c(a * -2 + 2) / 2
                    }
                })
            }();
        a.effects
    }),
    function(a) {
        "function" == typeof define && define.amd ? define(["jquery"], a) : a(jQuery)
    }(function(a) {
        var b = /\+/g;

        function c(a) {
            return a
        }

        function d(a) {
            return decodeURIComponent(a.replace(b, " "))
        }

        function e(a) {
            0 === a.indexOf('"') && (a = a.slice(1, -1).replace(/\\"/g, '"').replace(/\\\\/g, "\\"));
            try {
                return f.json ? JSON.parse(a) : a
            } catch (a) {}
        }
        var f = a.cookie = function(b, g, h) {
            if (void 0 !== g) {
                if (h = a.extend({}, f.defaults, h), "number" == typeof h.expires) {
                    var i = h.expires,
                        j = h.expires = new Date;
                    j.setDate(j.getDate() + i)
                }
                return g = f.json ? JSON.stringify(g) : String(g), document.cookie = [encodeURIComponent(b), "=", f.raw ? g : encodeURIComponent(g), h.expires ? "; expires=" + h.expires.toUTCString() : "", h.path ? "; path=" + h.path : "", h.domain ? "; domain=" + h.domain : "", h.secure ? "; secure" : ""].join("")
            }
            for (var k = f.raw ? c : d, l = document.cookie.split("; "), m = b ? void 0 : {}, n = 0, o = l.length; n < o; n++) {
                var p = l[n].split("="),
                    q = k(p.shift()),
                    r = k(p.join("="));
                if (b && b === q) {
                    m = e(r);
                    break
                }
                b || (m[q] = e(r))
            }
            return m
        };
        f.defaults = {}, a.removeCookie = function(b, c) {
            return void 0 !== a.cookie(b) && (a.cookie(b, "", a.extend(c, {
                expires: -1
            })), !0)
        }
    }),
    function(a, b, c) {
        a.fn.jScrollPane = function(d) {
            function e(d, e) {
                var f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u, v, w, x, y, z, A, B, C, D, E, F, G, H, I, J, K, L, M, N = this,
                    O = !0,
                    P = !0,
                    Q = !1,
                    R = !1,
                    S = d.clone(!1, !1).empty(),
                    T = a.fn.mwheelIntent ? "mwheelIntent.jsp" : "mousewheel.jsp";
                "border-box" === d.css("box-sizing") ? (K = 0, L = 0) : (K = d.css("paddingTop") + " " + d.css("paddingRight") + " " + d.css("paddingBottom") + " " + d.css("paddingLeft"), L = (parseInt(d.css("paddingLeft"), 10) || 0) + (parseInt(d.css("paddingRight"), 10) || 0));

                function U(b) {
                    var e, q, r, t, u, w, x = !1,
                        y = !1;
                    if (f = b, g === c) u = d.scrollTop(), w = d.scrollLeft(), d.css({
                        overflow: "hidden",
                        padding: 0
                    }), h = d.innerWidth() + L, i = d.innerHeight(), d.width(h), g = a('<div class="jspPane" />').css("padding", K).append(d.children()), j = a('<div class="jspContainer" />').css({
                        width: h + "px",
                        height: i + "px"
                    }).append(g).appendTo(d);
                    else {
                        if (d.css("width", ""), x = f.stickToBottom && pa(), y = f.stickToRight && qa(), t = d.innerWidth() + L != h || d.outerHeight() != i, t && (h = d.innerWidth() + L, i = d.innerHeight(), j.css({
                                width: h + "px",
                                height: i + "px"
                            })), !t && M == k && g.outerHeight() == l) return void d.width(h);
                        M = k, g.css("width", ""), d.width(h), j.find(">.jspVerticalBar,>.jspHorizontalBar").remove().end()
                    }
                    g.css("overflow", "auto"), k = b.contentWidth ? b.contentWidth : g[0].scrollWidth, l = g[0].scrollHeight, g.css("overflow", ""), m = k / h, n = l / i, o = n > 1, p = m > 1, p || o ? (d.addClass("jspScrollable"), e = f.maintainPosition && (s || v), e && (q = na(), r = oa()), V(), X(), Z(), e && (la(y ? k - h : q, !1), ka(x ? l - i : r, !1)), ua(), ra(), Aa(), f.enableKeyboardNavigation && wa(), f.clickOnTrack && ba(), ya(), f.hijackInternalLinks && za()) : (d.removeClass("jspScrollable"), g.css({
                        top: 0,
                        left: 0,
                        width: j.width() - L
                    }), sa(), va(), xa(), ca()), f.autoReinitialise && !J ? J = setInterval(function() {
                        U(f)
                    }, f.autoReinitialiseDelay) : !f.autoReinitialise && J && clearInterval(J), u && d.scrollTop(0) && ka(u, !1), w && d.scrollLeft(0) && la(w, !1), d.trigger("jsp-initialised", [p || o])
                }

                function V() {
                    o && (j.append(a('<div class="jspVerticalBar" />').append(a('<div class="jspCap jspCapTop" />'), a('<div class="jspTrack" />').append(a('<div class="jspDrag" />').append(a('<div class="jspDragTop" />'), a('<div class="jspDragBottom" />'))), a('<div class="jspCap jspCapBottom" />'))), w = j.find(">.jspVerticalBar"), x = w.find(">.jspTrack"), q = x.find(">.jspDrag"), f.showArrows && (B = a('<a class="jspArrow jspArrowUp" />').bind("mousedown.jsp", _(0, -1)).bind("click.jsp", ta), C = a('<a class="jspArrow jspArrowDown" />').bind("mousedown.jsp", _(0, 1)).bind("click.jsp", ta), f.arrowScrollOnHover && (B.bind("mouseover.jsp", _(0, -1, B)), C.bind("mouseover.jsp", _(0, 1, C))), $(x, f.verticalArrowPositions, B, C)), z = i, j.find(">.jspVerticalBar>.jspCap:visible,>.jspVerticalBar>.jspArrow").each(function() {
                        z -= a(this).outerHeight()
                    }), q.hover(function() {
                        q.addClass("jspHover")
                    }, function() {
                        q.removeClass("jspHover")
                    }).bind("mousedown.jsp", function(b) {
                        a("html").bind("dragstart.jsp selectstart.jsp", ta), q.addClass("jspActive");
                        var c = b.pageY - q.position().top;
                        return a("html").bind("mousemove.jsp", function(a) {
                            ea(a.pageY - c, !1)
                        }).bind("mouseup.jsp mouseleave.jsp", da), !1
                    }), W())
                }

                function W() {
                    x.height(z + "px"), s = 0, y = f.verticalGutter + x.outerWidth(), g.width(h - y - L);
                    try {
                        0 === w.position().left && g.css("margin-left", y + "px")
                    } catch (a) {}
                }

                function X() {
                    p && (j.append(a('<div class="jspHorizontalBar" />').append(a('<div class="jspCap jspCapLeft" />'), a('<div class="jspTrack" />').append(a('<div class="jspDrag" />').append(a('<div class="jspDragLeft" />'), a('<div class="jspDragRight" />'))), a('<div class="jspCap jspCapRight" />'))), D = j.find(">.jspHorizontalBar"), E = D.find(">.jspTrack"), t = E.find(">.jspDrag"), f.showArrows && (H = a('<a class="jspArrow jspArrowLeft" />').bind("mousedown.jsp", _(-1, 0)).bind("click.jsp", ta), I = a('<a class="jspArrow jspArrowRight" />').bind("mousedown.jsp", _(1, 0)).bind("click.jsp", ta), f.arrowScrollOnHover && (H.bind("mouseover.jsp", _(-1, 0, H)), I.bind("mouseover.jsp", _(1, 0, I))), $(E, f.horizontalArrowPositions, H, I)), t.hover(function() {
                        t.addClass("jspHover")
                    }, function() {
                        t.removeClass("jspHover")
                    }).bind("mousedown.jsp", function(b) {
                        a("html").bind("dragstart.jsp selectstart.jsp", ta), t.addClass("jspActive");
                        var c = b.pageX - t.position().left;
                        return a("html").bind("mousemove.jsp", function(a) {
                            ga(a.pageX - c, !1)
                        }).bind("mouseup.jsp mouseleave.jsp", da), !1
                    }), F = j.innerWidth(), Y())
                }

                function Y() {
                    j.find(">.jspHorizontalBar>.jspCap:visible,>.jspHorizontalBar>.jspArrow").each(function() {
                        F -= a(this).outerWidth()
                    }), E.width(F + "px"), v = 0
                }

                function Z() {
                    if (p && o) {
                        var b = E.outerHeight(),
                            c = x.outerWidth();
                        z -= b, a(D).find(">.jspCap:visible,>.jspArrow").each(function() {
                            F += a(this).outerWidth()
                        }), F -= c, i -= c, h -= b, E.parent().append(a('<div class="jspCorner" />').css("width", b + "px")), W(), Y()
                    }
                    p && g.width(j.outerWidth() - L + "px"), l = g.outerHeight(), n = l / i, p && (G = Math.ceil(1 / m * F), G > f.horizontalDragMaxWidth ? G = f.horizontalDragMaxWidth : G < f.horizontalDragMinWidth && (G = f.horizontalDragMinWidth), t.width(G + "px"), u = F - G, ha(v)), o && (A = Math.ceil(1 / n * z), A > f.verticalDragMaxHeight ? A = f.verticalDragMaxHeight : A < f.verticalDragMinHeight && (A = f.verticalDragMinHeight), q.height(A + "px"), r = z - A, fa(s))
                }

                function $(a, b, c, d) {
                    var e, f = "before",
                        g = "after";
                    "os" == b && (b = /Mac/.test(navigator.platform) ? "after" : "split"), b == f ? g = b : b == g && (f = b, e = c, c = d, d = e), a[f](c)[g](d)
                }

                function _(a, b, c) {
                    return function() {
                        return aa(a, b, this, c), this.blur(), !1
                    }
                }

                function aa(b, c, d, e) {
                    d = a(d).addClass("jspActive");
                    var g, h, i = !0,
                        j = function() {
                            0 !== b && N.scrollByX(b * f.arrowButtonSpeed), 0 !== c && N.scrollByY(c * f.arrowButtonSpeed), h = setTimeout(j, i ? f.initialDelay : f.arrowRepeatFreq), i = !1
                        };
                    j(), g = e ? "mouseout.jsp" : "mouseup.jsp", e = e || a("html"), e.bind(g, function() {
                        d.removeClass("jspActive"), h && clearTimeout(h), h = null, e.unbind(g)
                    })
                }

                function ba() {
                    ca(), o && x.bind("mousedown.jsp", function(b) {
                        if (b.originalTarget === c || b.originalTarget == b.currentTarget) {
                            var d, e = a(this),
                                g = e.offset(),
                                h = b.pageY - g.top - s,
                                j = !0,
                                k = function() {
                                    var a = e.offset(),
                                        c = b.pageY - a.top - A / 2,
                                        g = i * f.scrollPagePercent,
                                        n = r * g / (l - i);
                                    if (h < 0) s - n > c ? N.scrollByY(-g) : ea(c);
                                    else {
                                        if (!(h > 0)) return void m();
                                        s + n < c ? N.scrollByY(g) : ea(c)
                                    }
                                    d = setTimeout(k, j ? f.initialDelay : f.trackClickRepeatFreq), j = !1
                                },
                                m = function() {
                                    d && clearTimeout(d), d = null, a(document).unbind("mouseup.jsp", m)
                                };
                            return k(), a(document).bind("mouseup.jsp", m), !1
                        }
                    }), p && E.bind("mousedown.jsp", function(b) {
                        if (b.originalTarget === c || b.originalTarget == b.currentTarget) {
                            var d, e = a(this),
                                g = e.offset(),
                                i = b.pageX - g.left - v,
                                j = !0,
                                l = function() {
                                    var a = e.offset(),
                                        c = b.pageX - a.left - G / 2,
                                        g = h * f.scrollPagePercent,
                                        n = u * g / (k - h);
                                    if (i < 0) v - n > c ? N.scrollByX(-g) : ga(c);
                                    else {
                                        if (!(i > 0)) return void m();
                                        v + n < c ? N.scrollByX(g) : ga(c)
                                    }
                                    d = setTimeout(l, j ? f.initialDelay : f.trackClickRepeatFreq), j = !1
                                },
                                m = function() {
                                    d && clearTimeout(d), d = null, a(document).unbind("mouseup.jsp", m)
                                };
                            return l(), a(document).bind("mouseup.jsp", m), !1
                        }
                    })
                }

                function ca() {
                    E && E.unbind("mousedown.jsp"), x && x.unbind("mousedown.jsp")
                }

                function da() {
                    a("html").unbind("dragstart.jsp selectstart.jsp mousemove.jsp mouseup.jsp mouseleave.jsp"), q && q.removeClass("jspActive"), t && t.removeClass("jspActive")
                }

                function ea(a, b) {
                    o && (a < 0 ? a = 0 : a > r && (a = r), b === c && (b = f.animateScroll), b ? N.animate(q, "top", a, fa) : (q.css("top", a), fa(a)))
                }

                function fa(a) {
                    a === c && (a = q.position().top), j.scrollTop(0), s = a;
                    var b = 0 === s,
                        e = s == r,
                        f = a / r,
                        h = -f * (l - i);
                    O == b && Q == e || (O = b, Q = e, d.trigger("jsp-arrow-change", [O, Q, P, R])), ia(b, e), g.css("top", h), d.trigger("jsp-scroll-y", [-h, b, e]).trigger("scroll")
                }

                function ga(a, b) {
                    p && (a < 0 ? a = 0 : a > u && (a = u), b === c && (b = f.animateScroll), b ? N.animate(t, "left", a, ha) : (t.css("left", a), ha(a)))
                }

                function ha(a) {
                    a === c && (a = t.position().left), j.scrollTop(0), v = a;
                    var b = 0 === v,
                        e = v == u,
                        f = a / u,
                        i = -f * (k - h);
                    P == b && R == e || (P = b, R = e, d.trigger("jsp-arrow-change", [O, Q, P, R])), ja(b, e), g.css("left", i), d.trigger("jsp-scroll-x", [-i, b, e]).trigger("scroll")
                }

                function ia(a, b) {
                    f.showArrows && (B[a ? "addClass" : "removeClass"]("jspDisabled"), C[b ? "addClass" : "removeClass"]("jspDisabled"))
                }

                function ja(a, b) {
                    f.showArrows && (H[a ? "addClass" : "removeClass"]("jspDisabled"), I[b ? "addClass" : "removeClass"]("jspDisabled"))
                }

                function ka(a, b) {
                    var c = a / (l - i);
                    ea(c * r, b)
                }

                function la(a, b) {
                    var c = a / (k - h);
                    ga(c * u, b)
                }

                function ma(b, c, d) {
                    var e, g, k, l, m, n, o, p, q, r = 0,
                        s = 0;
                    try {
                        e = a(b)
                    } catch (a) {
                        return
                    }
                    for (g = e.outerHeight(), k = e.outerWidth(), j.scrollTop(0), j.scrollLeft(0); !e.is(".jspPane");)
                        if (r += e.position().top, s += e.position().left, e = e.offsetParent(), /^body|html$/i.test(e[0].nodeName)) return;
                    l = oa(), n = l + i, r < l || c ? p = r - f.horizontalGutter : r + g > n && (p = r - i + g + f.horizontalGutter), isNaN(p) || ka(p, d), m = na(), o = m + h, s < m || c ? q = s - f.horizontalGutter : s + k > o && (q = s - h + k + f.horizontalGutter), isNaN(q) || la(q, d)
                }

                function na() {
                    return -g.position().left
                }

                function oa() {
                    return -g.position().top
                }

                function pa() {
                    var a = l - i;
                    return a > 20 && a - oa() < 10
                }

                function qa() {
                    var a = k - h;
                    return a > 20 && a - na() < 10
                }

                function ra() {
                    j.unbind(T).bind(T, function(a, b, c, d) {
                        var e = v,
                            g = s,
                            h = a.deltaFactor || f.mouseWheelSpeed;
                        return N.scrollBy(c * h, -d * h, !1), e == v && g == s
                    })
                }

                function sa() {
                    j.unbind(T)
                }

                function ta() {
                    return !1
                }

                function ua() {
                    g.find(":input,a").unbind("focus.jsp").bind("focus.jsp", function(a) {
                        ma(a.target, !1)
                    })
                }

                function va() {
                    g.find(":input,a").unbind("focus.jsp")
                }

                function wa() {
                    var b, c, e = [];
                    p && e.push(D[0]), o && e.push(w[0]), g.focus(function() {
                        d.focus()
                    }), d.attr("tabindex", 0).unbind("keydown.jsp keypress.jsp").bind("keydown.jsp", function(d) {
                        if (d.target === this || e.length && a(d.target).closest(e).length) {
                            var f = v,
                                g = s;
                            switch (d.keyCode) {
                                case 40:
                                case 38:
                                case 34:
                                case 32:
                                case 33:
                                case 39:
                                case 37:
                                    b = d.keyCode, h();
                                    break;
                                case 35:
                                    ka(l - i), b = null;
                                    break;
                                case 36:
                                    ka(0), b = null
                            }
                            return c = d.keyCode == b && f != v || g != s, !c
                        }
                    }).bind("keypress.jsp", function(a) {
                        return a.keyCode == b && h(), !c
                    }), f.hideFocus ? (d.css("outline", "none"), "hideFocus" in j[0] && d.attr("hideFocus", !0)) : (d.css("outline", ""), "hideFocus" in j[0] && d.attr("hideFocus", !1));

                    function h() {
                        var a = v,
                            d = s;
                        switch (b) {
                            case 40:
                                N.scrollByY(f.keyboardSpeed, !1);
                                break;
                            case 38:
                                N.scrollByY(-f.keyboardSpeed, !1);
                                break;
                            case 34:
                            case 32:
                                N.scrollByY(i * f.scrollPagePercent, !1);
                                break;
                            case 33:
                                N.scrollByY(-i * f.scrollPagePercent, !1);
                                break;
                            case 39:
                                N.scrollByX(f.keyboardSpeed, !1);
                                break;
                            case 37:
                                N.scrollByX(-f.keyboardSpeed, !1)
                        }
                        return c = a != v || d != s
                    }
                }

                function xa() {
                    d.attr("tabindex", "-1").removeAttr("tabindex").unbind("keydown.jsp keypress.jsp")
                }

                function ya() {
                    if (location.hash && location.hash.length > 1) {
                        var b, c, d = escape(location.hash.substr(1));
                        try {
                            b = a("#" + d + ', a[name="' + d + '"]')
                        } catch (a) {
                            return
                        }
                        b.length && g.find(d) && (0 === j.scrollTop() ? c = setInterval(function() {
                            j.scrollTop() > 0 && (ma(b, !0), a(document).scrollTop(j.position().top), clearInterval(c))
                        }, 50) : (ma(b, !0), a(document).scrollTop(j.position().top)))
                    }
                }

                function za() {
                    a(document.body).data("jspHijack") || (a(document.body).data("jspHijack", !0), a(document.body).delegate("a[href*=#]", "click", function(c) {
                        var d, e, f, g, h, i, j = this.href.substr(0, this.href.indexOf("#")),
                            k = location.href;
                        if (location.href.indexOf("#") !== -1 && (k = location.href.substr(0, location.href.indexOf("#"))), j === k) {
                            d = escape(this.href.substr(this.href.indexOf("#") + 1));
                            try {
                                e = a("#" + d + ', a[name="' + d + '"]')
                            } catch (a) {
                                return
                            }
                            e.length && (f = e.closest(".jspScrollable"), g = f.data("jsp"), g.scrollToElement(e, !0), f[0].scrollIntoView && (h = a(b).scrollTop(), i = e.offset().top, (i < h || i > h + a(b).height()) && f[0].scrollIntoView()), c.preventDefault())
                        }
                    }))
                }

                function Aa() {
                    var a, b, c, d, e, f = !1;
                    j.unbind("touchstart.jsp touchmove.jsp touchend.jsp click.jsp-touchclick").bind("touchstart.jsp", function(g) {
                        var h = g.originalEvent.touches[0];
                        a = na(), b = oa(), c = h.pageX, d = h.pageY, e = !1, f = !0
                    }).bind("touchmove.jsp", function(g) {
                        if (f) {
                            var h = g.originalEvent.touches[0],
                                i = v,
                                j = s;
                            return N.scrollTo(a + c - h.pageX, b + d - h.pageY), e = e || Math.abs(c - h.pageX) > 5 || Math.abs(d - h.pageY) > 5, i == v && j == s
                        }
                    }).bind("touchend.jsp", function(a) {
                        f = !1
                    }).bind("click.jsp-touchclick", function(a) {
                        if (e) return e = !1, !1
                    })
                }

                function Ba() {
                    var a = oa(),
                        b = na();
                    d.removeClass("jspScrollable").unbind(".jsp"), d.replaceWith(S.append(g.children())), S.scrollTop(a), S.scrollLeft(b), J && clearInterval(J)
                }
                a.extend(N, {
                    reinitialise: function(b) {
                        b = a.extend({}, f, b), U(b)
                    },
                    scrollToElement: function(a, b, c) {
                        ma(a, b, c)
                    },
                    scrollTo: function(a, b, c) {
                        la(a, c), ka(b, c)
                    },
                    scrollToX: function(a, b) {
                        la(a, b)
                    },
                    scrollToY: function(a, b) {
                        ka(a, b)
                    },
                    scrollToPercentX: function(a, b) {
                        la(a * (k - h), b)
                    },
                    scrollToPercentY: function(a, b) {
                        ka(a * (l - i), b)
                    },
                    scrollBy: function(a, b, c) {
                        N.scrollByX(a, c), N.scrollByY(b, c)
                    },
                    scrollByX: function(a, b) {
                        var c = na() + Math[a < 0 ? "floor" : "ceil"](a),
                            d = c / (k - h);
                        ga(d * u, b)
                    },
                    scrollByY: function(a, b) {
                        var c = oa() + Math[a < 0 ? "floor" : "ceil"](a),
                            d = c / (l - i);
                        ea(d * r, b)
                    },
                    positionDragX: function(a, b) {
                        ga(a, b)
                    },
                    positionDragY: function(a, b) {
                        ea(a, b)
                    },
                    animate: function(a, b, c, d) {
                        var e = {};
                        e[b] = c, a.animate(e, {
                            duration: f.animateDuration,
                            easing: f.animateEase,
                            queue: !1,
                            step: d
                        })
                    },
                    getContentPositionX: function() {
                        return na()
                    },
                    getContentPositionY: function() {
                        return oa()
                    },
                    getContentWidth: function() {
                        return k
                    },
                    getContentHeight: function() {
                        return l
                    },
                    getPercentScrolledX: function() {
                        return na() / (k - h)
                    },
                    getPercentScrolledY: function() {
                        return oa() / (l - i)
                    },
                    getIsScrollableH: function() {
                        return p
                    },
                    getIsScrollableV: function() {
                        return o
                    },
                    getContentPane: function() {
                        return g
                    },
                    scrollToBottom: function(a) {
                        ea(r, a)
                    },
                    hijackInternalLinks: a.noop,
                    destroy: function() {
                        Ba()
                    }
                }), U(e)
            }
            return d = a.extend({}, a.fn.jScrollPane.defaults, d), a.each(["arrowButtonSpeed", "trackClickSpeed", "keyboardSpeed"], function() {
                d[this] = d[this] || d.speed
            }), this.each(function() {
                var b = a(this),
                    c = b.data("jsp");
                c ? c.reinitialise(d) : (a("script", b).filter('[type="text/javascript"],:not([type])').remove(), c = new e(b, d), b.data("jsp", c))
            })
        }, a.fn.jScrollPane.defaults = {
            showArrows: !1,
            maintainPosition: !0,
            stickToBottom: !1,
            stickToRight: !1,
            clickOnTrack: !0,
            autoReinitialise: !1,
            autoReinitialiseDelay: 500,
            verticalDragMinHeight: 0,
            verticalDragMaxHeight: 99999,
            horizontalDragMinWidth: 0,
            horizontalDragMaxWidth: 99999,
            contentWidth: c,
            animateScroll: !1,
            animateDuration: 300,
            animateEase: "linear",
            hijackInternalLinks: !1,
            verticalGutter: 4,
            horizontalGutter: 4,
            mouseWheelSpeed: 3,
            arrowButtonSpeed: 0,
            arrowRepeatFreq: 50,
            arrowScrollOnHover: !1,
            trackClickSpeed: 0,
            trackClickRepeatFreq: 70,
            verticalArrowPositions: "split",
            horizontalArrowPositions: "split",
            enableKeyboardNavigation: !0,
            hideFocus: !1,
            keyboardSpeed: 0,
            initialDelay: 300,
            speed: 30,
            scrollPagePercent: .8
        }
    }(jQuery, this),
    function(a, b) {
        var c = function(a, c) {
            this.elem = a, this.jElem = b(a), this.options = c
        };
        c.prototype = {
            defaults: {
                fields: "input[type=text][data-validate],input[type=password][data-validate],input[type=email][data-validate],input[type=tel][data-validate]"
            },
            init: function() {
                return this.config = b.extend({}, this.defaults, this.options), this.jElem.data("validate") ? (this.setEvents(), this) : this
            },
            setEvents: function() {
                var a = this;
                this.jElem.on("submit.validate", function(c) {
                    var d = b(this);
                    a.isFormValid(d) ? d.data("validate-custom-submit") && (d.trigger("submitValidated"), c.preventDefault()) : (c.preventDefault(), a.focusOnFirstError(d))
                }).find(this.config.fields).on("change.validate", function() {
                    "" !== this.value && a.isInputValid(b(this))
                })
            },
            focusOnFirstError: function(a) {
                a.find(".error-message:visible").first().prev("input").focus()
            },
            isFormValid: function(a) {
                var c = this,
                    d = !0;
                return a.find(this.config.fields).each(function() {
                    d &= c.isInputValid(b(this))
                }), d
            },
            isInputValid: function(a) {
                var b, c, d, e, f, g = a.data("validate").split(" ").reverse();
                for (d = a.data("validate-parent-class"), e = a.data("validate-error-class"), f = a.data("validate-parent-error-class"), a.closest("." + d).removeClass(f).find("." + e).remove(), a.attr("aria-invalid", "false"); b = g.pop();)
                    if (c = this.test[b](a)) return this.displayErrorMessage(a, c), !1;
                return !0
            },
            test: {
                required: function(a) {
                    return "" === a.val() ? a.closest("form").data("validate-required-message") : 0
                },
                regexp: function(a) {
                    var b = new RegExp(a.data("validate-regexp-test"));
                    return b.test(a.val()) ? 0 : a.data("validate-regexp-message")
                }
            },
            displayErrorMessage: function(a, b) {
                var c, d, e, f = a.attr("aria-describedby");
                f = f ? 'id="' + f + '"' : "", c = a.data("validate-parent-class"), d = a.data("validate-error-class"), e = a.data("validate-parent-error-class"), a.closest("." + c).addClass(e).find("." + d).remove().end().append("<div " + f + ' class="' + d + '">' + b + "</div>"), a.attr("aria-invalid", "true")
            }
        }, b.fn.validate = function(a) {
            return this.each(function() {
                new c(this, a).init()
            })
        }
    }(window, jQuery),
    function(a, b) {
        var c = function(a, c) {
            this.elem = a, this.$elem = b(a), this.options = c
        };
        c.prototype = {
            stylesPlaceholder: {
                display: "block",
                overflow: "hidden",
                position: "absolute",
                "border-style": "solid",
                "border-color": "transparent"
            },
            defaults: {
                forcePlaceholder: !1,
                refreshOnly: !1,
                stylesWrapper: {
                    position: "relative"
                },
                stylesInherited: ["font-family", "font-size", "line-height", "color", "width", "height", "display", "padding-left", "padding-right", "padding-top", "padding-bottom", "margin-left", "margin-right", "margin-top", "margin-bottom", "border-left-width", "border-right-width", "border-top-width", "border-bottom-width"],
                stylesDefined: {
                    color: "#000000"
                }
            },
            init: function() {
                return this.config = b.extend(!0, {}, this.defaults, this.options), this.$elem.width() ? this.config.refreshOnly ? (this.$wrapper = this.$elem.parent(), this.$wrapper.hasClass("placeholder-wrapper") && (this.$placeholder = this.$wrapper.find(".placeholder"), this.setEvents(), this.setPosition()), this) : this.$elem.attr("placeholder") ? (this.placeholderCheck() || (this.placeholderText = this.$elem.attr("placeholder"), this.$elem.removeAttr("placeholder"), this.getStyles(), this.createPlaceholder(), this.setEvents()), this) : this : this
            },
            placeholderCheck: function() {
                return !this.config.forcePlaceholder && ("undefined" == typeof b.support.placeholder && (b.support.placeholder = "placeholder" in document.createElement("input")), b.support.placeholder)
            },
            getStyles: function() {
                for (var a; a = this.config.stylesInherited.pop();) this.stylesPlaceholder[a] = this.$elem.css(a);
                b.extend(!0, this.stylesPlaceholder, this.config.stylesDefined)
            },
            setPosition: function() {
                var a = "none" === this.$placeholder.css("display"),
                    b = this.$elem.position();
                b.left = b.left > 0 ? b.left : 0, b.top = b.top > 0 ? b.top : 0, a && this.$placeholder.show(), this.$placeholder.css({
                    left: b.left + "px",
                    top: b.top + "px"
                }), a && this.$placeholder.hide()
            },
            createPlaceholder: function() {
                this.$placeholder = b("<span>"), this.$placeholder.addClass("placeholder").css(this.stylesPlaceholder).text(this.placeholderText), this.$wrapper = this.$elem.wrap('<div class="placeholder-wrapper">').parent(), this.$wrapper.css(this.config.stylesWrapper).append(this.$placeholder), this.setPosition()
            },
            setEvents: function() {
                var a = this;
                a.$placeholder.off("click.placeholder").on("click.placeholder", function() {
                    a.$elem.trigger("focus")
                }), a.$elem.off("keyup.placeholder-input").on("keyup.placeholder-input", function() {
                    "" === a.elem.value ? a.showPlaceholder() : a.hidePlaceholder()
                }), a.$elem.off("focus.placeholder-input").on("focus.placeholder-input", function() {
                    a.$placeholder.addClass("placeholder-input-focus")
                }).off("blur.placeholder-input").on("blur.placeholder-input", function() {
                    a.$placeholder.removeClass("placeholder-input-focus")
                }), "" !== a.elem.value && a.hidePlaceholder()
            },
            hidePlaceholder: function() {
                this.$placeholder.hide()
            },
            showPlaceholder: function() {
                this.$placeholder.show()
            }
        }, c.defaults = c.prototype.defaults, b.fn.placeholder = function(a) {
            return this.each(function() {
                new c(this, a).init()
            })
        }, a.Placeholder = c
    }(window, jQuery), $("input").placeholder(),
    function(a) {
        a.fn.findFirst = function(b) {
            var c, d = this.length;
            for (c = 0; c < d; c++) {
                var e = this.eq(c);
                if (b(c, e)) return e
            }
            return a()
        }
    }(jQuery);
var Queue = function() {
        var a = function() {
                var a = [];
                return {
                    add: function(b) {
                        "function" == typeof b && a.push(b)
                    },
                    update: function() {
                        var b = Array.prototype.slice.call(arguments, 0);
                        a.map(function(a) {
                            a.apply(this, b)
                        })
                    }
                }
            },
            b = function() {
                var a, b = [],
                    c = !1;
                return {
                    add: function(d) {
                        "function" == typeof d && (c ? d.apply(void 0, a) : b.push(d))
                    },
                    resolve: function() {
                        c = !0, a = Array.prototype.slice.call(arguments, 0), b.map(function(b) {
                            b.apply(this, a)
                        })
                    }
                }
            };
        return {
            Listener: a,
            Resolving: b
        }
    }(),
    ajaxWrapper = function(a, b, c) {
        var d = {},
            e = new Queue.Resolving,
            f = new Queue.Resolving,
            g = new Queue.Resolving;
        return $.extend(d, {
            type: "GET",
            data: b || {}
        }, c), $.ajax(a, d).done(function(a, b, c) {
            var d;
            if ("success" !== b) return f.resolve(), !1;
            if (a.reloadPage || 205 === c.status) return window.location.reload(), !1;
            for (d in ajaxWrapper.features) ajaxWrapper.features.hasOwnProperty(d) && a.hasOwnProperty(ajaxWrapper.features[d].prop) && ajaxWrapper.features[d].run(a[ajaxWrapper.features[d].prop]);
            e.resolve(a.data)
        }).fail(function(a) {
            if (401 === a.status || 403 === a.status) {
                try {
                    var b = $.parseJSON(a.responseText),
                        c = decodeURIComponent(b.redirectUrl);
                    "undefined" != typeof b.redirectUrl && (window.location = removeSpecialCharacter(c))
                } catch (a) {}
                return !1
            }
            f.resolve()
        }).always(function() {
            g.resolve()
        }), {
            success: function(a) {
                e.add(a)
            },
            failure: function(a) {
                f.add(a)
            },
            done: function(a) {
                g.add(a)
            }
        }
    };
ajaxWrapper.features = [], ajaxWrapper.features.push({
    prop: "inject",
    run: function(a) {
        for (var b = 0; b < a.length; b++) $(a[b].selector).html(a[b].content)
    }
});

function manageGlobalOptinCheckboxes(a, b) {
    var c = $(a),
        d = $(b),
        e = d.find("input[type=checkbox]");
    c.length && (c.on("change", function() {
        e.prop("checked", c.prop("checked"))
    }), e.on("change", function() {
        var a = $(this).prop("checked");
        a ? d.find("input:checked").length === e.length && c.prop("checked", a) : c.prop("checked", a)
    }))
}
var config = window.config || {};
config.callbacks = config.callbacks || {}, config.urls = config.urls || {},
    function(a, b, c) {
        b.npmUpdate = function(b) {
            config.urls.npmUpdate && c.ajax({
                type: "GET",
                url: a.npmUpdate
            }).success(b)
        }
    }(config.urls, config.callbacks, jQuery),
    function(a, b, c) {
        b.addressAction = function(b, d, e) {
            c.ajax({
                type: "POST",
                url: a.myAccountAddressBook,
                data: {
                    action: d,
                    id: b
                },
                success: function(a) {
                    e(a)
                },
                error: function() {
                    log("error", arguments)
                }
            })
        }, b.accountDeleteMachine = function(a, b, d) {
            c.ajax({
                type: "POST",
                url: b,
                success: function(a) {
                    d(a)
                },
                error: function() {
                    log("error", arguments)
                }
            })
        }
    }(config.urls, config.callbacks, jQuery),
    function(a, b) {
        var c;
        b.marketRead = function() {
            return c || (c = a.market().read()), c
        }, b.getLeClubConfig = function() {
            return a.market().getLeClubConfig()
        }, b.getMachineTechnologies = function() {
            return a.market().getMachineTechnologies()
        }, b.getPackagingRules = function() {
            return a.market().getPackagingRules()
        }, b.getAddressFieldDefinitionsAndValues = function(b, c) {
            return a.market().getAddressFieldDefinitionsAndValues(b, c)
        }, b.getEInvoiceTypes = function() {
            return a.market().getEInvoiceTypes()
        }, b.getRegionsByCountryCode = function(a) {
            var b, c = [];
            return this.getAddressFieldDefinitionsAndValues("Responsive", a).then(function(d) {
                var e = d.values.filter(function(a) {
                    return "countries" === a.id
                });
                return e.length && (b = e[0].values.filter(function(b) {
                    return b.id === a
                }), b.length > 0 && (c = b[0].regions.values)), c
            })
        }, b.getSubscriptions = function() {
            return a.market().getSubscriptions()
        }
    }(napi, config.callbacks),
    function(a, b, c, d, e) {
        var f = null,
            g = b(safeLocalStorage(window)),
            h = b(safeSessionStorage(window)),
            i = "loggedTimestamp",
            j = "isLoginTracked",
            k = {
                set: function() {
                    g.set(i, Date.now())
                },
                get: function() {
                    return g.get(i)
                },
                remove: function() {
                    g.remove(i)
                }
            },
            l = {
                set: function() {
                    h.set(j, !0)
                },
                get: function() {
                    return h.get(j)
                },
                remove: function() {
                    h.remove(j)
                }
            };

        function m() {
            return c.isTimestampFresh(k.get(), a.sessionDuration)
        }

        function n() {
            return a.customer().read().then(function(b) {
                return l.get() || (l.set(), trackingHelper.customerTrackingData().then(function(b) {
                    a.data().user().setLoginData(b)
                })), k.set(), b
            }, function(a) {
                return l.remove(), e.customerSessionClear().then(function() {
                    return Promise.reject(a)
                })
            })
        }

        function o() {
            $.cookie("autoLoginToken") && $.removeCookie("autoLoginToken", {
                path: $.cookie("autoLoginToken")
            })
        }

        function p() {
            $.cookie("ecapiLoginToken") && $.removeCookie("ecapiLoginToken", {
                path: $.cookie("ecapiLoginToken")
            })
        }
        e.customerLogin = function(b, c, d, e) {
            var f = function() {
                return a.customer().login(b, c, d, e).then(function() {
                    return l.remove(), h.remove("captureConsentLightboxClosed"), a.cart().clear()
                })
            };
            return a.cart().pushCartOnServer().then(f, f)
        }, e.customerRead = function(b) {
            return b && (f = null), f ? f : f = $.cookie("ecapiLoginToken") || $.cookie("autoLoginToken") || m() || b ? a.customer().setForceLogin().then(function() {
                return f = n(), o(), f
            }) : n()
        }, e.customerSessionClear = function() {
            return k.remove(), e.customerCacheClear(), o(), p(), a.customer().clear()
        }, e.customerSessionSetForceLogin = function() {
            return a.customer().setForceLogin()
        }, e.customerCacheClear = function() {
            f = null
        }, e.customerUnsubscribe = function(b, c, d) {
            return a.customer().unsubscribe(b, c, d)
        }, e.customerPaymentMethods = function() {
            return a.customer().getPaymentMethods()
        }, e.customerUpdatePaymentMethod = function(b) {
            return a.customer().createPaymentMethod(b)
        }, e.customerSendConsentRecapture = function() {
            return a.customer().sendConsentRecapture()
        }, e.customerMachines = function() {
            return a.customer().getMachines()
        }, a.onSessionTimeout(e.customerSessionClear)
    }(napi, storageWrapper, dateTools, config, config.callbacks),
    function(a, b) {
        b.subscriptionCustomerSubscriptions = function() {
            return a.subscription().getSubscriptions()
        }, b.subscriptionTerminate = function(b, c, d) {
            return a.subscription().terminate(b, c, d)
        }, b.subscriptionUpdateCreditCard = function(b, c) {
            return a.subscription().updateCreditCard(b, c)
        }, b.subscriptionContract = function(b) {
            return a.subscription().getContract(b)
        }, b.subscriptionResume = function(b) {
            return a.subscription().resume(b)
        }, b.subscriptionChangePlan = function(b, c, d, e) {
            return a.subscription().changePlan(b, c, d, e)
        }
    }(napi, config.callbacks),
    function(a, b, c, d) {
        function e(a, b) {
            for (var c = 0; c < a.length; c++)
                if (a[c].productId === b) return a[c];
            return {}
        }
        c.cartRead = function() {
            var d = [];
            return d.push(c.customerRead().then(void 0, function() {
                return {}
            }).then(function(a) {
                return b.catalog().getRootCategories(a.preferredTechnology).then(function(b) {
                    return {
                        customerInfo: a,
                        rootCategories: b
                    }
                })
            })), d.push(c.marketRead()), d.push(b.numberFormat()), d.push(b.priceFormat()), d.push(b.cart().read({
                expandProducts: !0
            })), Promise.all(d).then(function(b) {
                var c = b.shift(),
                    d = c.customerInfo,
                    e = c.rootCategories,
                    f = b.shift(),
                    g = b.shift(),
                    h = b.shift(),
                    i = b.shift(),
                    j = {};
                return j.currency = d.currency || f.currency, j.originalCredit = 0, f.creditEnabled && d.clubCredit && (j.originalCredit = d.clubCredit), j.categories = a.organizeCart(i, e, g, h, j.currency), a.cartInfoTotalsAndCredit(j, g, h), {
                    cart: i,
                    organizedCart: j
                }
            }, function(a) {
                log(a)
            })
        }, c.giftCardUpdate = function(d, e, f) {
            var g = [];
            return g.push(b.numberFormat()), g.push(b.priceFormat()), g.push(b.catalog().getProduct(d, {
                expandPrice: !0,
                expandStock: !1
            })), b.cart().updateGiftCard(d, e, f).then(function() {
                var b, d = c.cartRead();
                return b = Promise.all(g).then(function(b) {
                    var c = b.shift(),
                        d = b.shift(),
                        g = b.shift();
                    return f && (g.unitPrice = f), a.productTotals(g, e, c, d), g.productId = g.legacyId, g
                }), {
                    cartRead: d,
                    addedProduct: e ? b : Promise.resolve(null),
                    promotionCode: ""
                }
            })
        }, c.cartUpdate = function(d, e, f) {
            var g = [];
            return g.push(b.numberFormat()), g.push(b.priceFormat()), g.push(b.catalog().getProduct(d, {
                expandPrice: !0,
                expandStock: !1
            })), b.cart().update(d, e, f).then(function() {
                var b, d = c.cartRead();
                return b = Promise.all(g).then(function(b) {
                    var c = b.shift(),
                        d = b.shift(),
                        g = b.shift();
                    return f && f.amount && (g.unitPrice = f.amount), a.productTotals(g, e, c, d), g.productId = g.legacyId, g
                }), {
                    cartRead: d,
                    addedProduct: e ? b : Promise.resolve(null),
                    promotionCode: f ? f.promotionCode : ""
                }
            })
        }, c.cartSessionClear = function() {
            return b.cart().clear()
        }, c.readFreshCart = function() {
            var a = {
                forceFull: !0,
                forceRefresh: !0
            };
            return b.cart().read(a)
        }, c.cartForceRead = function() {
            return c.cartSessionClear().then(c.cartRead)
        }, c.cartServerReset = function() {
            return b.cart().reset().then(c.cartRead)
        }, c.pushCartOnServer = function() {
            return b.cart().pushCartOnServer()
        }, c.addOrUpdateProducts = function(a) {
            return b.cart().addOrUpdateProducts(a)
        }, c.cartRemoveItem = function(a, d) {
            return b.cart().remove(a, d).then(function() {
                return {
                    cartRead: c.cartRead(),
                    addedProduct: Promise.resolve(null),
                    promotionCode: d ? d.promotionCode : ""
                }
            })
        }, c.cartRemoveNextOrderItem = function(a) {
            return b.cart().removeNextOrderItem(a).then(function() {
                return {
                    cartRead: c.cartRead(),
                    addedProduct: Promise.resolve(null)
                }
            })
        }, c.addSubscription = function(f, g) {
            if (d.setItem("tracking-helper-subscription-breadcrumbUID", padl.page.pageInfo.breadcrumbUID), g) {
                var h = [];
                return h.push(b.numberFormat()), h.push(b.priceFormat()), h.push(b.catalog().getProduct(g, {
                    expandPrice: !0,
                    expandStock: !1
                })), b.cart().addSubscription(f, g).then(function(b) {
                    var d = c.cartRead(),
                        f = Promise.all(h).then(function(c) {
                            var d = c.shift(),
                                f = c.shift(),
                                g = c.shift(),
                                h = e(b.cartLines, g.id);
                            return g.unitPrice = h.unitPrice, g.totalPrice = h.unitPrice * h.quantity, a.productTotals(g, h.quantity, d, f), g.productId = g.legacyId, g
                        });
                    return {
                        cartRead: d,
                        addedProduct: f,
                        subscription: b.subscription
                    }
                })
            }
            return b.cart().addSubscription(f).then(function(a) {
                return {
                    cartRead: c.cartRead(),
                    addedProduct: Promise.resolve(null),
                    subscription: a.subscription
                }
            })
        }, c.updateSubscription = function(d, f) {
            if (f) {
                var g = [];
                return g.push(b.numberFormat()), g.push(b.priceFormat()), g.push(b.catalog().getProduct(f, {
                    expandPrice: !0,
                    expandStock: !1
                })), b.cart().updateSubscription(d, f).then(function(b) {
                    var d = c.cartRead(),
                        f = Promise.all(g).then(function(c) {
                            var d = c.shift(),
                                f = c.shift(),
                                g = c.shift(),
                                h = e(b.cartLines, g.id);
                            return g.unitPrice = h.unitPrice, g.totalPrice = h.unitPrice * h.quantity, a.productTotals(g, h.quantity, d, f), g.productId = g.legacyId, g
                        });
                    return {
                        cartRead: d,
                        addedProduct: f,
                        subscription: b.subscription
                    }
                })
            }
            return b.cart().updateSubscription(d).then(function(a) {
                return {
                    cartRead: c.cartRead(),
                    addedProduct: Promise.resolve(null),
                    subscription: a.subscription
                }
            })
        }, c.removeSubscription = function() {
            return b.cart().removeSubscription().then(function() {
                return {
                    cartRead: c.cartRead(),
                    addedProduct: Promise.resolve(null)
                }
            })
        }, c.getNotification = function() {
            return b.cart().read({
                forceFull: !0
            }).then(function(a) {
                return a.notification
            })
        }, c.cartUpdate = trackingHelper.wrapCartUpdate(c.cartUpdate), c.cartServerReset = trackingHelper.wrapCartUpdate(c.cartServerReset), c.cartRemoveItem = trackingHelper.wrapCartUpdate(c.cartRemoveItem), c.cartRemoveNextOrderItem = trackingHelper.wrapCartUpdate(c.cartRemoveNextOrderItem), c.addSubscription = trackingHelper.wrapCartUpdate(c.addSubscription), c.updateSubscription = trackingHelper.wrapCartUpdate(c.updateSubscription), c.removeSubscription = trackingHelper.wrapCartUpdate(c.removeSubscription)
    }(cartTools, napi, config.callbacks, safeLocalStorage()),
    function(a, b, c) {
        c.catalogGetProduct = function(b, c) {
            return a.catalog().getProduct(b, c)
        }
    }(napi, config, config.callbacks),
    function(a, b, c) {
        var d;
        c.priceFormat = function() {
            return d || (d = a.priceFormat()), d
        }
    }(napi, config, config.callbacks);
var User = function(a) {
    var b = function(a) {
            return {
                isLoggedIn: a.loggedIn,
                hasMadeOrders: a.hasMadeOrders,
                getName: function() {
                    return {
                        fullName: a.fullName || null,
                        lastName: a.lastName || null,
                        firstName: a.firstName || null
                    }
                }
            }
        },
        c = new Queue.Resolving;

    function d(a) {
        c.resolve(new b(a))
    }
    return a.customerRead().then(function(a) {
        a.loggedIn = !0, a.hasMadeOrders = !!a.orderHistorySize, d(a)
    }, function() {
        d({
            loggedIn: !1
        })
    }), {
        onReady: function(a) {
            return c.add(a), !0
        }
    }
}(config.callbacks);
! function(a, b, c, d) {
    var e = !1;

    function f(b, c) {
        b.dialog({
            autoOpen: !0,
            resizable: !1,
            draggable: !1,
            width: b.data("width") || 838,
            modal: !0,
            closeText: a.labels.close,
            dialogClass: "popin-dialog-open dark" + (c ? " " + c : ""),
            show: {
                effect: "fadeIn",
                duration: 300
            },
            title: b.data("title"),
            create: function() {
                var a = d(this);
                a.find(".vscroll").jScrollPane(), a.on("dialogopen", function() {
                    var b = d('<i class="Glyph Glyph--cross lightbox__close-icon" aria-hidden="true" />');
                    0 === a.parent().find(".lightbox__close-icon").length && a.parent().find(".ui-dialog-titlebar-close").prepend(b)
                })
            },
            hide: {
                effect: "fadeOut",
                duration: 300
            },
            open: function() {
                var a = d(this);
                a.find(".vscroll").jScrollPane("reinitialise"), d(".ui-widget-overlay").one("click", function() {
                    a.dialog("close")
                }).addClass("dark-overlay"), d(".popin-close").one("click", function() {
                    a.dialog("close")
                })
            },
            close: function() {
                d(".ui-widget-overlay").removeClass("dark-overlay"), d(this).closest(".ui-dialog").removeClass("popin-dialog-open")
            }
        }), b.on("click", ".popin-close", function() {
            b.dialog("close")
        })
    }

    function g(a) {
        a.on("click", ".popin-trigger", function(a) {
            a.preventDefault();
            var b = d(this),
                c = d("#" + b.data("popin-id")),
                g = b.data("popin-custom-class");
            return !c.length && this.href ? e ? log("Ajax call on going, please wait") : (e = !0, c = d("<div></div>").append("body").load(this.href + " #main", function() {
                setTimeout(function() {
                    f(c, g), e = !1
                }, 250)
            })) : f(c, g), !1
        })
    }

    function h() {
        d(".popin-page").each(function() {
            var a = d(this);
            a.data("auto-open") && f(a)
        })
    }
    d(b).on("detectFormFactor", function(a) {
        d(".ui-dialog").each(function() {
            var b = d(this);
            i(b, a.formFactor)
        })
    });

    function i(a, b) {
        return !a.hasClass("quantity-dialog-open") && void("WIDE" === b ? (a.removeClass("responsive-lightbox-medium responsive-lightbox-narrow").addClass("responsive-lightbox-wide"), a.children('[data-popin-type="subscription-detail-popin"]') ? a.css({
            top: (c.scrollY || c.pageYOffset) + .15 * d(c).height()
        }) : a.position({
            my: "center 15%",
            at: "center",
            of: c,
            collision: "fit"
        })) : "MEDIUM" === b ? (a.removeClass("responsive-lightbox-wide responsive-lightbox-narrow").addClass("responsive-lightbox-medium"), a.position({
            my: "center",
            at: "center",
            of: c,
            collision: "fit"
        })) : (a.removeClass("responsive-lightbox-wide responsive-lightbox-medium").addClass("responsive-lightbox-narrow"), a.position({
            my: "center",
            at: "center",
            of: c,
            collision: "fit"
        })))
    }
    g(d(b)), h(), c.initPopin = g, c.adaptLightboxSize = i
}(config, document, window, jQuery),
function(a) {
    var b = a(document);
    b.on("focusin", ".focus-tooltip", function() {
        a(this).parent().find(".tooltip-top").addClass("display")
    }).on("focusout", ".focus-tooltip", function() {
        a(this).parent().find(".tooltip-top").removeClass("display")
    }), b.on("mouseover", ".selection .shipping-services-choice", function() {
        a(this).find(".tooltip-top").addClass("display")
    }).on("mouseout", ".selection .shipping-services-choice", function() {
        a(this).find(".tooltip-top").removeClass("display")
    }), b.on("click", ".shipping-popin", function(b) {
        b.preventDefault();
        var c = a(this),
            d = c.data("popinid");
        c.hasClass("popin-light") ? (a("#" + d).dialog({
            dialogClass: "popin-dialog-open light checkout",
            open: function() {
                a(".ui-widget-overlay").removeClass("dark-overlay")
            }
        }), a("#" + d).dialog("open")) : a("#" + d).dialog("open")
    }), a(".shipping-services-lightbox-content").dialog({
        autoOpen: !1,
        modal: !0,
        title: "",
        dialogClass: "popin-dialog-open dark checkout",
        closeText: "",
        width: 640,
        resizable: !1,
        closeOnEscape: !0,
        draggable: !1,
        show: {
            effect: "fadeIn",
            duration: 300
        },
        hide: {
            effect: "fadeOut",
            duration: 300
        },
        open: function() {
            var b = a(this);
            a(".ui-widget-overlay").one("click", function() {
                b.dialog("close")
            }).addClass("dark-overlay")
        },
        close: function() {
            a(".ui-widget-overlay").removeClass("dark-overlay")
        }
    })
}(jQuery),
function(a, b) {
    function c() {
        return log("clearing customer info"), Promise.all([b.customerSessionClear(), b.customerSessionSetForceLogin()])
    }

    function d() {
        return b.customerSessionSetForceLogin()
    }
    a(document).on("click", ".clear-session-customer", function() {
        c()
    }).on("click", ".set-session-force-login", function() {
        log("setting session force login"), d()
    }).on("submit", "#form_hop", function() {
        c()
    })
}(jQuery, config.callbacks),
function(a) {
    function b(b) {
        b && b.length && b.on("input", function() {
            var b = a(this),
                c = b.attr("maxlength") || 1 / 0;
            if (b.val().length > c) {
                var d = b.val().substring(0, c);
                b.val(d)
            }
        })
    }
    a("body").on("textareaMaxLengthAdded", function(c) {
        var d = a(c.target);
        b(d)
    }), b(a("textarea[maxlength]"))
}(jQuery);