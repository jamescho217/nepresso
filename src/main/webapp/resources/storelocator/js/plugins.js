// 1 : jQuery Easing 1.3
// 2 : jQueryUI 1.8.23 Custom
// 3 : jQuery Zoom 1.3
// 4 : jPlayer 2.1
// 5 : jQuery.mousewheel 3.0.6
// 6 : jScrollPane - v2.0.0beta12
// 7 : jQuery Reel 1.2
// 8 : Multiple Image Slider (custom)
// 9 : Quantity popin (custom)
// 10 : Tooltips (custom)

// Avoid `console` errors in browsers that lack a console.
if (!(window.console && console.log)) {
    (function() {
        var noop = function() {};
        var methods = ['assert', 'clear', 'count', 'debug', 'dir', 'dirxml', 'error', 'exception', 'group', 'groupCollapsed', 'groupEnd', 'info', 'log', 'markTimeline', 'profile', 'profileEnd', 'markTimeline', 'table', 'time', 'timeEnd', 'timeStamp', 'trace', 'warn'];
        var length = methods.length;
        var console = window.console = {};
        while (length--) {
            console[methods[length]] = noop;
        }
    }());
}

/*
 * jQuery Easing v1.3 - http://gsgd.co.uk/sandbox/jquery/easing/
 *
 * Uses the built in easing capabilities added In jQuery 1.1
 * to offer multiple easing options
 *
 * TERMS OF USE - jQuery Easing
 * 
 * Open source under the BSD License. 
 * 
 * Copyright © 2008 George McGinley Smith
 * All rights reserved.
 * 
 * Redistribution and use in source and binary forms, with or without modification, 
 * are permitted provided that the following conditions are met:
 * 
 * Redistributions of source code must retain the above copyright notice, this list of 
 * conditions and the following disclaimer.
 * Redistributions in binary form must reproduce the above copyright notice, this list 
 * of conditions and the following disclaimer in the documentation and/or other materials 
 * provided with the distribution.
 * 
 * Neither the name of the author nor the names of contributors may be used to endorse 
 * or promote products derived from this software without specific prior written permission.
 * 
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY 
 * EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
 *  COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 *  EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE
 *  GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED 
 * AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
 *  NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED 
 * OF THE POSSIBILITY OF SUCH DAMAGE. 
 *
 */

// t: current time, b: begInnIng value, c: change In value, d: duration
jQuery.easing['jswing'] = jQuery.easing['swing'];

jQuery.extend(jQuery.easing, {
    def: 'easeOutQuad',
    swing: function(x, t, b, c, d) {
        //alert(jQuery.easing.default);
        return jQuery.easing[jQuery.easing.def](x, t, b, c, d);
    },
    easeInQuad: function(x, t, b, c, d) {
        return c * (t /= d) * t + b;
    },
    easeOutQuad: function(x, t, b, c, d) {
        return -c * (t /= d) * (t - 2) + b;
    },
    easeInOutQuad: function(x, t, b, c, d) {
        if ((t /= d / 2) < 1) return c / 2 * t * t + b;
        return -c / 2 * ((--t) * (t - 2) - 1) + b;
    },
    easeInCubic: function(x, t, b, c, d) {
        return c * (t /= d) * t * t + b;
    },
    easeOutCubic: function(x, t, b, c, d) {
        return c * ((t = t / d - 1) * t * t + 1) + b;
    },
    easeInOutCubic: function(x, t, b, c, d) {
        if ((t /= d / 2) < 1) return c / 2 * t * t * t + b;
        return c / 2 * ((t -= 2) * t * t + 2) + b;
    },
    easeInQuart: function(x, t, b, c, d) {
        return c * (t /= d) * t * t * t + b;
    },
    easeOutQuart: function(x, t, b, c, d) {
        return -c * ((t = t / d - 1) * t * t * t - 1) + b;
    },
    easeInOutQuart: function(x, t, b, c, d) {
        if ((t /= d / 2) < 1) return c / 2 * t * t * t * t + b;
        return -c / 2 * ((t -= 2) * t * t * t - 2) + b;
    },
    easeInQuint: function(x, t, b, c, d) {
        return c * (t /= d) * t * t * t * t + b;
    },
    easeOutQuint: function(x, t, b, c, d) {
        return c * ((t = t / d - 1) * t * t * t * t + 1) + b;
    },
    easeInOutQuint: function(x, t, b, c, d) {
        if ((t /= d / 2) < 1) return c / 2 * t * t * t * t * t + b;
        return c / 2 * ((t -= 2) * t * t * t * t + 2) + b;
    },
    easeInSine: function(x, t, b, c, d) {
        return -c * Math.cos(t / d * (Math.PI / 2)) + c + b;
    },
    easeOutSine: function(x, t, b, c, d) {
        return c * Math.sin(t / d * (Math.PI / 2)) + b;
    },
    easeInOutSine: function(x, t, b, c, d) {
        return -c / 2 * (Math.cos(Math.PI * t / d) - 1) + b;
    },
    easeInExpo: function(x, t, b, c, d) {
        return (t == 0) ? b : c * Math.pow(2, 10 * (t / d - 1)) + b;
    },
    easeOutExpo: function(x, t, b, c, d) {
        return (t == d) ? b + c : c * (-Math.pow(2, -10 * t / d) + 1) + b;
    },
    easeInOutExpo: function(x, t, b, c, d) {
        if (t == 0) return b;
        if (t == d) return b + c;
        if ((t /= d / 2) < 1) return c / 2 * Math.pow(2, 10 * (t - 1)) + b;
        return c / 2 * (-Math.pow(2, -10 * --t) + 2) + b;
    },
    easeInCirc: function(x, t, b, c, d) {
        return -c * (Math.sqrt(1 - (t /= d) * t) - 1) + b;
    },
    easeOutCirc: function(x, t, b, c, d) {
        return c * Math.sqrt(1 - (t = t / d - 1) * t) + b;
    },
    easeInOutCirc: function(x, t, b, c, d) {
        if ((t /= d / 2) < 1) return -c / 2 * (Math.sqrt(1 - t * t) - 1) + b;
        return c / 2 * (Math.sqrt(1 - (t -= 2) * t) + 1) + b;
    },
    easeInElastic: function(x, t, b, c, d) {
        var s = 1.70158;
        var p = 0;
        var a = c;
        if (t == 0) return b;
        if ((t /= d) == 1) return b + c;
        if (!p) p = d * .3;
        if (a < Math.abs(c)) {
            a = c;
            var s = p / 4;
        } else var s = p / (2 * Math.PI) * Math.asin(c / a);
        return -(a * Math.pow(2, 10 * (t -= 1)) * Math.sin((t * d - s) * (2 * Math.PI) / p)) + b;
    },
    easeOutElastic: function(x, t, b, c, d) {
        var s = 1.70158;
        var p = 0;
        var a = c;
        if (t == 0) return b;
        if ((t /= d) == 1) return b + c;
        if (!p) p = d * .3;
        if (a < Math.abs(c)) {
            a = c;
            var s = p / 4;
        } else var s = p / (2 * Math.PI) * Math.asin(c / a);
        return a * Math.pow(2, -10 * t) * Math.sin((t * d - s) * (2 * Math.PI) / p) + c + b;
    },
    easeInOutElastic: function(x, t, b, c, d) {
        var s = 1.70158;
        var p = 0;
        var a = c;
        if (t == 0) return b;
        if ((t /= d / 2) == 2) return b + c;
        if (!p) p = d * (.3 * 1.5);
        if (a < Math.abs(c)) {
            a = c;
            var s = p / 4;
        } else var s = p / (2 * Math.PI) * Math.asin(c / a);
        if (t < 1) return -.5 * (a * Math.pow(2, 10 * (t -= 1)) * Math.sin((t * d - s) * (2 * Math.PI) / p)) + b;
        return a * Math.pow(2, -10 * (t -= 1)) * Math.sin((t * d - s) * (2 * Math.PI) / p) * .5 + c + b;
    },
    easeInBack: function(x, t, b, c, d, s) {
        if (s == undefined) s = 1.70158;
        return c * (t /= d) * t * ((s + 1) * t - s) + b;
    },
    easeOutBack: function(x, t, b, c, d, s) {
        if (s == undefined) s = 1.70158;
        return c * ((t = t / d - 1) * t * ((s + 1) * t + s) + 1) + b;
    },
    easeInOutBack: function(x, t, b, c, d, s) {
        if (s == undefined) s = 1.70158;
        if ((t /= d / 2) < 1) return c / 2 * (t * t * (((s *= (1.525)) + 1) * t - s)) + b;
        return c / 2 * ((t -= 2) * t * (((s *= (1.525)) + 1) * t + s) + 2) + b;
    },
    easeInBounce: function(x, t, b, c, d) {
        return c - jQuery.easing.easeOutBounce(x, d - t, 0, c, d) + b;
    },
    easeOutBounce: function(x, t, b, c, d) {
        if ((t /= d) < (1 / 2.75)) {
            return c * (7.5625 * t * t) + b;
        } else if (t < (2 / 2.75)) {
            return c * (7.5625 * (t -= (1.5 / 2.75)) * t + .75) + b;
        } else if (t < (2.5 / 2.75)) {
            return c * (7.5625 * (t -= (2.25 / 2.75)) * t + .9375) + b;
        } else {
            return c * (7.5625 * (t -= (2.625 / 2.75)) * t + .984375) + b;
        }
    },
    easeInOutBounce: function(x, t, b, c, d) {
        if (t < d / 2) return jQuery.easing.easeInBounce(x, t * 2, 0, c, d) * .5 + b;
        return jQuery.easing.easeOutBounce(x, t * 2 - d, 0, c, d) * .5 + c * .5 + b;
    }
});

/*
 *
 * TERMS OF USE - EASING EQUATIONS
 * 
 * Open source under the BSD License. 
 * 
 * Copyright © 2001 Robert Penner
 * All rights reserved.
 * 
 * Redistribution and use in source and binary forms, with or without modification, 
 * are permitted provided that the following conditions are met:
 * 
 * Redistributions of source code must retain the above copyright notice, this list of 
 * conditions and the following disclaimer.
 * Redistributions in binary form must reproduce the above copyright notice, this list 
 * of conditions and the following disclaimer in the documentation and/or other materials 
 * provided with the distribution.
 * 
 * Neither the name of the author nor the names of contributors may be used to endorse 
 * or promote products derived from this software without specific prior written permission.
 * 
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY 
 * EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
 *  COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 *  EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE
 *  GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED 
 * AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
 *  NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED 
 * OF THE POSSIBILITY OF SUCH DAMAGE. 
 *
 */

/*! jQuery UI - v1.8.23 - 2012-08-15
 * https://github.com/jquery/jquery-ui
 * Includes: jquery.ui.core.js
 * Copyright (c) 2012 AUTHORS.txt; Licensed MIT, GPL */
(function(a, b) {
    function c(b, c) {
        var e = b.nodeName.toLowerCase();
        if ("area" === e) {
            var f = b.parentNode,
                g = f.name,
                h;
            return !b.href || !g || f.nodeName.toLowerCase() !== "map" ? !1 : (h = a("img[usemap=#" + g + "]")[0], !!h && d(h))
        }
        return (/input|select|textarea|button|object/.test(e) ? !b.disabled : "a" == e ? b.href || c : c) && d(b)
    }

    function d(b) {
        return !a(b).parents().andSelf().filter(function() {
            return a.curCSS(this, "visibility") === "hidden" || a.expr.filters.hidden(this)
        }).length
    }
    a.ui = a.ui || {};
    if (a.ui.version) return;
    a.extend(a.ui, {
        version: "1.8.23",
        keyCode: {
            ALT: 18,
            BACKSPACE: 8,
            CAPS_LOCK: 20,
            COMMA: 188,
            COMMAND: 91,
            COMMAND_LEFT: 91,
            COMMAND_RIGHT: 93,
            CONTROL: 17,
            DELETE: 46,
            DOWN: 40,
            END: 35,
            ENTER: 13,
            ESCAPE: 27,
            HOME: 36,
            INSERT: 45,
            LEFT: 37,
            MENU: 93,
            NUMPAD_ADD: 107,
            NUMPAD_DECIMAL: 110,
            NUMPAD_DIVIDE: 111,
            NUMPAD_ENTER: 108,
            NUMPAD_MULTIPLY: 106,
            NUMPAD_SUBTRACT: 109,
            PAGE_DOWN: 34,
            PAGE_UP: 33,
            PERIOD: 190,
            RIGHT: 39,
            SHIFT: 16,
            SPACE: 32,
            TAB: 9,
            UP: 38,
            WINDOWS: 91
        }
    }), a.fn.extend({
        propAttr: a.fn.prop || a.fn.attr,
        _focus: a.fn.focus,
        focus: function(b, c) {
            return typeof b == "number" ? this.each(function() {
                var d = this;
                setTimeout(function() {
                    a(d).focus(), c && c.call(d)
                }, b)
            }) : this._focus.apply(this, arguments)
        },
        scrollParent: function() {
            var b;
            return a.browser.msie && /(static|relative)/.test(this.css("position")) || /absolute/.test(this.css("position")) ? b = this.parents().filter(function() {
                return /(relative|absolute|fixed)/.test(a.curCSS(this, "position", 1)) && /(auto|scroll)/.test(a.curCSS(this, "overflow", 1) + a.curCSS(this, "overflow-y", 1) + a.curCSS(this, "overflow-x", 1))
            }).eq(0) : b = this.parents().filter(function() {
                return /(auto|scroll)/.test(a.curCSS(this, "overflow", 1) + a.curCSS(this, "overflow-y", 1) + a.curCSS(this, "overflow-x", 1))
            }).eq(0), /fixed/.test(this.css("position")) || !b.length ? a(document) : b
        },
        zIndex: function(c) {
            if (c !== b) return this.css("zIndex", c);
            if (this.length) {
                var d = a(this[0]),
                    e, f;
                while (d.length && d[0] !== document) {
                    e = d.css("position");
                    if (e === "absolute" || e === "relative" || e === "fixed") {
                        f = parseInt(d.css("zIndex"), 10);
                        if (!isNaN(f) && f !== 0) return f
                    }
                    d = d.parent()
                }
            }
            return 0
        },
        disableSelection: function() {
            return this.bind((a.support.selectstart ? "selectstart" : "mousedown") + ".ui-disableSelection", function(a) {
                a.preventDefault()
            })
        },
        enableSelection: function() {
            return this.unbind(".ui-disableSelection")
        }
    }), a("<a>").outerWidth(1).jquery || a.each(["Width", "Height"], function(c, d) {
        function h(b, c, d, f) {
            return a.each(e, function() {
                c -= parseFloat(a.curCSS(b, "padding" + this, !0)) || 0, d && (c -= parseFloat(a.curCSS(b, "border" + this + "Width", !0)) || 0), f && (c -= parseFloat(a.curCSS(b, "margin" + this, !0)) || 0)
            }), c
        }
        var e = d === "Width" ? ["Left", "Right"] : ["Top", "Bottom"],
            f = d.toLowerCase(),
            g = {
                innerWidth: a.fn.innerWidth,
                innerHeight: a.fn.innerHeight,
                outerWidth: a.fn.outerWidth,
                outerHeight: a.fn.outerHeight
            };
        a.fn["inner" + d] = function(c) {
            return c === b ? g["inner" + d].call(this) : this.each(function() {
                a(this).css(f, h(this, c) + "px")
            })
        }, a.fn["outer" + d] = function(b, c) {
            return typeof b != "number" ? g["outer" + d].call(this, b) : this.each(function() {
                a(this).css(f, h(this, b, !0, c) + "px")
            })
        }
    }), a.extend(a.expr[":"], {
        data: a.expr.createPseudo ? a.expr.createPseudo(function(b) {
            return function(c) {
                return !!a.data(c, b)
            }
        }) : function(b, c, d) {
            return !!a.data(b, d[3])
        },
        focusable: function(b) {
            return c(b, !isNaN(a.attr(b, "tabindex")))
        },
        tabbable: function(b) {
            var d = a.attr(b, "tabindex"),
                e = isNaN(d);
            return (e || d >= 0) && c(b, !e)
        }
    }), a(function() {
        var b = document.body,
            c = b.appendChild(c = document.createElement("div"));
        c.offsetHeight, a.extend(c.style, {
            minHeight: "100px",
            height: "auto",
            padding: 0,
            borderWidth: 0
        }), a.support.minHeight = c.offsetHeight === 100, a.support.selectstart = "onselectstart" in c, b.removeChild(c).style.display = "none"
    }), a.curCSS || (a.curCSS = a.css), a.extend(a.ui, {
        plugin: {
            add: function(b, c, d) {
                var e = a.ui[b].prototype;
                for (var f in d) e.plugins[f] = e.plugins[f] || [], e.plugins[f].push([c, d[f]])
            },
            call: function(a, b, c) {
                var d = a.plugins[b];
                if (!d || !a.element[0].parentNode) return;
                for (var e = 0; e < d.length; e++) a.options[d[e][0]] && d[e][1].apply(a.element, c)
            }
        },
        contains: function(a, b) {
            return document.compareDocumentPosition ? a.compareDocumentPosition(b) & 16 : a !== b && a.contains(b)
        },
        hasScroll: function(b, c) {
            if (a(b).css("overflow") === "hidden") return !1;
            var d = c && c === "left" ? "scrollLeft" : "scrollTop",
                e = !1;
            return b[d] > 0 ? !0 : (b[d] = 1, e = b[d] > 0, b[d] = 0, e)
        },
        isOverAxis: function(a, b, c) {
            return a > b && a < b + c
        },
        isOver: function(b, c, d, e, f, g) {
            return a.ui.isOverAxis(b, d, f) && a.ui.isOverAxis(c, e, g)
        }
    })
})(jQuery);;
/*! jQuery UI - v1.8.23 - 2012-08-15
 * https://github.com/jquery/jquery-ui
 * Includes: jquery.ui.widget.js
 * Copyright (c) 2012 AUTHORS.txt; Licensed MIT, GPL */
(function(a, b) {
    if (a.cleanData) {
        var c = a.cleanData;
        a.cleanData = function(b) {
            for (var d = 0, e;
                (e = b[d]) != null; d++) try {
                a(e).triggerHandler("remove")
            } catch (f) {}
            c(b)
        }
    } else {
        var d = a.fn.remove;
        a.fn.remove = function(b, c) {
            return this.each(function() {
                return c || (!b || a.filter(b, [this]).length) && a("*", this).add([this]).each(function() {
                    try {
                        a(this).triggerHandler("remove")
                    } catch (b) {}
                }), d.call(a(this), b, c)
            })
        }
    }
    a.widget = function(b, c, d) {
        var e = b.split(".")[0],
            f;
        b = b.split(".")[1], f = e + "-" + b, d || (d = c, c = a.Widget), a.expr[":"][f] = function(c) {
            return !!a.data(c, b)
        }, a[e] = a[e] || {}, a[e][b] = function(a, b) {
            arguments.length && this._createWidget(a, b)
        };
        var g = new c;
        g.options = a.extend(!0, {}, g.options), a[e][b].prototype = a.extend(!0, g, {
            namespace: e,
            widgetName: b,
            widgetEventPrefix: a[e][b].prototype.widgetEventPrefix || b,
            widgetBaseClass: f
        }, d), a.widget.bridge(b, a[e][b])
    }, a.widget.bridge = function(c, d) {
        a.fn[c] = function(e) {
            var f = typeof e == "string",
                g = Array.prototype.slice.call(arguments, 1),
                h = this;
            return e = !f && g.length ? a.extend.apply(null, [!0, e].concat(g)) : e, f && e.charAt(0) === "_" ? h : (f ? this.each(function() {
                var d = a.data(this, c),
                    f = d && a.isFunction(d[e]) ? d[e].apply(d, g) : d;
                if (f !== d && f !== b) return h = f, !1
            }) : this.each(function() {
                var b = a.data(this, c);
                b ? b.option(e || {})._init() : a.data(this, c, new d(e, this))
            }), h)
        }
    }, a.Widget = function(a, b) {
        arguments.length && this._createWidget(a, b)
    }, a.Widget.prototype = {
        widgetName: "widget",
        widgetEventPrefix: "",
        options: {
            disabled: !1
        },
        _createWidget: function(b, c) {
            a.data(c, this.widgetName, this), this.element = a(c), this.options = a.extend(!0, {}, this.options, this._getCreateOptions(), b);
            var d = this;
            this.element.bind("remove." + this.widgetName, function() {
                d.destroy()
            }), this._create(), this._trigger("create"), this._init()
        },
        _getCreateOptions: function() {
            return a.metadata && a.metadata.get(this.element[0])[this.widgetName]
        },
        _create: function() {},
        _init: function() {},
        destroy: function() {
            this.element.unbind("." + this.widgetName).removeData(this.widgetName), this.widget().unbind("." + this.widgetName).removeAttr("aria-disabled").removeClass(this.widgetBaseClass + "-disabled " + "ui-state-disabled")
        },
        widget: function() {
            return this.element
        },
        option: function(c, d) {
            var e = c;
            if (arguments.length === 0) return a.extend({}, this.options);
            if (typeof c == "string") {
                if (d === b) return this.options[c];
                e = {}, e[c] = d
            }
            return this._setOptions(e), this
        },
        _setOptions: function(b) {
            var c = this;
            return a.each(b, function(a, b) {
                c._setOption(a, b)
            }), this
        },
        _setOption: function(a, b) {
            return this.options[a] = b, a === "disabled" && this.widget()[b ? "addClass" : "removeClass"](this.widgetBaseClass + "-disabled" + " " + "ui-state-disabled").attr("aria-disabled", b), this
        },
        enable: function() {
            return this._setOption("disabled", !1)
        },
        disable: function() {
            return this._setOption("disabled", !0)
        },
        _trigger: function(b, c, d) {
            var e, f, g = this.options[b];
            d = d || {}, c = a.Event(c), c.type = (b === this.widgetEventPrefix ? b : this.widgetEventPrefix + b).toLowerCase(), c.target = this.element[0], f = c.originalEvent;
            if (f)
                for (e in f) e in c || (c[e] = f[e]);
            return this.element.trigger(c, d), !(a.isFunction(g) && g.call(this.element[0], c, d) === !1 || c.isDefaultPrevented())
        }
    }
})(jQuery);;
/*! jQuery UI - v1.8.23 - 2012-08-15
 * https://github.com/jquery/jquery-ui
 * Includes: jquery.ui.mouse.js
 * Copyright (c) 2012 AUTHORS.txt; Licensed MIT, GPL */
(function(a, b) {
    var c = !1;
    a(document).mouseup(function(a) {
        c = !1
    }), a.widget("ui.mouse", {
        options: {
            cancel: ":input,option",
            distance: 1,
            delay: 0
        },
        _mouseInit: function() {
            var b = this;
            this.element.bind("mousedown." + this.widgetName, function(a) {
                return b._mouseDown(a)
            }).bind("click." + this.widgetName, function(c) {
                if (!0 === a.data(c.target, b.widgetName + ".preventClickEvent")) return a.removeData(c.target, b.widgetName + ".preventClickEvent"), c.stopImmediatePropagation(), !1
            }), this.started = !1
        },
        _mouseDestroy: function() {
            this.element.unbind("." + this.widgetName), this._mouseMoveDelegate && a(document).unbind("mousemove." + this.widgetName, this._mouseMoveDelegate).unbind("mouseup." + this.widgetName, this._mouseUpDelegate)
        },
        _mouseDown: function(b) {
            if (c) return;
            this._mouseStarted && this._mouseUp(b), this._mouseDownEvent = b;
            var d = this,
                e = b.which == 1,
                f = typeof this.options.cancel == "string" && b.target.nodeName ? a(b.target).closest(this.options.cancel).length : !1;
            if (!e || f || !this._mouseCapture(b)) return !0;
            this.mouseDelayMet = !this.options.delay, this.mouseDelayMet || (this._mouseDelayTimer = setTimeout(function() {
                d.mouseDelayMet = !0
            }, this.options.delay));
            if (this._mouseDistanceMet(b) && this._mouseDelayMet(b)) {
                this._mouseStarted = this._mouseStart(b) !== !1;
                if (!this._mouseStarted) return b.preventDefault(), !0
            }
            return !0 === a.data(b.target, this.widgetName + ".preventClickEvent") && a.removeData(b.target, this.widgetName + ".preventClickEvent"), this._mouseMoveDelegate = function(a) {
                return d._mouseMove(a)
            }, this._mouseUpDelegate = function(a) {
                return d._mouseUp(a)
            }, a(document).bind("mousemove." + this.widgetName, this._mouseMoveDelegate).bind("mouseup." + this.widgetName, this._mouseUpDelegate), b.preventDefault(), c = !0, !0
        },
        _mouseMove: function(b) {
            return !a.browser.msie || document.documentMode >= 9 || !!b.button ? this._mouseStarted ? (this._mouseDrag(b), b.preventDefault()) : (this._mouseDistanceMet(b) && this._mouseDelayMet(b) && (this._mouseStarted = this._mouseStart(this._mouseDownEvent, b) !== !1, this._mouseStarted ? this._mouseDrag(b) : this._mouseUp(b)), !this._mouseStarted) : this._mouseUp(b)
        },
        _mouseUp: function(b) {
            return a(document).unbind("mousemove." + this.widgetName, this._mouseMoveDelegate).unbind("mouseup." + this.widgetName, this._mouseUpDelegate), this._mouseStarted && (this._mouseStarted = !1, b.target == this._mouseDownEvent.target && a.data(b.target, this.widgetName + ".preventClickEvent", !0), this._mouseStop(b)), !1
        },
        _mouseDistanceMet: function(a) {
            return Math.max(Math.abs(this._mouseDownEvent.pageX - a.pageX), Math.abs(this._mouseDownEvent.pageY - a.pageY)) >= this.options.distance
        },
        _mouseDelayMet: function(a) {
            return this.mouseDelayMet
        },
        _mouseStart: function(a) {},
        _mouseDrag: function(a) {},
        _mouseStop: function(a) {},
        _mouseCapture: function(a) {
            return !0
        }
    })
})(jQuery);;
/*! jQuery UI - v1.8.23 - 2012-08-15
 * https://github.com/jquery/jquery-ui
 * Includes: jquery.ui.slider.js
 * Copyright (c) 2012 AUTHORS.txt; Licensed MIT, GPL */
(function(a, b) {
    var c = 5;
    a.widget("ui.slider", a.ui.mouse, {
        widgetEventPrefix: "slide",
        options: {
            animate: !1,
            distance: 0,
            max: 100,
            min: 0,
            orientation: "horizontal",
            range: !1,
            step: 1,
            value: 0,
            values: null
        },
        _create: function() {
            var b = this,
                d = this.options,
                e = this.element.find(".ui-slider-handle").addClass("ui-state-default ui-corner-all"),
                f = "<a class='ui-slider-handle ui-state-default ui-corner-all' href='#'></a>",
                g = d.values && d.values.length || 1,
                h = [];
            this._keySliding = !1, this._mouseSliding = !1, this._animateOff = !0, this._handleIndex = null, this._detectOrientation(), this._mouseInit(), this.element.addClass("ui-slider ui-slider-" + this.orientation + " ui-widget" + " ui-widget-content" + " ui-corner-all" + (d.disabled ? " ui-slider-disabled ui-disabled" : "")), this.range = a([]), d.range && (d.range === !0 && (d.values || (d.values = [this._valueMin(), this._valueMin()]), d.values.length && d.values.length !== 2 && (d.values = [d.values[0], d.values[0]])), this.range = a("<div></div>").appendTo(this.element).addClass("ui-slider-range ui-widget-header" + (d.range === "min" || d.range === "max" ? " ui-slider-range-" + d.range : "")));
            for (var i = e.length; i < g; i += 1) h.push(f);
            this.handles = e.add(a(h.join("")).appendTo(b.element)), this.handle = this.handles.eq(0), this.handles.add(this.range).filter("a").click(function(a) {
                a.preventDefault()
            }).hover(function() {
                d.disabled || a(this).addClass("ui-state-hover")
            }, function() {
                a(this).removeClass("ui-state-hover")
            }).focus(function() {
                d.disabled ? a(this).blur() : (a(".ui-slider .ui-state-focus").removeClass("ui-state-focus"), a(this).addClass("ui-state-focus"))
            }).blur(function() {
                a(this).removeClass("ui-state-focus")
            }), this.handles.each(function(b) {
                a(this).data("index.ui-slider-handle", b)
            }), this.handles.keydown(function(d) {
                var e = a(this).data("index.ui-slider-handle"),
                    f, g, h, i;
                if (b.options.disabled) return;
                switch (d.keyCode) {
                    case a.ui.keyCode.HOME:
                    case a.ui.keyCode.END:
                    case a.ui.keyCode.PAGE_UP:
                    case a.ui.keyCode.PAGE_DOWN:
                    case a.ui.keyCode.UP:
                    case a.ui.keyCode.RIGHT:
                    case a.ui.keyCode.DOWN:
                    case a.ui.keyCode.LEFT:
                        d.preventDefault();
                        if (!b._keySliding) {
                            b._keySliding = !0, a(this).addClass("ui-state-active"), f = b._start(d, e);
                            if (f === !1) return
                        }
                }
                i = b.options.step, b.options.values && b.options.values.length ? g = h = b.values(e) : g = h = b.value();
                switch (d.keyCode) {
                    case a.ui.keyCode.HOME:
                        h = b._valueMin();
                        break;
                    case a.ui.keyCode.END:
                        h = b._valueMax();
                        break;
                    case a.ui.keyCode.PAGE_UP:
                        h = b._trimAlignValue(g + (b._valueMax() - b._valueMin()) / c);
                        break;
                    case a.ui.keyCode.PAGE_DOWN:
                        h = b._trimAlignValue(g - (b._valueMax() - b._valueMin()) / c);
                        break;
                    case a.ui.keyCode.UP:
                    case a.ui.keyCode.RIGHT:
                        if (g === b._valueMax()) return;
                        h = b._trimAlignValue(g + i);
                        break;
                    case a.ui.keyCode.DOWN:
                    case a.ui.keyCode.LEFT:
                        if (g === b._valueMin()) return;
                        h = b._trimAlignValue(g - i)
                }
                b._slide(d, e, h)
            }).keyup(function(c) {
                var d = a(this).data("index.ui-slider-handle");
                b._keySliding && (b._keySliding = !1, b._stop(c, d), b._change(c, d), a(this).removeClass("ui-state-active"))
            }), this._refreshValue(), this._animateOff = !1
        },
        destroy: function() {
            return this.handles.remove(), this.range.remove(), this.element.removeClass("ui-slider ui-slider-horizontal ui-slider-vertical ui-slider-disabled ui-widget ui-widget-content ui-corner-all").removeData("slider").unbind(".slider"), this._mouseDestroy(), this
        },
        _mouseCapture: function(b) {
            var c = this.options,
                d, e, f, g, h, i, j, k, l;
            return c.disabled ? !1 : (this.elementSize = {
                width: this.element.outerWidth(),
                height: this.element.outerHeight()
            }, this.elementOffset = this.element.offset(), d = {
                x: b.pageX,
                y: b.pageY
            }, e = this._normValueFromMouse(d), f = this._valueMax() - this._valueMin() + 1, h = this, this.handles.each(function(b) {
                var c = Math.abs(e - h.values(b));
                f > c && (f = c, g = a(this), i = b)
            }), c.range === !0 && this.values(1) === c.min && (i += 1, g = a(this.handles[i])), j = this._start(b, i), j === !1 ? !1 : (this._mouseSliding = !0, h._handleIndex = i, g.addClass("ui-state-active").focus(), k = g.offset(), l = !a(b.target).parents().andSelf().is(".ui-slider-handle"), this._clickOffset = l ? {
                left: 0,
                top: 0
            } : {
                left: b.pageX - k.left - g.width() / 2,
                top: b.pageY - k.top - g.height() / 2 - (parseInt(g.css("borderTopWidth"), 10) || 0) - (parseInt(g.css("borderBottomWidth"), 10) || 0) + (parseInt(g.css("marginTop"), 10) || 0)
            }, this.handles.hasClass("ui-state-hover") || this._slide(b, i, e), this._animateOff = !0, !0))
        },
        _mouseStart: function(a) {
            return !0
        },
        _mouseDrag: function(a) {
            var b = {
                    x: a.pageX,
                    y: a.pageY
                },
                c = this._normValueFromMouse(b);
            return this._slide(a, this._handleIndex, c), !1
        },
        _mouseStop: function(a) {
            return this.handles.removeClass("ui-state-active"), this._mouseSliding = !1, this._stop(a, this._handleIndex), this._change(a, this._handleIndex), this._handleIndex = null, this._clickOffset = null, this._animateOff = !1, !1
        },
        _detectOrientation: function() {
            this.orientation = this.options.orientation === "vertical" ? "vertical" : "horizontal"
        },
        _normValueFromMouse: function(a) {
            var b, c, d, e, f;
            return this.orientation === "horizontal" ? (b = this.elementSize.width, c = a.x - this.elementOffset.left - (this._clickOffset ? this._clickOffset.left : 0)) : (b = this.elementSize.height, c = a.y - this.elementOffset.top - (this._clickOffset ? this._clickOffset.top : 0)), d = c / b, d > 1 && (d = 1), d < 0 && (d = 0), this.orientation === "vertical" && (d = 1 - d), e = this._valueMax() - this._valueMin(), f = this._valueMin() + d * e, this._trimAlignValue(f)
        },
        _start: function(a, b) {
            var c = {
                handle: this.handles[b],
                value: this.value()
            };
            return this.options.values && this.options.values.length && (c.value = this.values(b), c.values = this.values()), this._trigger("start", a, c)
        },
        _slide: function(a, b, c) {
            var d, e, f;
            this.options.values && this.options.values.length ? (d = this.values(b ? 0 : 1), this.options.values.length === 2 && this.options.range === !0 && (b === 0 && c > d || b === 1 && c < d) && (c = d), c !== this.values(b) && (e = this.values(), e[b] = c, f = this._trigger("slide", a, {
                handle: this.handles[b],
                value: c,
                values: e
            }), d = this.values(b ? 0 : 1), f !== !1 && this.values(b, c, !0))) : c !== this.value() && (f = this._trigger("slide", a, {
                handle: this.handles[b],
                value: c
            }), f !== !1 && this.value(c))
        },
        _stop: function(a, b) {
            var c = {
                handle: this.handles[b],
                value: this.value()
            };
            this.options.values && this.options.values.length && (c.value = this.values(b), c.values = this.values()), this._trigger("stop", a, c)
        },
        _change: function(a, b) {
            if (!this._keySliding && !this._mouseSliding) {
                var c = {
                    handle: this.handles[b],
                    value: this.value()
                };
                this.options.values && this.options.values.length && (c.value = this.values(b), c.values = this.values()), this._trigger("change", a, c)
            }
        },
        value: function(a) {
            if (arguments.length) {
                this.options.value = this._trimAlignValue(a), this._refreshValue(), this._change(null, 0);
                return
            }
            return this._value()
        },
        values: function(b, c) {
            var d, e, f;
            if (arguments.length > 1) {
                this.options.values[b] = this._trimAlignValue(c), this._refreshValue(), this._change(null, b);
                return
            }
            if (!arguments.length) return this._values();
            if (!a.isArray(arguments[0])) return this.options.values && this.options.values.length ? this._values(b) : this.value();
            d = this.options.values, e = arguments[0];
            for (f = 0; f < d.length; f += 1) d[f] = this._trimAlignValue(e[f]), this._change(null, f);
            this._refreshValue()
        },
        _setOption: function(b, c) {
            var d, e = 0;
            a.isArray(this.options.values) && (e = this.options.values.length), a.Widget.prototype._setOption.apply(this, arguments);
            switch (b) {
                case "disabled":
                    c ? (this.handles.filter(".ui-state-focus").blur(), this.handles.removeClass("ui-state-hover"), this.handles.propAttr("disabled", !0), this.element.addClass("ui-disabled")) : (this.handles.propAttr("disabled", !1), this.element.removeClass("ui-disabled"));
                    break;
                case "orientation":
                    this._detectOrientation(), this.element.removeClass("ui-slider-horizontal ui-slider-vertical").addClass("ui-slider-" + this.orientation), this._refreshValue();
                    break;
                case "value":
                    this._animateOff = !0, this._refreshValue(), this._change(null, 0), this._animateOff = !1;
                    break;
                case "values":
                    this._animateOff = !0, this._refreshValue();
                    for (d = 0; d < e; d += 1) this._change(null, d);
                    this._animateOff = !1
            }
        },
        _value: function() {
            var a = this.options.value;
            return a = this._trimAlignValue(a), a
        },
        _values: function(a) {
            var b, c, d;
            if (arguments.length) return b = this.options.values[a], b = this._trimAlignValue(b), b;
            c = this.options.values.slice();
            for (d = 0; d < c.length; d += 1) c[d] = this._trimAlignValue(c[d]);
            return c
        },
        _trimAlignValue: function(a) {
            if (a <= this._valueMin()) return this._valueMin();
            if (a >= this._valueMax()) return this._valueMax();
            var b = this.options.step > 0 ? this.options.step : 1,
                c = (a - this._valueMin()) % b,
                d = a - c;
            return Math.abs(c) * 2 >= b && (d += c > 0 ? b : -b), parseFloat(d.toFixed(5))
        },
        _valueMin: function() {
            return this.options.min
        },
        _valueMax: function() {
            return this.options.max
        },
        _refreshValue: function() {
            var b = this.options.range,
                c = this.options,
                d = this,
                e = this._animateOff ? !1 : c.animate,
                f, g = {},
                h, i, j, k;
            this.options.values && this.options.values.length ? this.handles.each(function(b, i) {
                f = (d.values(b) - d._valueMin()) / (d._valueMax() - d._valueMin()) * 100, g[d.orientation === "horizontal" ? "left" : "bottom"] = f + "%", a(this).stop(1, 1)[e ? "animate" : "css"](g, c.animate), d.options.range === !0 && (d.orientation === "horizontal" ? (b === 0 && d.range.stop(1, 1)[e ? "animate" : "css"]({
                    left: f + "%"
                }, c.animate), b === 1 && d.range[e ? "animate" : "css"]({
                    width: f - h + "%"
                }, {
                    queue: !1,
                    duration: c.animate
                })) : (b === 0 && d.range.stop(1, 1)[e ? "animate" : "css"]({
                    bottom: f + "%"
                }, c.animate), b === 1 && d.range[e ? "animate" : "css"]({
                    height: f - h + "%"
                }, {
                    queue: !1,
                    duration: c.animate
                }))), h = f
            }) : (i = this.value(), j = this._valueMin(), k = this._valueMax(), f = k !== j ? (i - j) / (k - j) * 100 : 0, g[d.orientation === "horizontal" ? "left" : "bottom"] = f + "%", this.handle.stop(1, 1)[e ? "animate" : "css"](g, c.animate), b === "min" && this.orientation === "horizontal" && this.range.stop(1, 1)[e ? "animate" : "css"]({
                width: f + "%"
            }, c.animate), b === "max" && this.orientation === "horizontal" && this.range[e ? "animate" : "css"]({
                width: 100 - f + "%"
            }, {
                queue: !1,
                duration: c.animate
            }), b === "min" && this.orientation === "vertical" && this.range.stop(1, 1)[e ? "animate" : "css"]({
                height: f + "%"
            }, c.animate), b === "max" && this.orientation === "vertical" && this.range[e ? "animate" : "css"]({
                height: 100 - f + "%"
            }, {
                queue: !1,
                duration: c.animate
            }))
        }
    }), a.extend(a.ui.slider, {
        version: "1.8.23"
    })
})(jQuery);;

// Zoom 1.3 - jQuery image zooming plugin
// (c) 2012 Jack Moore - jacklmoore.com
// license: www.opensource.org/licenses/mit-license.php

(function($) {
    var defaults = {
        url: false,
        icon: true,
        grab: false,
        callback: false,
        duration: 120
    };

    $.fn.zoom = function(options) {
        return this.each(function() {
            var
                root = this,
                $root = $(root),
                img = new Image(),
                $img = $(img),
                $icon,
                position = $root.css('position'),
                settings = $.extend({}, defaults, options || {}),
                mousemove = 'mousemove';

            $root.css({
                position: /(absolute|fixed)/.test(position) ? position : 'relative',
                overflow: 'hidden'
            });

            if (!settings.url) {
                settings.url = $root.find('img:first')[0].src;
                if (!settings.url) {
                    return;
                }
            }

            if (settings.icon) {
                $icon = $('<div class="zoomIcon">').appendTo($root);
            }

            img.onload = function() {
                var
                    outerWidth,
                    outerHeight,
                    xRatio,
                    yRatio,
                    left,
                    top,
                    offset = $root.offset();

                function ratio() {
                    outerWidth = $root.outerWidth();
                    outerHeight = $root.outerHeight();
                    xRatio = (img.width - outerWidth) / outerWidth;
                    yRatio = (img.height - outerHeight) / outerHeight;
                }

                function move(e) {
                    left = (e.pageX - offset.left);
                    top = (e.pageY - offset.top);

                    if (left > outerWidth) {
                        left = outerWidth;
                    } else if (left < 0) {
                        left = 0;
                    }

                    if (top > outerHeight) {
                        top = outerHeight;
                    } else if (top < 0) {
                        top = 0;
                    }

                    img.style.left = (left * -xRatio) + 'px';
                    img.style.top = (top * -yRatio) + 'px';

                    e.preventDefault();
                }

                ratio();

                $img
                    .addClass('zoomImg')
                    .css({
                        position: 'absolute',
                        top: 0,
                        left: 0,
                        opacity: 0,
                        width: img.width,
                        height: img.height,
                        border: 'none',
                        maxWidth: 'none'
                    })
                    .appendTo($root);

                if (settings.grab) {
                    $img.mousedown(
                        function(e) {
                            offset = $root.offset();

                            $(document).one('mouseup',
                                function() {
                                    $img
                                        .stop()
                                        .fadeTo(settings.duration, 0);

                                    $(document).unbind(mousemove, move);
                                }
                            );

                            ratio();

                            move(e);

                            $img
                                .stop()
                                .fadeTo($.support.opacity ? settings.duration : 0, 1);

                            $(document)[mousemove](move);

                            e.preventDefault();
                        }
                    );
                } else {
                    $img.hover(
                        function() {
                            offset = $root.offset();

                            ratio();

                            // Skip the fade-in for IE8 and lower since it chokes on fading-in
                            // and changing position based on mousemovement at the same time.
                            $img
                                .stop()
                                .fadeTo($.support.opacity ? settings.duration : 0, 1);
                        },
                        function() {
                            $img
                                .stop()
                                .fadeTo(settings.duration, 0);
                        }
                    )[mousemove](function(e) {
                        img.style.left = (e.pageX - offset.left) * -xRatio + 'px';
                        img.style.top = (e.pageY - offset.top) * -yRatio + 'px';
                    });
                }

                if ($.isFunction(settings.callback)) {
                    settings.callback.call(img);
                }

            };

            img.src = settings.url;
        });
    };

    $.fn.zoom.defaults = defaults;
}(jQuery));

/*
 * jPlayer Plugin for jQuery JavaScript Library
 * http://www.jplayer.org
 *
 * Copyright (c) 2009 - 2011 Happyworm Ltd
 * Dual licensed under the MIT and GPL licenses.
 *  - http://www.opensource.org/licenses/mit-license.php
 *  - http://www.gnu.org/copyleft/gpl.html
 *
 * Author: Mark J Panaghiston
 * Version: 2.1.0
 * Date: 1st September 2011
 */

(function(b, f) {
    b.fn.jPlayer = function(a) {
        var c = typeof a === "string",
            d = Array.prototype.slice.call(arguments, 1),
            e = this,
            a = !c && d.length ? b.extend.apply(null, [!0, a].concat(d)) : a;
        if (c && a.charAt(0) === "_") return e;
        c ? this.each(function() {
            var c = b.data(this, "jPlayer"),
                h = c && b.isFunction(c[a]) ? c[a].apply(c, d) : c;
            if (h !== c && h !== f) return e = h, !1
        }) : this.each(function() {
            var c = b.data(this, "jPlayer");
            c ? c.option(a || {}) : b.data(this, "jPlayer", new b.jPlayer(a, this))
        });
        return e
    };
    b.jPlayer = function(a, c) {
        if (arguments.length) {
            this.element =
                b(c);
            this.options = b.extend(!0, {}, this.options, a);
            var d = this;
            this.element.bind("remove.jPlayer", function() {
                d.destroy()
            });
            this._init()
        }
    };
    b.jPlayer.emulateMethods = "load play pause";
    b.jPlayer.emulateStatus = "src readyState networkState currentTime duration paused ended playbackRate";
    b.jPlayer.emulateOptions = "muted volume";
    b.jPlayer.reservedEvent = "ready flashreset resize repeat error warning";
    b.jPlayer.event = {
        ready: "jPlayer_ready",
        flashreset: "jPlayer_flashreset",
        resize: "jPlayer_resize",
        repeat: "jPlayer_repeat",
        click: "jPlayer_click",
        error: "jPlayer_error",
        warning: "jPlayer_warning",
        loadstart: "jPlayer_loadstart",
        progress: "jPlayer_progress",
        suspend: "jPlayer_suspend",
        abort: "jPlayer_abort",
        emptied: "jPlayer_emptied",
        stalled: "jPlayer_stalled",
        play: "jPlayer_play",
        pause: "jPlayer_pause",
        loadedmetadata: "jPlayer_loadedmetadata",
        loadeddata: "jPlayer_loadeddata",
        waiting: "jPlayer_waiting",
        playing: "jPlayer_playing",
        canplay: "jPlayer_canplay",
        canplaythrough: "jPlayer_canplaythrough",
        seeking: "jPlayer_seeking",
        seeked: "jPlayer_seeked",
        timeupdate: "jPlayer_timeupdate",
        ended: "jPlayer_ended",
        ratechange: "jPlayer_ratechange",
        durationchange: "jPlayer_durationchange",
        volumechange: "jPlayer_volumechange"
    };
    b.jPlayer.htmlEvent = "loadstart,abort,emptied,stalled,loadedmetadata,loadeddata,canplay,canplaythrough,ratechange".split(",");
    b.jPlayer.pause = function() {
        b.each(b.jPlayer.prototype.instances, function(a, b) {
            b.data("jPlayer").status.srcSet && b.jPlayer("pause")
        })
    };
    b.jPlayer.timeFormat = {
        showHour: !1,
        showMin: !0,
        showSec: !0,
        padHour: !1,
        padMin: !0,
        padSec: !0,
        sepHour: ":",
        sepMin: ":",
        sepSec: ""
    };
    b.jPlayer.convertTime = function(a) {
        var c = new Date(a * 1E3),
            d = c.getUTCHours(),
            a = c.getUTCMinutes(),
            c = c.getUTCSeconds(),
            d = b.jPlayer.timeFormat.padHour && d < 10 ? "0" + d : d,
            a = b.jPlayer.timeFormat.padMin && a < 10 ? "0" + a : a,
            c = b.jPlayer.timeFormat.padSec && c < 10 ? "0" + c : c;
        return (b.jPlayer.timeFormat.showHour ? d + b.jPlayer.timeFormat.sepHour : "") + (b.jPlayer.timeFormat.showMin ? a + b.jPlayer.timeFormat.sepMin : "") + (b.jPlayer.timeFormat.showSec ? c + b.jPlayer.timeFormat.sepSec : "")
    };
    b.jPlayer.uaBrowser =
        function(a) {
            var a = a.toLowerCase(),
                b = /(opera)(?:.*version)?[ \/]([\w.]+)/,
                d = /(msie) ([\w.]+)/,
                e = /(mozilla)(?:.*? rv:([\w.]+))?/,
                a = /(webkit)[ \/]([\w.]+)/.exec(a) || b.exec(a) || d.exec(a) || a.indexOf("compatible") < 0 && e.exec(a) || [];
            return {
                browser: a[1] || "",
                version: a[2] || "0"
            }
        };
    b.jPlayer.uaPlatform = function(a) {
        var b = a.toLowerCase(),
            d = /(android)/,
            e = /(mobile)/,
            a = /(ipad|iphone|ipod|android|blackberry|playbook|windows ce|webos)/.exec(b) || [],
            b = /(ipad|playbook)/.exec(b) || !e.exec(b) && d.exec(b) || [];
        a[1] && (a[1] = a[1].replace(/\s/g,
            "_"));
        return {
            platform: a[1] || "",
            tablet: b[1] || ""
        }
    };
    b.jPlayer.browser = {};
    b.jPlayer.platform = {};
    var i = b.jPlayer.uaBrowser(navigator.userAgent);
    if (i.browser) b.jPlayer.browser[i.browser] = !0, b.jPlayer.browser.version = i.version;
    i = b.jPlayer.uaPlatform(navigator.userAgent);
    if (i.platform) b.jPlayer.platform[i.platform] = !0, b.jPlayer.platform.mobile = !i.tablet, b.jPlayer.platform.tablet = !!i.tablet;
    b.jPlayer.prototype = {
        count: 0,
        version: {
            script: "2.1.0",
            needFlash: "2.1.0",
            flash: "unknown"
        },
        options: {
            swfPath: "js",
            solution: "html, flash",
            supplied: "mp3",
            preload: "metadata",
            volume: 0.8,
            muted: !1,
            wmode: "opaque",
            backgroundColor: "#000000",
            cssSelectorAncestor: "#jp_container_1",
            cssSelector: {
                videoPlay: ".jp-video-play",
                play: ".jp-play",
                pause: ".jp-pause",
                stop: ".jp-stop",
                seekBar: ".jp-seek-bar",
                playBar: ".jp-play-bar",
                mute: ".jp-mute",
                unmute: ".jp-unmute",
                volumeBar: ".jp-volume-bar",
                volumeBarValue: ".jp-volume-bar-value",
                volumeMax: ".jp-volume-max",
                currentTime: ".jp-current-time",
                duration: ".jp-duration",
                fullScreen: ".jp-full-screen",
                restoreScreen: ".jp-restore-screen",
                repeat: ".jp-repeat",
                repeatOff: ".jp-repeat-off",
                gui: ".jp-gui",
                noSolution: ".jp-no-solution"
            },
            fullScreen: !1,
            autohide: {
                restored: !1,
                full: !0,
                fadeIn: 200,
                fadeOut: 600,
                hold: 1E3
            },
            loop: !1,
            repeat: function(a) {
                a.jPlayer.options.loop ? b(this).unbind(".jPlayerRepeat").bind(b.jPlayer.event.ended + ".jPlayer.jPlayerRepeat", function() {
                    b(this).jPlayer("play")
                }) : b(this).unbind(".jPlayerRepeat")
            },
            nativeVideoControls: {},
            noFullScreen: {
                msie: /msie [0-6]/,
                ipad: /ipad.*?os [0-4]/,
                iphone: /iphone/,
                ipod: /ipod/,
                android_pad: /android [0-3](?!.*?mobile)/,
                android_phone: /android.*?mobile/,
                blackberry: /blackberry/,
                windows_ce: /windows ce/,
                webos: /webos/
            },
            noVolume: {
                ipad: /ipad/,
                iphone: /iphone/,
                ipod: /ipod/,
                android_pad: /android(?!.*?mobile)/,
                android_phone: /android.*?mobile/,
                blackberry: /blackberry/,
                windows_ce: /windows ce/,
                webos: /webos/,
                playbook: /playbook/
            },
            verticalVolume: !1,
            idPrefix: "jp",
            noConflict: "jQuery",
            emulateHtml: !1,
            errorAlerts: !1,
            warningAlerts: !1
        },
        optionsAudio: {
            size: {
                width: "0px",
                height: "0px",
                cssClass: ""
            },
            sizeFull: {
                width: "0px",
                height: "0px",
                cssClass: ""
            }
        },
        optionsVideo: {
            size: {
                width: "480px",
                height: "270px",
                cssClass: "jp-video-270p"
            },
            sizeFull: {
                width: "100%",
                height: "100%",
                cssClass: "jp-video-full"
            }
        },
        instances: {},
        status: {
            src: "",
            media: {},
            paused: !0,
            format: {},
            formatType: "",
            waitForPlay: !0,
            waitForLoad: !0,
            srcSet: !1,
            video: !1,
            seekPercent: 0,
            currentPercentRelative: 0,
            currentPercentAbsolute: 0,
            currentTime: 0,
            duration: 0,
            readyState: 0,
            networkState: 0,
            playbackRate: 1,
            ended: 0
        },
        internal: {
            ready: !1
        },
        solution: {
            html: !0,
            flash: !0
        },
        format: {
            mp3: {
                codec: 'audio/mpeg; codecs="mp3"',
                flashCanPlay: !0,
                media: "audio"
            },
            m4a: {
                codec: 'audio/mp4; codecs="mp4a.40.2"',
                flashCanPlay: !0,
                media: "audio"
            },
            oga: {
                codec: 'audio/ogg; codecs="vorbis"',
                flashCanPlay: !1,
                media: "audio"
            },
            wav: {
                codec: 'audio/wav; codecs="1"',
                flashCanPlay: !1,
                media: "audio"
            },
            webma: {
                codec: 'audio/webm; codecs="vorbis"',
                flashCanPlay: !1,
                media: "audio"
            },
            fla: {
                codec: "audio/x-flv",
                flashCanPlay: !0,
                media: "audio"
            },
            m4v: {
                codec: 'video/mp4; codecs="avc1.42E01E, mp4a.40.2"',
                flashCanPlay: !0,
                media: "video"
            },
            ogv: {
                codec: 'video/ogg; codecs="theora, vorbis"',
                flashCanPlay: !1,
                media: "video"
            },
            webmv: {
                codec: 'video/webm; codecs="vorbis, vp8"',
                flashCanPlay: !1,
                media: "video"
            },
            flv: {
                codec: "video/x-flv",
                flashCanPlay: !0,
                media: "video"
            }
        },
        _init: function() {
            var a = this;
            this.element.empty();
            this.status = b.extend({}, this.status);
            this.internal = b.extend({}, this.internal);
            this.internal.domNode = this.element.get(0);
            this.formats = [];
            this.solutions = [];
            this.require = {};
            this.htmlElement = {};
            this.html = {};
            this.html.audio = {};
            this.html.video = {};
            this.flash = {};
            this.css = {};
            this.css.cs = {};
            this.css.jq = {};
            this.ancestorJq = [];
            this.options.volume = this._limitValue(this.options.volume, 0, 1);
            b.each(this.options.supplied.toLowerCase().split(","), function(c, d) {
                var e = d.replace(/^\s+|\s+$/g, "");
                if (a.format[e]) {
                    var f = !1;
                    b.each(a.formats, function(a, b) {
                        if (e === b) return f = !0, !1
                    });
                    f || a.formats.push(e)
                }
            });
            b.each(this.options.solution.toLowerCase().split(","), function(c, d) {
                var e = d.replace(/^\s+|\s+$/g, "");
                if (a.solution[e]) {
                    var f = !1;
                    b.each(a.solutions, function(a, b) {
                        if (e === b) return f = !0, !1
                    });
                    f || a.solutions.push(e)
                }
            });
            this.internal.instance =
                "jp_" + this.count;
            this.instances[this.internal.instance] = this.element;
            this.element.attr("id") || this.element.attr("id", this.options.idPrefix + "_jplayer_" + this.count);
            this.internal.self = b.extend({}, {
                id: this.element.attr("id"),
                jq: this.element
            });
            this.internal.audio = b.extend({}, {
                id: this.options.idPrefix + "_audio_" + this.count,
                jq: f
            });
            this.internal.video = b.extend({}, {
                id: this.options.idPrefix + "_video_" + this.count,
                jq: f
            });
            this.internal.flash = b.extend({}, {
                id: this.options.idPrefix + "_flash_" + this.count,
                jq: f,
                swf: this.options.swfPath +
                    (this.options.swfPath.toLowerCase().slice(-4) !== ".swf" ? (this.options.swfPath && this.options.swfPath.slice(-1) !== "/" ? "/" : "") + "Jplayer.swf" : "")
            });
            this.internal.poster = b.extend({}, {
                id: this.options.idPrefix + "_poster_" + this.count,
                jq: f
            });
            b.each(b.jPlayer.event, function(b, c) {
                a.options[b] !== f && (a.element.bind(c + ".jPlayer", a.options[b]), a.options[b] = f)
            });
            this.require.audio = !1;
            this.require.video = !1;
            b.each(this.formats, function(b, c) {
                a.require[a.format[c].media] = !0
            });
            this.options = this.require.video ? b.extend(!0, {}, this.optionsVideo, this.options) : b.extend(!0, {}, this.optionsAudio, this.options);
            this._setSize();
            this.status.nativeVideoControls = this._uaBlocklist(this.options.nativeVideoControls);
            this.status.noFullScreen = this._uaBlocklist(this.options.noFullScreen);
            this.status.noVolume = this._uaBlocklist(this.options.noVolume);
            this._restrictNativeVideoControls();
            this.htmlElement.poster = document.createElement("img");
            this.htmlElement.poster.id = this.internal.poster.id;
            this.htmlElement.poster.onload = function() {
                (!a.status.video ||
                    a.status.waitForPlay) && a.internal.poster.jq.show()
            };
            this.element.append(this.htmlElement.poster);
            this.internal.poster.jq = b("#" + this.internal.poster.id);
            this.internal.poster.jq.css({
                width: this.status.width,
                height: this.status.height
            });
            this.internal.poster.jq.hide();
            this.internal.poster.jq.bind("click.jPlayer", function() {
                a._trigger(b.jPlayer.event.click)
            });
            this.html.audio.available = !1;
            if (this.require.audio) this.htmlElement.audio = document.createElement("audio"), this.htmlElement.audio.id = this.internal.audio.id,
                this.html.audio.available = !!this.htmlElement.audio.canPlayType && this._testCanPlayType(this.htmlElement.audio);
            this.html.video.available = !1;
            if (this.require.video) this.htmlElement.video = document.createElement("video"), this.htmlElement.video.id = this.internal.video.id, this.html.video.available = !!this.htmlElement.video.canPlayType && this._testCanPlayType(this.htmlElement.video);
            this.flash.available = this._checkForFlash(10);
            this.html.canPlay = {};
            this.flash.canPlay = {};
            b.each(this.formats, function(b, c) {
                a.html.canPlay[c] =
                    a.html[a.format[c].media].available && "" !== a.htmlElement[a.format[c].media].canPlayType(a.format[c].codec);
                a.flash.canPlay[c] = a.format[c].flashCanPlay && a.flash.available
            });
            this.html.desired = !1;
            this.flash.desired = !1;
            b.each(this.solutions, function(c, d) {
                if (c === 0) a[d].desired = !0;
                else {
                    var e = !1,
                        f = !1;
                    b.each(a.formats, function(b, c) {
                        a[a.solutions[0]].canPlay[c] && (a.format[c].media === "video" ? f = !0 : e = !0)
                    });
                    a[d].desired = a.require.audio && !e || a.require.video && !f
                }
            });
            this.html.support = {};
            this.flash.support = {};
            b.each(this.formats,
                function(b, c) {
                    a.html.support[c] = a.html.canPlay[c] && a.html.desired;
                    a.flash.support[c] = a.flash.canPlay[c] && a.flash.desired
                });
            this.html.used = !1;
            this.flash.used = !1;
            b.each(this.solutions, function(c, d) {
                b.each(a.formats, function(b, c) {
                    if (a[d].support[c]) return a[d].used = !0, !1
                })
            });
            this._resetActive();
            this._resetGate();
            this._cssSelectorAncestor(this.options.cssSelectorAncestor);
            !this.html.used && !this.flash.used ? (this._error({
                type: b.jPlayer.error.NO_SOLUTION,
                context: "{solution:'" + this.options.solution + "', supplied:'" +
                    this.options.supplied + "'}",
                message: b.jPlayer.errorMsg.NO_SOLUTION,
                hint: b.jPlayer.errorHint.NO_SOLUTION
            }), this.css.jq.noSolution.length && this.css.jq.noSolution.show()) : this.css.jq.noSolution.length && this.css.jq.noSolution.hide();
            if (this.flash.used) {
                var c, d = "jQuery=" + encodeURI(this.options.noConflict) + "&id=" + encodeURI(this.internal.self.id) + "&vol=" + this.options.volume + "&muted=" + this.options.muted;
                if (b.browser.msie && Number(b.browser.version) <= 8) {
                    d = ['<param name="movie" value="' + this.internal.flash.swf +
                        '" />', '<param name="FlashVars" value="' + d + '" />', '<param name="allowScriptAccess" value="always" />', '<param name="bgcolor" value="' + this.options.backgroundColor + '" />', '<param name="wmode" value="' + this.options.wmode + '" />'
                    ];
                    c = document.createElement('<object id="' + this.internal.flash.id + '" classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" width="0" height="0"></object>');
                    for (var e = 0; e < d.length; e++) c.appendChild(document.createElement(d[e]))
                } else e = function(a, b, c) {
                    var d = document.createElement("param");
                    d.setAttribute("name", b);
                    d.setAttribute("value", c);
                    a.appendChild(d)
                }, c = document.createElement("object"), c.setAttribute("id", this.internal.flash.id), c.setAttribute("data", this.internal.flash.swf), c.setAttribute("type", "application/x-shockwave-flash"), c.setAttribute("width", "1"), c.setAttribute("height", "1"), e(c, "flashvars", d), e(c, "allowscriptaccess", "always"), e(c, "bgcolor", this.options.backgroundColor), e(c, "wmode", this.options.wmode);
                this.element.append(c);
                this.internal.flash.jq = b(c)
            }
            if (this.html.used) {
                if (this.html.audio.available) this._addHtmlEventListeners(this.htmlElement.audio,
                    this.html.audio), this.element.append(this.htmlElement.audio), this.internal.audio.jq = b("#" + this.internal.audio.id);
                if (this.html.video.available) this._addHtmlEventListeners(this.htmlElement.video, this.html.video), this.element.append(this.htmlElement.video), this.internal.video.jq = b("#" + this.internal.video.id), this.status.nativeVideoControls ? this.internal.video.jq.css({
                    width: this.status.width,
                    height: this.status.height
                }) : this.internal.video.jq.css({
                    width: "0px",
                    height: "0px"
                }), this.internal.video.jq.bind("click.jPlayer",
                    function() {
                        a._trigger(b.jPlayer.event.click)
                    })
            }
            this.options.emulateHtml && this._emulateHtmlBridge();
            this.html.used && !this.flash.used && setTimeout(function() {
                a.internal.ready = !0;
                a.version.flash = "n/a";
                a._trigger(b.jPlayer.event.repeat);
                a._trigger(b.jPlayer.event.ready)
            }, 100);
            this._updateNativeVideoControls();
            this._updateInterface();
            this._updateButtons(!1);
            this._updateAutohide();
            this._updateVolume(this.options.volume);
            this._updateMute(this.options.muted);
            this.css.jq.videoPlay.length && this.css.jq.videoPlay.hide();
            b.jPlayer.prototype.count++
        },
        destroy: function() {
            this.clearMedia();
            this._removeUiClass();
            this.css.jq.currentTime.length && this.css.jq.currentTime.text("");
            this.css.jq.duration.length && this.css.jq.duration.text("");
            b.each(this.css.jq, function(a, b) {
                b.length && b.unbind(".jPlayer")
            });
            this.internal.poster.jq.unbind(".jPlayer");
            this.internal.video.jq && this.internal.video.jq.unbind(".jPlayer");
            this.options.emulateHtml && this._destroyHtmlBridge();
            this.element.removeData("jPlayer");
            this.element.unbind(".jPlayer");
            this.element.empty();
            delete this.instances[this.internal.instance]
        },
        enable: function() {},
        disable: function() {},
        _testCanPlayType: function(a) {
            try {
                return a.canPlayType(this.format.mp3.codec), !0
            } catch (b) {
                return !1
            }
        },
        _uaBlocklist: function(a) {
            var c = navigator.userAgent.toLowerCase(),
                d = !1;
            b.each(a, function(a, b) {
                if (b && b.test(c)) return d = !0, !1
            });
            return d
        },
        _restrictNativeVideoControls: function() {
            if (this.require.audio && this.status.nativeVideoControls) this.status.nativeVideoControls = !1, this.status.noFullScreen = !0
        },
        _updateNativeVideoControls: function() {
            if (this.html.video.available && this.html.used) this.htmlElement.video.controls = this.status.nativeVideoControls, this._updateAutohide(), this.status.nativeVideoControls && this.require.video ? (this.internal.poster.jq.hide(), this.internal.video.jq.css({
                width: this.status.width,
                height: this.status.height
            })) : this.status.waitForPlay && this.status.video && (this.internal.poster.jq.show(), this.internal.video.jq.css({
                width: "0px",
                height: "0px"
            }))
        },
        _addHtmlEventListeners: function(a,
            c) {
            var d = this;
            a.preload = this.options.preload;
            a.muted = this.options.muted;
            a.volume = this.options.volume;
            a.addEventListener("progress", function() {
                c.gate && (d._getHtmlStatus(a), d._updateInterface(), d._trigger(b.jPlayer.event.progress))
            }, !1);
            a.addEventListener("timeupdate", function() {
                c.gate && (d._getHtmlStatus(a), d._updateInterface(), d._trigger(b.jPlayer.event.timeupdate))
            }, !1);
            a.addEventListener("durationchange", function() {
                if (c.gate) d.status.duration = this.duration, d._getHtmlStatus(a), d._updateInterface(),
                    d._trigger(b.jPlayer.event.durationchange)
            }, !1);
            a.addEventListener("play", function() {
                c.gate && (d._updateButtons(!0), d._html_checkWaitForPlay(), d._trigger(b.jPlayer.event.play))
            }, !1);
            a.addEventListener("playing", function() {
                c.gate && (d._updateButtons(!0), d._seeked(), d._trigger(b.jPlayer.event.playing))
            }, !1);
            a.addEventListener("pause", function() {
                c.gate && (d._updateButtons(!1), d._trigger(b.jPlayer.event.pause))
            }, !1);
            a.addEventListener("waiting", function() {
                c.gate && (d._seeking(), d._trigger(b.jPlayer.event.waiting))
            }, !1);
            a.addEventListener("seeking", function() {
                c.gate && (d._seeking(), d._trigger(b.jPlayer.event.seeking))
            }, !1);
            a.addEventListener("seeked", function() {
                c.gate && (d._seeked(), d._trigger(b.jPlayer.event.seeked))
            }, !1);
            a.addEventListener("volumechange", function() {
                if (c.gate) d.options.volume = a.volume, d.options.muted = a.muted, d._updateMute(), d._updateVolume(), d._trigger(b.jPlayer.event.volumechange)
            }, !1);
            a.addEventListener("suspend", function() {
                c.gate && (d._seeked(), d._trigger(b.jPlayer.event.suspend))
            }, !1);
            a.addEventListener("ended",
                function() {
                    if (c.gate) {
                        if (!b.jPlayer.browser.webkit) d.htmlElement.media.currentTime = 0;
                        d.htmlElement.media.pause();
                        d._updateButtons(!1);
                        d._getHtmlStatus(a, !0);
                        d._updateInterface();
                        d._trigger(b.jPlayer.event.ended)
                    }
                }, !1);
            a.addEventListener("error", function() {
                if (c.gate && (d._updateButtons(!1), d._seeked(), d.status.srcSet)) clearTimeout(d.internal.htmlDlyCmdId), d.status.waitForLoad = !0, d.status.waitForPlay = !0, d.status.video && !d.status.nativeVideoControls && d.internal.video.jq.css({
                        width: "0px",
                        height: "0px"
                    }),
                    d._validString(d.status.media.poster) && !d.status.nativeVideoControls && d.internal.poster.jq.show(), d.css.jq.videoPlay.length && d.css.jq.videoPlay.show(), d._error({
                        type: b.jPlayer.error.URL,
                        context: d.status.src,
                        message: b.jPlayer.errorMsg.URL,
                        hint: b.jPlayer.errorHint.URL
                    })
            }, !1);
            b.each(b.jPlayer.htmlEvent, function(e, g) {
                a.addEventListener(this, function() {
                    c.gate && d._trigger(b.jPlayer.event[g])
                }, !1)
            })
        },
        _getHtmlStatus: function(a, b) {
            var d = 0,
                e = 0,
                g = 0,
                f = 0;
            if (a.duration) this.status.duration = a.duration;
            d = a.currentTime;
            e = this.status.duration > 0 ? 100 * d / this.status.duration : 0;
            typeof a.seekable === "object" && a.seekable.length > 0 ? (g = this.status.duration > 0 ? 100 * a.seekable.end(a.seekable.length - 1) / this.status.duration : 100, f = 100 * a.currentTime / a.seekable.end(a.seekable.length - 1)) : (g = 100, f = e);
            b && (e = f = d = 0);
            this.status.seekPercent = g;
            this.status.currentPercentRelative = f;
            this.status.currentPercentAbsolute = e;
            this.status.currentTime = d;
            this.status.readyState = a.readyState;
            this.status.networkState = a.networkState;
            this.status.playbackRate =
                a.playbackRate;
            this.status.ended = a.ended
        },
        _resetStatus: function() {
            this.status = b.extend({}, this.status, b.jPlayer.prototype.status)
        },
        _trigger: function(a, c, d) {
            a = b.Event(a);
            a.jPlayer = {};
            a.jPlayer.version = b.extend({}, this.version);
            a.jPlayer.options = b.extend(!0, {}, this.options);
            a.jPlayer.status = b.extend(!0, {}, this.status);
            a.jPlayer.html = b.extend(!0, {}, this.html);
            a.jPlayer.flash = b.extend(!0, {}, this.flash);
            if (c) a.jPlayer.error = b.extend({}, c);
            if (d) a.jPlayer.warning = b.extend({}, d);
            this.element.trigger(a)
        },
        jPlayerFlashEvent: function(a, c) {
            if (a === b.jPlayer.event.ready)
                if (this.internal.ready) {
                    if (this.flash.gate) {
                        if (this.status.srcSet) {
                            var d = this.status.currentTime,
                                e = this.status.paused;
                            this.setMedia(this.status.media);
                            d > 0 && (e ? this.pause(d) : this.play(d))
                        }
                        this._trigger(b.jPlayer.event.flashreset)
                    }
                } else this.internal.ready = !0, this.internal.flash.jq.css({
                    width: "0px",
                    height: "0px"
                }), this.version.flash = c.version, this.version.needFlash !== this.version.flash && this._error({
                    type: b.jPlayer.error.VERSION,
                    context: this.version.flash,
                    message: b.jPlayer.errorMsg.VERSION + this.version.flash,
                    hint: b.jPlayer.errorHint.VERSION
                }), this._trigger(b.jPlayer.event.repeat), this._trigger(a);
            if (this.flash.gate) switch (a) {
                case b.jPlayer.event.progress:
                    this._getFlashStatus(c);
                    this._updateInterface();
                    this._trigger(a);
                    break;
                case b.jPlayer.event.timeupdate:
                    this._getFlashStatus(c);
                    this._updateInterface();
                    this._trigger(a);
                    break;
                case b.jPlayer.event.play:
                    this._seeked();
                    this._updateButtons(!0);
                    this._trigger(a);
                    break;
                case b.jPlayer.event.pause:
                    this._updateButtons(!1);
                    this._trigger(a);
                    break;
                case b.jPlayer.event.ended:
                    this._updateButtons(!1);
                    this._trigger(a);
                    break;
                case b.jPlayer.event.click:
                    this._trigger(a);
                    break;
                case b.jPlayer.event.error:
                    this.status.waitForLoad = !0;
                    this.status.waitForPlay = !0;
                    this.status.video && this.internal.flash.jq.css({
                        width: "0px",
                        height: "0px"
                    });
                    this._validString(this.status.media.poster) && this.internal.poster.jq.show();
                    this.css.jq.videoPlay.length && this.status.video && this.css.jq.videoPlay.show();
                    this.status.video ? this._flash_setVideo(this.status.media) :
                        this._flash_setAudio(this.status.media);
                    this._updateButtons(!1);
                    this._error({
                        type: b.jPlayer.error.URL,
                        context: c.src,
                        message: b.jPlayer.errorMsg.URL,
                        hint: b.jPlayer.errorHint.URL
                    });
                    break;
                case b.jPlayer.event.seeking:
                    this._seeking();
                    this._trigger(a);
                    break;
                case b.jPlayer.event.seeked:
                    this._seeked();
                    this._trigger(a);
                    break;
                case b.jPlayer.event.ready:
                    break;
                default:
                    this._trigger(a)
            }
            return !1
        },
        _getFlashStatus: function(a) {
            this.status.seekPercent = a.seekPercent;
            this.status.currentPercentRelative = a.currentPercentRelative;
            this.status.currentPercentAbsolute = a.currentPercentAbsolute;
            this.status.currentTime = a.currentTime;
            this.status.duration = a.duration;
            this.status.readyState = 4;
            this.status.networkState = 0;
            this.status.playbackRate = 1;
            this.status.ended = !1
        },
        _updateButtons: function(a) {
            if (a !== f) this.status.paused = !a, this.css.jq.play.length && this.css.jq.pause.length && (a ? (this.css.jq.play.hide(), this.css.jq.pause.show()) : (this.css.jq.play.show(), this.css.jq.pause.hide()));
            this.css.jq.restoreScreen.length && this.css.jq.fullScreen.length &&
                (this.status.noFullScreen ? (this.css.jq.fullScreen.hide(), this.css.jq.restoreScreen.hide()) : this.options.fullScreen ? (this.css.jq.fullScreen.hide(), this.css.jq.restoreScreen.show()) : (this.css.jq.fullScreen.show(), this.css.jq.restoreScreen.hide()));
            this.css.jq.repeat.length && this.css.jq.repeatOff.length && (this.options.loop ? (this.css.jq.repeat.hide(), this.css.jq.repeatOff.show()) : (this.css.jq.repeat.show(), this.css.jq.repeatOff.hide()))
        },
        _updateInterface: function() {
            this.css.jq.seekBar.length && this.css.jq.seekBar.width(this.status.seekPercent +
                "%");
            this.css.jq.playBar.length && this.css.jq.playBar.width(this.status.currentPercentRelative + "%");
            this.css.jq.currentTime.length && this.css.jq.currentTime.text(b.jPlayer.convertTime(this.status.currentTime));
            this.css.jq.duration.length && this.css.jq.duration.text(b.jPlayer.convertTime(this.status.duration))
        },
        _seeking: function() {
            this.css.jq.seekBar.length && this.css.jq.seekBar.addClass("jp-seeking-bg")
        },
        _seeked: function() {
            this.css.jq.seekBar.length && this.css.jq.seekBar.removeClass("jp-seeking-bg")
        },
        _resetGate: function() {
            this.html.audio.gate = !1;
            this.html.video.gate = !1;
            this.flash.gate = !1
        },
        _resetActive: function() {
            this.html.active = !1;
            this.flash.active = !1
        },
        setMedia: function(a) {
            var c = this,
                d = !1,
                e = this.status.media.poster !== a.poster;
            this._resetMedia();
            this._resetGate();
            this._resetActive();
            b.each(this.formats, function(e, f) {
                var i = c.format[f].media === "video";
                b.each(c.solutions, function(b, e) {
                    if (c[e].support[f] && c._validString(a[f])) {
                        var g = e === "html";
                        i ? (g ? (c.html.video.gate = !0, c._html_setVideo(a), c.html.active = !0) : (c.flash.gate = !0, c._flash_setVideo(a), c.flash.active = !0), c.css.jq.videoPlay.length && c.css.jq.videoPlay.show(), c.status.video = !0) : (g ? (c.html.audio.gate = !0, c._html_setAudio(a), c.html.active = !0) : (c.flash.gate = !0, c._flash_setAudio(a), c.flash.active = !0), c.css.jq.videoPlay.length && c.css.jq.videoPlay.hide(), c.status.video = !1);
                        d = !0;
                        return !1
                    }
                });
                if (d) return !1
            });
            if (d) {
                if ((!this.status.nativeVideoControls || !this.html.video.gate) && this._validString(a.poster)) e ? this.htmlElement.poster.src = a.poster : this.internal.poster.jq.show();
                this.status.srcSet = !0;
                this.status.media = b.extend({}, a);
                this._updateButtons(!1);
                this._updateInterface()
            } else this._error({
                type: b.jPlayer.error.NO_SUPPORT,
                context: "{supplied:'" + this.options.supplied + "'}",
                message: b.jPlayer.errorMsg.NO_SUPPORT,
                hint: b.jPlayer.errorHint.NO_SUPPORT
            })
        },
        _resetMedia: function() {
            this._resetStatus();
            this._updateButtons(!1);
            this._updateInterface();
            this._seeked();
            this.internal.poster.jq.hide();
            clearTimeout(this.internal.htmlDlyCmdId);
            this.html.active ? this._html_resetMedia() : this.flash.active &&
                this._flash_resetMedia()
        },
        clearMedia: function() {
            this._resetMedia();
            this.html.active ? this._html_clearMedia() : this.flash.active && this._flash_clearMedia();
            this._resetGate();
            this._resetActive()
        },
        load: function() {
            this.status.srcSet ? this.html.active ? this._html_load() : this.flash.active && this._flash_load() : this._urlNotSetError("load")
        },
        play: function(a) {
            a = typeof a === "number" ? a : NaN;
            this.status.srcSet ? this.html.active ? this._html_play(a) : this.flash.active && this._flash_play(a) : this._urlNotSetError("play")
        },
        videoPlay: function() {
            this.play()
        },
        pause: function(a) {
            a = typeof a === "number" ? a : NaN;
            this.status.srcSet ? this.html.active ? this._html_pause(a) : this.flash.active && this._flash_pause(a) : this._urlNotSetError("pause")
        },
        pauseOthers: function() {
            var a = this;
            b.each(this.instances, function(b, d) {
                a.element !== d && d.data("jPlayer").status.srcSet && d.jPlayer("pause")
            })
        },
        stop: function() {
            this.status.srcSet ? this.html.active ? this._html_pause(0) : this.flash.active && this._flash_pause(0) : this._urlNotSetError("stop")
        },
        playHead: function(a) {
            a = this._limitValue(a, 0, 100);
            this.status.srcSet ? this.html.active ? this._html_playHead(a) : this.flash.active && this._flash_playHead(a) : this._urlNotSetError("playHead")
        },
        _muted: function(a) {
            this.options.muted = a;
            this.html.used && this._html_mute(a);
            this.flash.used && this._flash_mute(a);
            !this.html.video.gate && !this.html.audio.gate && (this._updateMute(a), this._updateVolume(this.options.volume), this._trigger(b.jPlayer.event.volumechange))
        },
        mute: function(a) {
            a = a === f ? !0 : !!a;
            this._muted(a)
        },
        unmute: function(a) {
            a = a === f ? !0 : !!a;
            this._muted(!a)
        },
        _updateMute: function(a) {
            if (a ===
                f) a = this.options.muted;
            this.css.jq.mute.length && this.css.jq.unmute.length && (this.status.noVolume ? (this.css.jq.mute.hide(), this.css.jq.unmute.hide()) : a ? (this.css.jq.mute.hide(), this.css.jq.unmute.show()) : (this.css.jq.mute.show(), this.css.jq.unmute.hide()))
        },
        volume: function(a) {
            a = this._limitValue(a, 0, 1);
            this.options.volume = a;
            this.html.used && this._html_volume(a);
            this.flash.used && this._flash_volume(a);
            !this.html.video.gate && !this.html.audio.gate && (this._updateVolume(a), this._trigger(b.jPlayer.event.volumechange))
        },
        volumeBar: function(a) {
            if (this.css.jq.volumeBar.length) {
                var b = this.css.jq.volumeBar.offset(),
                    d = a.pageX - b.left,
                    e = this.css.jq.volumeBar.width(),
                    a = this.css.jq.volumeBar.height() - a.pageY + b.top,
                    b = this.css.jq.volumeBar.height();
                this.options.verticalVolume ? this.volume(a / b) : this.volume(d / e)
            }
            this.options.muted && this._muted(!1)
        },
        volumeBarValue: function(a) {
            this.volumeBar(a)
        },
        _updateVolume: function(a) {
            if (a === f) a = this.options.volume;
            a = this.options.muted ? 0 : a;
            this.status.noVolume ? (this.css.jq.volumeBar.length && this.css.jq.volumeBar.hide(),
                this.css.jq.volumeBarValue.length && this.css.jq.volumeBarValue.hide(), this.css.jq.volumeMax.length && this.css.jq.volumeMax.hide()) : (this.css.jq.volumeBar.length && this.css.jq.volumeBar.show(), this.css.jq.volumeBarValue.length && (this.css.jq.volumeBarValue.show(), this.css.jq.volumeBarValue[this.options.verticalVolume ? "height" : "width"](a * 100 + "%")), this.css.jq.volumeMax.length && this.css.jq.volumeMax.show())
        },
        volumeMax: function() {
            this.volume(1);
            this.options.muted && this._muted(!1)
        },
        _cssSelectorAncestor: function(a) {
            var c =
                this;
            this.options.cssSelectorAncestor = a;
            this._removeUiClass();
            this.ancestorJq = a ? b(a) : [];
            a && this.ancestorJq.length !== 1 && this._warning({
                type: b.jPlayer.warning.CSS_SELECTOR_COUNT,
                context: a,
                message: b.jPlayer.warningMsg.CSS_SELECTOR_COUNT + this.ancestorJq.length + " found for cssSelectorAncestor.",
                hint: b.jPlayer.warningHint.CSS_SELECTOR_COUNT
            });
            this._addUiClass();
            b.each(this.options.cssSelector, function(a, b) {
                c._cssSelector(a, b)
            })
        },
        _cssSelector: function(a, c) {
            var d = this;
            typeof c === "string" ? b.jPlayer.prototype.options.cssSelector[a] ?
                (this.css.jq[a] && this.css.jq[a].length && this.css.jq[a].unbind(".jPlayer"), this.options.cssSelector[a] = c, this.css.cs[a] = this.options.cssSelectorAncestor + " " + c, this.css.jq[a] = c ? b(this.css.cs[a]) : [], this.css.jq[a].length && this.css.jq[a].bind("click.jPlayer", function(c) {
                    d[a](c);
                    b(this).blur();
                    return !1
                }), c && this.css.jq[a].length !== 1 && this._warning({
                    type: b.jPlayer.warning.CSS_SELECTOR_COUNT,
                    context: this.css.cs[a],
                    message: b.jPlayer.warningMsg.CSS_SELECTOR_COUNT + this.css.jq[a].length + " found for " + a + " method.",
                    hint: b.jPlayer.warningHint.CSS_SELECTOR_COUNT
                })) : this._warning({
                    type: b.jPlayer.warning.CSS_SELECTOR_METHOD,
                    context: a,
                    message: b.jPlayer.warningMsg.CSS_SELECTOR_METHOD,
                    hint: b.jPlayer.warningHint.CSS_SELECTOR_METHOD
                }) : this._warning({
                    type: b.jPlayer.warning.CSS_SELECTOR_STRING,
                    context: c,
                    message: b.jPlayer.warningMsg.CSS_SELECTOR_STRING,
                    hint: b.jPlayer.warningHint.CSS_SELECTOR_STRING
                })
        },
        seekBar: function(a) {
            if (this.css.jq.seekBar) {
                var b = this.css.jq.seekBar.offset(),
                    a = a.pageX - b.left,
                    b = this.css.jq.seekBar.width();
                this.playHead(100 * a / b)
            }
        },
        playBar: function(a) {
            this.seekBar(a)
        },
        repeat: function() {
            this._loop(!0)
        },
        repeatOff: function() {
            this._loop(!1)
        },
        _loop: function(a) {
            if (this.options.loop !== a) this.options.loop = a, this._updateButtons(), this._trigger(b.jPlayer.event.repeat)
        },
        currentTime: function() {},
        duration: function() {},
        gui: function() {},
        noSolution: function() {},
        option: function(a, c) {
            var d = a;
            if (arguments.length === 0) return b.extend(!0, {}, this.options);
            if (typeof a === "string") {
                var e = a.split(".");
                if (c === f) {
                    for (var d = b.extend(!0, {}, this.options), g = 0; g < e.length; g++)
                        if (d[e[g]] !== f) d = d[e[g]];
                        else return this._warning({
                            type: b.jPlayer.warning.OPTION_KEY,
                            context: a,
                            message: b.jPlayer.warningMsg.OPTION_KEY,
                            hint: b.jPlayer.warningHint.OPTION_KEY
                        }), f;
                    return d
                }
                for (var g = d = {}, h = 0; h < e.length; h++) h < e.length - 1 ? (g[e[h]] = {}, g = g[e[h]]) : g[e[h]] = c
            }
            this._setOptions(d);
            return this
        },
        _setOptions: function(a) {
            var c = this;
            b.each(a, function(a, b) {
                c._setOption(a, b)
            });
            return this
        },
        _setOption: function(a, c) {
            var d = this;
            switch (a) {
                case "volume":
                    this.volume(c);
                    break;
                case "muted":
                    this._muted(c);
                    break;
                case "cssSelectorAncestor":
                    this._cssSelectorAncestor(c);
                    break;
                case "cssSelector":
                    b.each(c, function(a, b) {
                        d._cssSelector(a, b)
                    });
                    break;
                case "fullScreen":
                    this.options[a] !== c && (this._removeUiClass(), this.options[a] = c, this._refreshSize());
                    break;
                case "size":
                    !this.options.fullScreen && this.options[a].cssClass !== c.cssClass && this._removeUiClass();
                    this.options[a] = b.extend({}, this.options[a], c);
                    this._refreshSize();
                    break;
                case "sizeFull":
                    this.options.fullScreen && this.options[a].cssClass !==
                        c.cssClass && this._removeUiClass();
                    this.options[a] = b.extend({}, this.options[a], c);
                    this._refreshSize();
                    break;
                case "autohide":
                    this.options[a] = b.extend({}, this.options[a], c);
                    this._updateAutohide();
                    break;
                case "loop":
                    this._loop(c);
                    break;
                case "nativeVideoControls":
                    this.options[a] = b.extend({}, this.options[a], c);
                    this.status.nativeVideoControls = this._uaBlocklist(this.options.nativeVideoControls);
                    this._restrictNativeVideoControls();
                    this._updateNativeVideoControls();
                    break;
                case "noFullScreen":
                    this.options[a] =
                        b.extend({}, this.options[a], c);
                    this.status.nativeVideoControls = this._uaBlocklist(this.options.nativeVideoControls);
                    this.status.noFullScreen = this._uaBlocklist(this.options.noFullScreen);
                    this._restrictNativeVideoControls();
                    this._updateButtons();
                    break;
                case "noVolume":
                    this.options[a] = b.extend({}, this.options[a], c);
                    this.status.noVolume = this._uaBlocklist(this.options.noVolume);
                    this._updateVolume();
                    this._updateMute();
                    break;
                case "emulateHtml":
                    this.options[a] !== c && ((this.options[a] = c) ? this._emulateHtmlBridge() :
                        this._destroyHtmlBridge())
            }
            return this
        },
        _refreshSize: function() {
            this._setSize();
            this._addUiClass();
            this._updateSize();
            this._updateButtons();
            this._updateAutohide();
            this._trigger(b.jPlayer.event.resize)
        },
        _setSize: function() {
            this.options.fullScreen ? (this.status.width = this.options.sizeFull.width, this.status.height = this.options.sizeFull.height, this.status.cssClass = this.options.sizeFull.cssClass) : (this.status.width = this.options.size.width, this.status.height = this.options.size.height, this.status.cssClass =
                this.options.size.cssClass);
            this.element.css({
                width: this.status.width,
                height: this.status.height
            })
        },
        _addUiClass: function() {
            this.ancestorJq.length && this.ancestorJq.addClass(this.status.cssClass)
        },
        _removeUiClass: function() {
            this.ancestorJq.length && this.ancestorJq.removeClass(this.status.cssClass)
        },
        _updateSize: function() {
            this.internal.poster.jq.css({
                width: this.status.width,
                height: this.status.height
            });
            !this.status.waitForPlay && this.html.active && this.status.video || this.html.video.available && this.html.used &&
                this.status.nativeVideoControls ? this.internal.video.jq.css({
                    width: this.status.width,
                    height: this.status.height
                }) : !this.status.waitForPlay && this.flash.active && this.status.video && this.internal.flash.jq.css({
                    width: this.status.width,
                    height: this.status.height
                })
        },
        _updateAutohide: function() {
            var a = this,
                b = function() {
                    a.css.jq.gui.fadeIn(a.options.autohide.fadeIn, function() {
                        clearTimeout(a.internal.autohideId);
                        a.internal.autohideId = setTimeout(function() {
                            a.css.jq.gui.fadeOut(a.options.autohide.fadeOut)
                        }, a.options.autohide.hold)
                    })
                };
            this.css.jq.gui.length && (this.css.jq.gui.stop(!0, !0), clearTimeout(this.internal.autohideId), this.element.unbind(".jPlayerAutohide"), this.css.jq.gui.unbind(".jPlayerAutohide"), this.status.nativeVideoControls ? this.css.jq.gui.hide() : this.options.fullScreen && this.options.autohide.full || !this.options.fullScreen && this.options.autohide.restored ? (this.element.bind("mousemove.jPlayer.jPlayerAutohide", b), this.css.jq.gui.bind("mousemove.jPlayer.jPlayerAutohide", b), this.css.jq.gui.hide()) : this.css.jq.gui.show())
        },
        fullScreen: function() {
            this._setOption("fullScreen", !0)
        },
        restoreScreen: function() {
            this._setOption("fullScreen", !1)
        },
        _html_initMedia: function() {
            this.htmlElement.media.src = this.status.src;
            this.options.preload !== "none" && this._html_load();
            this._trigger(b.jPlayer.event.timeupdate)
        },
        _html_setAudio: function(a) {
            var c = this;
            b.each(this.formats, function(b, e) {
                if (c.html.support[e] && a[e]) return c.status.src = a[e], c.status.format[e] = !0, c.status.formatType = e, !1
            });
            this.htmlElement.media = this.htmlElement.audio;
            this._html_initMedia()
        },
        _html_setVideo: function(a) {
            var c = this;
            b.each(this.formats, function(b, e) {
                if (c.html.support[e] && a[e]) return c.status.src = a[e], c.status.format[e] = !0, c.status.formatType = e, !1
            });
            if (this.status.nativeVideoControls) this.htmlElement.video.poster = this._validString(a.poster) ? a.poster : "";
            this.htmlElement.media = this.htmlElement.video;
            this._html_initMedia()
        },
        _html_resetMedia: function() {
            this.htmlElement.media && (this.htmlElement.media.id === this.internal.video.id && !this.status.nativeVideoControls && this.internal.video.jq.css({
                width: "0px",
                height: "0px"
            }), this.htmlElement.media.pause())
        },
        _html_clearMedia: function() {
            if (this.htmlElement.media) this.htmlElement.media.src = "", this.htmlElement.media.load()
        },
        _html_load: function() {
            if (this.status.waitForLoad) this.status.waitForLoad = !1, this.htmlElement.media.load();
            clearTimeout(this.internal.htmlDlyCmdId)
        },
        _html_play: function(a) {
            var b = this;
            this._html_load();
            this.htmlElement.media.play();
            if (!isNaN(a)) try {
                this.htmlElement.media.currentTime = a
            } catch (d) {
                this.internal.htmlDlyCmdId = setTimeout(function() {
                        b.play(a)
                    },
                    100);
                return
            }
            this._html_checkWaitForPlay()
        },
        _html_pause: function(a) {
            var b = this;
            a > 0 ? this._html_load() : clearTimeout(this.internal.htmlDlyCmdId);
            this.htmlElement.media.pause();
            if (!isNaN(a)) try {
                this.htmlElement.media.currentTime = a
            } catch (d) {
                this.internal.htmlDlyCmdId = setTimeout(function() {
                    b.pause(a)
                }, 100);
                return
            }
            a > 0 && this._html_checkWaitForPlay()
        },
        _html_playHead: function(a) {
            var b = this;
            this._html_load();
            try {
                if (typeof this.htmlElement.media.seekable === "object" && this.htmlElement.media.seekable.length > 0) this.htmlElement.media.currentTime =
                    a * this.htmlElement.media.seekable.end(this.htmlElement.media.seekable.length - 1) / 100;
                else if (this.htmlElement.media.duration > 0 && !isNaN(this.htmlElement.media.duration)) this.htmlElement.media.currentTime = a * this.htmlElement.media.duration / 100;
                else throw "e";
            } catch (d) {
                this.internal.htmlDlyCmdId = setTimeout(function() {
                    b.playHead(a)
                }, 100);
                return
            }
            this.status.waitForLoad || this._html_checkWaitForPlay()
        },
        _html_checkWaitForPlay: function() {
            if (this.status.waitForPlay) this.status.waitForPlay = !1, this.css.jq.videoPlay.length &&
                this.css.jq.videoPlay.hide(), this.status.video && (this.internal.poster.jq.hide(), this.internal.video.jq.css({
                    width: this.status.width,
                    height: this.status.height
                }))
        },
        _html_volume: function(a) {
            if (this.html.audio.available) this.htmlElement.audio.volume = a;
            if (this.html.video.available) this.htmlElement.video.volume = a
        },
        _html_mute: function(a) {
            if (this.html.audio.available) this.htmlElement.audio.muted = a;
            if (this.html.video.available) this.htmlElement.video.muted = a
        },
        _flash_setAudio: function(a) {
            var c = this;
            try {
                if (b.each(this.formats,
                        function(b, d) {
                            if (c.flash.support[d] && a[d]) {
                                switch (d) {
                                    case "m4a":
                                    case "fla":
                                        c._getMovie().fl_setAudio_m4a(a[d]);
                                        break;
                                    case "mp3":
                                        c._getMovie().fl_setAudio_mp3(a[d])
                                }
                                c.status.src = a[d];
                                c.status.format[d] = !0;
                                c.status.formatType = d;
                                return !1
                            }
                        }), this.options.preload === "auto") this._flash_load(), this.status.waitForLoad = !1
            } catch (d) {
                this._flashError(d)
            }
        },
        _flash_setVideo: function(a) {
            var c = this;
            try {
                if (b.each(this.formats, function(b, d) {
                        if (c.flash.support[d] && a[d]) {
                            switch (d) {
                                case "m4v":
                                case "flv":
                                    c._getMovie().fl_setVideo_m4v(a[d])
                            }
                            c.status.src =
                                a[d];
                            c.status.format[d] = !0;
                            c.status.formatType = d;
                            return !1
                        }
                    }), this.options.preload === "auto") this._flash_load(), this.status.waitForLoad = !1
            } catch (d) {
                this._flashError(d)
            }
        },
        _flash_resetMedia: function() {
            this.internal.flash.jq.css({
                width: "0px",
                height: "0px"
            });
            this._flash_pause(NaN)
        },
        _flash_clearMedia: function() {
            try {
                this._getMovie().fl_clearMedia()
            } catch (a) {
                this._flashError(a)
            }
        },
        _flash_load: function() {
            try {
                this._getMovie().fl_load()
            } catch (a) {
                this._flashError(a)
            }
            this.status.waitForLoad = !1
        },
        _flash_play: function(a) {
            try {
                this._getMovie().fl_play(a)
            } catch (b) {
                this._flashError(b)
            }
            this.status.waitForLoad = !1;
            this._flash_checkWaitForPlay()
        },
        _flash_pause: function(a) {
            try {
                this._getMovie().fl_pause(a)
            } catch (b) {
                this._flashError(b)
            }
            if (a > 0) this.status.waitForLoad = !1, this._flash_checkWaitForPlay()
        },
        _flash_playHead: function(a) {
            try {
                this._getMovie().fl_play_head(a)
            } catch (b) {
                this._flashError(b)
            }
            this.status.waitForLoad || this._flash_checkWaitForPlay()
        },
        _flash_checkWaitForPlay: function() {
            if (this.status.waitForPlay) this.status.waitForPlay = !1, this.css.jq.videoPlay.length && this.css.jq.videoPlay.hide(), this.status.video &&
                (this.internal.poster.jq.hide(), this.internal.flash.jq.css({
                    width: this.status.width,
                    height: this.status.height
                }))
        },
        _flash_volume: function(a) {
            try {
                this._getMovie().fl_volume(a)
            } catch (b) {
                this._flashError(b)
            }
        },
        _flash_mute: function(a) {
            try {
                this._getMovie().fl_mute(a)
            } catch (b) {
                this._flashError(b)
            }
        },
        _getMovie: function() {
            return document[this.internal.flash.id]
        },
        _checkForFlash: function(a) {
            var b = !1,
                d;
            if (window.ActiveXObject) try {
                new ActiveXObject("ShockwaveFlash.ShockwaveFlash." + a), b = !0
            } catch (e) {} else navigator.plugins &&
                navigator.mimeTypes.length > 0 && (d = navigator.plugins["Shockwave Flash"]) && navigator.plugins["Shockwave Flash"].description.replace(/.*\s(\d+\.\d+).*/, "$1") >= a && (b = !0);
            return b
        },
        _validString: function(a) {
            return a && typeof a === "string"
        },
        _limitValue: function(a, b, d) {
            return a < b ? b : a > d ? d : a
        },
        _urlNotSetError: function(a) {
            this._error({
                type: b.jPlayer.error.URL_NOT_SET,
                context: a,
                message: b.jPlayer.errorMsg.URL_NOT_SET,
                hint: b.jPlayer.errorHint.URL_NOT_SET
            })
        },
        _flashError: function(a) {
            var c;
            c = this.internal.ready ? "FLASH_DISABLED" :
                "FLASH";
            this._error({
                type: b.jPlayer.error[c],
                context: this.internal.flash.swf,
                message: b.jPlayer.errorMsg[c] + a.message,
                hint: b.jPlayer.errorHint[c]
            });
            this.internal.flash.jq.css({
                width: "1px",
                height: "1px"
            })
        },
        _error: function(a) {
            this._trigger(b.jPlayer.event.error, a);
            this.options.errorAlerts && this._alert("Error!" + (a.message ? "\n\n" + a.message : "") + (a.hint ? "\n\n" + a.hint : "") + "\n\nContext: " + a.context)
        },
        _warning: function(a) {
            this._trigger(b.jPlayer.event.warning, f, a);
            this.options.warningAlerts && this._alert("Warning!" +
                (a.message ? "\n\n" + a.message : "") + (a.hint ? "\n\n" + a.hint : "") + "\n\nContext: " + a.context)
        },
        _alert: function(a) {
            alert("jPlayer " + this.version.script + " : id='" + this.internal.self.id + "' : " + a)
        },
        _emulateHtmlBridge: function() {
            var a = this;
            b.each(b.jPlayer.emulateMethods.split(/\s+/g), function(b, d) {
                a.internal.domNode[d] = function(b) {
                    a[d](b)
                }
            });
            b.each(b.jPlayer.event, function(c, d) {
                var e = !0;
                b.each(b.jPlayer.reservedEvent.split(/\s+/g), function(a, b) {
                    if (b === c) return e = !1
                });
                e && a.element.bind(d + ".jPlayer.jPlayerHtml",
                    function() {
                        a._emulateHtmlUpdate();
                        var b = document.createEvent("Event");
                        b.initEvent(c, !1, !0);
                        a.internal.domNode.dispatchEvent(b)
                    })
            })
        },
        _emulateHtmlUpdate: function() {
            var a = this;
            b.each(b.jPlayer.emulateStatus.split(/\s+/g), function(b, d) {
                a.internal.domNode[d] = a.status[d]
            });
            b.each(b.jPlayer.emulateOptions.split(/\s+/g), function(b, d) {
                a.internal.domNode[d] = a.options[d]
            })
        },
        _destroyHtmlBridge: function() {
            var a = this;
            this.element.unbind(".jPlayerHtml");
            b.each((b.jPlayer.emulateMethods + " " + b.jPlayer.emulateStatus +
                " " + b.jPlayer.emulateOptions).split(/\s+/g), function(b, d) {
                delete a.internal.domNode[d]
            })
        }
    };
    b.jPlayer.error = {
        FLASH: "e_flash",
        FLASH_DISABLED: "e_flash_disabled",
        NO_SOLUTION: "e_no_solution",
        NO_SUPPORT: "e_no_support",
        URL: "e_url",
        URL_NOT_SET: "e_url_not_set",
        VERSION: "e_version"
    };
    b.jPlayer.errorMsg = {
        FLASH: "jPlayer's Flash fallback is not configured correctly, or a command was issued before the jPlayer Ready event. Details: ",
        FLASH_DISABLED: "jPlayer's Flash fallback has been disabled by the browser due to the CSS rules you have used. Details: ",
        NO_SOLUTION: "No solution can be found by jPlayer in this browser. Neither HTML nor Flash can be used.",
        NO_SUPPORT: "It is not possible to play any media format provided in setMedia() on this browser using your current options.",
        URL: "Media URL could not be loaded.",
        URL_NOT_SET: "Attempt to issue media playback commands, while no media url is set.",
        VERSION: "jPlayer " + b.jPlayer.prototype.version.script + " needs Jplayer.swf version " + b.jPlayer.prototype.version.needFlash + " but found "
    };
    b.jPlayer.errorHint = {
        FLASH: "Check your swfPath option and that Jplayer.swf is there.",
        FLASH_DISABLED: "Check that you have not display:none; the jPlayer entity or any ancestor.",
        NO_SOLUTION: "Review the jPlayer options: support and supplied.",
        NO_SUPPORT: "Video or audio formats defined in the supplied option are missing.",
        URL: "Check media URL is valid.",
        URL_NOT_SET: "Use setMedia() to set the media URL.",
        VERSION: "Update jPlayer files."
    };
    b.jPlayer.warning = {
        CSS_SELECTOR_COUNT: "e_css_selector_count",
        CSS_SELECTOR_METHOD: "e_css_selector_method",
        CSS_SELECTOR_STRING: "e_css_selector_string",
        OPTION_KEY: "e_option_key"
    };
    b.jPlayer.warningMsg = {
        CSS_SELECTOR_COUNT: "The number of css selectors found did not equal one: ",
        CSS_SELECTOR_METHOD: "The methodName given in jPlayer('cssSelector') is not a valid jPlayer method.",
        CSS_SELECTOR_STRING: "The methodCssSelector given in jPlayer('cssSelector') is not a String or is empty.",
        OPTION_KEY: "The option requested in jPlayer('option') is undefined."
    };
    b.jPlayer.warningHint = {
        CSS_SELECTOR_COUNT: "Check your css selector and the ancestor.",
        CSS_SELECTOR_METHOD: "Check your method name.",
        CSS_SELECTOR_STRING: "Check your css selector is a string.",
        OPTION_KEY: "Check your option name."
    }
})(jQuery);


/*! Copyright (c) 2011 Brandon Aaron (http://brandonaaron.net)
 * Licensed under the MIT License (LICENSE.txt).
 *
 * Thanks to: http://adomas.org/javascript-mouse-wheel/ for some pointers.
 * Thanks to: Mathias Bank(http://www.mathias-bank.de) for a scope bug fix.
 * Thanks to: Seamus Leahy for adding deltaX and deltaY
 *
 * Version: 3.0.6
 * 
 * Requires: 1.2.2+
 */
(function(a) {
    function d(b) {
        var c = b || window.event,
            d = [].slice.call(arguments, 1),
            e = 0,
            f = true,
            g = 0,
            h = 0;
        b = a.event.fix(c);
        b.type = "mousewheel";
        if (c.wheelDelta) {
            e = c.wheelDelta / 120
        }
        if (c.detail) {
            e = -c.detail / 3
        }
        h = e;
        if (c.axis !== undefined && c.axis === c.HORIZONTAL_AXIS) {
            h = 0;
            g = -1 * e
        }
        if (c.wheelDeltaY !== undefined) {
            h = c.wheelDeltaY / 120
        }
        if (c.wheelDeltaX !== undefined) {
            g = -1 * c.wheelDeltaX / 120
        }
        d.unshift(b, e, g, h);
        return (a.event.dispatch || a.event.handle).apply(this, d)
    }
    var b = ["DOMMouseScroll", "mousewheel"];
    if (a.event.fixHooks) {
        for (var c = b.length; c;) {
            a.event.fixHooks[b[--c]] = a.event.mouseHooks
        }
    }
    a.event.special.mousewheel = {
        setup: function() {
            if (this.addEventListener) {
                for (var a = b.length; a;) {
                    this.addEventListener(b[--a], d, false)
                }
            } else {
                this.onmousewheel = d
            }
        },
        teardown: function() {
            if (this.removeEventListener) {
                for (var a = b.length; a;) {
                    this.removeEventListener(b[--a], d, false)
                }
            } else {
                this.onmousewheel = null
            }
        }
    };
    a.fn.extend({
        mousewheel: function(a) {
            return a ? this.bind("mousewheel", a) : this.trigger("mousewheel")
        },
        unmousewheel: function(a) {
            return this.unbind("mousewheel", a)
        }
    })
})(jQuery);


/*
 * jScrollPane - v2.0.0beta12 - 2012-09-27
 * http://jscrollpane.kelvinluck.com/
 *
 * Copyright (c) 2010 Kelvin Luck
 * Dual licensed under the MIT or GPL licenses.
 */
(function(b, a, c) {
    b.fn.jScrollPane = function(e) {
        function d(D, O) {
            var ay, Q = this,
                Y, aj, v, al, T, Z, y, q, az, aE, au, i, I, h, j, aa, U, ap, X, t, A, aq, af, am, G, l, at, ax, x, av, aH, f, L, ai = true,
                P = true,
                aG = false,
                k = false,
                ao = D.clone(false, false).empty(),
                ac = b.fn.mwheelIntent ? "mwheelIntent.jsp" : "mousewheel.jsp";
            aH = D.css("paddingTop") + " " + D.css("paddingRight") + " " + D.css("paddingBottom") + " " + D.css("paddingLeft");
            f = (parseInt(D.css("paddingLeft"), 10) || 0) + (parseInt(D.css("paddingRight"), 10) || 0);

            function ar(aQ) {
                var aL, aN, aM, aJ, aI, aP, aO = false,
                    aK = false;
                ay = aQ;
                if (Y === c) {
                    aI = D.scrollTop();
                    aP = D.scrollLeft();
                    D.css({
                        overflow: "hidden",
                        padding: 0
                    });
                    aj = D.innerWidth() + f;
                    v = D.innerHeight();
                    D.width(aj);
                    Y = b('<div class="jspPane" />').css("padding", aH).append(D.children());
                    al = b('<div class="jspContainer" />').css({
                        width: aj + "px",
                        height: v + "px"
                    }).append(Y).appendTo(D)
                } else {
                    D.css("width", "");
                    aO = ay.stickToBottom && K();
                    aK = ay.stickToRight && B();
                    aJ = D.innerWidth() + f != aj || D.outerHeight() != v;
                    if (aJ) {
                        aj = D.innerWidth() + f;
                        v = D.innerHeight();
                        al.css({
                            width: aj + "px",
                            height: v + "px"
                        })
                    }
                    if (!aJ && L == T && Y.outerHeight() == Z) {
                        D.width(aj);
                        return
                    }
                    L = T;
                    Y.css("width", "");
                    D.width(aj);
                    al.find(">.jspVerticalBar,>.jspHorizontalBar").remove().end()
                }
                Y.css("overflow", "auto");
                if (aQ.contentWidth) {
                    T = aQ.contentWidth
                } else {
                    T = Y[0].scrollWidth
                }
                Z = Y[0].scrollHeight;
                Y.css("overflow", "");
                y = T / aj;
                q = Z / v;
                az = q > 1;
                aE = y > 1;
                if (!(aE || az)) {
                    D.removeClass("jspScrollable");
                    Y.css({
                        top: 0,
                        width: al.width() - f
                    });
                    n();
                    E();
                    R();
                    w()
                } else {
                    D.addClass("jspScrollable");
                    aL = ay.maintainPosition && (I || aa);
                    if (aL) {
                        aN = aC();
                        aM = aA()
                    }
                    aF();
                    z();
                    F();
                    if (aL) {
                        N(aK ? (T - aj) : aN, false);
                        M(aO ? (Z - v) : aM, false)
                    }
                    J();
                    ag();
                    an();
                    if (ay.enableKeyboardNavigation) {
                        S()
                    }
                    if (ay.clickOnTrack) {
                        p()
                    }
                    C();
                    if (ay.hijackInternalLinks) {
                        m()
                    }
                }
                if (ay.autoReinitialise && !av) {
                    av = setInterval(function() {
                        ar(ay)
                    }, ay.autoReinitialiseDelay)
                } else {
                    if (!ay.autoReinitialise && av) {
                        clearInterval(av)
                    }
                }
                aI && D.scrollTop(0) && M(aI, false);
                aP && D.scrollLeft(0) && N(aP, false);
                D.trigger("jsp-initialised", [aE || az])
            }

            function aF() {
                if (az) {
                    al.append(b('<div class="jspVerticalBar" />').append(b('<div class="jspCap jspCapTop" />'), b('<div class="jspTrack" />').append(b('<div class="jspDrag" />').append(b('<div class="jspDragTop" />'), b('<div class="jspDragBottom" />'))), b('<div class="jspCap jspCapBottom" />')));
                    U = al.find(">.jspVerticalBar");
                    ap = U.find(">.jspTrack");
                    au = ap.find(">.jspDrag");
                    if (ay.showArrows) {
                        aq = b('<a class="jspArrow jspArrowUp" />').bind("mousedown.jsp", aD(0, -1)).bind("click.jsp", aB);
                        af = b('<a class="jspArrow jspArrowDown" />').bind("mousedown.jsp", aD(0, 1)).bind("click.jsp", aB);
                        if (ay.arrowScrollOnHover) {
                            aq.bind("mouseover.jsp", aD(0, -1, aq));
                            af.bind("mouseover.jsp", aD(0, 1, af))
                        }
                        ak(ap, ay.verticalArrowPositions, aq, af)
                    }
                    t = v;
                    al.find(">.jspVerticalBar>.jspCap:visible,>.jspVerticalBar>.jspArrow").each(function() {
                        t -= b(this).outerHeight()
                    });
                    au.hover(function() {
                        au.addClass("jspHover")
                    }, function() {
                        au.removeClass("jspHover")
                    }).bind("mousedown.jsp", function(aI) {
                        b("html").bind("dragstart.jsp selectstart.jsp", aB);
                        au.addClass("jspActive");
                        var s = aI.pageY - au.position().top;
                        b("html").bind("mousemove.jsp", function(aJ) {
                            V(aJ.pageY - s, false)
                        }).bind("mouseup.jsp mouseleave.jsp", aw);
                        return false
                    });
                    o()
                }
            }

            function o() {
                ap.height(t + "px");
                I = 0;
                X = ay.verticalGutter + ap.outerWidth();
                Y.width(aj - X - f);
                try {
                    if (U.position().left === 0) {
                        Y.css("margin-left", X + "px")
                    }
                } catch (s) {}
            }

            function z() {
                if (aE) {
                    al.append(b('<div class="jspHorizontalBar" />').append(b('<div class="jspCap jspCapLeft" />'), b('<div class="jspTrack" />').append(b('<div class="jspDrag" />').append(b('<div class="jspDragLeft" />'), b('<div class="jspDragRight" />'))), b('<div class="jspCap jspCapRight" />')));
                    am = al.find(">.jspHorizontalBar");
                    G = am.find(">.jspTrack");
                    h = G.find(">.jspDrag");
                    if (ay.showArrows) {
                        ax = b('<a class="jspArrow jspArrowLeft" />').bind("mousedown.jsp", aD(-1, 0)).bind("click.jsp", aB);
                        x = b('<a class="jspArrow jspArrowRight" />').bind("mousedown.jsp", aD(1, 0)).bind("click.jsp", aB);
                        if (ay.arrowScrollOnHover) {
                            ax.bind("mouseover.jsp", aD(-1, 0, ax));
                            x.bind("mouseover.jsp", aD(1, 0, x))
                        }
                        ak(G, ay.horizontalArrowPositions, ax, x)
                    }
                    h.hover(function() {
                        h.addClass("jspHover")
                    }, function() {
                        h.removeClass("jspHover")
                    }).bind("mousedown.jsp", function(aI) {
                        b("html").bind("dragstart.jsp selectstart.jsp", aB);
                        h.addClass("jspActive");
                        var s = aI.pageX - h.position().left;
                        b("html").bind("mousemove.jsp", function(aJ) {
                            W(aJ.pageX - s, false)
                        }).bind("mouseup.jsp mouseleave.jsp", aw);
                        return false
                    });
                    l = al.innerWidth();
                    ah()
                }
            }

            function ah() {
                al.find(">.jspHorizontalBar>.jspCap:visible,>.jspHorizontalBar>.jspArrow").each(function() {
                    l -= b(this).outerWidth()
                });
                G.width(l + "px");
                aa = 0
            }

            function F() {
                if (aE && az) {
                    var aI = G.outerHeight(),
                        s = ap.outerWidth();
                    t -= aI;
                    b(am).find(">.jspCap:visible,>.jspArrow").each(function() {
                        l += b(this).outerWidth()
                    });
                    l -= s;
                    v -= s;
                    aj -= aI;
                    G.parent().append(b('<div class="jspCorner" />').css("width", aI + "px"));
                    o();
                    ah()
                }
                if (aE) {
                    Y.width((al.outerWidth() - f) + "px")
                }
                Z = Y.outerHeight();
                q = Z / v;
                if (aE) {
                    at = Math.ceil(1 / y * l);
                    if (at > ay.horizontalDragMaxWidth) {
                        at = ay.horizontalDragMaxWidth
                    } else {
                        if (at < ay.horizontalDragMinWidth) {
                            at = ay.horizontalDragMinWidth
                        }
                    }
                    h.width(at + "px");
                    j = l - at;
                    ae(aa)
                }
                if (az) {
                    A = Math.ceil(1 / q * t);
                    if (A > ay.verticalDragMaxHeight) {
                        A = ay.verticalDragMaxHeight
                    } else {
                        if (A < ay.verticalDragMinHeight) {
                            A = ay.verticalDragMinHeight
                        }
                    }
                    au.height(A + "px");
                    i = t - A;
                    ad(I)
                }
            }

            function ak(aJ, aL, aI, s) {
                var aN = "before",
                    aK = "after",
                    aM;
                if (aL == "os") {
                    aL = /Mac/.test(navigator.platform) ? "after" : "split"
                }
                if (aL == aN) {
                    aK = aL
                } else {
                    if (aL == aK) {
                        aN = aL;
                        aM = aI;
                        aI = s;
                        s = aM
                    }
                }
                aJ[aN](aI)[aK](s)
            }

            function aD(aI, s, aJ) {
                return function() {
                    H(aI, s, this, aJ);
                    this.blur();
                    return false
                }
            }

            function H(aL, aK, aO, aN) {
                aO = b(aO).addClass("jspActive");
                var aM, aJ, aI = true,
                    s = function() {
                        if (aL !== 0) {
                            Q.scrollByX(aL * ay.arrowButtonSpeed)
                        }
                        if (aK !== 0) {
                            Q.scrollByY(aK * ay.arrowButtonSpeed)
                        }
                        aJ = setTimeout(s, aI ? ay.initialDelay : ay.arrowRepeatFreq);
                        aI = false
                    };
                s();
                aM = aN ? "mouseout.jsp" : "mouseup.jsp";
                aN = aN || b("html");
                aN.bind(aM, function() {
                    aO.removeClass("jspActive");
                    aJ && clearTimeout(aJ);
                    aJ = null;
                    aN.unbind(aM)
                })
            }

            function p() {
                w();
                if (az) {
                    ap.bind("mousedown.jsp", function(aN) {
                        if (aN.originalTarget === c || aN.originalTarget == aN.currentTarget) {
                            var aL = b(this),
                                aO = aL.offset(),
                                aM = aN.pageY - aO.top - I,
                                aJ, aI = true,
                                s = function() {
                                    var aR = aL.offset(),
                                        aS = aN.pageY - aR.top - A / 2,
                                        aP = v * ay.scrollPagePercent,
                                        aQ = i * aP / (Z - v);
                                    if (aM < 0) {
                                        if (I - aQ > aS) {
                                            Q.scrollByY(-aP)
                                        } else {
                                            V(aS)
                                        }
                                    } else {
                                        if (aM > 0) {
                                            if (I + aQ < aS) {
                                                Q.scrollByY(aP)
                                            } else {
                                                V(aS)
                                            }
                                        } else {
                                            aK();
                                            return
                                        }
                                    }
                                    aJ = setTimeout(s, aI ? ay.initialDelay : ay.trackClickRepeatFreq);
                                    aI = false
                                },
                                aK = function() {
                                    aJ && clearTimeout(aJ);
                                    aJ = null;
                                    b(document).unbind("mouseup.jsp", aK)
                                };
                            s();
                            b(document).bind("mouseup.jsp", aK);
                            return false
                        }
                    })
                }
                if (aE) {
                    G.bind("mousedown.jsp", function(aN) {
                        if (aN.originalTarget === c || aN.originalTarget == aN.currentTarget) {
                            var aL = b(this),
                                aO = aL.offset(),
                                aM = aN.pageX - aO.left - aa,
                                aJ, aI = true,
                                s = function() {
                                    var aR = aL.offset(),
                                        aS = aN.pageX - aR.left - at / 2,
                                        aP = aj * ay.scrollPagePercent,
                                        aQ = j * aP / (T - aj);
                                    if (aM < 0) {
                                        if (aa - aQ > aS) {
                                            Q.scrollByX(-aP)
                                        } else {
                                            W(aS)
                                        }
                                    } else {
                                        if (aM > 0) {
                                            if (aa + aQ < aS) {
                                                Q.scrollByX(aP)
                                            } else {
                                                W(aS)
                                            }
                                        } else {
                                            aK();
                                            return
                                        }
                                    }
                                    aJ = setTimeout(s, aI ? ay.initialDelay : ay.trackClickRepeatFreq);
                                    aI = false
                                },
                                aK = function() {
                                    aJ && clearTimeout(aJ);
                                    aJ = null;
                                    b(document).unbind("mouseup.jsp", aK)
                                };
                            s();
                            b(document).bind("mouseup.jsp", aK);
                            return false
                        }
                    })
                }
            }

            function w() {
                if (G) {
                    G.unbind("mousedown.jsp")
                }
                if (ap) {
                    ap.unbind("mousedown.jsp")
                }
            }

            function aw() {
                b("html").unbind("dragstart.jsp selectstart.jsp mousemove.jsp mouseup.jsp mouseleave.jsp");
                if (au) {
                    au.removeClass("jspActive")
                }
                if (h) {
                    h.removeClass("jspActive")
                }
            }

            function V(s, aI) {
                if (!az) {
                    return
                }
                if (s < 0) {
                    s = 0
                } else {
                    if (s > i) {
                        s = i
                    }
                }
                if (aI === c) {
                    aI = ay.animateScroll
                }
                if (aI) {
                    Q.animate(au, "top", s, ad)
                } else {
                    au.css("top", s);
                    ad(s)
                }
            }

            function ad(aI) {
                if (aI === c) {
                    aI = au.position().top
                }
                al.scrollTop(0);
                I = aI;
                var aL = I === 0,
                    aJ = I == i,
                    aK = aI / i,
                    s = -aK * (Z - v);
                if (ai != aL || aG != aJ) {
                    ai = aL;
                    aG = aJ;
                    D.trigger("jsp-arrow-change", [ai, aG, P, k])
                }
                u(aL, aJ);
                Y.css("top", s);
                D.trigger("jsp-scroll-y", [-s, aL, aJ]).trigger("scroll")
            }

            function W(aI, s) {
                if (!aE) {
                    return
                }
                if (aI < 0) {
                    aI = 0
                } else {
                    if (aI > j) {
                        aI = j
                    }
                }
                if (s === c) {
                    s = ay.animateScroll
                }
                if (s) {
                    Q.animate(h, "left", aI, ae)
                } else {
                    h.css("left", aI);
                    ae(aI)
                }
            }

            function ae(aI) {
                if (aI === c) {
                    aI = h.position().left
                }
                al.scrollTop(0);
                aa = aI;
                var aL = aa === 0,
                    aK = aa == j,
                    aJ = aI / j,
                    s = -aJ * (T - aj);
                if (P != aL || k != aK) {
                    P = aL;
                    k = aK;
                    D.trigger("jsp-arrow-change", [ai, aG, P, k])
                }
                r(aL, aK);
                Y.css("left", s);
                D.trigger("jsp-scroll-x", [-s, aL, aK]).trigger("scroll")
            }

            function u(aI, s) {
                if (ay.showArrows) {
                    aq[aI ? "addClass" : "removeClass"]("jspDisabled");
                    af[s ? "addClass" : "removeClass"]("jspDisabled")
                }
            }

            function r(aI, s) {
                if (ay.showArrows) {
                    ax[aI ? "addClass" : "removeClass"]("jspDisabled");
                    x[s ? "addClass" : "removeClass"]("jspDisabled")
                }
            }

            function M(s, aI) {
                var aJ = s / (Z - v);
                V(aJ * i, aI)
            }

            function N(aI, s) {
                var aJ = aI / (T - aj);
                W(aJ * j, s)
            }

            function ab(aV, aQ, aJ) {
                var aN, aK, aL, s = 0,
                    aU = 0,
                    aI, aP, aO, aS, aR, aT;
                try {
                    aN = b(aV)
                } catch (aM) {
                    return
                }
                aK = aN.outerHeight();
                aL = aN.outerWidth();
                al.scrollTop(0);
                al.scrollLeft(0);
                while (!aN.is(".jspPane")) {
                    s += aN.position().top;
                    aU += aN.position().left;
                    aN = aN.offsetParent();
                    if (/^body|html$/i.test(aN[0].nodeName)) {
                        return
                    }
                }
                aI = aA();
                aO = aI + v;
                if (s < aI || aQ) {
                    aR = s - ay.verticalGutter
                } else {
                    if (s + aK > aO) {
                        aR = s - v + aK + ay.verticalGutter
                    }
                }
                if (aR) {
                    M(aR, aJ)
                }
                aP = aC();
                aS = aP + aj;
                if (aU < aP || aQ) {
                    aT = aU - ay.horizontalGutter
                } else {
                    if (aU + aL > aS) {
                        aT = aU - aj + aL + ay.horizontalGutter
                    }
                }
                if (aT) {
                    N(aT, aJ)
                }
            }

            function aC() {
                return -Y.position().left
            }

            function aA() {
                return -Y.position().top
            }

            function K() {
                var s = Z - v;
                return (s > 20) && (s - aA() < 10)
            }

            function B() {
                var s = T - aj;
                return (s > 20) && (s - aC() < 10)
            }

            function ag() {
                al.unbind(ac).bind(ac, function(aL, aM, aK, aI) {
                    var aJ = aa,
                        s = I;
                    Q.scrollBy(aK * ay.mouseWheelSpeed, -aI * ay.mouseWheelSpeed, false);
                    return aJ == aa && s == I
                })
            }

            function n() {
                al.unbind(ac)
            }

            function aB() {
                return false
            }

            function J() {
                Y.find(":input,a").unbind("focus.jsp").bind("focus.jsp", function(s) {
                    ab(s.target, false)
                })
            }

            function E() {
                Y.find(":input,a").unbind("focus.jsp")
            }

            function S() {
                var s, aI, aK = [];
                aE && aK.push(am[0]);
                az && aK.push(U[0]);
                Y.focus(function() {
                    D.focus()
                });
                D.attr("tabindex", 0).unbind("keydown.jsp keypress.jsp").bind("keydown.jsp", function(aN) {
                    if (aN.target !== this && !(aK.length && b(aN.target).closest(aK).length)) {
                        return
                    }
                    var aM = aa,
                        aL = I;
                    switch (aN.keyCode) {
                        case 40:
                        case 38:
                        case 34:
                        case 32:
                        case 33:
                        case 39:
                        case 37:
                            s = aN.keyCode;
                            aJ();
                            break;
                        case 35:
                            M(Z - v);
                            s = null;
                            break;
                        case 36:
                            M(0);
                            s = null;
                            break
                    }
                    aI = aN.keyCode == s && aM != aa || aL != I;
                    return !aI
                }).bind("keypress.jsp", function(aL) {
                    if (aL.keyCode == s) {
                        aJ()
                    }
                    return !aI
                });
                if (ay.hideFocus) {
                    D.css("outline", "none");
                    if ("hideFocus" in al[0]) {
                        D.attr("hideFocus", true)
                    }
                } else {
                    D.css("outline", "");
                    if ("hideFocus" in al[0]) {
                        D.attr("hideFocus", false)
                    }
                }

                function aJ() {
                    var aM = aa,
                        aL = I;
                    switch (s) {
                        case 40:
                            Q.scrollByY(ay.keyboardSpeed, false);
                            break;
                        case 38:
                            Q.scrollByY(-ay.keyboardSpeed, false);
                            break;
                        case 34:
                        case 32:
                            Q.scrollByY(v * ay.scrollPagePercent, false);
                            break;
                        case 33:
                            Q.scrollByY(-v * ay.scrollPagePercent, false);
                            break;
                        case 39:
                            Q.scrollByX(ay.keyboardSpeed, false);
                            break;
                        case 37:
                            Q.scrollByX(-ay.keyboardSpeed, false);
                            break
                    }
                    aI = aM != aa || aL != I;
                    return aI
                }
            }

            function R() {
                D.attr("tabindex", "-1").removeAttr("tabindex").unbind("keydown.jsp keypress.jsp")
            }

            function C() {
                if (location.hash && location.hash.length > 1) {
                    var aK, aI, aJ = escape(location.hash.substr(1));
                    try {
                        aK = b("#" + aJ + ', a[name="' + aJ + '"]')
                    } catch (s) {
                        return
                    }
                    if (aK.length && Y.find(aJ)) {
                        if (al.scrollTop() === 0) {
                            aI = setInterval(function() {
                                if (al.scrollTop() > 0) {
                                    ab(aK, true);
                                    b(document).scrollTop(al.position().top);
                                    clearInterval(aI)
                                }
                            }, 50)
                        } else {
                            ab(aK, true);
                            b(document).scrollTop(al.position().top)
                        }
                    }
                }
            }

            function m() {
                if (b(document.body).data("jspHijack")) {
                    return
                }
                b(document.body).data("jspHijack", true);
                b(document.body).delegate("a[href*=#]", "click", function(s) {
                    var aI = this.href.substr(0, this.href.indexOf("#")),
                        aK = location.href,
                        aO, aP, aJ, aM, aL, aN;
                    if (location.href.indexOf("#") !== -1) {
                        aK = location.href.substr(0, location.href.indexOf("#"))
                    }
                    if (aI !== aK) {
                        return
                    }
                    aO = escape(this.href.substr(this.href.indexOf("#") + 1));
                    aP;
                    try {
                        aP = b("#" + aO + ', a[name="' + aO + '"]')
                    } catch (aQ) {
                        return
                    }
                    if (!aP.length) {
                        return
                    }
                    aJ = aP.closest(".jspScrollable");
                    aM = aJ.data("jsp");
                    aM.scrollToElement(aP, true);
                    if (aJ[0].scrollIntoView) {
                        aL = b(a).scrollTop();
                        aN = aP.offset().top;
                        if (aN < aL || aN > aL + b(a).height()) {
                            aJ[0].scrollIntoView()
                        }
                    }
                    s.preventDefault()
                })
            }

            function an() {
                var aJ, aI, aL, aK, aM, s = false;
                al.unbind("touchstart.jsp touchmove.jsp touchend.jsp click.jsp-touchclick").bind("touchstart.jsp", function(aN) {
                    var aO = aN.originalEvent.touches[0];
                    aJ = aC();
                    aI = aA();
                    aL = aO.pageX;
                    aK = aO.pageY;
                    aM = false;
                    s = true
                }).bind("touchmove.jsp", function(aQ) {
                    if (!s) {
                        return
                    }
                    var aP = aQ.originalEvent.touches[0],
                        aO = aa,
                        aN = I;
                    Q.scrollTo(aJ + aL - aP.pageX, aI + aK - aP.pageY);
                    aM = aM || Math.abs(aL - aP.pageX) > 5 || Math.abs(aK - aP.pageY) > 5;
                    return aO == aa && aN == I
                }).bind("touchend.jsp", function(aN) {
                    s = false
                }).bind("click.jsp-touchclick", function(aN) {
                    if (aM) {
                        aM = false;
                        return false
                    }
                })
            }

            function g() {
                var s = aA(),
                    aI = aC();
                D.removeClass("jspScrollable").unbind(".jsp");
                D.replaceWith(ao.append(Y.children()));
                ao.scrollTop(s);
                ao.scrollLeft(aI);
                if (av) {
                    clearInterval(av)
                }
            }
            b.extend(Q, {
                reinitialise: function(aI) {
                    aI = b.extend({}, ay, aI);
                    ar(aI)
                },
                scrollToElement: function(aJ, aI, s) {
                    ab(aJ, aI, s)
                },
                scrollTo: function(aJ, s, aI) {
                    N(aJ, aI);
                    M(s, aI)
                },
                scrollToX: function(aI, s) {
                    N(aI, s)
                },
                scrollToY: function(s, aI) {
                    M(s, aI)
                },
                scrollToPercentX: function(aI, s) {
                    N(aI * (T - aj), s)
                },
                scrollToPercentY: function(aI, s) {
                    M(aI * (Z - v), s)
                },
                scrollBy: function(aI, s, aJ) {
                    Q.scrollByX(aI, aJ);
                    Q.scrollByY(s, aJ)
                },
                scrollByX: function(s, aJ) {
                    var aI = aC() + Math[s < 0 ? "floor" : "ceil"](s),
                        aK = aI / (T - aj);
                    W(aK * j, aJ)
                },
                scrollByY: function(s, aJ) {
                    var aI = aA() + Math[s < 0 ? "floor" : "ceil"](s),
                        aK = aI / (Z - v);
                    V(aK * i, aJ)
                },
                positionDragX: function(s, aI) {
                    W(s, aI)
                },
                positionDragY: function(aI, s) {
                    V(aI, s)
                },
                animate: function(aI, aL, s, aK) {
                    var aJ = {};
                    aJ[aL] = s;
                    aI.animate(aJ, {
                        duration: ay.animateDuration,
                        easing: ay.animateEase,
                        queue: false,
                        step: aK
                    })
                },
                getContentPositionX: function() {
                    return aC()
                },
                getContentPositionY: function() {
                    return aA()
                },
                getContentWidth: function() {
                    return T
                },
                getContentHeight: function() {
                    return Z
                },
                getPercentScrolledX: function() {
                    return aC() / (T - aj)
                },
                getPercentScrolledY: function() {
                    return aA() / (Z - v)
                },
                getIsScrollableH: function() {
                    return aE
                },
                getIsScrollableV: function() {
                    return az
                },
                getContentPane: function() {
                    return Y
                },
                scrollToBottom: function(s) {
                    V(i, s)
                },
                hijackInternalLinks: b.noop,
                destroy: function() {
                    g()
                }
            });
            ar(O)
        }
        e = b.extend({}, b.fn.jScrollPane.defaults, e);
        b.each(["mouseWheelSpeed", "arrowButtonSpeed", "trackClickSpeed", "keyboardSpeed"], function() {
            e[this] = e[this] || e.speed
        });
        return this.each(function() {
            var f = b(this),
                g = f.data("jsp");
            if (g) {
                g.reinitialise(e)
            } else {
                b("script", f).filter('[type="text/javascript"],:not([type])').remove();
                g = new d(f, e);
                f.data("jsp", g)
            }
        })
    };
    b.fn.jScrollPane.defaults = {
        showArrows: false,
        maintainPosition: true,
        stickToBottom: false,
        stickToRight: false,
        clickOnTrack: true,
        autoReinitialise: false,
        autoReinitialiseDelay: 500,
        verticalDragMinHeight: 0,
        verticalDragMaxHeight: 99999,
        horizontalDragMinWidth: 0,
        horizontalDragMaxWidth: 99999,
        contentWidth: c,
        animateScroll: false,
        animateDuration: 300,
        animateEase: "linear",
        hijackInternalLinks: false,
        verticalGutter: 4,
        horizontalGutter: 4,
        mouseWheelSpeed: 0,
        arrowButtonSpeed: 0,
        arrowRepeatFreq: 50,
        arrowScrollOnHover: false,
        trackClickSpeed: 0,
        trackClickRepeatFreq: 70,
        verticalArrowPositions: "split",
        horizontalArrowPositions: "split",
        enableKeyboardNavigation: true,
        hideFocus: false,
        keyboardSpeed: 0,
        initialDelay: 300,
        speed: 30,
        scrollPagePercent: 0.8
    }
})(jQuery, this);

/*
 Copyright (c) 2009-2012 Petr Vostrel (http://petr.vostrel.cz/)
 Dual licensed under the MIT (MIT-LICENSE.txt)
 and GPL (GPL-LICENSE.txt) licenses.

 jQuery Reel
 http://jquery.vostrel.cz/reel
 Version: 1.2-devel
 Updated: 2012-10-13

 Requires jQuery 1.5 or higher
*/
/*
jQuery.reel||function(l,vb,Ea,p){function Xb(g){return q.instances.push(g[0])&&g}function Yb(g){return(q.instances=q.instances.not(Fa(g.attr(ga))))&&g}function W(g){return q.instances.first().data(g)}function Zb(g){return"data:image/gif;base64,R0lGODlh"+g}function X(g){return"<"+g+"/>"}function s(g){return"."+(g||"")}function Za(g){return g.replace(qa,q.cdn)}function Ga(g){return"url('"+$a(g)+"')"}function wb(g,i){return typeof i==ab?i[g]:i}function ra(g,i,r){return xb(g,bb(i,r))}function cb(g,i){return I(g)*
(i?-1:1)}function Ha(g){return ha?g.touch||g.originalEvent.touches[0]:g}function A(g){return g===p?0:typeof g==yb?g:g+"px"}function Fa(g){return"#"+g}function $b(g,i,r){for(;g.length<i;)g=r+g;return g}function $a(g){return encodeURI(decodeURI(g))}function zb(g){try{console.warn("Deprecation - Please consult https://github.com/pisi/Reel/wiki/Deprecations")}catch(i){}return g}if(!(!l||+l().jquery.replace(s(),J).substr(0,2)<15)){var q=l.reel={version:"1.2-devel",def:{frame:1,frames:36,loops:true,clickfree:false,
draggable:true,scrollable:true,steppable:true,throwable:true,wheelable:true,cw:false,revolution:p,stitched:0,directional:false,row:1,rows:0,orbital:0,vertical:false,inversed:false,footage:6,spacing:0,horizontal:true,suffix:"-reel",image:p,images:"",path:"",preload:"fidelity",speed:0,delay:0,timeout:2,duration:p,rebound:0.5,entry:p,opening:0,brake:0.23,velocity:0,tempo:36,laziness:6,cursor:p,hint:"",indicator:0,klass:"",preloader:2,area:p,attr:{},annotations:p,graph:p,monitor:p,step:p,steps:p},fn:{reel:function(){var g=
arguments,i=l(this),r=i.data(),u=g[0]||{},v=g[1];if(typeof u=="object"){var a=l.extend({},q.def,u);g=i.filter(db).unreel().filter(function(){var k=l(this),f=a.images.length&&a.images||a.sequence||a.image||a.attr.src||k.attr("src"),c=sa(a.attr.width||k.css(eb));k=sa(a.attr.height||k.css(Ab));if(f&&f!=J&&c&&k)return true});var R=[];a.step&&(a.frame=a.step);a.steps&&(a.frames=a.steps);g.each(function(){var k=l(this),f=function(b,d){return k.reel(b,d)&&d},c=function(b){return k.reel(b)},G={setup:function(){if(!k.hasClass(x)){f(Ia,
a);var b=k.attr(a.attr).attr("src"),d=f(ga,k.attr(ga)||k.attr(ga,x+"-"+ +new Date).attr(ga)),e=k.attr(ta),h=l.extend({},k.data()),j=q.re.sequence.exec(a.images);j=f(ca,j?q.sequence(j,a,c):a.images||[]);var m=a.stitched,n=a.loops,o={x:sa(k.css(eb)||a.attr.width),y:sa(k.css(Ab)||a.attr.height)},S=f(K,a.orbital&&a.footage||a.rows<=1&&j.length||a.frames),L=a.rows>1||a.orbital,y=a.revolution;f(Ja,wb("x",y)||m/2||o.x*2);f(Bb,!L?0:wb("y",y)||(a.rows>3?o.y:o.y/(5-a.rows)));L=m?1:ia(S/a.footage);d=Fa(d+a.suffix);
y=k[0].className||J;var F=l(X(ua),{id:d.substr(1),"class":y+B+ac+B+Cb+"0"});F=k.wrap(F.addClass(a.klass)).attr({"class":x});R.push(Xb(F)[0]);F=F.parent().bind(G.instance);f(fb,j.length?J:a.image||b.replace(q.re.image,"$1"+a.suffix+".$2"));f(Db,[]);f(Eb,a.spacing);f(gb,L);f(H,o);f(Ka,1/(S-(n&&!m?0:1)));f(hb,m);f(Fb,m-(n?0:o.x));f(ib,0);f(Gb,d);f(N,f(va,a.speed)<0);f(da,0);f(ja,a.vertical);f(T,0);f(ka,cb(1,!a.cw&&!m));f(La,{});f(wa,false);f(Ma,f(jb,0));f(Na,f(Oa,0));f(xa,false);f(kb,false);f(Y,false);
f(Hb,a.brake);f(lb,!!a.orbital);f(Z,a.tempo/(q.lazy?a.laziness:1));f(la,-1);f(Pa,-1);f(Qa,a.annotations||F.unbind(s(Qa))&&{});f(Ib,{src:b,classes:y,style:e||J,data:h});a.steppable||F.unbind("up.steppable");a.indicator||F.unbind(".indicator");C(J,{width:o.x,height:o.y,overflow:mb,position:"relative"});C(ea+B+s(x),{display:Jb});U.bind(G.pool);k.trigger("setup")}},instance:{teardown:function(){var b=k.data(Ib);k.parent().unbind(G.instance);c(ta).remove();c(Ra).unbind(V);Yb(k.unbind(V).removeData().siblings().unbind(V).remove().end().attr({"class":b.classes,
src:b.src,style:b.style}).data(b.data).unwrap());Sa();U.unbind(G.pool);$.unbind(aa)},setup:function(){function b(n){return k.trigger("down",[Ha(n).clientX,Ha(n).clientY,n])&&n.give}function d(n,o){return!o||k.trigger("wheel",[o,n])&&n.give}var e=c(H);c(K);k.attr(ga);var h=k.parent(),j=f(Ra,l(a.area||h));C(B+s(x),{MozUserSelect:ya,WebkitUserSelect:ya});if(ha){C(B+s(x),{WebkitBackgroundSize:c(ca).length?p:c(hb)&&A(c(hb))+B+A(e.y)||A(e.x*a.footage)+B+A(e.y*c(gb)*(a.rows||1)*(a.directional?2:1))});j.bind(bc,
b)}else{e=a.cursor==Kb?cc:a.cursor||dc;var m=a.cursor==Kb?ec+B+"!important":p;C(J,{cursor:Za(e)});C(s(nb),{cursor:"wait"});C(s(Ta)+ea+s(Ta)+" *",{cursor:Za(m||e)},true);j.bind(a.wheelable?fc:J,d).bind(a.clickfree?gc:hc,b).bind("dragstart",function(){return false})}a.hint&&j.attr("title",a.hint);a.indicator&&h.append(za("x"));a.rows>1&&a.indicator&&h.append(za("y"));a.monitor&&h.append(Lb=l(X(ua),{"class":Mb}))&&C(B+s(Mb),{position:Ua,left:0,top:0});C(B+s(Nb),{display:ya})},preload:function(){function b(F,
z){setTimeout(function(){z.parent().length&&z.attr({src:$a(F)})},(S-o.length)*2)}var d=c(H),e=k.parent(),h=c(ca),j=!h.length,m=c(K),n=q.preload[a.preload]||q.preload[q.def.preload],o=j?[c(fb)]:n(h.slice(0),a,c),S=o.length;f(T,j?0.5:0);h=[];e.addClass(nb).append(ma());f(ta,l("<"+ta+' type="text/css">'+C.rules.join("\n")+"</"+ta+">").prependTo(ob));for(k.trigger("stop");o.length;){n=a.path+o.shift();var L=d.x*(!j?1:a.footage),y=d.y*(!j?1:m/a.footage)*(!a.directional?1:2);L=l(X(db)).attr({"class":Nb,
width:L,height:y}).appendTo(e);L.bind("load error abort",function(){return!!l(this).parent().length&&k.trigger("preloaded")&&false});b(n,L);h.push(n)}f(Db,h)},preloaded:function(){var b=c(ca).length||1,d=f(T,bb(c(T)+1,b));if(d===b){k.parent().removeClass(nb).unbind(T,G.instance.preloaded);k.trigger("loaded")}d===1&&k.trigger("frameChange",[p,c(ba)])},loaded:function(){c(ca).length>1||k.css({backgroundImage:Ga(a.path+c(fb))}).attr({src:Za(ic)});c(kb)||f(da,a.velocity||0)},opening:function(){if(!a.opening)return k.trigger("openingDone");
f(Y,true);f(pb,!c(va));var b=a.entry||a.speed,d=c(w),e=a.opening;f(w,d-b*a.opening);f(la,ia(e*W(Z)))},openingDone:function(){f(na,false);f(Y,false);var b=oa+s(Y);U.unbind(b,G.pool[b]);if(a.delay>0)O=setTimeout(function(){k.trigger("play")},a.delay*1E3);else k.trigger("play")},play:function(b,d){d=f(va,d||c(va));a.duration&&f(Pa,ia(a.duration*W(Z)));f(N,d<0);b=f(na,!!d);f(pb,!b);qb()},pause:function(){f(na,false);E()},stop:function(){var b=f(pb,true);f(na,!b)},down:function(b,d,e,h){function j(n){return k.trigger("pan",
[Ha(n).clientX,Ha(n).clientY,n])&&n.give}function m(n){return k.trigger("up",[n])&&n.give}if(!(h&&h.button!=jc&&!a.clickfree))if(a.draggable){f(wa,c(ba));f(da,0);Va=Wa(c(Ja),d,e);ha||h&&h.preventDefault();E();Sa();P=false;l(Ob,$).addClass(Ta);ha?$.bind(kc,j).bind(lc+B+mc,m):(a.clickfree?c(Ra):$).bind(nc,j).bind(a.clickfree?oc:pc,m)}},up:function(){f(wa,false);f(xa,false);Q=f(da,!a.throwable?0:I(Aa[0]+Aa[1])/60)?1:0;E();Sa();l(Ob,$).removeClass(Ta);(a.clickfree?c(Ra):$).unbind(aa)},pan:function(b,
d,e,h){if(a.draggable&&rb){rb=false;E();b=ha&&!c(xa)&&a.rows<=1&&!a.orbital&&a.scrollable;var j={x:d-Va.x,y:e-Va.y};if(h&&b&&I(j.x)<I(j.y))return h.give=true;if(I(j.x)>0||I(j.y)>0){h&&(h.give=false);P=true;Va={x:d,y:e};h=c(Ja);b=c(La);var m=c(ja),n=f(w,Pb(m?e-b.y:d-b.x,c(Ma),h,c(Na),c(Oa),c(ka),m?e-b.y:d-b.x));f(xa,c(xa)||c(ba)!=c(wa));(j=Qb(m?j.y:j.x||0))&&f(N,j<0);if(a.orbital&&c(lb)){f(ja,I(e-b.y)>I(d-b.x));b=Wa(h,d,e)}if(a.rows>1){c(H);j=c(Bb);m=c(jb);var o=-m*j;f(Ba,q.math.envelope(e-b.y,m,j,
o,o+j,-1))}!(n%1)&&!a.loops&&Wa(h,d,e)}}},wheel:function(b,d,e){if(d){t=true;b=ia(fa.sqrt(I(d))/2);b=cb(b,d>0);d=0.0833*c(Ja);Wa(d);b&&f(N,b<0);f(da,0);f(w,Pb(b,c(Ma),d,c(Na),c(Oa),c(ka)));e&&e.preventDefault();e&&(e.give=false);E();k.trigger("up",[e])}},fractionChange:function(b,d,e){if(d!==p)return zb(f(w,d));b=1+Xa(e/c(Ka));d=a.rows>1;e=a.orbital;f(lb,!!e&&(b<=e||b>=a.footage-e+2));if(d)b+=(c(Ca)-1)*c(K);f(ba,b)},tierChange:function(b,d,e){if(d===p){b=f(Ca,M(Da(e,1,a.rows)));d=c(K);e=c(ba)%d||
d;f(ba,e+b*d-d)}},rowChange:function(b,d,e){if(d!==p)return f(Ca,d);f(Ba,1/(a.rows-1)*(e-1))},frameChange:function(b,d,e){if(d!==p)return zb(f(ba,d));this.className=this.className.replace(q.re.frame_klass,Cb+e);d=c(K);var h=e%d||d;b=!!c(T);var j=((e-h)/d+1-1)/(a.rows-1),m=M(Da(j,1,a.rows));b&&m===c(Ca)?c(Ba):f(Ba,j);j=bb((h-1)/(d-1),0.9999);h=c(Ca)*d-d;d=M(Da(j,h+1,h+d));h=I((c(w)||0)-j)<1/(c(K)-1);b&&d===e&&h?c(w):f(w,j);var n=a.footage;if(a.orbital&&c(ja)){e=a.inversed?n+1-e:e;e+=n}d=a.horizontal;
h=c(ca);var o=!h.length;m=c(H);if(o){if(a.stitched){e=f(ib,M(Da(j,0,c(Fb)))%a.stitched);e=[A(-e),A(0)]}else{b=e%n-1;b=b<0?n-1:b;j=Xa((e-0.1)/n);j+=a.rows>1?0:c(N)?0:c(gb);e=c(Eb);j=j*((d?m.y:m.x)+e);e=b*((d?m.x:m.y)+e);e=h.length?[0,0]:d?[A(-e),A(-j)]:[A(-j),A(-e)]}k.css({backgroundPosition:e.join(B)})}else{e=h[e-1];b&&k.attr({src:$a(a.path+e)})}},"fractionChange.indicator":function(b,d,e){if(d===p&&a.indicator){b=c(H);b=a.orbital&&c(ja)?b.y:b.x;var h=a.orbital?a.footage:a.images.length||c(K);d=a.indicator;
h=ia(b/h);b-=h;e=M(Da(e,0,b));e=!a.cw||a.stitched?e:b-e;za.$x.css(c(ja)?{left:0,top:A(e),bottom:Rb,width:d,height:h}:{bottom:0,left:A(e),top:Rb,width:h,height:d})}},"tierChange.indicator":function(b,d,e){if(d===p&&a.rows>1&&a.indicator){var h=c(H).y;b=a.indicator;d=ia(h/a.rows);h-=d;e=M(e*h);za.$y.css({left:0,top:e,width:b,height:d})}},"setup.annotations":function(){c(H);var b=k.parent();l.each(c(Qa),function(d,e){var h=typeof e.node==yb?l(e.node):e.node||{};h=h.jquery?h:l(X(ua),h);h=h.attr({id:d}).addClass(qc);
var j=e.image?l(X(db),e.image):l(),m=e.link?l(X("a"),e.link).click(function(){return false}):l();C(Fa(d),{display:ya,position:Ua},true);e.image||e.link&&h.append(m);e.link||e.image&&h.append(j);e.link&&e.image&&h.append(m.append(j));h.appendTo(b)})},"frameChange.annotations":function(b,d,e){var h=c(H),j=a.stitched,m=c(ib);c(T)&&d===p&&l.each(c(Qa),function(n,o){n=l(Fa(n));var S=o.start||1,L=o.end,y=e-1,F=o.at?o.at[y]=="+":false;y=o.at?y:y-S+1;var z=typeof o.x!=ab?o.x:o.x[y],Sb=typeof o.y!=ab?o.y:
o.y[y];o=z!==p&&Sb!==p&&(o.at?F:y>=0&&(!L||y<=L-S));if(j){S=z>j-h.x&&m>=0&&m<h.x;z=!(z<h.x&&m>j-h.x)?z:z+j;z=!S?z:z-j;z-=m}z={display:o?Jb:ya,left:A(z),top:A(Sb)};n.css(z)})},"up.annotations":function(b,d){if(!(P||t)){b=l(d.target);d=b.is("a")?b:b.parents("a");b=d.attr("href");d=d.attr("target")||"self";if(b)P=d=="_blank"?!!vb.open(b):!!(vb[d].location.href=b)}},"up.steppable":function(){P||t||k.trigger(c(La).x-k.offset().left>0.5*c(H).x?"stepRight":"stepLeft")},"stepLeft stepRight":function(){E()},
stepLeft:function(){f(N,false);f(w,c(w)-c(Ka)*c(ka))},stepRight:function(){f(N,true);f(w,c(w)+c(Ka)*c(ka))},"setup.fu":function(){f(ba,a.frame+(a.row-1)*c(K));k.trigger("preload")},"wheel.fu":function(){t=false},"clean.fu":function(){k.trigger("teardown")},"loaded.fu":function(){k.trigger("opening")}},pool:{"tick.reel.preload":function(){var b=c(H),d=sa(ma.$.css(eb)),e=c(ca).length||1,h=M(1/e*c(T)*b.x);ma.$.css({width:d+(h-d)/3+1});if(c(T)===e&&d>b.x-1){ma.$.fadeOut(300,function(){ma.$.remove()});
U.unbind(oa+s(Tb),G.pool[oa+s(Tb)])}},"tick.reel":function(b){var d=c(da),e=W(Z);if(Q){d=d-c(Hb)/e*Q;d=f(da,d>0.1?d:(Q=D=0))}a.monitor&&Lb.text(c(a.monitor));d&&Q++;D&&D++;Qb(0);rb=true;if(D&&!d)return pa(b);if(c(wa))return pa(b,E());if(!(c(la)>0)){if(!a.loops&&a.rebound){!D&&!(c(w)%1)?sb++:(sb=0);sb>=a.rebound*1E3/e&&f(N,!c(N))}b=c(ka)*cb(1,c(N));e=c(Pa);d=(!c(na)||!e?d:I(c(va))+d)/W(Z);f(w,c(w)-d*b);e=!a.duration?e:e>0&&f(Pa,e-1);!e&&c(na)&&k.trigger("stop")}},"tick.reel.opening":function(){if(c(Y)){var b=
(a.entry||a.speed)/W(Z)*(a.cw?-1:1),d=f(la,c(la)-1);f(w,c(w)+b);d||k.trigger("openingDone")}}}},pa=function(b,d){return b.stopImmediatePropagation()||d},D,Q=0,qb=function(){return D=0},E=function(){clearTimeout(O);U.unbind(oa+s(Y),G.pool[oa+s(Y)]);f(la,0);f(kb,true);return D=-a.timeout*W(Z)},P=false,t=false,O,Lb=l(),ma=function(){C(B+s(Ub),{position:Ua,left:0,top:c(H).y-a.preloader,height:a.preloader,overflow:mb,backgroundColor:"#000"});return ma.$=l(X(ua),{"class":Ub})},za=function(b){C(B+s(Vb)+
s(b),{position:Ua,width:0,height:0,overflow:mb,backgroundColor:"#000"});return za["$"+b]=l(X(ua),{"class":Vb+B+b})},C=function(b,d,e){function h(j){var m=[];l.each(j,function(n,o){m.push(n.replace(/([A-Z])/g,"-$1").toLowerCase()+":"+A(o)+";")});return"{"+m.join(J)+"}"}e=e?J:c(Gb);b=b.replace(/^/,e).replace(ea,ea+e);return C.rules.push(b+h(d))&&d},sb=0,Va={x:0,y:0},Qb=function(b){return Aa.push(b)&&Aa.shift()&&b},Sa=function(){return Aa=[0,0]},Aa=Sa(),Pb=a.graph||q.math[a.loops?"hatch":"envelope"],
Wa=function(b,d,e){var h=f(Ma,c(w));f(jb,c(Ba));f(Na,a.loops?0:-h*b);f(Oa,a.loops?b:b-h*b);return d&&f(La,{x:d,y:e})||p},rb=true,$=U;try{if(U[0]!=top.document)$=U.add(top.document)}catch(tc){}top===self?l():function(b){l("iframe",$.last()).each(function(){try{if(l(this).contents().find(ob).html()==l(ob).html())return(b=l(this))&&false}catch(d){}});return b}();C.rules=[];G.setup()});Ya=Ya||function k(){var f=+new Date,c=W(Z);if(!c)return Ya=null;U.trigger(oa);q.cost=(+new Date+q.cost-f)/2;return Ya=
setTimeout(k,xb(4,1E3/c-q.cost))}();return l(R)}else if(typeof u=="string")if(g.length==1){v=r[u];i.trigger("recall",[u,v]);return v}else{if(v!==p){q.normal[u]&&(v=q.normal[u](v,r));if(r[u]!==v)i.trigger(u+"Change",[p,r[u]=v])}return i.trigger("store",[u,v])}},unreel:function(){return this.trigger("teardown")}},re:{image:/^(.*)\.(jpg|jpeg|png|gif)\??.*$/,touchy_agent:/iphone|ipod|ipad|android|fennec|rim tablet/i,lazy_agent:/\(iphone|ipod|android|fennec|blackberry/i,frame_klass:/frame-\d+/,sequence:/(^[^#|]*([#]+)[^#|]*)($|[|]([0-9]+)\.\.([0-9]+))($|[|]([0-9]+)$)/},
cdn:"http://code.vostrel.cz/",math:{envelope:function(g,i,r,u,v,a){return i+ra(u,v,-g*a)/r},hatch:function(g,i,r,u,v,a){g=(g<u?v:0)+g%v;g=i+-g*a/r;return g-Xa(g)},interpolate:function(g,i,r){return i+g*(r-i)}},preload:{fidelity:function(g,i,r){function u(f,c,G){function pa(O){for(;!(O>=1&&O<=E);)O+=O<1?+E:-E;return k[G+O]||(k[G+O]=!!D.push(O))}if(!f.length)return[];var D=[],Q=4*c,qb=i.frame,E=f.length;c=true;for(var P=E/Q,t=0;t<Q;t++)pa(qb+M(t*P));for(;P>1;){t=0;Q=D.length;P/=2;for(c=!c;t<Q;t++)pa(D[t]+
(c?1:-1)*M(P))}for(t=0;t<=E;t++)pa(t);for(t=0;t<D.length;t++)D[t]=f[D[t]-1];return D}var v=i.orbital?2:i.rows||1,a=i.orbital?i.footage:r(K);r=(i.row-1)*a;var R=[].concat(g),k=new Array(g.length+1);g=v<2?[]:R.slice(r,r+a);return u(g,1,r).concat(u(R,v,0))},linear:function(g){return g}},normal:{fraction:function(g,i){return i[Ia].loops?g-Xa(g):ra(0,1,g)},tier:function(g){return ra(0,1,g)},row:function(g,i){return M(ra(1,i[Ia].rows,g))},frame:function(g,i){var r=i[Ia];i=i[K]*(r.orbital?2:r.rows||1);g=
M(r.loops?g%i||i:ra(1,i,g));return g<0?g+i:g}},sequence:function(g,i){if(g.length<=1)return i.images;var r=[],u=g[1],v=g[2],a=+g[4]||1,R=i.orbital?2:i.rows||1;i=i.orbital?i.footage:i.frames;R=+(g[5]||R*i);g=+g[7]||1;for(i=0;i<R;){r.push(u.replace(v,$b(a+i+J,v.length,"0")));i+=g}return r},instances:l(),leader:W,cost:0},U=l(Ea);Ea=+l.browser.version.split(s()).slice(0,2).join(s());var tb=l.browser.msie,rc=!tb||tb&&Ea>6,Wb=navigator.userAgent,Ya,x="reel",ac=x+"-overlay",Vb=x+"-indicator",Ub=x+"-preloader",
Nb=x+"-cached",Mb=x+"-monitor",qc=x+"-annotation",Ta=x+"-panning",nb=x+"-loading",Cb="frame-",fa=Math,M=fa.round,Xa=fa.floor,ia=fa.ceil,bb=fa.min,xb=fa.max,I=fa.abs,sa=parseInt,Da=q.math.interpolate,Qa="annotations",Ra="area",Rb="auto",Ib="backup",N="backwards",Ka="bit",Hb="brake",Db="cached",lb="center",wa="clicked",La="clicked_location",Ma="clicked_on",jb="clicked_tier",ka="cwish",H="dimensions",w="fraction",ba="frame",K="frames",Oa="hi",mb="hidden",fb="image",ca="images",Y="opening",la=Y+"_ticks",
Na="lo",Ia="options",na="playing",T="preloaded",xa="reeling",kb="reeled",Ja="revolution",Bb="revolution_y",Ca="row",gb="rows",Eb="spacing",va="speed",Gb="stage",hb="stitched",ib="stitched_shift",Fb="stitched_travel",pb="stopped",ta="style",Z="tempo",Pa="ticks",Ba="tier",da="velocity",ja="vertical",V=s(x),aa=s("pan")+V,hc="mousedown"+V,gc="mouseenter"+V,oc="mouseleave"+aa,nc="mousemove"+aa,pc="mouseup"+aa,fc="mousewheel"+V,oa="tick"+V,mc="touchcancel"+aa,lc="touchend"+aa,bc="touchstart"+V,kc="touchmove"+
aa,J="",B=" ",ea=",",Ua="absolute",Jb="block",qa="@CDN@",ua="div",Kb="hand",ob="head",Ab="height",Ob="html",ga="id",db="img",ub="jquery."+x,ya="none",ab="object",Tb="preload",yb="string",eb="width",ic=rc?Zb("CAAIAIAAAAAAAAAAACH5BAEAAAAALAAAAAAIAAgAAAIHhI+py+1dAAA7"):qa+"blank.gif",dc=Ga(qa+ub+".cur")+ea+"move",cc=Ga(qa+ub+"-drag.cur")+ea+"move",ec=Ga(qa+ub+"-drag-down.cur")+ea+"move",ha=q.touchy=q.re.touchy_agent.test(Wb);q.lazy=q.re.lazy_agent.test(Wb);var jc=ha?p:tb&&Ea<=8?1:0,sc=l.cleanData;l.cleanData=
function(g){sc(l(g).each(function(){l(this).triggerHandler("clean")}))};l.extend(l.fn,q.fn)}}(jQuery,window,document);

*/
// IMAGE SLIDER
(function($) {

    $.fn.tabulate = function() {
        var tabs = this.children();
        var tabsContainer = this.next();
        var tabsContent = tabsContainer.children();

        tabs.eq(0).addClass('active');
        tabsContent.eq(0).addClass('active');

        tabs.delegate('a', 'click', function(e) {
            e.preventDefault();
            var index = $(this).parent().prevAll().length;
            tabs.removeClass('active');
            tabsContent.removeClass('active').hide();

            tabs.eq(index).addClass('active');
            tabsContent.eq(index).addClass('active').show();
        });
    };

    $.fn.gallery = function() {
        this.each(function(i, e) {
            var self = $(e);
            var items = self.find('.slides-ctn').children();
            var navItems = self.find('.slide-nav > ul > li');
            var prevLink = self.find('.slide-prev');
            var nextLink = self.find('.slide-next');

            activateItem(0);

            navItems.delegate('a', 'click', function(e) {
                e.preventDefault();
                var index = $(this).parent().prevAll().length;
                activateItem(index);
            });

            prevLink.click(function(e) {
                e.preventDefault();
                var index = items.filter('.active').prevAll().length;
                index--;
                if (index < 0) {
                    index = items.length - 1;
                }
                activateItem(index);
            });

            nextLink.click(function(e) {
                e.preventDefault();
                var index = items.filter('.active').prevAll().length;
                index++;
                if (index >= items.length) {
                    index = 0;
                }
                activateItem(index);
            });

            function activateItem(index) {
                var oldItem = items.filter('.active').children();
                if (oldItem.hasClass('slide-video')) {
                    oldItem.jPlayer("pause");
                }

                navItems.removeClass('active');
                items.removeClass('active').hide();

                navItems.eq(index).addClass('active');

                var item = items.eq(index).find('.item');
                if (item.hasClass('slide-video') && !item.data('initialized')) {
                    var media = {
                        m4v: item.attr('data-mp4'),
                        ogv: item.attr('data-ogv'),
                        webmv: item.attr('data-webm'),
                        poster: item.attr('data-poster')
                    };

                    var videosize = {
                        width: "100%",
                        height: "100%"
                    };
                    var constrolsSelector = '#' + item.siblings('.slide-controls').attr('id');

                    item.jPlayer({
                        swfPath: 'js/libs/',
                        solution: 'html, flash',
                        supplied: 'm4v, ogv, webmv',
                        preload: 'metadata',
                        size: videosize,
                        volume: 1,
                        verticalVolume: true,
                        backgroundColor: '#000000',
                        cssSelectorAncestor: constrolsSelector,
                        cssSelector: {
                            videoPlay: '.jp-video-play',
                            play: '.jp-play',
                            pause: '.jp-pause',
                            stop: '.jp-stop',
                            seekBar: '.jp-seek-bar',
                            playBar: '.jp-play-bar',
                            mute: '.jp-mute',
                            unmute: '.jp-unmute',
                            volumeBar: '.jp-volume-bar',
                            volumeBarValue: '.jp-volume-bar-value',
                            volumeMax: '.jp-volume-max',
                            currentTime: '.jp-current-time',
                            duration: '.jp-duration',
                            fullScreen: '.jp-full-screen',
                            restoreScreen: '.jp-restore-screen',
                            repeat: '.jp-repeat',
                            repeatOff: '.jp-repeat-off',
                            gui: '.jp-gui',
                            noSolution: '.jp-no-solution'
                        },
                        ready: function() {
                            var video = $(this);
                            $(this).jPlayer("setMedia", media);

                        }
                    });

                    items.eq(index).find('.full-screen').click(function(e) {
                        e.preventDefault();
                        var elem = item.find('video')[0];

                        if (!item.hasClass('isFullScreen')) {
                            if (elem.requestFullScreen) {
                                elem.requestFullScreen();
                            } else if (elem.mozRequestFullScreen) {
                                elem.mozRequestFullScreen();
                            } else if (elem.webkitRequestFullScreen) {
                                elem.webkitRequestFullScreen();
                            } else if (elem.msRequestFullScreen) {
                                elem.msRequestFullScreen();
                            } else if (elem.oRequestFullScreen) {
                                elem.oRequestFullScreen();
                            } else {
                                var videoCtn = item.parents('.video-wrapper')
                                $('body').append(videoCtn);
                                videoCtn.css({
                                    'position': 'fixed'
                                });

                                if (!item.data("jPlayer").status.paused) {
                                    item.jPlayer('play');
                                }
                            }
                            item.addClass('isFullScreen');
                        } else {
                            if (elem.cancelFullScreen) {
                                elem.CancelFullScreen();
                            } else if (elem.mozCancelFullScreen) {
                                elem.mozCancelFullScreen();
                            } else if (elem.webkitCancelFullScreen) {
                                elem.webkitCancelFullScreen();
                            } else if (elem.msCancelFullScreen) {
                                elem.msCancelFullScreen();
                            } else if (elem.oCancelFullScreen) {
                                elem.oCancelFullScreen();
                            } else {
                                var videoPrevCtn = items.eq(index);
                                var videoCtn = item.parents('.video-wrapper');
                                videoPrevCtn.append(videoCtn);
                                videoCtn.css({
                                    'position': 'absolute'
                                });

                                if (!item.data("jPlayer").status.paused) {
                                    item.jPlayer('play');
                                }
                            }
                            item.removeClass('isFullScreen');
                        }
                    });

                    item.data('initialized', true);
                }
                items.eq(index).addClass('active').show();


            }
        });
    };
    $.fn.productSlider = function() {
        this.each(function(i, e) {
            var self = $(e);
            self.find(".tabs").tabulate();
            self.find(".slide-group").gallery();
        });
        return this;
    };
})(jQuery);

// QUANTITY SELECT POPIN
(function($) {
    $.fn.quantity = function(options) {

        var settings = $.extend({
            'leftDifference': 0,
            'topDifference': 0
        }, options);


        var func = (function(self) {
            return function() {
                $('.quantity-popin').remove();
                self.removeClass('active');
            };
        })(this);

        $('body').click(func);

        var popin = '<div class="quantity-popin">' +
            '<div class="quantity-popin-content">' +
            '<div class="quantity-select">' +
            '<table>' +
            '<tr>' +
            '<td><a href="#">0</a></td>' +
            '<td><a href="#">10</a></td>' +
            '<td><a href="#">20</a></td>' +
            '<td><a href="#">30</a></td>' +
            '<td><a href="#">40</a></td>' +
            '</tr>' +
            '<tr>' +
            '<td><a href="#">50</a></td>' +
            '<td><a href="#">60</a></td>' +
            '<td><a href="#">70</a></td>' +
            '<td><a href="#">80</a></td>' +
            '<td><a href="#">90</a></td>' +
            '</tr>' +
            '<tr>' +
            '<td><a href="#">100</a></td>' +
            '<td><a href="#">200</a></td>' +
            '<td><a href="#">300</a></td>' +
            '<td><a href="#">400</a></td>' +
            '<td><a href="#">500</a></td>' +
            '</tr>' +
            '</table>' +
            '</div>' +
            '<div class="separator"></div>' +
            '<p>Ou saisir une autre quantité</p>' +
            '<div class="separator"></div>' +
            '<input type="text" placeholder="510, 520..." /><input type="submit" class="submit-btn" value="OK" />' +
            '</div>' +
            '<div class="arrow"></div>' +
            '</div>';

        if ($('.quantity-popin').length == 0) {
            $('body').append(popin);
            $('.quantity-popin').addClass('left right').css({
                'display': 'none'
            }).removeClass('left right');
        }

        this.click(function(e) {
            e.stopPropagation();
            e.preventDefault();

            var direction = undefined;

            if (!$(this).hasClass('active')) {

                $.openExclusive(function() {
                    $('.quantity-popin').remove();
                    $('.quantity-btn').removeClass('active');
                });

                var elmPos = $(this).offset();
                var elmWidth = $(this).width();

                $('body').append(popin);
                var actualPopin = $('.quantity-popin');

                actualPopin.click(function(e) {
                    e.stopPropagation();
                });

                if ($(this).hasClass('left')) {
                    actualPopin.find('.arrow').addClass('right');
                    actualPopin.css({
                        'top': elmPos.top - 80 + settings.topDifference,
                        'left': elmPos.left - 180 + settings.leftDifference
                    });
                } else if ($(this).hasClass('right')) {
                    actualPopin.find('.arrow').addClass('left');
                    actualPopin.css({
                        'top': elmPos.top - 80 + settings.topDifference,
                        'left': elmPos.left + elmWidth + 15 + settings.leftDifference
                    });
                } else {
                    actualPopin.css({
                        'top': elmPos.top - 185 + settings.topDifference,
                        'left': elmPos.left + (elmWidth / 2) - 88 + settings.leftDifference
                    });
                }

                actualPopin.find('input:text').keydown(function() {
                    var self = $(this);
                    setTimeout(function() {
                        if (self.val() != '') {
                            self.siblings('.submit-btn').addClass('active');
                        } else {
                            self.siblings('.submit-btn').removeClass('active');
                        }
                    }, 10);
                });

                $(this).addClass('active');
            }
        });
    };
})(jQuery);

// TOOLTIPS
(function($) {
    $.fn.tooltip = function() {
        var tip = $('.tooltip');

        this.hover(function() {
            var tipText = $(this).attr('data-text');
            var elmPos = $(this).offset();

            clearTimeout($(this).data('timeoutId'));

            if ($(this).hasClass('left')) {
                tip.html(tipText + '<span class="border"></span>');
                var topPos = (elmPos.top + ($(this).height() / 2) - 31) + 'px';
                var leftPos = (elmPos.left + ($(this).width() / 2) - (tip.width() + 15)) + 'px';
                tip.addClass('right').css({
                    'top': topPos,
                    'left': leftPos,
                    'display': 'block'
                });
            } else {
                var topPos = (elmPos.top + ($(this).height() / 2) - 31) + 'px';
                var leftPos = (elmPos.left + ($(this).width() / 2)) + 'px';
                tip.html(tipText + '<span class="border"></span>').css({
                    'top': topPos,
                    'left': leftPos,
                    'display': 'block'
                });

            }
        }, function() {
            if (!tip.is(":hover"))
                tip.removeClass('right').hide();
        });
    }
})(jQuery);

// POPINS
(function($) {
    var currentCallback = undefined;

    $.openExclusive = function(callback) {
        if (currentCallback) {
            currentCallback();
        }
        currentCallback = callback;
    }
    $.resetExclusive = function() {
        currentCallback = undefined;
    }
})(jQuery);




/**
 * Copyright (c) 2007-2012 Ariel Flesler - aflesler(at)gmail(dot)com | http://flesler.blogspot.com
 * Dual licensed under MIT and GPL.
 * @author Ariel Flesler
 * @version 1.4.3.1
 */
;
(function($) {
    var h = $.scrollTo = function(a, b, c) {
        $(window).scrollTo(a, b, c)
    };
    h.defaults = {
        axis: 'xy',
        duration: parseFloat($.fn.jquery) >= 1.3 ? 0 : 1,
        limit: true
    };
    h.window = function(a) {
        return $(window)._scrollable()
    };
    $.fn._scrollable = function() {
        return this.map(function() {
            var a = this,
                isWin = !a.nodeName || $.inArray(a.nodeName.toLowerCase(), ['iframe', '#document', 'html', 'body']) != -1;
            if (!isWin) return a;
            var b = (a.contentWindow || a).document || a.ownerDocument || a;
            return /webkit/i.test(navigator.userAgent) || b.compatMode == 'BackCompat' ? b.body : b.documentElement
        })
    };
    $.fn.scrollTo = function(e, f, g) {
        if (typeof f == 'object') {
            g = f;
            f = 0
        }
        if (typeof g == 'function') g = {
            onAfter: g
        };
        if (e == 'max') e = 9e9;
        g = $.extend({}, h.defaults, g);
        f = f || g.duration;
        g.queue = g.queue && g.axis.length > 1;
        if (g.queue) f /= 2;
        g.offset = both(g.offset);
        g.over = both(g.over);
        return this._scrollable().each(function() {
            if (e == null) return;
            var d = this,
                $elem = $(d),
                targ = e,
                toff, attr = {},
                win = $elem.is('html,body');
            switch (typeof targ) {
                case 'number':
                case 'string':
                    if (/^([+-]=)?\d+(\.\d+)?(px|%)?$/.test(targ)) {
                        targ = both(targ);
                        break
                    }
                    targ = $(targ, this);
                    if (!targ.length) return;
                case 'object':
                    if (targ.is || targ.style) toff = (targ = $(targ)).offset()
            }
            $.each(g.axis.split(''), function(i, a) {
                var b = a == 'x' ? 'Left' : 'Top',
                    pos = b.toLowerCase(),
                    key = 'scroll' + b,
                    old = d[key],
                    max = h.max(d, a);
                if (toff) {
                    attr[key] = toff[pos] + (win ? 0 : old - $elem.offset()[pos]);
                    if (g.margin) {
                        attr[key] -= parseInt(targ.css('margin' + b)) || 0;
                        attr[key] -= parseInt(targ.css('border' + b + 'Width')) || 0
                    }
                    attr[key] += g.offset[pos] || 0;
                    if (g.over[pos]) attr[key] += targ[a == 'x' ? 'width' : 'height']() * g.over[pos]
                } else {
                    var c = targ[pos];
                    attr[key] = c.slice && c.slice(-1) == '%' ? parseFloat(c) / 100 * max : c
                }
                if (g.limit && /^\d+$/.test(attr[key])) attr[key] = attr[key] <= 0 ? 0 : Math.min(attr[key], max);
                if (!i && g.queue) {
                    if (old != attr[key]) animate(g.onAfterFirst);
                    delete attr[key]
                }
            });
            animate(g.onAfter);

            function animate(a) {
                $elem.animate(attr, f, g.easing, a && function() {
                    a.call(this, e, g)
                })
            }
        }).end()
    };
    h.max = function(a, b) {
        var c = b == 'x' ? 'Width' : 'Height',
            scroll = 'scroll' + c;
        if (!$(a).is('html,body')) return a[scroll] - $(a)[c.toLowerCase()]();
        var d = 'client' + c,
            html = a.ownerDocument.documentElement,
            body = a.ownerDocument.body;
        return Math.max(html[scroll], body[scroll]) - Math.min(html[d], body[d])
    };

    function both(a) {
        return typeof a == 'object' ? a : {
            top: a,
            left: a
        }
    }
})(jQuery);