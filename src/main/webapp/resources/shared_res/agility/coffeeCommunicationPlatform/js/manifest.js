/*! coffee-communication-platform - 1.0.0 | Thu May 06 2021 11:38:50 GMT+0200 (Central European Summer Time) */ ! function(e) {
    function __webpack_require__(t) {
        if (n[t]) return n[t].exports;
        var r = n[t] = {
            i: t,
            l: !1,
            exports: {}
        };
        return e[t].call(r.exports, r, r.exports, __webpack_require__), r.l = !0, r.exports
    }(function() {
        var e = this,
            t = void 0;
        Function.prototype.bind || (Function.prototype.bind = function(e) {
                if ("function" != typeof this) throw new TypeError("Function.prototype.bind - what is trying to be bound is not callable");
                var t = Array.prototype.slice.call(arguments, 1),
                    n = this,
                    r = function() {},
                    o = function() {
                        return n.apply(this instanceof r ? this : e, t.concat(Array.prototype.slice.call(arguments)))
                    };
                return this.prototype && (r.prototype = this.prototype), o.prototype = new r, o
            }), Object.keys || (Object.keys = function() {
                "use strict";
                var e = Object.prototype.hasOwnProperty,
                    t = !{
                        toString: null
                    }.propertyIsEnumerable("toString"),
                    n = ["toString", "toLocaleString", "valueOf", "hasOwnProperty", "isPrototypeOf", "propertyIsEnumerable", "constructor"],
                    r = n.length;
                return function(o) {
                    if ("object" != typeof o && ("function" != typeof o || null === o)) throw new TypeError("Object.keys called on non-object");
                    var i, c, u = [];
                    for (i in o) e.call(o, i) && u.push(i);
                    if (t)
                        for (c = 0; c < r; c++) e.call(o, n[c]) && u.push(n[c]);
                    return u
                }
            }()), e.Promise || function(e) {
                function noop() {}

                function bind(e, t) {
                    return function() {
                        e.apply(t, arguments)
                    }
                }

                function Promise(e) {
                    if ("object" != typeof this) throw new TypeError("Promises must be constructed via new");
                    if ("function" != typeof e) throw new TypeError("not a function");
                    this._state = 0, this._handled = !1, this._value = void 0, this._deferreds = [], doResolve(e, this)
                }

                function handle(e, t) {
                    for (; 3 === e._state;) e = e._value;
                    if (0 === e._state) return void e._deferreds.push(t);
                    e._handled = !0, Promise._immediateFn(function() {
                        var n = 1 === e._state ? t.onFulfilled : t.onRejected;
                        if (null === n) return void(1 === e._state ? resolve : reject)(t.promise, e._value);
                        var r;
                        try {
                            r = n(e._value)
                        } catch (e) {
                            return void reject(t.promise, e)
                        }
                        resolve(t.promise, r)
                    })
                }

                function resolve(e, t) {
                    try {
                        if (t === e) throw new TypeError("A promise cannot be resolved with itself.");
                        if (t && ("object" == typeof t || "function" == typeof t)) {
                            var n = t.then;
                            if (t instanceof Promise) return e._state = 3, e._value = t, void finale(e);
                            if ("function" == typeof n) return void doResolve(bind(n, t), e)
                        }
                        e._state = 1, e._value = t, finale(e)
                    } catch (t) {
                        reject(e, t)
                    }
                }

                function reject(e, t) {
                    e._state = 2, e._value = t, finale(e)
                }

                function finale(e) {
                    2 === e._state && 0 === e._deferreds.length && Promise._immediateFn(function() {
                        e._handled || Promise._unhandledRejectionFn(e._value)
                    });
                    for (var t = 0, n = e._deferreds.length; t < n; t++) handle(e, e._deferreds[t]);
                    e._deferreds = null
                }

                function Handler(e, t, n) {
                    this.onFulfilled = "function" == typeof e ? e : null, this.onRejected = "function" == typeof t ? t : null, this.promise = n
                }

                function doResolve(e, t) {
                    var n = !1;
                    try {
                        e(function(e) {
                            n || (n = !0, resolve(t, e))
                        }, function(e) {
                            n || (n = !0, reject(t, e))
                        })
                    } catch (e) {
                        if (n) return;
                        n = !0, reject(t, e)
                    }
                }
                var n = setTimeout;
                Promise.prototype.catch = function(e) {
                    return this.then(null, e)
                }, Promise.prototype.then = function(e, t) {
                    var n = new this.constructor(noop);
                    return handle(this, new Handler(e, t, n)), n
                }, Promise.all = function(e) {
                    var t = Array.prototype.slice.call(e);
                    return new Promise(function(e, n) {
                        function res(o, i) {
                            try {
                                if (i && ("object" == typeof i || "function" == typeof i)) {
                                    var c = i.then;
                                    if ("function" == typeof c) return void c.call(i, function(e) {
                                        res(o, e)
                                    }, n)
                                }
                                t[o] = i, 0 == --r && e(t)
                            } catch (e) {
                                n(e)
                            }
                        }
                        if (0 === t.length) return e([]);
                        for (var r = t.length, o = 0; o < t.length; o++) res(o, t[o])
                    })
                }, Promise.resolve = function(e) {
                    return e && "object" == typeof e && e.constructor === Promise ? e : new Promise(function(t) {
                        t(e)
                    })
                }, Promise.reject = function(e) {
                    return new Promise(function(t, n) {
                        n(e)
                    })
                }, Promise.race = function(e) {
                    return new Promise(function(t, n) {
                        for (var r = 0, o = e.length; r < o; r++) e[r].then(t, n)
                    })
                }, Promise._immediateFn = "function" == typeof setImmediate && function(e) {
                    setImmediate(e)
                } || function(e) {
                    n(e, 0)
                }, Promise._unhandledRejectionFn = function(e) {
                    "undefined" != typeof console && console && console.warn("Possible Unhandled Promise Rejection:", e)
                }, Promise._setImmediateFn = function(e) {
                    Promise._immediateFn = e
                }, Promise._setUnhandledRejectionFn = function(e) {
                    Promise._unhandledRejectionFn = e
                }, void 0 !== t && t.exports ? t.exports = Promise : e.Promise || (e.Promise = Promise)
            }(this),
            function() {
                Object.defineProperty || "__defineGetter__" in {} && (Object.defineProperty = function(e, t, n) {
                    n.get && e.__defineGetter__(t, function() {
                        return n.get.call(e)
                    }), n.set && e.__defineSetter__(t, function(t) {
                        return n.set.call(e, t)
                    })
                })
            }()
    }).call(function() {
        return "undefined" != typeof window ? window : "undefined" != typeof global ? global : "undefined" != typeof self ? self : void 0
    }());
    var t = window.agilityJsonp;
    window.agilityJsonp = function(n, o, i) {
        for (var c, u, a, f = 0, s = []; f < n.length; f++) u = n[f], r[u] && s.push(r[u][0]), r[u] = 0;
        for (c in o) Object.prototype.hasOwnProperty.call(o, c) && (e[c] = o[c]);
        for (t && t(n, o, i); s.length;) s.shift()();
        if (i)
            for (f = 0; f < i.length; f++) a = __webpack_require__(__webpack_require__.s = i[f]);
        return a
    };
    var n = {},
        r = {
            6: 0
        };
    __webpack_require__.e = function(e) {
        function onScriptComplete() {
            i.onerror = i.onload = null, clearTimeout(c);
            var t = r[e];
            0 !== t && (t && t[1](new Error("Loading chunk " + e + " failed.")), r[e] = void 0)
        }
        var t = r[e];
        if (0 === t) return new Promise(function(e) {
            e()
        });
        if (t) return t[2];
        var n = new Promise(function(n, o) {
            t = r[e] = [n, o]
        });
        t[2] = n;
        var o = document.getElementsByTagName("head")[0],
            i = document.createElement("script");
        i.type = "text/javascript", i.charset = "utf-8", i.async = !0, i.timeout = 12e4, __webpack_require__.nc && i.setAttribute("nonce", __webpack_require__.nc), i.src = __webpack_require__.p + "js/" + e + "." + {
            0: "134df44f3741316ae04b",
            1: "2ac0b004b47a22bd0a9d",
            2: "68be753c9c638d75403e",
            3: "bd2619f30a9eda492987",
            4: "5cae34200b0fc3e29b8f",
            5: "4ab8ecf5a639ff5e5e8d"
        }[e] + ".js";
        var c = setTimeout(onScriptComplete, 12e4);
        return i.onerror = i.onload = onScriptComplete, o.appendChild(i), n
    }, __webpack_require__.m = e, __webpack_require__.c = n, __webpack_require__.i = function(e) {
        return e
    }, __webpack_require__.d = function(e, t, n) {
        __webpack_require__.o(e, t) || Object.defineProperty(e, t, {
            configurable: !1,
            enumerable: !0,
            get: n
        })
    }, __webpack_require__.n = function(e) {
        var t = e && e.__esModule ? function() {
            return e.default
        } : function() {
            return e
        };
        return __webpack_require__.d(t, "a", t), t
    }, __webpack_require__.o = function(e, t) {
        return Object.prototype.hasOwnProperty.call(e, t)
    }, __webpack_require__.p = "/shared_res/agility/coffeeCommunicationPlatform/", __webpack_require__.oe = function(e) {
        throw console.error(e), e
    }
}([]);