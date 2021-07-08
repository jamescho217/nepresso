//<![CDATA[
window.scInitTime0 = new Date().getTime();
var sessionCamRecorder;

function SessionCamRecorder(lg, at, logStats) {
    this.lg = lg;
    this.at = at;
    this.logStats = logStats;
    (function() {
        var doc = document,
            win = window,
            div = doc.createElement("div"),
            _a = Array.prototype,
            filter = _a.filter,
            indexOf = _a.indexOf,
            map = _a.map,
            push = _a.push,
            reverse = _a.reverse,
            slice = _a.slice,
            some = _a.some,
            splice = _a.splice;
        var idRe = /^#[\w-]*$/,
            classRe = /^\.[\w-]*$/,
            htmlRe = /<(.|[\r\n])+>/,
            tagRe = /^\w+$/,
            filterPrototypeIsNative = (/\{\s*\[native code\]\s*\}/).test(Array.prototype.filter);
        var rootCash;

        function find(selector, context, customSelectorArr) {
            if (context === void 0) {
                context = doc
            }
            if (customSelectorArr === undefined) {
                customSelectorArr = []
            }
            try {
                return context !== doc && context.nodeType !== 1 ? [] : classRe.test(selector) ? context.getElementsByClassName(selector.slice(1)) : tagRe.test(selector) ? context.getElementsByTagName(selector) : context.querySelectorAll(selector)
            } catch (err) {
                cash.Find(selector, context, customSelectorArr);
                return customSelectorArr
            }
        }
        var Cash = function() {
            function Cash(selector, context, customSelectorArr) {
                if (context === void 0) {
                    context = doc
                }
                if (!selector) {
                    return
                }
                if (isCash(selector)) {
                    return selector
                }
                var eles = selector;
                customSelectorArr = [];
                if (isString(selector)) {
                    var ctx = isCash(context) ? context[0] : context;
                    if (ctx !== doc) {
                        eles = htmlRe.test(selector) ? parseHTML(selector) : find(selector, ctx, customSelectorArr)
                    } else {
                        eles = idRe.test(selector) ? document.getElementById(selector.slice(1)) : htmlRe.test(selector) ? parseHTML(selector) : find(selector, ctx, customSelectorArr)
                    }
                    this.selector = selector;
                    if (!eles) {
                        return
                    }
                } else {
                    if (isFunction(selector)) {
                        return this.ready(selector)
                    }
                }
                if (eles.nodeType || eles === win || eles.nodeName || eles.className) {
                    eles = [eles]
                }
                this.length = eles.length;
                for (var i = 0, l = this.length; i < l; i++) {
                    this[i] = eles[i]
                }
            }
            Cash.prototype.init = function(selector, context) {
                return new Cash(selector, context)
            };
            return Cash
        }();
        var cash = Cash.prototype.init;
        cash.fn = cash.prototype = Cash.prototype;
        Cash.prototype.length = 0;
        Cash.prototype.splice = splice;
        Cash.prototype.push = push;
        rootCash = cash(document);
        Cash.prototype.get = function(index) {
            if (index === undefined) {
                return slice.call(this)
            }
            return this[index < 0 ? index + this.length : index]
        };
        Cash.prototype.eq = function(index) {
            return cash(this.get(index))
        };
        Cash.prototype.first = function() {
            return this.eq(0)
        };
        Cash.prototype.last = function() {
            return this.eq(-1)
        };
        Cash.prototype.map = function(callback) {
            return cash(map.call(this, function(ele, i) {
                return callback.call(ele, i, ele)
            }))
        };
        Cash.prototype.slice = function() {
            return cash(slice.apply(this, arguments))
        };
        var dashAlphaRe = /-([a-z])/g;

        function camelCaseReplace(all, letter) {
            return letter.toUpperCase()
        }

        function camelCase(str) {
            return str.replace(dashAlphaRe, camelCaseReplace)
        }
        cash.camelCase = camelCase;

        function each(arr, callback) {
            for (var i = 0, l = arr.length; i < l; i++) {
                if (callback.call(arr[i], i, arr[i]) === false) {
                    break
                }
            }
        }
        cash.each = each;
        Cash.prototype.each = function(callback) {
            each(this, callback);
            return this
        };
        Cash.prototype.removeProp = function(prop) {
            return this.each(function(i, ele) {
                delete ele[prop]
            })
        };

        function extend(target) {
            var objs = [];
            for (var _i = 1; _i < arguments.length; _i++) {
                objs[_i - 1] = arguments[_i]
            }
            var args = arguments,
                length = args.length;
            for (var i = length < 2 ? 0 : 1; i < length; i++) {
                for (var key in args[i]) {
                    target[key] = args[i][key]
                }
            }
            return target
        }
        Cash.prototype.extend = function(plugins) {
            return extend(cash.fn, plugins)
        };
        cash.extend = extend;
        var guid = 1;
        cash.guid = guid;

        function matches(ele, selector) {
            var matches;
            matches = ele && (ele.matches || ele.webkitMatchesSelector || ele.mozMatchesSelector || ele.msMatchesSelector || ele.oMatchesSelector);
            if (matches) {
                try {
                    return !!matches && matches.call(ele, selector)
                } catch (e) {
                    matches = ele && cash.cashMatches;
                    return !!matches && cash.cashMatches(ele, selector)
                }
            } else {
                matches = ele && cash.cashMatches;
                return !!matches && cash.cashMatches(ele, selector)
            }
        }
        cash.matches = matches;

        function pluck(arr, prop, deep) {
            var plucked = [];
            for (var i = 0, l = arr.length; i < l; i++) {
                var val_1 = arr[i][prop];
                while (val_1 != null) {
                    plucked.push(val_1);
                    if (!deep) {
                        break
                    }
                    val_1 = val_1[prop]
                }
            }
            return plucked
        }
        cash.each(("blur focus focusin focusout load resize scroll unload click dblclick mousedown mouseup mousemove mouseover mouseout mouseenter mouseleave change select submit keydown keypress keyup error").split(" "), function(i, name) {
            cash.fn[name] = function(data, fn) {
                if (fn == null) {
                    fn = data;
                    data = null
                }
                return arguments.length > 0 ? this.bind(name, data, fn) : this.trigger(name, data)
            }
        });

        function isCash(x) {
            return x instanceof Cash
        }

        function isFunction(x) {
            return typeof x === "function"
        }

        function isString(x) {
            return typeof x === "string"
        }

        function isNumeric(x) {
            return !isNaN(parseFloat(x)) && isFinite(x)
        }

        function inArray(ele, array) {
            if (array.indexOf) {
                return array.indexOf(ele)
            }
            for (var i = 0, length = array.length; i < length; i++) {
                if (array[i] === ele) {
                    return i
                }
            }
            return -1
        }

        function browser(nav) {
            var brwsr = navigator.userAgent,
                brwsrName = brwsr.match(/opera/i) || brwsr.match(/opr/i) || brwsr.match(/msie/i) || brwsr.match(/Trident/i) || brwsr.match(/firefox/i) || brwsr.indexOf("Edge") !== -1 || brwsr.match(/chrome/i) || brwsr.match(/safari/i);
            if (brwsrName) {
                if (brwsr.indexOf("Edge") !== -1) {
                    return "Edge"
                } else {
                    return brwsrName
                }
            }
        }

        function contains(a, b) {
            return a !== b && (a.contains ? a.contains(b) : true)
        }

        function isWindow(obj) {
            return obj != null && obj === obj.window
        }
        var isArray = Array.isArray;
        cash.isFunction = isFunction;
        cash.isString = isString;
        cash.isNumeric = isNumeric;
        cash.inArray = inArray;
        cash.browser = browser;
        cash.contains = contains;
        cash.isWindow = isWindow;
        cash.isArray = isArray;
        Cash.prototype.prop = function(prop, value) {
            if (!prop) {
                return
            }
            if (isString(prop)) {
                if (arguments.length < 2) {
                    return this[0] && this[0][prop]
                }
                return this.each(function(i, ele) {
                    ele[prop] = value
                })
            }
            for (var key in prop) {
                this.prop(key, prop[key])
            }
            return this
        };

        function getCompareFunction(comparator) {
            return isString(comparator) ? function(i, ele) {
                return matches(ele, comparator)
            } : isFunction(comparator) ? comparator : isCash(comparator) ? function(i, ele) {
                return comparator.is(ele)
            } : function(i, ele) {
                return ele === comparator
            }
        }
        Cash.prototype.filter = function(comparator) {
            if (!comparator) {
                return cash()
            }
            var compare = getCompareFunction(comparator);
            if (filterPrototypeIsNative) {
                return cash(filter.call(this, function(ele, i) {
                    return compare.call(ele, i, ele)
                }))
            } else {
                return cash(scFilter.call(this, function(ele, i) {
                    return compare.call(ele, i, ele)
                }))
            }
        };

        function filtered(collection, comparator) {
            return !comparator || !collection.length ? collection : collection.filter(comparator)
        }
        var splitValuesRe = /\S+/g;

        function getSplitValues(str) {
            return isString(str) ? str.match(splitValuesRe) || [] : []
        }
        Cash.prototype.hasClass = function(cls) {
            var className = " " + cls + " ";
            for (var i = 0, l = this.length; i < l; i++) {
                if ((" " + this[i].className + " ").replace(/[\n\t\r]/g, " ").indexOf(className) > -1) {
                    return true
                }
            }
            return false
        };
        Cash.prototype.removeAttr = function(attr) {
            var attrs = getSplitValues(attr);
            if (!attrs.length) {
                return this
            }
            return this.each(function(i, ele) {
                each(attrs, function(i, a) {
                    ele.removeAttribute(a)
                })
            })
        };

        function attr(attr, value) {
            if (!attr) {
                return ""
            }
            if (isString(attr)) {
                var ele = this[0];
                if (arguments.length < 2) {
                    if (!ele) {
                        return ""
                    }
                    var value_1 = ele.getAttribute(attr);
                    return value_1 ? value_1 : ""
                }
                if (value === null || value === undefined) {
                    return this.removeAttr(attr)
                }
                return this.each(function(i, ele) {
                    ele.setAttribute(attr, value)
                })
            }
            for (var key in attr) {
                this.attr(key, attr[key])
            }
            return this
        }
        Cash.prototype.attr = attr;
        Cash.prototype.toggleClass = function(cls, force) {
            var classes = getSplitValues(cls),
                isForce = force !== undefined;
            if (!classes.length) {
                return this
            }
            return this.each(function(i, ele) {
                each(classes, function(i, c) {
                    if (isForce) {
                        force ? ele.classList.add(c) : ele.classList.remove(c)
                    } else {
                        ele.classList.toggle(c)
                    }
                })
            })
        };
        Cash.prototype.addClass = function(cls) {
            return this.toggleClass(cls, true)
        };
        Cash.prototype.removeClass = function(cls) {
            return !arguments.length ? this.attr("class", "") : this.toggleClass(cls, false)
        };

        function scFilter(func, thisArg) {
            if (!((typeof func === "Function" || typeof func === "function") && this)) {
                throw new TypeError()
            }
            var len = this.length >>> 0,
                t = this,
                c = 0,
                i = -1,
                kValue, res = [];
            if (thisArg === undefined) {
                while (++i !== len) {
                    if (i in this) {
                        kValue = t[i];
                        if (func(t[i], i, t)) {
                            res[c++] = kValue
                        }
                    }
                }
            } else {
                while (++i !== len) {
                    if (i in this) {
                        kValue = t[i];
                        if (func.call(thisArg, t[i], i, t)) {
                            res[c++] = kValue
                        }
                    }
                }
            }
            res.length = c;
            return res
        }
        cash.scFilter = scFilter;

        function unique(arr) {
            if (filterPrototypeIsNative) {
                return arr.length > 1 ? filter.call(arr, function(item, index, self) {
                    return indexOf.call(self, item) === index
                }) : arr
            } else {
                return arr.length > 1 ? cash(scFilter.call(arr, function(item, index, self) {
                    return indexOf.call(self, item) === index
                })) : arr
            }
        }
        cash.unique = unique;
        Cash.prototype.add = function(selector, context) {
            return cash(unique(this.get().concat(cash(selector, context).get())))
        };

        function computeStyle(ele, prop, isVariable) {
            if (ele.nodeType !== 1 || !prop) {
                return
            }
            var style = win.getComputedStyle(ele, null);
            return prop ? isVariable ? style.getPropertyValue(prop) || undefined : style[prop] : style
        }

        function computeStyleInt(ele, prop) {
            return parseInt(computeStyle(ele, prop), 10) || 0
        }
        var cssVariableRe = /^--/;

        function isCSSVariable(prop) {
            return cssVariableRe.test(prop)
        }
        var prefixedProps = {},
            style = div.style,
            vendorsPrefixes = ["webkit", "moz", "ms", "o"];

        function getPrefixedProp(prop, isVariable) {
            if (isVariable === void 0) {
                isVariable = isCSSVariable(prop)
            }
            if (isVariable) {
                return prop
            }
            if (!prefixedProps[prop]) {
                var propCC = camelCase(prop),
                    propUC = "" + propCC.charAt(0).toUpperCase() + propCC.slice(1),
                    props = (propCC + " " + vendorsPrefixes.join(propUC + " ") + propUC).split(" ");
                each(props, function(i, p) {
                    if (p in style) {
                        prefixedProps[prop] = p;
                        return false
                    }
                })
            }
            return prefixedProps[prop]
        }
        cash.prefixedProp = getPrefixedProp;
        var numericProps = {
            animationIterationCount: true,
            columnCount: true,
            flexGrow: true,
            flexShrink: true,
            fontWeight: true,
            lineHeight: true,
            opacity: true,
            order: true,
            orphans: true,
            widows: true,
            zIndex: true
        };

        function getSuffixedValue(prop, value, isVariable) {
            if (isVariable === void 0) {
                isVariable = isCSSVariable(prop)
            }
            return !isVariable && !numericProps[prop] && isNumeric(value) ? value + "px" : value
        }

        function css(prop, value) {
            if (isString(prop)) {
                var isVariable_1 = isCSSVariable(prop);
                prop = getPrefixedProp(prop, isVariable_1);
                if (arguments.length < 2) {
                    return this[0] && computeStyle(this[0], prop, isVariable_1)
                }
                if (!prop) {
                    return this
                }
                value = getSuffixedValue(prop, value, isVariable_1);
                return this.each(function(i, ele) {
                    if (ele.nodeType !== 1) {
                        return
                    }
                    if (isVariable_1) {
                        ele.style.setProperty(prop, value)
                    } else {
                        ele.style[prop] = value
                    }
                })
            }
            for (var key in prop) {
                this.css(key, prop[key])
            }
            return this
        }
        Cash.prototype.css = css;
        var dataNamespace = "__cashData",
            dataAttributeRe = /^data-(.*)/;

        function hasData(ele) {
            return dataNamespace in ele
        }
        cash.hasData = hasData;

        function getDataCache(ele) {
            return ele[dataNamespace] = ele[dataNamespace] || {}
        }

        function getData(ele, key) {
            var cache = getDataCache(ele);
            if (key) {
                if (!(key in cache)) {
                    var value = ele.dataset ? ele.dataset[key] || ele.dataset[camelCase(key)] : cash(ele).attr("data-" + key);
                    if (value !== undefined) {
                        try {
                            value = JSON.parse(value)
                        } catch (e) {}
                        cache[key] = value
                    }
                }
                return cache[key]
            }
            return cache
        }

        function removeData(ele, key) {
            if (key === undefined) {
                delete ele[dataNamespace]
            } else {
                delete getDataCache(ele)[key]
            }
        }

        function setData(ele, key, value) {
            getDataCache(ele)[key] = value
        }

        function data(name, value) {
            var _this = this;
            if (!name) {
                if (!this[0]) {
                    return
                }
                each(this[0].attributes, function(i, attr) {
                    var match = attr.name.match(dataAttributeRe);
                    if (!match) {
                        return
                    }
                    _this.data(match[1])
                });
                return getData(this[0])
            }
            if (isString(name)) {
                if (value === undefined) {
                    return this[0] && getData(this[0], name)
                }
                return this.each(function(i, ele) {
                    return setData(ele, name, value)
                })
            }
            for (var key in name) {
                this.data(key, name[key])
            }
            return this
        }
        Cash.prototype.data = data;
        Cash.prototype.removeData = function(key) {
            return this.each(function(i, ele) {
                return removeData(ele, key)
            })
        };

        function getExtraSpace(ele, xAxis) {
            return computeStyleInt(ele, "border" + (xAxis ? "Left" : "Top") + "Width") + computeStyleInt(ele, "padding" + (xAxis ? "Left" : "Top")) + computeStyleInt(ele, "padding" + (xAxis ? "Right" : "Bottom")) + computeStyleInt(ele, "border" + (xAxis ? "Right" : "Bottom") + "Width")
        }
        each(["Width", "Height"], function(i, prop) {
            Cash.prototype["inner" + prop] = function() {
                if (!this[0]) {
                    return
                }
                if (this[0] === win) {
                    return win["inner" + prop]
                }
                return this[0]["client" + prop]
            }
        });
        each(["width", "height"], function(index, prop) {
            Cash.prototype[prop] = function(value) {
                if (!this[0]) {
                    return value === undefined ? undefined : this
                }
                if (!arguments.length) {
                    if (this[0] === win) {
                        return this[0][camelCase("outer-" + prop)]
                    }
                    if (this[0].nodeType === 9) {
                        return Math.max(this[0].body[camelCase("offset-" + prop)], this[0].documentElement[camelCase("client-" + prop)], this[0].documentElement[camelCase("offset-" + prop)], this[0].documentElement[camelCase("scroll-" + prop)])
                    } else {
                        return this[0].getBoundingClientRect()[prop] - getExtraSpace(this[0], !index)
                    }
                }
                var valueNumber = parseInt(value, 10);
                return this.each(function(i, ele) {
                    if (ele.nodeType !== 1) {
                        return
                    }
                    var boxSizing = computeStyle(ele, "boxSizing");
                    ele.style[prop] = getSuffixedValue(prop, valueNumber + (boxSizing === "border-box" ? getExtraSpace(ele, !index) : 0))
                })
            }
        });
        each(["Width", "Height"], function(index, prop) {
            Cash.prototype["outer" + prop] = function(includeMargins) {
                if (!this[0]) {
                    return
                }
                if (this[0] === win) {
                    return win["outer" + prop]
                }
                return this[0]["offset" + prop] + (includeMargins ? computeStyleInt(this[0], "margin" + (!index ? "Left" : "Top")) + computeStyleInt(this[0], "margin" + (!index ? "Right" : "Bottom")) : 0)
            }
        });
        var defaultDisplay = {};

        function getDefaultDisplay(tagName) {
            if (defaultDisplay[tagName]) {
                return defaultDisplay[tagName]
            }
            var ele = doc.createElement(tagName);
            doc.body.appendChild(ele);
            var display = computeStyle(ele, "display");
            doc.body.removeChild(ele);
            return defaultDisplay[tagName] = display !== "none" ? display : "block"
        }

        function isHidden(ele) {
            return computeStyle(ele, "display") === "none"
        }
        Cash.prototype.toggle = function(force) {
            return this.each(function(i, ele) {
                force = force !== undefined ? force : isHidden(ele);
                if (force) {
                    ele.style.display = "";
                    if (isHidden(ele)) {
                        ele.style.display = getDefaultDisplay(ele.tagName)
                    }
                } else {
                    ele.style.display = "none"
                }
            })
        };
        Cash.prototype.hide = function() {
            return this.toggle(false)
        };
        Cash.prototype.show = function() {
            return this.toggle(true)
        };

        function hasNamespaces(ns1, ns2) {
            return !ns2 || !some.call(ns2, function(ns) {
                return ns1.indexOf(ns) < 0
            })
        }
        var eventsNamespace = "__cashEvents",
            eventsNamespacesSeparator = ".",
            eventsFocus = {
                focus: "focusin",
                blur: "focusout"
            },
            eventsHover = {
                mouseenter: "mouseover",
                mouseleave: "mouseout"
            },
            eventsMouseRe = /^(?:mouse|pointer|contextmenu|drag|drop|click|dblclick)/i;

        function getEventNameBubbling(name) {
            return eventsHover[name] || eventsFocus[name] || name
        }

        function getEventsCache(ele) {
            return ele[eventsNamespace] = ele[eventsNamespace] || {}
        }

        function addEvent(ele, name, namespaces, callback, useCapture) {
            callback.guid = callback.guid || guid++;
            var eventCache = getEventsCache(ele),
                names, i = 0;
            name = name.split(" ");
            while ((names = name[i++])) {
                eventCache[names] = eventCache[name] || [];
                eventCache[names].push([namespaces, callback]);
                ele.addEventListener(names, callback, useCapture || false)
            }
        }

        function parseEventName(eventName) {
            var parts = eventName.split(eventsNamespacesSeparator);
            return [parts[0], parts.slice(1).sort()]
        }

        function removeEvent(ele, name, namespaces, callback) {
            var cache = getEventsCache(ele);
            if (!name) {
                for (name in cache) {
                    removeEvent(ele, name, namespaces, callback)
                }
                delete ele[eventsNamespace]
            } else {
                if (cache[name]) {
                    cache[name] = cache[name].filter(function(_a) {
                        var ns = _a[0],
                            cb = _a[1];
                        if (callback && cb.guid !== callback.guid || !hasNamespaces(ns, namespaces)) {
                            return true
                        }
                        ele.removeEventListener(name, cb)
                    })
                }
            }
        }
        Cash.prototype.off = function(eventFullName, callback) {
            var _this = this;
            if (eventFullName === undefined) {
                this.each(function(i, ele) {
                    return removeEvent(ele)
                })
            } else {
                each(getSplitValues(eventFullName), function(i, eventFullName) {
                    var _a = parseEventName(getEventNameBubbling(eventFullName)),
                        name = _a[0],
                        namespaces = _a[1];
                    _this.each(function(i, ele) {
                        return removeEvent(ele, name, namespaces, callback)
                    })
                })
            }
            return this
        };

        function on(eventFullName, selector, callback, useCapture) {
            var _this = this;
            if (!isString(eventFullName)) {
                for (var key in eventFullName) {
                    this.on(key, selector, eventFullName[key], useCapture)
                }
                return this
            }
            if (isFunction(selector)) {
                callback = selector;
                selector = "";
                useCapture = callback
            }
            selector === (null || "") ? selector : _this.selector = selector;
            each(getSplitValues(eventFullName), function(i, eventFullName) {
                var _a = parseEventName(getEventNameBubbling(eventFullName)),
                    name = _a[0],
                    namespaces = _a[1];
                _this.each(function(i, ele) {
                    var finalCallback = function finalCallback(event) {
                        if (event.namespace && !hasNamespaces(namespaces, event.namespace.split(eventsNamespacesSeparator))) {
                            return
                        }
                        var thisArg = ele;
                        if (selector) {
                            var target = event.target;
                            while (!matches(target, selector) || typeof matches(target, selector) == "object") {
                                if (target === ele) {
                                    return
                                }
                                target = target.parentNode;
                                if (!target) {
                                    return
                                }
                            }
                            thisArg = target;
                            event.__delegate = true
                        }
                        if (event.__delegate) {
                            Object.defineProperty(event, "currentTarget", {
                                configurable: true,
                                get: function get() {
                                    return thisArg
                                }
                            })
                        }
                        var returnValue = callback.call(thisArg, event, event.data);
                        if (returnValue === false) {
                            event.preventDefault();
                            event.stopPropagation()
                        }
                    };
                    finalCallback.guid = callback.guid = callback.guid || guid++;
                    addEvent(ele, name, namespaces, finalCallback, useCapture)
                })
            });
            return this
        }
        Cash.prototype.on = on;
        Cash.prototype.ready = function(callback) {
            var finalCallback = function finalCallback() {
                return callback(cash)
            };
            if (doc.readyState !== "loading") {
                setTimeout(finalCallback)
            } else {
                doc.addEventListener("DOMContentLoaded", finalCallback)
            }
            return this
        };
        Cash.prototype.trigger = function(eventFullName, data) {
            var evt = eventFullName;
            if (isString(eventFullName)) {
                var _a = parseEventName(eventFullName),
                    name_1 = _a[0],
                    namespaces = _a[1],
                    type = eventsMouseRe.test(name_1) ? "MouseEvents" : "HTMLEvents";
                evt = doc.createEvent(type);
                evt.initEvent(name_1, true, true);
                evt.namespace = namespaces.join(eventsNamespacesSeparator)
            }
            evt.data = data;
            var isEventFocus = evt.type in eventsFocus;
            return this.each(function(i, ele) {
                if (isEventFocus && isFunction(ele[evt.type])) {
                    ele[evt.type]()
                } else {
                    ele.dispatchEvent(evt)
                }
            })
        };
        cash.each(["bind", "one"], function(i, name) {
            cash.fn[name] = function(type, data, fn) {
                var handler;
                if (typeof type === "object") {
                    for (var key in type) {
                        this[name](key, data, type[key], fn)
                    }
                    return this
                }
                if (arguments.length === 2 || data === false) {
                    fn = data;
                    data = undefined
                }
                if (name === "one") {
                    var origFn = fn;
                    handler = function(event) {
                        var eventFullName = event.type;
                        cash(this).off(eventFullName, handler);
                        return origFn.apply(this, arguments)
                    };
                    fn = handler;
                    handler.guid = fn.guid || guid++
                }
                if (type === "unload" && name !== "one") {
                    this.one(type, data, fn)
                } else {
                    for (var i = 0, l = this.length; i < l; i++) {
                        addEvent(this[i], type, handler, fn)
                    }
                }
                return this
            }
        });

        function unbind(type, fn) {
            if (typeof type === "object" && !type.preventDefault) {
                for (var key in type) {
                    this.unbind(key, type[key])
                }
            } else {
                for (var i = 0, l = this.length; i < l; i++) {
                    removeEvent(this[i], type, fn)
                }
            }
            return this
        }

        function getValue(ele) {
            if (filterPrototypeIsNative) {
                if (ele.multiple && ele.options && ele.options.selectedIndex !== -1) {
                    return pluck(filter.call(ele.options, function(option) {
                        return option.selected && !option.disabled && !option.parentNode.disabled
                    }), "value")
                }
                return ele.value || ""
            } else {
                if (ele.multiple && ele.options && ele.options.selectedIndex !== -1) {
                    return pluck(scFilter.call(ele.options, function(option) {
                        return option.selected && !option.disabled && !option.parentNode.disabled
                    }), "value")
                }
                return ele.value || ""
            }
        }
        var queryEncodeSpaceRe = /%20/g;

        function queryEncode(prop, value) {
            return "&" + encodeURIComponent(prop) + "=" + encodeURIComponent(value).replace(queryEncodeSpaceRe, "+")
        }
        var skippableRe = /file|reset|submit|button|image/i,
            checkableRe = /radio|checkbox/i;
        Cash.prototype.serialize = function() {
            var query = "";
            this.each(function(i, ele) {
                each(ele.elements || [ele], function(i, ele) {
                    if (ele.disabled || !ele.name || ele.tagName === "FIELDSET" || skippableRe.test(ele.type) || checkableRe.test(ele.type) && !ele.checked) {
                        return
                    }
                    var value = getValue(ele);
                    if (value === undefined) {
                        return
                    }
                    var values = isArray(value) ? value : [value];
                    each(values, function(i, value) {
                        query += queryEncode(ele.name, value)
                    })
                })
            });
            return query.substr(1)
        };

        function val(value) {
            if (value === undefined) {
                return this[0] && getValue(this[0])
            }
            return this.each(function(i, ele) {
                if (ele.tagName === "SELECT") {
                    var eleValue_1 = isArray(value) ? value : value === null ? [] : [value];
                    each(ele.options, function(i, option) {
                        option.selected = eleValue_1.indexOf(option.value) >= 0
                    })
                } else {
                    ele.value = value === null ? "" : value
                }
            })
        }
        Cash.prototype.val = val;
        Cash.prototype.clone = function() {
            return this.map(function(i, ele) {
                return ele.cloneNode(true)
            })
        };
        Cash.prototype.detach = function() {
            return this.each(function(i, ele) {
                if (ele.parentNode) {
                    ele.parentNode.removeChild(ele)
                }
            })
        };
        var fragmentRe = /^\s*<(\w+)[^>]*>/,
            singleTagRe = /^\s*<(\w+)\s*\/?>(?:<\/\1>)?\s*$/;
        var containers;

        function initContainers() {
            if (containers) {
                return
            }
            var table = doc.createElement("table"),
                tr = doc.createElement("tr");
            containers = {
                "*": div,
                tr: doc.createElement("tbody"),
                td: tr,
                th: tr,
                thead: table,
                tbody: table,
                tfoot: table
            }
        }

        function parseHTML(html) {
            initContainers();
            if (!isString(html)) {
                return []
            }
            if (singleTagRe.test(html)) {
                return [doc.createElement(RegExp.$1)]
            }
            var fragment = fragmentRe.test(html) && RegExp.$1,
                container = containers[fragment] || containers["*"];
            container.innerHTML = html;
            return cash(container.childNodes).detach().get()
        }
        cash.parseHTML = parseHTML;
        Cash.prototype.empty = function() {
            var ele = this[0];
            if (ele) {
                while (ele.firstChild) {
                    ele.removeChild(ele.firstChild)
                }
            }
            return this
        };

        function html(html) {
            if (html === undefined) {
                return this[0] && this[0].innerHTML
            }
            return this.each(function(i, ele) {
                ele.innerHTML = html
            })
        }
        Cash.prototype.html = html;
        Cash.prototype.remove = function() {
            return this.detach().off()
        };

        function text(text) {
            if (text === undefined) {
                return this[0] ? this[0].textContent : ""
            }
            return this.each(function(i, ele) {
                ele.textContent = text
            })
        }
        Cash.prototype.text = text;
        Cash.prototype.unwrap = function() {
            this.parent().each(function(i, ele) {
                var $ele = cash(ele);
                $ele.replaceWith($ele.children())
            });
            return this
        };
        var docEle = doc.documentElement;
        Cash.prototype.offset = function() {
            var ele = this[0];
            if (!ele) {
                return
            }
            var rect = ele.getBoundingClientRect();
            return {
                top: rect.top + win.pageYOffset - docEle.clientTop,
                left: rect.left + win.pageXOffset - docEle.clientLeft
            }
        };
        Cash.prototype.offsetParent = function() {
            return cash(this[0] && this[0].offsetParent)
        };
        Cash.prototype.position = function() {
            var ele = this[0];
            if (!ele) {
                return
            }
            return {
                left: ele.offsetLeft,
                top: ele.offsetTop
            }
        };
        Cash.prototype.children = function(comparator) {
            var result = [];
            this.each(function(i, ele) {
                push.apply(result, ele.children)
            });
            return filtered(cash(unique(result)), comparator)
        };
        Cash.prototype.contents = function() {
            var result = [];
            this.each(function(i, ele) {
                push.apply(result, ele.tagName === "IFRAME" ? [ele.contentDocument] : ele.childNodes)
            });
            return cash(unique(result))
        };
        Cash.prototype.find = function(selector) {
            var result = [];
            for (var i = 0, l = this.length; i < l; i++) {
                var found = find(selector, this[i]);
                if (found.length) {
                    push.apply(result, found)
                }
            }
            return cash(unique(result))
        };
        var scriptTypeRe = /^$|^module$|\/(?:java|ecma)script/i,
            HTMLCDATARe = /^\s*<!(?:\[CDATA\[|--)|(?:\]\]|--)>\s*$/g;

        function evalScripts(node) {
            var collection = cash(node);
            collection.filter("script").add(collection.find("script")).each(function(i, ele) {
                if (!ele.src && scriptTypeRe.test(ele.type)) {
                    if (ele.ownerDocument.documentElement.contains(ele)) {
                        eval(ele.textContent.replace(HTMLCDATARe, ""))
                    }
                }
            })
        }

        function insertElement(anchor, child, prepend, prependTarget) {
            if (prepend) {
                anchor.insertBefore(child, prependTarget)
            } else {
                anchor.appendChild(child)
            }
            evalScripts(child)
        }

        function insertContent(parent, child, prepend) {
            each(parent, function(index, parentEle) {
                each(child, function(i, childEle) {
                    insertElement(parentEle, !index ? childEle : childEle.cloneNode(true), prepend, prepend && parentEle.firstChild)
                })
            })
        }
        Cash.prototype.append = function() {
            var _this = this;
            each(arguments, function(i, selector) {
                insertContent(_this, cash(selector))
            });
            return this
        };
        Cash.prototype.appendTo = function(selector) {
            insertContent(cash(selector), this);
            return this
        };
        Cash.prototype.insertAfter = function(selector) {
            var _this = this;
            cash(selector).each(function(index, ele) {
                var parent = ele.parentNode;
                if (parent) {
                    _this.each(function(i, e) {
                        insertElement(parent, !index ? e : e.cloneNode(true), true, ele.nextSibling)
                    })
                }
            });
            return this
        };
        Cash.prototype.after = function() {
            var _this = this;
            each(reverse.apply(arguments), function(i, selector) {
                reverse.apply(cash(selector).slice()).insertAfter(_this)
            });
            return this
        };
        Cash.prototype.insertBefore = function(selector) {
            var _this = this;
            cash(selector).each(function(index, ele) {
                var parent = ele.parentNode;
                if (parent) {
                    _this.each(function(i, e) {
                        insertElement(parent, !index ? e : e.cloneNode(true), true, ele)
                    })
                }
            });
            return this
        };
        Cash.prototype.before = function() {
            var _this = this;
            each(arguments, function(i, selector) {
                cash(selector).insertBefore(_this)
            });
            return this
        };
        Cash.prototype.prepend = function() {
            var _this = this;
            each(arguments, function(i, selector) {
                insertContent(_this, cash(selector), true)
            });
            return this
        };
        Cash.prototype.prependTo = function(selector) {
            insertContent(cash(selector), reverse.apply(this.slice()), true);
            return this
        };
        Cash.prototype.replaceWith = function(selector) {
            return this.before(selector).remove()
        };
        Cash.prototype.replaceNew = function(ele) {
            for (var i = 0; i < this.length; i++) {
                this[i].outerHTML = ele
            }
            return this
        };
        Cash.prototype.replaceAll = function(selector) {
            cash(selector).replaceWith(this);
            return this
        };
        Cash.prototype.wrapAll = function(selector) {
            if (this[0]) {
                var structure = cash(selector);
                this.first().before(structure);
                var wrapper = structure[0];
                while (wrapper.children.length) {
                    wrapper = wrapper.firstElementChild
                }
                this.appendTo(wrapper)
            }
            return this
        };
        Cash.prototype.wrap = function(selector) {
            return this.each(function(index, ele) {
                var wrapper = cash(selector)[0];
                cash(ele).wrapAll(!index ? wrapper : wrapper.cloneNode(true))
            })
        };
        Cash.prototype.wrapInner = function(selector) {
            return this.each(function(i, ele) {
                var $ele = cash(ele),
                    contents = $ele.contents();
                contents.length ? contents.wrapAll(selector) : $ele.append(selector)
            })
        };
        Cash.prototype.has = function(selector) {
            var comparator = isString(selector) ? function(i, ele) {
                return !!find(selector, ele).length
            } : function(i, ele) {
                return ele.contains(selector)
            };
            return this.filter(comparator)
        };
        Cash.prototype.is = function(comparator) {
            if (!comparator || !this[0]) {
                return false
            }
            var compare = getCompareFunction(comparator);
            var check = false;
            if (this.length === 1) {
                return cash.cashMatchesSelector(this[0], comparator)
            }
            this.each(function(i, ele) {
                check = compare.call(ele, i, ele);
                return !check
            });
            return check
        };
        Cash.prototype.next = function(comparator, _all) {
            return filtered(cash(unique(pluck(this, "nextElementSibling", _all))), comparator)
        };
        Cash.prototype.nextAll = function(comparator) {
            return this.next(comparator, true)
        };
        Cash.prototype.not = function(comparator) {
            if (!comparator || !this[0]) {
                return this
            }
            var compare = getCompareFunction(comparator);
            return this.filter(function(i, ele) {
                return !compare.call(ele, i, ele)
            })
        };
        Cash.prototype.parent = function(comparator) {
            return filtered(cash(unique(pluck(this, "parentNode"))), comparator)
        };
        Cash.prototype.index = function(selector) {
            var child = selector ? cash(selector)[0] : this[0],
                collection = selector ? this : cash(child).parent().children();
            return indexOf.call(collection, child)
        };
        Cash.prototype.closest = function(comparator) {
            if (!comparator || !this[0]) {
                return cash()
            }
            var filtered = this.filter(comparator);
            if (filtered.length && filtered[0] !== document) {
                return filtered
            }
            return this.parent().closest(comparator)
        };
        Cash.prototype.parents = function(comparator) {
            return filtered(cash(unique(pluck(this, "parentElement", true))), comparator)
        };
        Cash.prototype.prev = function(comparator, _all) {
            return filtered(cash(unique(pluck(this, "previousElementSibling", _all))), comparator)
        };
        Cash.prototype.prevAll = function(comparator) {
            return this.prev(comparator, true)
        };
        cash.each(["Left", "Top"], function(i, name) {
            var method = "scroll" + name;
            cash.fn[method] = function(val) {
                var ele = this[0],
                    win;
                if (!ele) {
                    return null
                }
                if (val !== undefined) {
                    return this.each(function() {
                        win = getWindow(this);
                        if (win) {
                            win.scrollTo(!i ? val : cash(win).scrollLeft(), i ? val : cash(win).scrollTop())
                        } else {
                            this[method] = val
                        }
                    })
                } else {
                    win = getWindow(ele);
                    return win ? ("pageXOffset" in win) ? win[i ? "pageYOffset" : "pageXOffset"] : win.document.documentElement[method] || win.document.body[method] : ele[method]
                }
            }
        });

        function getWindow(ele) {
            return cash.isWindow(ele) ? ele : ele.nodeType === 9 ? ele.defaultView || ele.parentWindow : false
        }
        Cash.prototype.siblings = function(comparator) {
            var ele = this[0];
            return filtered(this.parent().children().filter(function(i, child) {
                return child !== ele
            }), comparator)
        };
        (function() {
            var i, support, Expr, getText, isXML, tokenize, compile, select, outermostContext, sortInput, hasDuplicate, setDocument, document, docElem, documentIsHTML, rbuggyQSA, rbuggyMatches, matches, contains, expando = "sizzle" + 1 * new Date(),
                preferredDoc = window.document,
                dirruns = 0,
                done = 0,
                classCache = createCache(),
                tokenCache = createCache(),
                compilerCache = createCache(),
                nonnativeSelectorCache = createCache(),
                sortOrder = function(a, b) {
                    if (a === b) {
                        hasDuplicate = true
                    }
                    return 0
                },
                hasOwn = ({}).hasOwnProperty,
                arr = [],
                pop = arr.pop,
                push_native = arr.push,
                push = arr.push,
                slice = arr.slice,
                indexOf = function(list, elem) {
                    var i = 0,
                        len = list.length;
                    for (; i < len; i++) {
                        if (list[i] === elem) {
                            return i
                        }
                    }
                    return -1
                },
                booleans = "checked|selected|async|autofocus|autoplay|controls|defer|disabled|hidden|ismap|loop|multiple|open|readonly|required|scoped",
                whitespace = "[\\x20\\t\\r\\n\\f]",
                identifier = "(?:\\\\.|[\\w-]|[^\0-\\xa0])+",
                attributes = "\\[" + whitespace + "*(" + identifier + ")(?:" + whitespace + "*([*^$|!~]?=)" + whitespace + "*(?:'((?:\\\\.|[^\\\\'])*)'|\"((?:\\\\.|[^\\\\\"])*)\"|(" + identifier + "))|)" + whitespace + "*\\]",
                pseudos = ":(" + identifier + ")(?:\\((('((?:\\\\.|[^\\\\'])*)'|\"((?:\\\\.|[^\\\\\"])*)\")|((?:\\\\.|[^\\\\()[\\]]|" + attributes + ")*)|.*)\\)|)",
                rwhitespace = new RegExp(whitespace + "+", "g"),
                rtrim = new RegExp("^" + whitespace + "+|((?:^|[^\\\\])(?:\\\\.)*)" + whitespace + "+$", "g"),
                rcomma = new RegExp("^" + whitespace + "*," + whitespace + "*"),
                rcombinators = new RegExp("^" + whitespace + "*([>+~]|" + whitespace + ")" + whitespace + "*"),
                rdescend = new RegExp(whitespace + "|>"),
                rpseudo = new RegExp(pseudos),
                ridentifier = new RegExp("^" + identifier + "$"),
                matchExpr = {
                    ID: new RegExp("^#(" + identifier + ")"),
                    CLASS: new RegExp("^\\.(" + identifier + ")"),
                    TAG: new RegExp("^(" + identifier + "|[*])"),
                    ATTR: new RegExp("^" + attributes),
                    PSEUDO: new RegExp("^" + pseudos),
                    CHILD: new RegExp("^:(only|first|last|nth|nth-last)-(child|of-type)(?:\\(" + whitespace + "*(even|odd|(([+-]|)(\\d*)n|)" + whitespace + "*(?:([+-]|)" + whitespace + "*(\\d+)|))" + whitespace + "*\\)|)", "i"),
                    bool: new RegExp("^(?:" + booleans + ")$", "i"),
                    needsContext: new RegExp("^" + whitespace + "*[>+~]|:(even|odd|eq|gt|lt|nth|first|last)(?:\\(" + whitespace + "*((?:-\\d)?\\d*)" + whitespace + "*\\)|)(?=[^-]|$)", "i")
                },
                rhtml = /HTML$/i,
                rinputs = /^(?:input|select|textarea|button)$/i,
                rheader = /^h\d$/i,
                rnative = /^[^{]+\{\s*\[native \w/,
                rquickExpr = /^(?:#([\w-]+)|(\w+)|\.([\w-]+))$/,
                rsibling = /[+~]/,
                runescape = new RegExp("\\\\([\\da-f]{1,6}" + whitespace + "?|(" + whitespace + ")|.)", "ig"),
                funescape = function(_, escaped, escapedWhitespace) {
                    var high = "0x" + escaped - 65536;
                    return high !== high || escapedWhitespace ? escaped : high < 0 ? String.fromCharCode(high + 65536) : String.fromCharCode(high >> 10 | 55296, high & 1023 | 56320)
                },
                rcssescape = /([\0-\x1f\x7f]|^-?\d)|^-$|[^\0-\x1f\x7f-\uFFFF\w-]/g,
                fcssescape = function(ch, asCodePoint) {
                    if (asCodePoint) {
                        if (ch === "\0") {
                            return "\uFFFD"
                        }
                        return ch.slice(0, -1) + "\\" + ch.charCodeAt(ch.length - 1).toString(16) + " "
                    }
                    return "\\" + ch
                },
                unloadHandler = function() {
                    setDocument()
                },
                inDisabledFieldset = addCombinator(function(elem) {
                    return elem.disabled === true && elem.nodeName.toLowerCase() === "fieldset"
                }, {
                    dir: "parentNode",
                    next: "legend"
                });
            try {
                push.apply((arr = slice.call(preferredDoc.childNodes)), preferredDoc.childNodes);
                arr[preferredDoc.childNodes.length].nodeType
            } catch (e) {
                push = {
                    apply: arr.length ? function(target, els) {
                        push_native.apply(target, slice.call(els))
                    } : function(target, els) {
                        var j = target.length,
                            i = 0;
                        while ((target[j++] = els[i++])) {}
                        target.length = j - 1
                    }
                }
            }

            function Sizzle(selector, context, results, seed) {
                var m, i, elem, nid, match, groups, newSelector, newContext = context && context.ownerDocument,
                    nodeType = context ? context.nodeType : 9;
                results = results || [];
                if (typeof selector !== "string" || !selector || nodeType !== 1 && nodeType !== 9 && nodeType !== 11) {
                    return results
                }
                if (!seed) {
                    if ((context ? context.ownerDocument || context : preferredDoc) !== document) {
                        setDocument(context)
                    }
                    context = context || document;
                    if (documentIsHTML) {
                        if (nodeType !== 11 && (match = rquickExpr.exec(selector))) {
                            if ((m = match[1])) {
                                if (nodeType === 9) {
                                    if ((elem = context.getElementById(m))) {
                                        if (elem.id === m) {
                                            results.push(elem);
                                            return results
                                        }
                                    } else {
                                        return results
                                    }
                                } else {
                                    if (newContext && (elem = newContext.getElementById(m)) && contains(context, elem) && elem.id === m) {
                                        results.push(elem);
                                        return results
                                    }
                                }
                            } else {
                                if (match[2]) {
                                    push.apply(results, context.getElementsByTagName(selector));
                                    return results
                                } else {
                                    if ((m = match[3]) && support.getElementsByClassName && context.getElementsByClassName) {
                                        push.apply(results, context.getElementsByClassName(m));
                                        return results
                                    }
                                }
                            }
                        }
                        if (support.qsa && !nonnativeSelectorCache[selector + " "] && (!rbuggyQSA || !rbuggyQSA.test(selector)) && (nodeType !== 1 || context.nodeName.toLowerCase() !== "object")) {
                            newSelector = selector;
                            newContext = context;
                            if (nodeType === 1 && rdescend.test(selector)) {
                                if ((nid = context.getAttribute("id"))) {
                                    nid = nid.replace(rcssescape, fcssescape)
                                } else {
                                    context.setAttribute("id", (nid = expando))
                                }
                                groups = tokenize(selector);
                                i = groups.length;
                                while (i--) {
                                    groups[i] = "#" + nid + " " + toSelector(groups[i])
                                }
                                newSelector = groups.join(",");
                                newContext = rsibling.test(selector) && testContext(context.parentNode) || context
                            }
                            try {
                                push.apply(results, newContext.querySelectorAll(newSelector));
                                return results
                            } catch (qsaError) {
                                nonnativeSelectorCache(selector, true)
                            } finally {
                                if (nid === expando) {
                                    context.removeAttribute("id")
                                }
                            }
                        }
                    }
                }
                return select(selector.replace(rtrim, "$1"), context, results, seed)
            }

            function createCache() {
                var keys = [];

                function cache(key, value) {
                    if (keys.push(key + " ") > Expr.cacheLength) {
                        delete cache[keys.shift()]
                    }
                    return (cache[key + " "] = value)
                }
                return cache
            }

            function markFunction(fn) {
                fn[expando] = true;
                return fn
            }

            function assert(fn) {
                var el = document.createElement("fieldset");
                try {
                    return !!fn(el)
                } catch (e) {
                    return false
                } finally {
                    if (el.parentNode) {
                        el.parentNode.removeChild(el)
                    }
                    el = null
                }
            }

            function addHandle(attrs, handler) {
                var arr = attrs.split("|"),
                    i = arr.length;
                while (i--) {
                    Expr.attrHandle[arr[i]] = handler
                }
            }

            function siblingCheck(a, b) {
                var cur = b && a,
                    diff = cur && a.nodeType === 1 && b.nodeType === 1 && a.sourceIndex - b.sourceIndex;
                if (diff) {
                    return diff
                }
                if (cur) {
                    while ((cur = cur.nextSibling)) {
                        if (cur === b) {
                            return -1
                        }
                    }
                }
                return a ? 1 : -1
            }

            function createInputPseudo(type) {
                return function(elem) {
                    var name = elem.nodeName.toLowerCase();
                    return name === "input" && elem.type === type
                }
            }

            function createButtonPseudo(type) {
                return function(elem) {
                    var name = elem.nodeName.toLowerCase();
                    return (name === "input" || name === "button") && elem.type === type
                }
            }

            function createDisabledPseudo(disabled) {
                return function(elem) {
                    if ("form" in elem) {
                        if (elem.parentNode && elem.disabled === false) {
                            if ("label" in elem) {
                                if ("label" in elem.parentNode) {
                                    return elem.parentNode.disabled === disabled
                                } else {
                                    return elem.disabled === disabled
                                }
                            }
                            return elem.isDisabled === disabled || elem.isDisabled !== !disabled && inDisabledFieldset(elem) === disabled
                        }
                        return elem.disabled === disabled
                    } else {
                        if ("label" in elem) {
                            return elem.disabled === disabled
                        }
                    }
                    return false
                }
            }

            function createPositionalPseudo(fn) {
                return markFunction(function(argument) {
                    argument = +argument;
                    return markFunction(function(seed, matches) {
                        var j, matchIndexes = fn([], seed.length, argument),
                            i = matchIndexes.length;
                        while (i--) {
                            if (seed[(j = matchIndexes[i])]) {
                                seed[j] = !(matches[j] = seed[j])
                            }
                        }
                    })
                })
            }

            function testContext(context) {
                return context && typeof context.getElementsByTagName !== "undefined" && context
            }
            support = Sizzle.support = {};
            isXML = Sizzle.isXML = function(elem) {
                var namespace = elem.namespaceURI,
                    docElem = (elem.ownerDocument || elem).documentElement;
                return !rhtml.test(namespace || docElem && docElem.nodeName || "HTML")
            };
            setDocument = Sizzle.setDocument = function(node) {
                var hasCompare, subWindow, doc = node ? node.ownerDocument || node : preferredDoc;
                if (doc === document || doc.nodeType !== 9 || !doc.documentElement) {
                    return document
                }
                document = doc;
                docElem = document.documentElement;
                documentIsHTML = !isXML(document);
                if (preferredDoc !== document && (subWindow = document.defaultView) && subWindow.top !== subWindow) {
                    if (subWindow.addEventListener) {
                        subWindow.addEventListener("unload", unloadHandler, false)
                    } else {
                        if (subWindow.attachEvent) {
                            subWindow.attachEvent("onunload", unloadHandler)
                        }
                    }
                }
                support.attributes = assert(function(el) {
                    el.className = "i";
                    return !el.getAttribute("className")
                });
                support.getElementsByTagName = assert(function(el) {
                    el.appendChild(document.createComment(""));
                    return !el.getElementsByTagName("*").length
                });
                support.getElementsByClassName = rnative.test(document.getElementsByClassName);
                support.getById = assert(function(el) {
                    docElem.appendChild(el).id = expando;
                    return !document.getElementsByName || !document.getElementsByName(expando).length
                });
                if (support.getById) {
                    Expr.filter.ID = function(id) {
                        var attrId = id.replace(runescape, funescape);
                        return function(elem) {
                            return elem.getAttribute("id") === attrId
                        }
                    };
                    Expr.find.ID = function(id, context) {
                        if (typeof context.getElementById !== "undefined" && documentIsHTML) {
                            var elem = context.getElementById(id);
                            return elem ? [elem] : []
                        }
                    }
                } else {
                    Expr.filter.ID = function(id) {
                        var attrId = id.replace(runescape, funescape);
                        return function(elem) {
                            var node = typeof elem.getAttributeNode !== "undefined" && elem.getAttributeNode("id");
                            return node && node.value === attrId
                        }
                    };
                    Expr.find.ID = function(id, context) {
                        if (typeof context.getElementById !== "undefined" && documentIsHTML) {
                            var node, i, elems, elem = context.getElementById(id);
                            if (elem) {
                                node = elem.getAttributeNode("id");
                                if (node && node.value === id) {
                                    return [elem]
                                }
                                elems = context.getElementsByName(id);
                                i = 0;
                                while ((elem = elems[i++])) {
                                    node = elem.getAttributeNode("id");
                                    if (node && node.value === id) {
                                        return [elem]
                                    }
                                }
                            }
                            return []
                        }
                    }
                }
                Expr.find.TAG = support.getElementsByTagName ? function(tag, context) {
                    if (typeof context.getElementsByTagName !== "undefined") {
                        return context.getElementsByTagName(tag)
                    } else {
                        if (support.qsa) {
                            return context.querySelectorAll(tag)
                        }
                    }
                } : function(tag, context) {
                    var elem, tmp = [],
                        i = 0,
                        results = context.getElementsByTagName(tag);
                    if (tag === "*") {
                        while ((elem = results[i++])) {
                            if (elem.nodeType === 1) {
                                tmp.push(elem)
                            }
                        }
                        return tmp
                    }
                    return results
                };
                Expr.find.CLASS = support.getElementsByClassName && function(className, context) {
                    if (typeof context.getElementsByClassName !== "undefined" && documentIsHTML) {
                        return context.getElementsByClassName(className)
                    }
                };
                rbuggyMatches = [];
                rbuggyQSA = [];
                if ((support.qsa = rnative.test(document.querySelectorAll))) {
                    assert(function(el) {
                        docElem.appendChild(el).innerHTML = "<a id='" + expando + "'></a><select id='" + expando + "-\r\\' msallowcapture=''><option selected=''></option></select>";
                        if (el.querySelectorAll("[msallowcapture^='']").length) {
                            rbuggyQSA.push("[*^$]=" + whitespace + "*(?:''|\"\")")
                        }
                        if (!el.querySelectorAll("[selected]").length) {
                            rbuggyQSA.push("\\[" + whitespace + "*(?:value|" + booleans + ")")
                        }
                        if (!el.querySelectorAll("[id~=" + expando + "-]").length) {
                            rbuggyQSA.push("~=")
                        }
                        if (!el.querySelectorAll(":checked").length) {
                            rbuggyQSA.push(":checked")
                        }
                        if (!el.querySelectorAll("a#" + expando + "+*").length) {
                            rbuggyQSA.push(".#.+[+~]")
                        }
                    });
                    assert(function(el) {
                        el.innerHTML = "<a href='' disabled='disabled'></a><select disabled='disabled'><option/></select>";
                        var input = document.createElement("input");
                        input.setAttribute("type", "hidden");
                        el.appendChild(input).setAttribute("name", "D");
                        if (el.querySelectorAll("[name=d]").length) {
                            rbuggyQSA.push("name" + whitespace + "*[*^$|!~]?=")
                        }
                        if (el.querySelectorAll(":enabled").length !== 2) {
                            rbuggyQSA.push(":enabled", ":disabled")
                        }
                        docElem.appendChild(el).disabled = true;
                        if (el.querySelectorAll(":disabled").length !== 2) {
                            rbuggyQSA.push(":enabled", ":disabled")
                        }
                        el.querySelectorAll("*,:x");
                        rbuggyQSA.push(",.*:")
                    })
                }
                if ((support.matchesSelector = rnative.test((matches = docElem.matches || docElem.webkitMatchesSelector || docElem.mozMatchesSelector || docElem.oMatchesSelector || docElem.msMatchesSelector)))) {
                    assert(function(el) {
                        support.disconnectedMatch = matches.call(el, "*");
                        matches.call(el, "[s!='']:x");
                        rbuggyMatches.push("!=", pseudos)
                    })
                }
                rbuggyQSA = rbuggyQSA.length && new RegExp(rbuggyQSA.join("|"));
                rbuggyMatches = rbuggyMatches.length && new RegExp(rbuggyMatches.join("|"));
                hasCompare = rnative.test(docElem.compareDocumentPosition);
                contains = hasCompare || rnative.test(docElem.contains) ? function(a, b) {
                    var adown = a.nodeType === 9 ? a.documentElement : a,
                        bup = b && b.parentNode;
                    return a === bup || !!(bup && bup.nodeType === 1 && (adown.contains ? adown.contains(bup) : a.compareDocumentPosition && a.compareDocumentPosition(bup) & 16))
                } : function(a, b) {
                    if (b) {
                        while ((b = b.parentNode)) {
                            if (b === a) {
                                return true
                            }
                        }
                    }
                    return false
                };
                sortOrder = hasCompare ? function(a, b) {
                    if (a === b) {
                        hasDuplicate = true;
                        return 0
                    }
                    var compare = !a.compareDocumentPosition - !b.compareDocumentPosition;
                    if (compare) {
                        return compare
                    }
                    compare = (a.ownerDocument || a) === (b.ownerDocument || b) ? a.compareDocumentPosition(b) : 1;
                    if (compare & 1 || (!support.sortDetached && b.compareDocumentPosition(a) === compare)) {
                        if (a === document || a.ownerDocument === preferredDoc && contains(preferredDoc, a)) {
                            return -1
                        }
                        if (b === document || b.ownerDocument === preferredDoc && contains(preferredDoc, b)) {
                            return 1
                        }
                        return sortInput ? (indexOf(sortInput, a) - indexOf(sortInput, b)) : 0
                    }
                    return compare & 4 ? -1 : 1
                } : function(a, b) {
                    if (a === b) {
                        hasDuplicate = true;
                        return 0
                    }
                    var cur, i = 0,
                        aup = a.parentNode,
                        bup = b.parentNode,
                        ap = [a],
                        bp = [b];
                    if (!aup || !bup) {
                        return a === document ? -1 : b === document ? 1 : aup ? -1 : bup ? 1 : sortInput ? (indexOf(sortInput, a) - indexOf(sortInput, b)) : 0
                    } else {
                        if (aup === bup) {
                            return siblingCheck(a, b)
                        }
                    }
                    cur = a;
                    while ((cur = cur.parentNode)) {
                        ap.unshift(cur)
                    }
                    cur = b;
                    while ((cur = cur.parentNode)) {
                        bp.unshift(cur)
                    }
                    while (ap[i] === bp[i]) {
                        i++
                    }
                    return i ? siblingCheck(ap[i], bp[i]) : ap[i] === preferredDoc ? -1 : bp[i] === preferredDoc ? 1 : 0
                };
                return document
            };
            Sizzle.matches = function(expr, elements) {
                return Sizzle(expr, null, null, elements)
            };
            Sizzle.matchesSelector = function(elem, expr) {
                if ((elem.ownerDocument || elem) !== document) {
                    setDocument(elem)
                }
                if (support.matchesSelector && documentIsHTML && !nonnativeSelectorCache[expr + " "] && (!rbuggyMatches || !rbuggyMatches.test(expr)) && (!rbuggyQSA || !rbuggyQSA.test(expr))) {
                    try {
                        var ret = matches.call(elem, expr);
                        if (ret || support.disconnectedMatch || elem.document && elem.document.nodeType !== 11) {
                            return ret
                        }
                    } catch (e) {
                        nonnativeSelectorCache(expr, true)
                    }
                }
                return Sizzle(expr, document, null, [elem]).length > 0
            };
            Sizzle.contains = function(context, elem) {
                if ((context.ownerDocument || context) !== document) {
                    setDocument(context)
                }
                return contains(context, elem)
            };
            Sizzle.attr = function(elem, name) {
                if ((elem.ownerDocument || elem) !== document) {
                    setDocument(elem)
                }
                var fn = Expr.attrHandle[name.toLowerCase()],
                    val = fn && hasOwn.call(Expr.attrHandle, name.toLowerCase()) ? fn(elem, name, !documentIsHTML) : undefined;
                return val !== undefined ? val : support.attributes || !documentIsHTML ? elem.getAttribute(name) : (val = elem.getAttributeNode(name)) && val.specified ? val.value : null
            };
            Sizzle.escape = function(sel) {
                return (sel + "").replace(rcssescape, fcssescape)
            };
            Sizzle.error = function(msg) {
                throw new Error("Syntax error, unrecognized expression: " + msg)
            };
            Sizzle.uniqueSort = function(results) {
                var elem, duplicates = [],
                    j = 0,
                    i = 0;
                hasDuplicate = !support.detectDuplicates;
                sortInput = !support.sortStable && results.slice(0);
                results.sort(sortOrder);
                if (hasDuplicate) {
                    while ((elem = results[i++])) {
                        if (elem === results[i]) {
                            j = duplicates.push(i)
                        }
                    }
                    while (j--) {
                        results.splice(duplicates[j], 1)
                    }
                }
                sortInput = null;
                return results
            };
            getText = Sizzle.getText = function(elem) {
                var node, ret = "",
                    i = 0,
                    nodeType = elem.nodeType;
                if (!nodeType) {
                    while ((node = elem[i++])) {
                        ret += getText(node)
                    }
                } else {
                    if (nodeType === 1 || nodeType === 9 || nodeType === 11) {
                        if (typeof elem.textContent === "string") {
                            return elem.textContent
                        } else {
                            for (elem = elem.firstChild; elem; elem = elem.nextSibling) {
                                ret += getText(elem)
                            }
                        }
                    } else {
                        if (nodeType === 3 || nodeType === 4) {
                            return elem.nodeValue
                        }
                    }
                }
                return ret
            };
            Expr = Sizzle.selectors = {
                cacheLength: 50,
                createPseudo: markFunction,
                match: matchExpr,
                attrHandle: {},
                find: {},
                relative: {
                    ">": {
                        dir: "parentNode",
                        first: true
                    },
                    " ": {
                        dir: "parentNode"
                    },
                    "+": {
                        dir: "previousSibling",
                        first: true
                    },
                    "~": {
                        dir: "previousSibling"
                    }
                },
                preFilter: {
                    ATTR: function(match) {
                        match[1] = match[1].replace(runescape, funescape);
                        match[3] = (match[3] || match[4] || match[5] || "").replace(runescape, funescape);
                        if (match[2] === "~=") {
                            match[3] = " " + match[3] + " "
                        }
                        return match.slice(0, 4)
                    },
                    CHILD: function(match) {
                        match[1] = match[1].toLowerCase();
                        if (match[1].slice(0, 3) === "nth") {
                            if (!match[3]) {
                                Sizzle.error(match[0])
                            }
                            match[4] = +(match[4] ? match[5] + (match[6] || 1) : 2 * (match[3] === "even" || match[3] === "odd"));
                            match[5] = +((match[7] + match[8]) || match[3] === "odd")
                        } else {
                            if (match[3]) {
                                Sizzle.error(match[0])
                            }
                        }
                        return match
                    },
                    PSEUDO: function(match) {
                        var excess, unquoted = !match[6] && match[2];
                        if (matchExpr.CHILD.test(match[0])) {
                            return null
                        }
                        if (match[3]) {
                            match[2] = match[4] || match[5] || ""
                        } else {
                            if (unquoted && rpseudo.test(unquoted) && (excess = tokenize(unquoted, true)) && (excess = unquoted.indexOf(")", unquoted.length - excess) - unquoted.length)) {
                                match[0] = match[0].slice(0, excess);
                                match[2] = unquoted.slice(0, excess)
                            }
                        }
                        return match.slice(0, 3)
                    }
                },
                filter: {
                    TAG: function(nodeNameSelector) {
                        var nodeName = nodeNameSelector.replace(runescape, funescape).toLowerCase();
                        return nodeNameSelector === "*" ? function() {
                            return true
                        } : function(elem) {
                            return elem.nodeName && elem.nodeName.toLowerCase() === nodeName
                        }
                    },
                    CLASS: function(className) {
                        var pattern = classCache[className + " "];
                        return pattern || (pattern = new RegExp("(^|" + whitespace + ")" + className + "(" + whitespace + "|$)")) && classCache(className, function(elem) {
                            return pattern.test(typeof elem.className === "string" && elem.className || typeof elem.getAttribute !== "undefined" && elem.getAttribute("class") || "")
                        })
                    },
                    ATTR: function(name, operator, check) {
                        return function(elem) {
                            var result = Sizzle.attr(elem, name);
                            if (result == null) {
                                return operator === "!="
                            }
                            if (!operator) {
                                return true
                            }
                            result += "";
                            return operator === "=" ? result === check : operator === "!=" ? result !== check : operator === "^=" ? check && result.indexOf(check) === 0 : operator === "*=" ? check && result.indexOf(check) > -1 : operator === "$=" ? check && result.slice(-check.length) === check : operator === "~=" ? (" " + result.replace(rwhitespace, " ") + " ").indexOf(check) > -1 : operator === "|=" ? result === check || result.slice(0, check.length + 1) === check + "-" : false
                        }
                    },
                    CHILD: function(type, what, argument, first, last) {
                        var simple = type.slice(0, 3) !== "nth",
                            forward = type.slice(-4) !== "last",
                            ofType = what === "of-type";
                        return first === 1 && last === 0 ? function(elem) {
                            return !!elem.parentNode
                        } : function(elem, context, xml) {
                            var cache, uniqueCache, outerCache, node, nodeIndex, start, dir = simple !== forward ? "nextSibling" : "previousSibling",
                                parent = elem.parentNode,
                                name = ofType && elem.nodeName.toLowerCase(),
                                useCache = !xml && !ofType,
                                diff = false;
                            if (parent) {
                                if (simple) {
                                    while (dir) {
                                        node = elem;
                                        while ((node = node[dir])) {
                                            if (ofType ? node.nodeName.toLowerCase() === name : node.nodeType === 1) {
                                                return false
                                            }
                                        }
                                        start = dir = type === "only" && !start && "nextSibling"
                                    }
                                    return true
                                }
                                start = [forward ? parent.firstChild : parent.lastChild];
                                if (forward && useCache) {
                                    node = parent;
                                    outerCache = node[expando] || (node[expando] = {});
                                    uniqueCache = outerCache[node.uniqueID] || (outerCache[node.uniqueID] = {});
                                    cache = uniqueCache[type] || [];
                                    nodeIndex = cache[0] === dirruns && cache[1];
                                    diff = nodeIndex && cache[2];
                                    node = nodeIndex && parent.childNodes[nodeIndex];
                                    while ((node = ++nodeIndex && node && node[dir] || (diff = nodeIndex = 0) || start.pop())) {
                                        if (node.nodeType === 1 && ++diff && node === elem) {
                                            uniqueCache[type] = [dirruns, nodeIndex, diff];
                                            break
                                        }
                                    }
                                } else {
                                    if (useCache) {
                                        node = elem;
                                        outerCache = node[expando] || (node[expando] = {});
                                        uniqueCache = outerCache[node.uniqueID] || (outerCache[node.uniqueID] = {});
                                        cache = uniqueCache[type] || [];
                                        nodeIndex = cache[0] === dirruns && cache[1];
                                        diff = nodeIndex
                                    }
                                    if (diff === false) {
                                        while ((node = ++nodeIndex && node && node[dir] || (diff = nodeIndex = 0) || start.pop())) {
                                            if ((ofType ? node.nodeName.toLowerCase() === name : node.nodeType === 1) && ++diff) {
                                                if (useCache) {
                                                    outerCache = node[expando] || (node[expando] = {});
                                                    uniqueCache = outerCache[node.uniqueID] || (outerCache[node.uniqueID] = {});
                                                    uniqueCache[type] = [dirruns, diff]
                                                }
                                                if (node === elem) {
                                                    break
                                                }
                                            }
                                        }
                                    }
                                }
                                diff -= last;
                                return diff === first || (diff % first === 0 && diff / first >= 0)
                            }
                        }
                    },
                    PSEUDO: function(pseudo, argument) {
                        var args, fn = Expr.pseudos[pseudo] || Expr.setFilters[pseudo.toLowerCase()] || Sizzle.error("unsupported pseudo: " + pseudo);
                        if (fn[expando]) {
                            return fn(argument)
                        }
                        if (fn.length > 1) {
                            args = [pseudo, pseudo, "", argument];
                            return Expr.setFilters.hasOwnProperty(pseudo.toLowerCase()) ? markFunction(function(seed, matches) {
                                var idx, matched = fn(seed, argument),
                                    i = matched.length;
                                while (i--) {
                                    idx = indexOf(seed, matched[i]);
                                    seed[idx] = !(matches[idx] = matched[i])
                                }
                            }) : function(elem) {
                                return fn(elem, 0, args)
                            }
                        }
                        return fn
                    }
                },
                pseudos: {
                    not: markFunction(function(selector) {
                        var input = [],
                            results = [],
                            matcher = compile(selector.replace(rtrim, "$1"));
                        return matcher[expando] ? markFunction(function(seed, matches, context, xml) {
                            var elem, unmatched = matcher(seed, null, xml, []),
                                i = seed.length;
                            while (i--) {
                                if ((elem = unmatched[i])) {
                                    seed[i] = !(matches[i] = elem)
                                }
                            }
                        }) : function(elem, context, xml) {
                            input[0] = elem;
                            matcher(input, null, xml, results);
                            input[0] = null;
                            return !results.pop()
                        }
                    }),
                    has: markFunction(function(selector) {
                        return function(elem) {
                            return Sizzle(selector, elem).length > 0
                        }
                    }),
                    contains: markFunction(function(text) {
                        text = text.replace(runescape, funescape);
                        return function(elem) {
                            return (elem.textContent || getText(elem)).indexOf(text) > -1
                        }
                    }),
                    lang: markFunction(function(lang) {
                        if (!ridentifier.test(lang || "")) {
                            Sizzle.error("unsupported lang: " + lang)
                        }
                        lang = lang.replace(runescape, funescape).toLowerCase();
                        return function(elem) {
                            var elemLang;
                            do {
                                if ((elemLang = documentIsHTML ? elem.lang : elem.getAttribute("xml:lang") || elem.getAttribute("lang"))) {
                                    elemLang = elemLang.toLowerCase();
                                    return elemLang === lang || elemLang.indexOf(lang + "-") === 0
                                }
                            } while ((elem = elem.parentNode) && elem.nodeType === 1);
                            return false
                        }
                    }),
                    target: function(elem) {
                        var hash = window.location && window.location.hash;
                        return hash && hash.slice(1) === elem.id
                    },
                    root: function(elem) {
                        return elem === docElem
                    },
                    focus: function(elem) {
                        return elem === document.activeElement && (!document.hasFocus || document.hasFocus()) && !!(elem.type || elem.href || ~elem.tabIndex)
                    },
                    enabled: createDisabledPseudo(false),
                    disabled: createDisabledPseudo(true),
                    checked: function(elem) {
                        var nodeName = elem.nodeName.toLowerCase();
                        return (nodeName === "input" && !!elem.checked) || (nodeName === "option" && !!elem.selected)
                    },
                    selected: function(elem) {
                        if (elem.parentNode) {
                            elem.parentNode.selectedIndex
                        }
                        return elem.selected === true
                    },
                    empty: function(elem) {
                        for (elem = elem.firstChild; elem; elem = elem.nextSibling) {
                            if (elem.nodeType < 6) {
                                return false
                            }
                        }
                        return true
                    },
                    parent: function(elem) {
                        return !Expr.pseudos.empty(elem)
                    },
                    header: function(elem) {
                        return rheader.test(elem.nodeName)
                    },
                    input: function(elem) {
                        return rinputs.test(elem.nodeName)
                    },
                    button: function(elem) {
                        var name = elem.nodeName.toLowerCase();
                        return name === "input" && elem.type === "button" || name === "button"
                    },
                    text: function(elem) {
                        var attr;
                        return elem.nodeName.toLowerCase() === "input" && elem.type === "text" && ((attr = elem.getAttribute("type")) == null || attr.toLowerCase() === "text")
                    },
                    first: createPositionalPseudo(function() {
                        return [0]
                    }),
                    last: createPositionalPseudo(function(matchIndexes, length) {
                        return [length - 1]
                    }),
                    eq: createPositionalPseudo(function(matchIndexes, length, argument) {
                        return [argument < 0 ? argument + length : argument]
                    }),
                    even: createPositionalPseudo(function(matchIndexes, length) {
                        var i = 0;
                        for (; i < length; i += 2) {
                            matchIndexes.push(i)
                        }
                        return matchIndexes
                    }),
                    odd: createPositionalPseudo(function(matchIndexes, length) {
                        var i = 1;
                        for (; i < length; i += 2) {
                            matchIndexes.push(i)
                        }
                        return matchIndexes
                    }),
                    lt: createPositionalPseudo(function(matchIndexes, length, argument) {
                        var i = argument < 0 ? argument + length : argument > length ? length : argument;
                        for (; --i >= 0;) {
                            matchIndexes.push(i)
                        }
                        return matchIndexes
                    }),
                    gt: createPositionalPseudo(function(matchIndexes, length, argument) {
                        var i = argument < 0 ? argument + length : argument;
                        for (; ++i < length;) {
                            matchIndexes.push(i)
                        }
                        return matchIndexes
                    })
                }
            };
            Expr.pseudos.nth = Expr.pseudos.eq;
            for (i in {
                    radio: true,
                    checkbox: true,
                    file: true,
                    password: true,
                    image: true
                }) {
                Expr.pseudos[i] = createInputPseudo(i)
            }
            for (i in {
                    submit: true,
                    reset: true
                }) {
                Expr.pseudos[i] = createButtonPseudo(i)
            }

            function setFilters() {}
            setFilters.prototype = Expr.filters = Expr.pseudos;
            Expr.setFilters = new setFilters();
            tokenize = Sizzle.tokenize = function(selector, parseOnly) {
                var matched, match, tokens, type, soFar, groups, preFilters, cached = tokenCache[selector + " "];
                if (cached) {
                    return parseOnly ? 0 : cached.slice(0)
                }
                soFar = selector;
                groups = [];
                preFilters = Expr.preFilter;
                while (soFar) {
                    if (!matched || (match = rcomma.exec(soFar))) {
                        if (match) {
                            soFar = soFar.slice(match[0].length) || soFar
                        }
                        groups.push((tokens = []))
                    }
                    matched = false;
                    if ((match = rcombinators.exec(soFar))) {
                        matched = match.shift();
                        tokens.push({
                            value: matched,
                            type: match[0].replace(rtrim, " ")
                        });
                        soFar = soFar.slice(matched.length)
                    }
                    for (type in Expr.filter) {
                        if ((match = matchExpr[type].exec(soFar)) && (!preFilters[type] || (match = preFilters[type](match)))) {
                            matched = match.shift();
                            tokens.push({
                                value: matched,
                                type: type,
                                matches: match
                            });
                            soFar = soFar.slice(matched.length)
                        }
                    }
                    if (!matched) {
                        break
                    }
                }
                return parseOnly ? soFar.length : soFar ? Sizzle.error(selector) : tokenCache(selector, groups).slice(0)
            };

            function toSelector(tokens) {
                var i = 0,
                    len = tokens.length,
                    selector = "";
                for (; i < len; i++) {
                    selector += tokens[i].value
                }
                return selector
            }

            function addCombinator(matcher, combinator, base) {
                var dir = combinator.dir,
                    skip = combinator.next,
                    key = skip || dir,
                    checkNonElements = base && key === "parentNode",
                    doneName = done++;
                return combinator.first ? function(elem, context, xml) {
                    while ((elem = elem[dir])) {
                        if (elem.nodeType === 1 || checkNonElements) {
                            return matcher(elem, context, xml)
                        }
                    }
                    return false
                } : function(elem, context, xml) {
                    var oldCache, uniqueCache, outerCache, newCache = [dirruns, doneName];
                    if (xml) {
                        while ((elem = elem[dir])) {
                            if (elem.nodeType === 1 || checkNonElements) {
                                if (matcher(elem, context, xml)) {
                                    return true
                                }
                            }
                        }
                    } else {
                        while ((elem = elem[dir])) {
                            if (elem.nodeType === 1 || checkNonElements) {
                                outerCache = elem[expando] || (elem[expando] = {});
                                uniqueCache = outerCache[elem.uniqueID] || (outerCache[elem.uniqueID] = {});
                                if (skip && skip === elem.nodeName.toLowerCase()) {
                                    elem = elem[dir] || elem
                                } else {
                                    if ((oldCache = uniqueCache[key]) && oldCache[0] === dirruns && oldCache[1] === doneName) {
                                        return (newCache[2] = oldCache[2])
                                    } else {
                                        uniqueCache[key] = newCache;
                                        if ((newCache[2] = matcher(elem, context, xml))) {
                                            return true
                                        }
                                    }
                                }
                            }
                        }
                    }
                    return false
                }
            }

            function elementMatcher(matchers) {
                return matchers.length > 1 ? function(elem, context, xml) {
                    var i = matchers.length;
                    while (i--) {
                        if (!matchers[i](elem, context, xml)) {
                            return false
                        }
                    }
                    return true
                } : matchers[0]
            }

            function multipleContexts(selector, contexts, results) {
                var i = 0,
                    len = contexts.length;
                for (; i < len; i++) {
                    Sizzle(selector, contexts[i], results)
                }
                return results
            }

            function condense(unmatched, map, filter, context, xml) {
                var elem, newUnmatched = [],
                    i = 0,
                    len = unmatched.length,
                    mapped = map != null;
                for (; i < len; i++) {
                    if ((elem = unmatched[i])) {
                        if (!filter || filter(elem, context, xml)) {
                            newUnmatched.push(elem);
                            if (mapped) {
                                map.push(i)
                            }
                        }
                    }
                }
                return newUnmatched
            }

            function setMatcher(preFilter, selector, matcher, postFilter, postFinder, postSelector) {
                if (postFilter && !postFilter[expando]) {
                    postFilter = setMatcher(postFilter)
                }
                if (postFinder && !postFinder[expando]) {
                    postFinder = setMatcher(postFinder, postSelector)
                }
                return markFunction(function(seed, results, context, xml) {
                    var temp, i, elem, preMap = [],
                        postMap = [],
                        preexisting = results.length,
                        elems = seed || multipleContexts(selector || "*", context.nodeType ? [context] : context, []),
                        matcherIn = preFilter && (seed || !selector) ? condense(elems, preMap, preFilter, context, xml) : elems,
                        matcherOut = matcher ? postFinder || (seed ? preFilter : preexisting || postFilter) ? [] : results : matcherIn;
                    if (matcher) {
                        matcher(matcherIn, matcherOut, context, xml)
                    }
                    if (postFilter) {
                        temp = condense(matcherOut, postMap);
                        postFilter(temp, [], context, xml);
                        i = temp.length;
                        while (i--) {
                            if ((elem = temp[i])) {
                                matcherOut[postMap[i]] = !(matcherIn[postMap[i]] = elem)
                            }
                        }
                    }
                    if (seed) {
                        if (postFinder || preFilter) {
                            if (postFinder) {
                                temp = [];
                                i = matcherOut.length;
                                while (i--) {
                                    if ((elem = matcherOut[i])) {
                                        temp.push((matcherIn[i] = elem))
                                    }
                                }
                                postFinder(null, (matcherOut = []), temp, xml)
                            }
                            i = matcherOut.length;
                            while (i--) {
                                if ((elem = matcherOut[i]) && (temp = postFinder ? indexOf(seed, elem) : preMap[i]) > -1) {
                                    seed[temp] = !(results[temp] = elem)
                                }
                            }
                        }
                    } else {
                        matcherOut = condense(matcherOut === results ? matcherOut.splice(preexisting, matcherOut.length) : matcherOut);
                        if (postFinder) {
                            postFinder(null, results, matcherOut, xml)
                        } else {
                            push.apply(results, matcherOut)
                        }
                    }
                })
            }

            function matcherFromTokens(tokens) {
                var checkContext, matcher, j, len = tokens.length,
                    leadingRelative = Expr.relative[tokens[0].type],
                    implicitRelative = leadingRelative || Expr.relative[" "],
                    i = leadingRelative ? 1 : 0,
                    matchContext = addCombinator(function(elem) {
                        return elem === checkContext
                    }, implicitRelative, true),
                    matchAnyContext = addCombinator(function(elem) {
                        return indexOf(checkContext, elem) > -1
                    }, implicitRelative, true),
                    matchers = [function(elem, context, xml) {
                        var ret = (!leadingRelative && (xml || context !== outermostContext)) || ((checkContext = context).nodeType ? matchContext(elem, context, xml) : matchAnyContext(elem, context, xml));
                        checkContext = null;
                        return ret
                    }];
                for (; i < len; i++) {
                    if ((matcher = Expr.relative[tokens[i].type])) {
                        matchers = [addCombinator(elementMatcher(matchers), matcher)]
                    } else {
                        matcher = Expr.filter[tokens[i].type].apply(null, tokens[i].matches);
                        if (matcher[expando]) {
                            j = ++i;
                            for (; j < len; j++) {
                                if (Expr.relative[tokens[j].type]) {
                                    break
                                }
                            }
                            return setMatcher(i > 1 && elementMatcher(matchers), i > 1 && toSelector(tokens.slice(0, i - 1).concat({
                                value: tokens[i - 2].type === " " ? "*" : ""
                            })).replace(rtrim, "$1"), matcher, i < j && matcherFromTokens(tokens.slice(i, j)), j < len && matcherFromTokens((tokens = tokens.slice(j))), j < len && toSelector(tokens))
                        }
                        matchers.push(matcher)
                    }
                }
                return elementMatcher(matchers)
            }

            function matcherFromGroupMatchers(elementMatchers, setMatchers) {
                var bySet = setMatchers.length > 0,
                    byElement = elementMatchers.length > 0,
                    superMatcher = function(seed, context, xml, results, outermost) {
                        var elem, j, matcher, matchedCount = 0,
                            i = "0",
                            unmatched = seed && [],
                            setMatched = [],
                            contextBackup = outermostContext,
                            elems = seed || byElement && Expr.find.TAG("*", outermost),
                            dirrunsUnique = (dirruns += contextBackup == null ? 1 : Math.random() || 0.1),
                            len = elems.length;
                        if (outermost) {
                            outermostContext = context === document || context || outermost
                        }
                        for (; i !== len && (elem = elems[i]) != null; i++) {
                            if (byElement && elem) {
                                j = 0;
                                if (!context && elem.ownerDocument !== document) {
                                    setDocument(elem);
                                    xml = !documentIsHTML
                                }
                                while ((matcher = elementMatchers[j++])) {
                                    if (matcher(elem, context || document, xml)) {
                                        results.push(elem);
                                        break
                                    }
                                }
                                if (outermost) {
                                    dirruns = dirrunsUnique
                                }
                            }
                            if (bySet) {
                                if ((elem = !matcher && elem)) {
                                    matchedCount--
                                }
                                if (seed) {
                                    unmatched.push(elem)
                                }
                            }
                        }
                        matchedCount += i;
                        if (bySet && i !== matchedCount) {
                            j = 0;
                            while ((matcher = setMatchers[j++])) {
                                matcher(unmatched, setMatched, context, xml)
                            }
                            if (seed) {
                                if (matchedCount > 0) {
                                    while (i--) {
                                        if (!(unmatched[i] || setMatched[i])) {
                                            setMatched[i] = pop.call(results)
                                        }
                                    }
                                }
                                setMatched = condense(setMatched)
                            }
                            push.apply(results, setMatched);
                            if (outermost && !seed && setMatched.length > 0 && (matchedCount + setMatchers.length) > 1) {
                                Sizzle.uniqueSort(results)
                            }
                        }
                        if (outermost) {
                            dirruns = dirrunsUnique;
                            outermostContext = contextBackup
                        }
                        return unmatched
                    };
                return bySet ? markFunction(superMatcher) : superMatcher
            }
            compile = Sizzle.compile = function(selector, match) {
                var i, setMatchers = [],
                    elementMatchers = [],
                    cached = compilerCache[selector + " "];
                if (!cached) {
                    if (!match) {
                        match = tokenize(selector)
                    }
                    i = match.length;
                    while (i--) {
                        cached = matcherFromTokens(match[i]);
                        if (cached[expando]) {
                            setMatchers.push(cached)
                        } else {
                            elementMatchers.push(cached)
                        }
                    }
                    cached = compilerCache(selector, matcherFromGroupMatchers(elementMatchers, setMatchers));
                    cached.selector = selector
                }
                return cached
            };
            select = Sizzle.select = function(selector, context, results, seed) {
                var i, tokens, token, type, find, compiled = typeof selector === "function" && selector,
                    match = !seed && tokenize((selector = compiled.selector || selector));
                results = results || [];
                if (match.length === 1) {
                    tokens = match[0] = match[0].slice(0);
                    if (tokens.length > 2 && (token = tokens[0]).type === "ID" && context.nodeType === 9 && documentIsHTML && Expr.relative[tokens[1].type]) {
                        context = (Expr.find.ID(token.matches[0].replace(runescape, funescape), context) || [])[0];
                        if (!context) {
                            return results
                        } else {
                            if (compiled) {
                                context = context.parentNode
                            }
                        }
                        selector = selector.slice(tokens.shift().value.length)
                    }
                    i = matchExpr.needsContext.test(selector) ? 0 : tokens.length;
                    while (i--) {
                        token = tokens[i];
                        if (Expr.relative[(type = token.type)]) {
                            break
                        }
                        if ((find = Expr.find[type])) {
                            if ((seed = find(token.matches[0].replace(runescape, funescape), rsibling.test(tokens[0].type) && testContext(context.parentNode) || context))) {
                                tokens.splice(i, 1);
                                selector = seed.length && toSelector(tokens);
                                if (!selector) {
                                    push.apply(results, seed);
                                    return results
                                }
                                break
                            }
                        }
                    }
                }(compiled || compile(selector, match))(seed, context, !documentIsHTML, results, !context || rsibling.test(selector) && testContext(context.parentNode) || context);
                return results
            };
            support.sortStable = expando.split("").sort(sortOrder).join("") === expando;
            support.detectDuplicates = !!hasDuplicate;
            setDocument();
            support.sortDetached = assert(function(el) {
                return el.compareDocumentPosition(document.createElement("fieldset")) & 1
            });
            if (!assert(function(el) {
                    el.innerHTML = "<a href='#'></a>";
                    return el.firstChild.getAttribute("href") === "#"
                })) {
                addHandle("type|href|height|width", function(elem, name, isXML) {
                    if (!isXML) {
                        return elem.getAttribute(name, name.toLowerCase() === "type" ? 1 : 2)
                    }
                })
            }
            if (!support.attributes || !assert(function(el) {
                    el.innerHTML = "<input/>";
                    el.firstChild.setAttribute("value", "");
                    return el.firstChild.getAttribute("value") === ""
                })) {
                addHandle("value", function(elem, name, isXML) {
                    if (!isXML && elem.nodeName.toLowerCase() === "input") {
                        return elem.defaultValue
                    }
                })
            }
            if (!assert(function(el) {
                    return el.getAttribute("disabled") == null
                })) {
                addHandle(booleans, function(elem, name, isXML) {
                    var val;
                    if (!isXML) {
                        return elem[name] === true ? name.toLowerCase() : (val = elem.getAttributeNode(name)) && val.specified ? val.value : null
                    }
                })
            }
            var _sizzle = window.Sizzle;
            Sizzle.noConflict = function() {
                if (window.Sizzle === Sizzle) {
                    window.Sizzle = _sizzle
                }
                return Sizzle
            };
            cash.Find = Sizzle;
            cash.sessionCamSelectors = Sizzle.selectors.pseudos;
            cash.sessionCamFilters = Sizzle.selectors.filter;
            cash.cashMatches = Sizzle.matches;
            cash.cashMatchesSelector = Sizzle.matchesSelector
        })();
        cash.sessionCamSelectors.visible = function(ele) {
            return ele.offsetWidth > 0 && ele.offsetHeight > 0
        };
        cash.sessionCamSelectors.hidden = function(ele) {
            return !cash.sessionCamSelectors.visible(elem)
        };
        window.sessionCamJQuery = cash
    })();
    this.gg = '591'; //-->
    window.sessioncamConfiguration = window.sessioncamConfiguration || {};
    window.sessioncamConfiguration.customDataObjects = window.sessioncamConfiguration.customDataObjects || [];
    window.sessioncamConfiguration.isManuallyStartedRecording = false;

    function iO() {
        this.bT = [];
    };
    iO.prototype.append = function append(string) {
        this.bT.push(string);
        return this;
    };
    iO.prototype.toString = function toString() {
        return this.bT.join("");
    };
    iO.prototype.isEmpty = function isEmpty() {
        return !this.bT.length;
    };
    iO.prototype.reset = function reset() {
        this.bT = [];
        return;
    };
    this.iO = function() {
        return new iO();
    };

    function fq() {
        this.ShowFirstChars = 0;
        this.ShowLastChars = 0;
    };
    this.fq = function() {
        return new fq();
    };
    this.mk = 46;
    this.ef = 8;
    this.dh = 32;
    this.kO = 13;
    this.ku = 37;
    this.jY = 38;
    this.ko = 39;
    this.cP = 40;
    this.altKey = 18;
    this.ctrlKey = 17;
    this.dp = 45;
    this.cD = 36;
    this.cT = 35;
    this.co = 33;
    this.cX = 34;
    this.hK = '';
    this.lb = window.sessioncamConfiguration.removeQueryStrings ? decodeURI(encodeURI(window.location.protocol + '//' + window.location.hostname + (window.location.port ? (':' + window.location.port) : '') + window.location.pathname)) : decodeURI(encodeURI(window.location));
    this.getPageIdResponseOk = false;
    this.cZ = false;
    this.mo = false;
    this.hk = null;
    this.gw = null;
    this.qQ = window.sessioncamConfiguration.removeQueryStrings ? decodeURI(encodeURI(window.location.protocol + '//' + window.location.hostname + (window.location.port ? (':' + window.location.port) : '') + window.location.pathname)) : window.location.href;
    this.kp = 0;
    this.jX = 0;
    this.scrollX = 0;
    this.scrollY = 0;
    this.dL = 0;
    this.ce = 0;
    this.cO = -1;
    this.cq = -1;
    this.dB = 0;
    this.bY = 0;
    this.kZ = 0;
    this.jL = 0;
    this.cs = false;
    this.mI = 1;
    this.bH = '/Logger/log.aspx';
    this.jS = false;
    this.me = false;
    this.mt = false;
    this.ft = 1000;
    this.fd = 200;
    this.gM = 50;
    this.nP = false;
    this.gQ = 4;
    this.kR = [];
    this.bv = [];
    this.aj = 'sessioncammonitorscroll';
    this.oN = 'sessioncammonitoroverflow';
    this.sessioncamMainFixed = 'sessioncammainfixed';
    this.es = 500;
    this.bF = null;
    this.jP = 250;
    this.kz = 0;
    this.kE = 10;
    this.kF = '';
    this.lc = new iO();
    this.requestType = '';
    this.ll = '<!-- SessionCam:Hide -->';
    this.ld = '<!-- /SessionCam:Hide -->';
    this.mA = 'sessioncamhidetext';
    this.je = '#dpmaxz_all, grammarly-ghost, .cap-one-ext-container, #c1_ext_cc, #c1_ext_cvc, #c1_card_info_id';
    this.qX = ['name', 'id', 'class', 'type', 'sessioncam-name', 'style'];
    this.er = '#goog-gt-tt';
    this.sessionCamIgnoreChanges = "sessioncamignorechanges";
    this.sessionCamPreserveWhitespace = "sessioncampreservewhitespace";
    this.nz = "sessioncam-private";
    this.sessioncamName = "sessioncam-name";
    this.kX = 'input[type=text], input[type=email], input[type=url], input[type=search], input[type=tel]';
    this.jZ = 'input[type=number], input[type=date], input[type=week], input[type=month], input[type=time], input[type=datetime], input[type=datetime-local], input[type=color], input[type=range]';
    this.aG = false;
    this.fF = 0;
    this.eY = 1;
    this.pD = 1;
    this.la = [];
    this.mJ = 0;
    this.nf = '';
    this.aU = false;
    this.bI = 0;
    this.bs = '';
    this.bC = [];
    this.useVPLsAsNewPageLoad = false;
    this.aA = false;
    this.ph = '';
    this.oj = '';
    this.om = 1000;
    this.oh = [];
    this.rg = 'sessioncamlinktext';
    this.hx = ["aria-expanded", "aria-hidden", "aria-busy"];
    this.AATriggered = false;
    this.GATriggered = false;
    this.frameworks = {
        nestedForms: false
    };
    this.ge = false;
    this.fP = 1;
    this.aI = {};
    this.kk = 0;
    this.kj = 0;
    this.kM = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=";
    this.eE = '';
    this.as = -1;
    this.kc = -1;
    this.qU = '\u001F';
    this.fi = '\u001E';
    this.ed = '\u001D';
    this.mH = false;
    this.ny = 0;
    this.ng = 0;
    this.oC = 0;
    this.pageStates = [];
    this.currentPageState = '';
    this.pageStatePfl = '_sc_pfl';
    this.ou = 1000;
    this.ot = 50;
    this.oz = this.ot;
    this.du = 'a,input[type="submit"],input[type="button"],button';
    this.linkAnalyticsElementsAsArray = this.du.split(',');
    this.qI = 2000;
    this.qo = 1000;
    this.qR = ['p', 'iframe', 'br', 'pre', 'code', 'script'];
    this.qh = '';
    this.qt = [];
    this.pK = {};
    this.pH = 0;
    this.rb = 50;
    this.rh = false;
    this.bIngestionPercent = 0;
    this.ak = null;
    this.originalUrl = null;
    this.Q = false;
    this.fo = {
        'Click': 'c',
        'iU': 'f',
        'jr': 'b',
        'mL': 'ws',
        'ri': 'es',
        'lU': 'mp',
        'MouseDown': 'md',
        'MouseUp': 'mu',
        'PageLoad': 'pl',
        'iH': 'pu',
        'KeyPress': 'k',
        'KeyDown': 'kd',
        'hQ': 'fe',
        'ly': 'fi',
        'kr': 'fs',
        'jv': 'ft',
        'Start': 'st',
        'jd': 'af',
        'hS': 'aa',
        'pw': 'r',
        'jA': 'cc',
        'mx': 'ic',
        'js': 'tc',
        'ib': 'sc',
        'iX': 'src',
        'iB': 'alt',
        'pr': 'dsc',
        'qG': 'dc',
        'ji': 'tg',
        'bl': 'px',
        'jz': 'fx',
        'iJ': 'val',
        'mU': 'gvl',
        'ew': 'tag',
        'eH': 'lh',
        'DefaultValue': 'dv',
        'hY': 'kis',
        'jq': 'hcc',
        'lC': 'hsc',
        'iy': 'ha',
        'jc': 'hc',
        'il': 'hr',
        'ik': 'bsa',
        'iG': 'bsf',
        'iI': 'bsc',
        'iK': 'bsr',
        'qy': 'wr',
        'io': 'oc',
        'eo': 'tb',
        'Zoom': 'z',
        'iL': 'ts',
        'iq': 'te',
        'hO': 'tm',
        'hZ': 'tf',
        'iF': 'tcl',
        'ClientEvent': 'ce',
        'nl': 'cvs',
        'ea': 'hs',
        'ns': 'he',
        'lO': 'set',
        'nN': 'bv',
        'oG': 'bc',
        'po': 'ov',
        'oO': 'je',
        'ok': 'if',
        'oM': 'be',
        'oI': 'hsh',
        'pY': 'zhs',
        'qL': 'me',
        'pM': 'ps',
        'ChangedAdoptedStyle': 'cas',
        'InitialAdoptedStyle': 'ias',
    };
    this.pU = ['fe', 'fi', 'fs', 'ft', 'lh', 'ce', 'gvl', 'c', 'ws', 'dv', 'wr', 'tag'];

    function ia(sessionId, kL, iE) {
        this.B = 7;
        this.C = null;
        this.D = 0;
        this.E = [];
        this.H = '';
        this.I = 0;
        this.J = '';
        this.L = 0;
        this.M = 0;
        this.N = '';
        this.P = '';
        this.S = (sessionId ? sessionId : '');
        this.T = 0;
        this.U = '';
        this.V = false;
        this.X = false;
        this.AA = (kL ? kL : '');
        this.AB = (iE ? iE : '');
        this.AS = 1;
        this.AT = 250;
        this.AV = 1;
        this.AW = '';
        this.AX = 1;
        this.AY = 1;
        this.BB = [];
        this.BC = false;
        this.BD = [];
        this.BI = '';
        this.BJ = '';
        this.BL = 0;
        this.BO = '';
        this.BP = 0;
        this.BQ = 1;
        this.BT = 0;
        this.BU = 0;
        this.BV = 0;
        this.BW = 0;
        this.BX = '';
        this.BY = '';
        this.CA = 0;
        this.CB = 0;
        this.CC = [];
        this.CD = [];
        this.CF = 1;
    };
    this.ia = function(sessionId, kL, iE) {
        return new ia(sessionId, kL, iE);
    };
    this.gi = false;
    this.lG = null;
    this.configuration = new ia();

    function iA(url, uri, gz, kL, iE) {
        this.url = url;
        this.uri = uri;
        this.gz = gz;
        this.kL = kL;
        this.iE = iE;
    };
    this.iA = function(url, uri, gz, kL, iE) {
        return new iA(url, uri, gz, kL, iE);
    };
    this.iD = [];
    this.jG = this.getTime();
    this.eq = this.jG;
    this.gm = this.jG;
    this.aM = {};
    this.bx = [];
    this.bE = [];
    this.bz = 1000;
    this.gh = 1;
    this.fY = false;
    this.hA = [];
    this.touches = {};
    this.hw = this.getTime();
    this.jD = 0;
    this.hM = 0;
    this.gY = null;
    this.gE = 1;
    this.gX = null;
    this.gU = 0;
    this.hy = 0;
    this.hh = 0;
    this.fV = 500;
    this.gO = null;
    this.gL = 0;
    this.gD = 0;
    this.notifications = (function() {
        var hD = {};
        var mR = hD.hasOwnProperty;
        return {
            subscribe: function(topic, listener) {
                try {
                    if (!mR.call(hD, topic)) hD[topic] = [];
                    var index = hD[topic].push(listener) - 1;
                    return {
                        remove: function() {
                            try {
                                delete hD[topic][index];
                            } catch (err) {}
                        }
                    };
                } catch (err) {
                    return err;
                }
            },
            lD: function(topic, info) {
                if (!mR.call(hD, topic)) return;
                hD[topic].forEach(function(fn) {
                    try {
                        fn(info !== undefined ? info : {});
                    } catch (err) {}
                });
            }
        };
    })();
    this.oY = (function() {
        var oJ = 0,
            nY = false,
            fG;
        fG = (function() {
            var fD = false,
                gc, oH = 0;

            function configureOmniture(config) {
                try {
                    if (++oH > 20) {
                        return;
                    }
                    if (typeof gc === 'undefined' || !gc.tl) {
                        setTimeout(configureOmniture.bind(null, config), 250);
                        return;
                    }
                    if (!config.BF.evar.BH) {
                        return;
                    }
                    gc.linkTrackVars = config.BF.evar.BH;
                    gc[config.BF.evar.BH] = window.sessionCamRecorder.sessionId();
                    gc.tl(true, 'o', 'SessionCam Session ID');
                } catch (exc) {
                    sessionCamRecorder.log('An error occurred while configuring Omniture');
                }
            };
            return {
                initialise: function(config) {
                    fD = true;
                    if (Object.prototype.hasOwnProperty.call(window, "s_tms")) {
                        gc = window.s_tms;
                    }
                    if (!gc && Object.prototype.hasOwnProperty.call(window, "s_c_il")) {
                        for (var index in window.s_c_il) {
                            var item = window.s_c_il[parseInt(index)];
                            if (item.constructor && ((item.constructor.name === "AppMeasurement") || (item.constructor.toString().indexOf('function AppMeasurement(') === 0))) {
                                gc = item;
                                break;
                            }
                        }
                    }
                    if (!gc && Object.prototype.hasOwnProperty.call(window, "s")) {
                        gc = window.s;
                    }
                    if (!config.BF.configPageName.BH || config.BF.configPageName.BH === 0 || config.BF.configPageName.BH === '0' || !gc) {
                        return;
                    }
                    window.sessionCamRecorder.pl = gc;
                    if ((gc.pageName !== undefined) && (gc.pageName !== null) && (gc.pageName.length > 0)) {
                        window.sessioncamConfiguration.SessionCamPath = "";
                        window.sessioncamConfiguration.SessionCamPageName = gc.pageName;
                    }
                },
                enable: function(config, override) {
                    if (!config.BF || !config.BF.evar || (sessionCamRecorder.configuration.BV || sessionCamRecorder.AATriggered) || (sessionCamRecorder.configuration.BL !== 1 && !override) || !fD || !gc) {
                        return;
                    }
                    getSessionCamId(configureOmniture.bind(this, config), null, "AATriggered");
                }
            };
        })();

        function getSessionCamId(oA, oy, integrationName) {
            function oe() {
                try {
                    if (oJ >= 20) {
                        if (oy) oy();
                        return;
                    }
                    if (nY) {
                        if (oA) oA();
                        return;
                    }++oJ;
                    if (typeof window.sessionCamRecorder == 'undefined' || window.sessionCamRecorder.sessionId().length < 40) {
                        setTimeout(oe, 250);
                        return;
                    }
                    nY = true;
                    if (oA) oA();
                } catch (exc) {
                    sessionCamRecorder.log('An error occurred while attempting to retrieve the SessionId');
                }
            };
            oe();
            sessionCamRecorder[integrationName] = true;
        };

        function enableUniversalAnalytics(config, override) {
            if (!config.BF || (sessionCamRecorder.configuration.BV || sessionCamRecorder.GATriggered) || (sessionCamRecorder.configuration.BL !== 1 && !override)) {
                return;
            }
            var oH = 0;

            function configureAnalytics() {
                var aq;
                try {
                    var bc = 'SC_Tracking';
                    var gtagEnabled = (config.BF.GtagEnabled && config.BF.GtagEnabled.BH == '1' ? true : false);
                    if (++oH > 20) {
                        return;
                    }
                    if ((!gtagEnabled && typeof ga === 'undefined') || (gtagEnabled && typeof gtag === 'undefined')) {
                        setTimeout(configureAnalytics, 250);
                        return;
                    }
                    for (var prop in config.BF) {
                        if (config.BF[prop].BG !== 0 || !config.BF[prop].BH || !config.BF[prop].BH.match(/dimension(?:200|[0-1]?[0-9]?[0-9])$/i)) {
                            continue;
                        }
                        if (gtagEnabled) {
                            if (prop.match(/dimension/)) continue;
                            var mapParameters = {};
                            mapParameters[config.BF[prop].BH] = "SessionCamSessionId";
                            gtag("config", prop, {
                                custom_map: mapParameters,
                                send_page_view: false,
                                page_location: window.sessioncamConfiguration.removeQueryStrings ? decodeURI(encodeURI(window.location.protocol + '//' + window.location.hostname + (window.location.port ? (':' + window.location.port) : '') + window.location.pathname)) : window.location.href
                            });
                            gtag("event", "SessionCamRecording", {
                                "SessionCamSessionId": sessionCamRecorder.sessionId(),
                                "non_interaction": true,
                                "send_to": prop
                            });
                        } else {
                            if (prop != 'dimension') {
                                if (prop.indexOf('UA-') < 0) {
                                    bc = prop;
                                } else {
                                    ga('create', prop, {
                                        'name': bc
                                    });
                                }
                            } else {
                                aq = ga.getAll()[0].get('trackingId');
                                ga('create', aq, {
                                    'name': bc
                                });
                            }
                            if (window.sessioncamConfiguration.removeQueryStrings) {
                                ga(bc + '.set', 'location', decodeURI(encodeURI(window.location.protocol + '//' + window.location.hostname + (window.location.port ? (':' + window.location.port) : '') + window.location.pathname)));
                            }
                            ga(bc + '.set', config.BF[prop].BH, sessionCamRecorder.sessionId());
                            ga(bc + '.send', 'event', 'SessionCam', 'SessionID', 'SessionCam Recording ID', {
                                'nonInteraction': 1
                            });
                        }
                    }
                } catch (exc) {
                    sessionCamRecorder.log('An error occurred while configuring Google Universal Analytics');
                }
            };
            getSessionCamId(configureAnalytics.bind(this), null, "GATriggered");
        };

        function enablePiwik(config) {
            if (!config.BF || !config.BF.varIndex) {
                return;
            }
            var oH = 0;

            function configurePiwik() {
                try {
                    if (++oH > 20) {
                        return;
                    }
                    if (typeof _paq === 'undefined' || !_paq.push) {
                        setTimeout(configurePiwik, 250);
                        return;
                    }
                    _paq.push(['setCustomVariable', Number.parseInt(config.BF.varIndex.BH), "SessionCamID", sessionCamRecorder.sessionId(), "visit"]);
                    _paq.push(['trackPageView']);
                } catch (exc) {
                    sessionCamRecorder.log('An error occurred while configuring Piwik');
                }
            };
            getSessionCamId(configurePiwik.bind(this), null);
        };

        function enableVisualWebOptimiser() {
            var _vis_counter = 0;
            window._vis_opt_queue = window._vis_opt_queue || [];
            window._vis_opt_queue.push(function() {
                try {
                    if (!_vis_counter) {
                        var _vis_data = {},
                            _vis_combination, _vis_id, _vis_l = 0;
                        for (; _vis_l < _vwo_exp_ids.length; _vis_l++) {
                            _vis_id = _vwo_exp_ids[_vis_l];
                            if (_vwo_exp[_vis_id].ready) {
                                _vis_combination = _vis_opt_readCookie('_vis_opt_exp_' + _vis_id + '_combi');
                                if (typeof(_vwo_exp[_vis_id].combination_chosen) != "undefined") {
                                    _vis_combination = _vwo_exp[_vis_id].combination_chosen;
                                }
                                if (typeof(_vwo_exp[_vis_id].comb_n[_vis_combination]) != "undefined") {
                                    _vis_data[_vis_id] = _vwo_exp[_vis_id].comb_n[_vis_combination];
                                    _vis_counter++;
                                }
                            }
                        }
                        if (_vis_counter) {
                            for (var of in _vis_data) {
                                if (_vis_data.hasOwnProperty( of )) {
                                    window.sessioncamConfiguration.customDataObjects.push({
                                        key: "Campaign-" + of ,
                                        value: _vis_data[ of ]
                                    });
                                }
                            }
                        }
                    }
                } catch (err) {
                    sessionCamRecorder.log('An error occurred while configuring Visual Web Optimizer');
                }
            });
        };

        function enableQubit() {
            var ps = 0;

            function oo() {
                var qubit = window.__qubit;
                if (ps >= 20) {
                    return;
                }
                if (typeof window.__qubit === 'undefined') {
                    setTimeout(oo, 200);
                    ++ps;
                    return;
                }
                window.__qubit.uv.on('qubit.experience', function(experience) {
                    var data = qubit.sessionCamData && qubit.sessionCamData[experience.experienceId];
                    var name = data || '' + experience.experienceId;
                    var ov;
                    if (experience.isControl) {
                        sessionCamRecorder.sendCustomDataEvent('Qubit: Control Seen', 'true');
                        ov = 'control';
                    } else {
                        sessionCamRecorder.sendCustomDataEvent('Qubit: Experience Seen', 'true');
                        ov = 'variation';
                    }
                    if (data && typeof data !== 'string' && data.expName && data.variations) {
                        name = data.expName;
                        ov = data.variations[experience.variationMasterId] || ov;
                    }
                    window.sessioncamConfiguration.customDataObjects.push({
                        key: 'Qubit: ' + name,
                        value: ov
                    });
                }).replay();
            };
            window.onQubitReady = window.onQubitReady || [];
            window.onQubitReady.push(oo);
        };

        function enableOptimizely() {
            var ps = 0;

            function oo() {
                if (ps >= 20) return;
                if (typeof window.optimizely === 'undefined') {
                    setTimeout(oo, 200);
                    ++ps;
                    return;
                }
                var hs = function(fh) {
                    var experiment = fh.experiment.name + '(' + fh.experiment.id + ')';
                    if (fh.experiment.name.indexOf(fh.experiment.id) !== -1) experiment = fh.experiment.id;
                    var variations = fh.variations.map(function(variation) {
                        if (!variation.name || variation.name == ('Var ' + variation.id)) return variation.id;
                        return variation.name + '(' + variation.id + ')';
                    }).join(',');
                    var fC = variations;
                    var fr = "Optimizely: " + experiment;
                    var item = {
                        key: fr,
                        value: fC
                    };
                    window.sessioncamConfiguration.customDataObjects.push(item);
                    sessionCamRecorder.sendCustomDataEvent('Optimizely: Experiment seen', 'true');
                };
                var hq = function(eD) {
                    var campaign = eD.campaignName + '(' + eD.id + ')';
                    if (!eD.campaignName) campaign = eD.id;
                    var experiment = eD.experiment.name;
                    if (!eD.experiment.name) experiment = eD.experiment.id;
                    var variation = eD.variation.name + '(' + eD.variation.id + ')';
                    if (!eD.variation.name) variation = eD.variation.id;
                    var fC = variation;
                    var fr = "Optimizely: " + experiment;
                    var item = {
                        key: fr,
                        value: fC
                    };
                    window.sessioncamConfiguration.customDataObjects.push(item);
                    sessionCamRecorder.sendCustomDataEvent('Optimizely: Experiment seen', 'true');
                };
                var ai = function(bP) {
                    var experiment = bP.experiment,
                        variation = bP.variation,
                        fC, fr;
                    if (!experiment.name) {
                        fr = "Optimizely: " + experiment.id;
                    } else {
                        fr = "Optimizely: " + experiment.name + '(' + experiment.id + ')';
                    }
                    if (!variation.name) {
                        fC = variation.id;
                    } else {
                        fC = variation.name + '(' + variation.id + ')';
                    }
                    var item = {
                        key: fr,
                        value: fC
                    };
                    window.sessioncamConfiguration.customDataObjects.push(item);
                    sessionCamRecorder.sendCustomDataEvent('Optimizely: Experiment seen', 'true');
                };
                (function jE(config) {
                    var gy = function(sendExperimentData) {
                        var data = window.optimizely && window.optimizely.data;
                        var state = data && data.state;
                        var i;
                        if (state) {
                            var activeExperiments = state.activeExperiments;
                            if (state.redirectExperiment) {
                                var ej = state.redirectExperiment.experimentId;
                                var index = -1;
                                for (i = 0; i < state.activeExperiments.length; i++) {
                                    if (state.activeExperiments[i] === ej) {
                                        index = i;
                                        break;
                                    }
                                }
                                if (index === -1) activeExperiments.push(ej);
                            }
                            for (i = 0; i < activeExperiments.length; i++) {
                                var fv = {
                                    experiment: {
                                        id: activeExperiments[i],
                                        name: data.experiments[activeExperiments[i]].name
                                    },
                                    variations: []
                                };
                                var gd = state.variationIdsMap[fv.experiment.id];
                                for (var j = 0; j < gd.length; j++) {
                                    var id = gd[j];
                                    var name = data.variations[id].name;
                                    fv.variations.push({
                                        id: id,
                                        name: name
                                    });
                                }
                                sendExperimentData(fv);
                            }
                        }
                    };
                    var hH = function(sendCampaignData) {
                        var fZ = function(id) {
                            var state = window.optimizely.get && window.optimizely.get('state');
                            var ei = state.getCampaignStates({
                                isActive: true
                            });
                            var eD = ei[id];
                            sendCampaignData(eD);
                        };
                        var gZ = function() {
                            window.optimizely = window.optimizely || [];
                            window.optimizely.push({
                                type: 'addListener',
                                filter: {
                                    type: 'lifecycle',
                                    name: 'campaignDecided'
                                },
                                handler: function(event) {
                                    var id = event.data.campaign.id;
                                    fZ(id);
                                }
                            });
                        };
                        var hF = function() {
                            window.optimizely = window.optimizely || [];
                            var state = window.optimizely.get && window.optimizely.get('state');
                            if (state) {
                                var ei = state.getCampaignStates({
                                    isActive: true
                                });
                                for (var id in ei) {
                                    if ({}.hasOwnProperty.call(ei, id) && !ei[id].isInCampaignHoldback) {
                                        fZ(id);
                                    }
                                }
                            }
                        };
                        hF();
                        gZ();
                    };
                    var al = function(sendEdgeData) {
                        var state = window.optimizelyEdge && window.optimizelyEdge.get && window.optimizelyEdge.get('state'),
                            activeEdgeExperimentsState = state && state.getActiveExperiments();
                        for (var experiment in activeEdgeExperimentsState) {
                            var be = activeEdgeExperimentsState[experiment];
                            var activeEdgeExperiments = {
                                experiment: {
                                    id: be.id,
                                    name: be.name
                                },
                                variation: {
                                    id: be.variation.id,
                                    name: be.variation.name
                                }
                            };
                            sendEdgeData(activeEdgeExperiments);
                        }
                    };
                    gy(config.sendExperimentData);
                    hH(config.sendCampaignData);
                    al(config.sendEdgeData);
                }({
                    sendExperimentData: hs,
                    sendCampaignData: hq,
                    sendEdgeData: ai
                }));
            };
            oo();
        };

        function enableForesee() {
            var ps = 0;
            (function initialiseForesee() {
                if (ps >= 20) {
                    sessionCamRecorder.sendCustomDataEvent('Integration Failed', 'Foresee was not available within 5 seconds of integration initialisation');
                    return;
                }
                if (typeof window.fsReady === "undefined" || typeof window.FSR === "undefined") {
                    setTimeout(initialiseForesee, 250);
                    ++ps;
                    return;
                }
                var FSR = window.FSR;
                window.fsReady(function() {
                    FSR.CPPS.set('SessionCam-replay-link', 'https://console.sessioncam.com/Console/Recordings/PlaybackSession?sessionId=' + sessionCamRecorder.sessionId());
                    FSR.onInviteShown.subscribe(function() {
                        sessionCamRecorder.sendCustomDataEvent('Foresee: Invite Shown', 'true');
                    }, true, true);
                    FSR.onInviteAccepted.subscribe(function() {
                        sessionCamRecorder.sendCustomDataEvent('Foresee: Invite Accepted', 'true');
                    }, true, true);
                    FSR.onInviteAbandoned.subscribe(function() {
                        sessionCamRecorder.sendCustomDataEvent('Foresee: Invite Abandoned', 'true');
                    }, true, true);
                    FSR.onInviteDeclined.subscribe(function() {
                        sessionCamRecorder.sendCustomDataEvent('Foresee: Invite Declined', 'true');
                    }, true, true);
                    FSR.onFeedbackShown.subscribe(function() {
                        sessionCamRecorder.sendCustomDataEvent('Foresee: Feedback Shown', 'true');
                    }, true, true);
                    FSR.onFeedbackSubmitted.subscribe(function(feedback) {
                        sessionCamRecorder.sendCustomDataEvent('Foresee: Feedback Submitted', 'true');
                        sessionCamRecorder.sendCustomDataEvent('Foresee: Feedback Exact Rating', feedback.rating);
                        foreseeLessThanGreaterThan(feedback.rating);
                    }, true, true);
                    FSR.onFeedbackClosed.subscribe(function() {
                        sessionCamRecorder.sendCustomDataEvent('Foresee: Feedback Closed', 'true');
                    }, true, true);
                });
            })();
        };

        function foreseeLessThanGreaterThan(rating) {
            if (rating != 5) {
                for (var lt = rating + 1; lt < 6; lt++) {
                    sessionCamRecorder.sendCustomDataEvent('Foresee: Feedback Rating Less Than', lt);
                }
            }
            if (rating != 1) {
                for (var gt = rating - 1; gt > 0; gt--) {
                    sessionCamRecorder.sendCustomDataEvent('Foresee: Feedback Rating Greater Than', gt);
                }
            }
        };

        function enableIntegration(config, override) {
            switch (config.BE) {
                case 0:
                    enableUniversalAnalytics(config, override);
                    break;
                case 1:
                    fG.enable(config, override);
                    break;
                case 2:
                    enablePiwik(config);
                    break;
                case 3:
                    enableVisualWebOptimiser(config);
                    break;
                case 4:
                    enableQubit(config);
                    break;
                case 5:
                    enableOptimizely(config);
                    break;
                case 7:
                    enableForesee();
                    break;
            }
        };

        function fa(config) {
            switch (config.BE) {
                case 1:
                    fG.initialise(config);
                    break;
            }
        };
        return {
            enableIntegration: enableIntegration,
            fa: fa
        };
    })();
};
SessionCamRecorder.prototype.an = function(gN, key) {
    return (gN ? gN[key] : null);
};
SessionCamRecorder.prototype.bg = function(gN, key, data) {
    if (gN) gN[key] = data;
};
SessionCamRecorder.prototype.ig = function() {
    try {
        if (document.addEventListener) {
            document.addEventListener('touchstart', sessionCamRecorder.ic, 'false');
            document.addEventListener('touchmove', sessionCamRecorder.ic, 'false');
            document.addEventListener('touchend', sessionCamRecorder.ic, 'false');
            document.addEventListener('touchcancel', sessionCamRecorder.ic, 'false');
        }
    } catch (err) {
        sessionCamRecorder.log('bindTouchEvents', err);
    }
};
SessionCamRecorder.prototype.ic = function(e) {
    try {
        switch (e.type) {
            case 'touchstart':
                sessionCamRecorder.hX(e);
                break;
            case 'touchmove':
                sessionCamRecorder.ii(e);
                break;
            case 'touchend':
            case 'touchcancel':
                sessionCamRecorder.iW(e);
                break;
        }
    } catch (err) {
        sessionCamRecorder.log('handleTouchEvent', err);
    }
};
SessionCamRecorder.prototype.iT = function(touches) {
    try {
        var i, j, fR;
        for (i = 0; i < touches.length; i++) {
            fR = false;
            for (j = 0; j < sessionCamRecorder.hA.length && !fR; j++) {
                if (sessionCamRecorder.hA[j].identifier == touches[i].identifier) {
                    sessionCamRecorder.hA[j] = touches[i];
                    fR = true;
                }
            }
            if (!fR) sessionCamRecorder.hA.push(touches[i]);
        }
    } catch (err) {
        sessionCamRecorder.log('addTouches', err);
    }
};
SessionCamRecorder.prototype.iw = function(touches, id) {
    try {
        var i;
        for (i = 0; i < touches.length; i++) {
            if (touches[i].identifier == id) {
                touches.splice(i, 1);
                return;
            }
        }
    } catch (err) {
        sessionCamRecorder.log('removeTouchByIdentifier', err);
    }
};
SessionCamRecorder.prototype.ii = function(e) {
    try {
        var data, gI;
        sessionCamRecorder.iT(e.changedTouches);
        gI = sessionCamRecorder.getTime();
        if (sessionCamRecorder.gO != null) {
            for (var i = 0; i < e.changedTouches.length; i++) {
                if (sessionCamRecorder.gO.Event.identifier == e.changedTouches[i].identifier) sessionCamRecorder.gO.mf = true;
            }
        }
        if ((gI - sessionCamRecorder.hw) > sessionCamRecorder.fd) {
            sessionCamRecorder.hw = gI;
            data = sessionCamRecorder.it(sessionCamRecorder.hA);
            sessionCamRecorder.gG(sessionCamRecorder.fo.hO, data, '', null, null, null, null, null, gI + 1);
            sessionCamRecorder.hA = [];
        }
    } catch (err) {
        sessionCamRecorder.log('sendTouchMoveEvent', err);
    }
};
SessionCamRecorder.prototype.iW = function(e) {
    return (function($) {
        try {
            var i, data, gx = false,
                hd, gA, hl;
            for (i = 0; i < e.changedTouches.length; i++) {
                sessionCamRecorder.iw(sessionCamRecorder.hA, e.changedTouches[i].identifier);
            }
            if (sessionCamRecorder.gO != null && e.touches.length === 0) {
                if (sessionCamRecorder.mH) {
                    hd = Math.abs(sessionCamRecorder.gL - (sessionCamRecorder.ng + e.changedTouches[0].pageX));
                    gA = Math.abs(sessionCamRecorder.gD - (sessionCamRecorder.ny + e.changedTouches[0].pageY));
                } else {
                    hd = Math.abs(sessionCamRecorder.gL - e.changedTouches[0].pageX);
                    gA = Math.abs(sessionCamRecorder.gD - e.changedTouches[0].pageY);
                }
                hl = Math.max(hd, gA);
                if (!sessionCamRecorder.gO.mf && (sessionCamRecorder.getTime() - sessionCamRecorder.gO.jl) < sessionCamRecorder.fV && hl < 20) {
                    var touches = [];
                    touches.push(sessionCamRecorder.gO.Event);
                    data = sessionCamRecorder.it(touches);
                    sessionCamRecorder.gG(sessionCamRecorder.fo.iF, sessionCamRecorder.gO.hG, sessionCamRecorder.et(sessionCamRecorder.gO.Event.target), sessionCamRecorder.hJ(sessionCamRecorder.gO.Event.target), null, null, null, null, sessionCamRecorder.gO.jl);
                    gx = true;
                } else sessionCamRecorder.gG(sessionCamRecorder.fo.iL, sessionCamRecorder.gO.hG, null, null, null, null, null, null, sessionCamRecorder.gO.jl);
            }
            sessionCamRecorder.gO = null;
            if (!gx) {
                data = sessionCamRecorder.it(e.changedTouches);
                sessionCamRecorder.gG(sessionCamRecorder.fo.iq, data);
                if (e.touches.length === 0 && !sessionCamRecorder.gY) {
                    sessionCamRecorder.jD = ((sessionCamRecorder.mH) ? sessionCamRecorder.ng : $(window).scrollLeft());
                    sessionCamRecorder.hM = ((sessionCamRecorder.mH) ? sessionCamRecorder.ny : $(window).scrollTop());
                    sessionCamRecorder.gY = setTimeout(sessionCamRecorder.jy, 10);
                }
            }
        } catch (err) {
            sessionCamRecorder.log('sendTouchEndEvent', err);
        }
    }(window.sessionCamJQuery));
};
SessionCamRecorder.prototype.hX = function(e) {
    try {
        if (sessionCamRecorder.gY != null) sessionCamRecorder.im();
        clearTimeout(sessionCamRecorder.gY);
        sessionCamRecorder.gY = null;
        sessionCamRecorder.iT(e.changedTouches);
        var data = sessionCamRecorder.it(sessionCamRecorder.hA);
        if (e.touches.length == 1) {
            sessionCamRecorder.gO = {};
            sessionCamRecorder.gO.Event = e.touches[0];
            sessionCamRecorder.gO.hG = data;
            sessionCamRecorder.gO.mf = false;
            sessionCamRecorder.gO.jl = sessionCamRecorder.getTime() + 1;
            if (sessionCamRecorder.mH) {
                sessionCamRecorder.gL = (e.touches[0].pageX + sessionCamRecorder.ng);
                sessionCamRecorder.gD = (e.touches[0].pageY + sessionCamRecorder.ny);
            } else {
                sessionCamRecorder.gL = e.touches[0].pageX;
                sessionCamRecorder.gD = e.touches[0].pageY;
            }
        } else sessionCamRecorder.gG(sessionCamRecorder.fo.iL, data);
    } catch (err) {
        sessionCamRecorder.log('sendTouchStartEvent', err);
    }
};
SessionCamRecorder.prototype.jy = function() {
    return (function($) {
        try {
            if (sessionCamRecorder.jD == ((sessionCamRecorder.mH) ? sessionCamRecorder.ng : $(window).scrollLeft()) && sessionCamRecorder.hM == ((sessionCamRecorder.mH) ? sessionCamRecorder.ny : $(window).scrollTop())) return;
            sessionCamRecorder.iz();
        } catch (err) {
            sessionCamRecorder.log('checkTouchInertia', err);
        }
    }(window.sessionCamJQuery));
};
SessionCamRecorder.prototype.iz = function() {
    return (function($) {
        try {
            sessionCamRecorder.jD = ((sessionCamRecorder.mH) ? sessionCamRecorder.ng : $(window).scrollLeft());
            sessionCamRecorder.hM = ((sessionCamRecorder.mH) ? sessionCamRecorder.ny : $(window).scrollTop());
            sessionCamRecorder.gY = setTimeout(function() {
                if (sessionCamRecorder.jD == ((sessionCamRecorder.mH) ? sessionCamRecorder.ng : $(window).scrollLeft()) && sessionCamRecorder.hM == ((sessionCamRecorder.mH) ? sessionCamRecorder.ny : $(window).scrollTop())) {
                    sessionCamRecorder.im();
                    return;
                }
                sessionCamRecorder.gY = setTimeout(sessionCamRecorder.iz, sessionCamRecorder.fd);
            }, sessionCamRecorder.fd);
        } catch (err) {
            sessionCamRecorder.log('measureTouchInertia', err);
        }
    }(window.sessionCamJQuery));
};
SessionCamRecorder.prototype.ba = function() {
    return (function($) {
        var leftScroll, topScroll;
        var nG = $(window);
        if (window.sessioncamConfiguration.sessionCamAlternativeScrollElement && $(window.sessioncamConfiguration.sessionCamAlternativeScrollElement).length != 0) {
            nG = $(window.sessioncamConfiguration.sessionCamAlternativeScrollElement);
        }
        if (sessionCamRecorder.mH) {
            leftScroll = sessionCamRecorder.ng;
            topScroll = sessionCamRecorder.ny;
        } else {
            leftScroll = ($('.' + sessionCamRecorder.sessioncamMainFixed).scrollLeft() ? $('.' + sessionCamRecorder.sessioncamMainFixed).scrollLeft() : nG.scrollLeft());
            topScroll = ($('.' + sessionCamRecorder.sessioncamMainFixed).scrollTop() ? $('.' + sessionCamRecorder.sessioncamMainFixed).scrollTop() : nG.scrollTop());
        }
        if (Math.round(leftScroll) < 0) {
            leftScroll = 0;
        }
        if (Math.round(topScroll) < 0) {
            topScroll = 0;
        }
        return sessionCamRecorder.ih() + '-' + leftScroll + '-' + topScroll + '-' + window.innerWidth + '-' + window.innerHeight + '-' + (sessionCamRecorder.getTime() - sessionCamRecorder.gm);
    }(window.sessionCamJQuery));
};
SessionCamRecorder.prototype.im = function() {
    try {
        clearTimeout(sessionCamRecorder.gY);
        sessionCamRecorder.gY = null;
        var data = sessionCamRecorder.ba();
        sessionCamRecorder.gm = sessionCamRecorder.getTime();
        sessionCamRecorder.gG(sessionCamRecorder.fo.hZ, data);
    } catch (err) {
        sessionCamRecorder.log('sendTouchFix', err);
    }
};
SessionCamRecorder.prototype.it = function(touches) {
    try {
        var i, t, data = '';
        for (i = 0; i < touches.length; i++) {
            t = sessionCamRecorder.jF(touches[i]);
            if (parseFloat(t.clientX) < 0) t.clientX = 0;
            if (parseFloat(t.clientY) < 0) t.clientY = 0;
            if (parseFloat(touches[i].pageX) < 0) touches[i].pageX = 0;
            if (parseFloat(touches[i].pageY) < 0) touches[i].pageY = 0;
            data += touches[i].identifier + '-' + t.clientX + '-' + t.clientY + '-' + (sessionCamRecorder.mH ? sessionCamRecorder.ng + touches[i].pageX : touches[i].pageX) + '-' + (sessionCamRecorder.mH ? sessionCamRecorder.ny + touches[i].pageY : touches[i].pageY) + '-';
        }
        if (data.length > 1) data = data.substring(0, data.length - 1);
        data += '|' + sessionCamRecorder.ba();
        sessionCamRecorder.gm = sessionCamRecorder.getTime();
        return data;
    } catch (err) {
        sessionCamRecorder.log('getTouchData', err);
    }
};
SessionCamRecorder.prototype.jF = function(gf) {
    try {
        var gH = window.pageXOffset,
            ha = window.pageYOffset,
            x = gf.clientX,
            y = gf.clientY;
        if (((gf.pageY === 0) && (Math.floor(y) > Math.floor(gf.pageY))) || ((gf.pageX === 0) && (Math.floor(x) > Math.floor(gf.pageX)))) {
            x = x - gH;
            y = y - ha;
        } else if (y < (gf.pageY - ha) || x < (gf.pageX - gH)) {
            x = gf.pageX - gH;
            y = gf.pageY - ha;
        }
        return {
            clientX: x,
            clientY: y
        };
    } catch (err) {
        sessionCamRecorder.log('fixTouch', err);
    }
};
SessionCamRecorder.prototype.ih = function() {
    try {
        var hL = screen.width;
        if (sessionCamRecorder.jk() === 'portrait') {
            if (screen.width > screen.height) hL = screen.height;
        } else {
            if (screen.width < screen.height) hL = screen.height;
        }
        return Math.round((hL / window.innerWidth) * 10000) / 10000;
    } catch (err) {
        sessionCamRecorder.log('getScale', err);
    }
};
SessionCamRecorder.prototype.ff = function() {
    try {
        var orientation = window.orientation;
        if (orientation === undefined) return;
        else {
            if ((orientation === 0 || orientation === 180) && document.documentElement.clientHeight > document.documentElement.clientWidth) {
                sessionCamRecorder.initialOrientation = "portraitFirst";
            } else if ((orientation === 90 || orientation === -90) && document.documentElement.clientWidth > document.documentElement.clientHeight) {
                sessionCamRecorder.initialOrientation = "portraitFirst";
            } else {
                sessionCamRecorder.initialOrientation = "landscapeFirst";
            }
        }
    } catch (err) {
        sessionCamRecorder.log('ff', err);
    }
};
SessionCamRecorder.prototype.jk = function() {
    try {
        var orientation = window.orientation;
        if (orientation === undefined) {
            if (document.documentElement.clientWidth > document.documentElement.clientHeight) orientation = 'landscape';
            else orientation = 'portrait';
        } else if (orientation === 0 || orientation === 180) orientation = sessionCamRecorder.initialOrientation == "portraitFirst" ? 'portrait' : 'landscape';
        else orientation = sessionCamRecorder.initialOrientation == "portraitFirst" ? 'landscape' : 'portrait';
        return orientation;
    } catch (err) {
        sessionCamRecorder.log('getOrientation', err);
    }
};
SessionCamRecorder.prototype.lN = function() {
    return (function($) {
        var completeWidth;
        completeWidth = $(document).width() + sessionCamRecorder.lj();
        if (completeWidth > 10000 || ((window.getComputedStyle) && (window.getComputedStyle(document.documentElement).overflowX == "hidden" || window.getComputedStyle(document.body).overflowX == "hidden"))) completeWidth = Math.max(document.documentElement.offsetWidth, document.documentElement.clientWidth);
        return completeWidth;
    }(window.sessionCamJQuery));
};
SessionCamRecorder.prototype.mG = function() {
    return (function($) {
        return $(document).height() + sessionCamRecorder.ci();
    }(window.sessionCamJQuery));
};
SessionCamRecorder.prototype.lT = function() {
    return (function($) {
        if (window.sessioncamConfiguration.sessionCamAlternativeWindowSizing) {
            return Math.max(document.documentElement.clientWidth || 0, window.innerWidth || 0);
        } else {
            return $(window).width();
        }
    }(window.sessionCamJQuery));
};
SessionCamRecorder.prototype.na = function() {
    return (function($) {
        if (window.sessioncamConfiguration.sessionCamAlternativeWindowSizing) {
            return Math.max(document.documentElement.clientHeight || 0, window.innerHeight || 0);
        } else {
            return $(window).height();
        }
    }(window.sessionCamJQuery));
};
SessionCamRecorder.prototype.lj = function() {
    return (function($) {
        if (sessionCamRecorder.as == -1) {
            if (!sessionCamRecorder.fY && ($(document).height() > $(window).height())) sessionCamRecorder.as = $(window).width() - $(document).width();
            else sessionCamRecorder.as = 0;
        }
        return sessionCamRecorder.as;
    }(window.sessionCamJQuery));
};
SessionCamRecorder.prototype.ci = function() {
    return (function($) {
        if (sessionCamRecorder.kc == -1) {
            if (!sessionCamRecorder.fY && ($(document).width() > $(window).width())) sessionCamRecorder.kc = sessionCamRecorder.lj();
            else sessionCamRecorder.kc = 0;
        }
        return sessionCamRecorder.kc;
    }(window.sessionCamJQuery));
};
SessionCamRecorder.prototype.hU = function(name, value, dq, aL) {
    var hn, expires;
    var ax = '',
        aZ = '';
    if (dq) {
        hn = new Date();
        hn.setTime(hn.getTime() + (dq * 60 * 60 * 1000));
        expires = "; expires=" + hn.toGMTString();
    } else expires = "";
    if (aL) ax = "; SameSite=None; Secure";
    if (sessionCamRecorder.configuration && sessionCamRecorder.configuration.CI && window.location.hostname.indexOf(sessionCamRecorder.configuration.CI) >= 0) aZ = "; domain=" + sessionCamRecorder.configuration.CI;
    document.cookie = name + "=" + value + expires + "; path=/" + ax + aZ;
    return;
};
SessionCamRecorder.prototype.iC = function(name) {
    var i, c, dx = name + "=",
        ca = document.cookie.split(';');
    for (i = 0; i < ca.length; i++) {
        c = ca[i];
        while (c.charAt(0) == ' ') {
            c = c.substring(1, c.length);
        }
        if (c.indexOf(dx) === 0) return c.substring(dx.length, c.length);
    }
    return null;
};
SessionCamRecorder.prototype.iM = function(name, testedWithSameSite) {
    this.hU(name, "", -60, testedWithSameSite);
    return;
};
SessionCamRecorder.prototype.iV = function() {
    var cookieEnabled = false;
    var testedWithSameSite = false;
    this.hU('SessionCamTestCookie', 'true', undefined, false);
    if (this.iC('SessionCamTestCookie') != null) {
        cookieEnabled = true;
    } else {
        if (window.location.protocol && window.location.protocol === "https:") {
            testedWithSameSite = true;
            this.hU('SessionCamTestCookie', 'true', undefined, true);
            if (this.iC('SessionCamTestCookie') != null) {
                cookieEnabled = true;
            }
        }
    }
    this.iM('SessionCamTestCookie', testedWithSameSite);
    return cookieEnabled;
};
SessionCamRecorder.prototype.bU = function() {
    sessionCamRecorder.qY = sessionCamRecorder.configuration.BX.replace(/\s?,\s?/g, "|");
    var qO = new RegExp("(" + sessionCamRecorder.qX.join('|') + ")(\\|?)", 'g');
    sessionCamRecorder.qY = sessionCamRecorder.qY.replace(qO, "").replace(/\|$/, "");
    sessionCamRecorder.qA = new RegExp('(' + sessionCamRecorder.qY + ')(=")([^"]+)(")', 'g');
};
SessionCamRecorder.prototype.aQ = function() {
    return window.performance != undefined && "getEntriesByType" in window.performance;
};
SessionCamRecorder.prototype.oB = function() {
    if (sessionCamRecorder.aQ()) {
        try {
            if (!sessionCamRecorder.getPageIdResponseOk && !sessionCamRecorder.me) {
                window.setTimeout(sessionCamRecorder.oB, 200);
            } else {
                var A = {};
                var B = {};
                var C = "";
                var D = "";
                var E = "";
                var data, di, resources, paints, cz, bn, firstPaint, contextPaint, t = 0;
                resources = window.performance.getEntriesByType("resource");
                if (resources !== undefined && resources.length > 0) {
                    for (var i = 0; i < resources.length; i++) {
                        if (resources[i].name.indexOf("Record/config.aspx") > 0) {
                            cz = resources[i];
                            t += 1;
                        }
                        if (resources[i].name.indexOf("record.asmx/GetPageId") > 0) {
                            bn = resources[i];
                            t += 1;
                        }
                        if (t == 2) break;
                    }
                    if (cz && cz.responseStart > 0) {
                        A.A = parseFloat((cz.requestStart - cz.startTime).toFixed(2));
                        A.B = parseFloat((cz.responseStart - cz.requestStart).toFixed(2));
                        A.C = parseFloat(cz.duration.toFixed(2));
                    }
                    if (bn && bn.responseStart > 0) {
                        B.A = parseFloat((bn.requestStart - bn.startTime).toFixed(2));
                        B.B = parseFloat((bn.responseStart - bn.requestStart).toFixed(2));
                        B.C = parseFloat(bn.duration.toFixed(2));
                        B.D = sessionCamRecorder.kF.length;
                    }
                    t = 0;
                    paints = window.performance.getEntriesByType("paint");
                    if (paints !== undefined && paints.length > 0) {
                        for (var j = 0; j < paints.length; j++) {
                            if (paints[j].name == "first-paint") {
                                firstPaint = paints[j];
                                t += 1;
                            }
                            if (paints[j].name == "first-contentful-paint") {
                                contextPaint = paints[j];
                                t += 1;
                            }
                            if (t == 2) break;
                        }
                        C = firstPaint && firstPaint.startTime && typeof firstPaint.startTime === "number" ? parseFloat(firstPaint.startTime.toFixed(2)) : null;
                        D = contextPaint && contextPaint.startTime && typeof contextPaint.startTime === "number" ? parseFloat(contextPaint.startTime.toFixed(2)) : null;
                    }
                    if (window.performance.timing) E = (window.performance.timing.domInteractive - window.performance.timing.navigationStart);
                    di = {
                        "A": A,
                        "B": B,
                        "C": C,
                        "D": D,
                        "E": E
                    };
                    data = JSON.stringify(di);
                    sessionCamRecorder.gG(sessionCamRecorder.fo.qL, data, null, null, null, null, null, null);
                }
            }
        } catch (err) {
            sessionCamRecorder.log('saveMetrics', err);
        }
    }
};
SessionCamRecorder.prototype.initialise = function(config, isRestartRecording) {
    var eB, i, ln, setting;
    try {
        if (config && config.CE) {
            sessionCamRecorder.lm(true);
        } else {
            sessionCamRecorder.gJ = sessionCamRecorder.getTime();
            if (config && !sessionCamRecorder.cZ) {
                sessionCamRecorder.configuration = new sessionCamRecorder.ia();
                for (setting in config) {
                    sessionCamRecorder.configuration[setting] = config[setting];
                }
                if (sessionCamRecorder.configuration.CH) sessionCamRecorder.Q = true;
                sessionCamRecorder.eV();
                eB = sessionCamRecorder.iC('sc.Status') | 0;
                if (sessionCamRecorder.configuration.AD) {
                    if (sessionCamRecorder.bp.protocol.indexOf('https') >= 0) sessionCamRecorder.hU('sc.Status', eB | 2, undefined, sessionCamRecorder.Q);
                    else sessionCamRecorder.hU('sc.Status', eB | 1, undefined);
                }
                if (sessionCamRecorder.configuration.I) {
                    sessionCamRecorder.notifications.lD('recording/on');
                    if (sessionCamRecorder.configuration.CC && sessionCamRecorder.configuration.CC.length && !isRestartRecording) {
                        sessionCamRecorder.bQ(sessionCamRecorder.configuration.CC);
                    }
                    if (sessionCamRecorder.configuration.BB && sessionCamRecorder.configuration.BB.length && !isRestartRecording) {
                        sessionCamRecorder.bb(sessionCamRecorder.configuration.BB, 'BB');
                    }
                    if (sessionCamRecorder.configuration.CD && sessionCamRecorder.configuration.CD.length && !isRestartRecording) {
                        sessionCamRecorder.bb(sessionCamRecorder.configuration.CD, 'CD');
                    }
                    sessionCamRecorder.aV();
                    if (sessionCamRecorder.configuration.BR && sessionCamRecorder.configuration.BR.indexOf("gt;") > -1) {
                        sessionCamRecorder.configuration.BR = sessionCamRecorder.configuration.BR.replace(/&gt;/g, '>');
                    }
                    if (sessionCamRecorder.configuration.J && sessionCamRecorder.configuration.J.length > 0) {
                        sessionCamRecorder.configuration.J = sessionCamRecorder.configuration.J.replace(/&amp;/g, '&');
                        sessionCamRecorder.configuration.J = sessionCamRecorder.configuration.J.replace(/&gt;/g, '>');
                        try {
                            eval(sessionCamRecorder.configuration.J);
                        } catch (err1) {
                            sessionCamRecorder.log('error in custom javascript for config', err1);
                            return;
                        }
                    }
                    if (sessionCamRecorder.configuration && sessionCamRecorder.configuration.BX && sessionCamRecorder.configuration.BX.length > 0 && !isRestartRecording) {
                        sessionCamRecorder.bU();
                    }
                    if (sessionCamRecorder.configuration.BD && sessionCamRecorder.configuration.BD.length > 0) {
                        for (i = 0, ln = sessionCamRecorder.configuration.BD.length; i < ln; ++i) {
                            try {
                                sessionCamRecorder.oY.fa(sessionCamRecorder.configuration.BD[i]);
                            } catch (err1) {
                                sessionCamRecorder.log('initialise initialiseIntegration', err1);
                            }
                        }
                    }
                    sessionCamRecorder.jp();
                    if (sessionCamRecorder.aU) sessionCamRecorder.nf = sessionCamRecorder.lM();
                    if (window.MutationObserver && sessionCamRecorder.configuration.BN && sessionCamRecorder.configuration.BN == 100 && !isRestartRecording) {
                        sessionCamRecorder.nP = true;
                        sessionCamRecorder.nA = new MutationObserver(sessionCamRecorder.oD);
                        sessionCamRecorder.nS = {
                            attributes: true,
                            childList: true,
                            characterData: true,
                            subtree: true
                        };
                    }
                    sessionCamRecorder.ml();
                    sessionCamRecorder.dj();
                    sessionCamRecorder.bW();
                    if (('ontouchstart' in window) && sessionCamRecorder.configuration.M) {
                        sessionCamRecorder.ff();
                        var scale = sessionCamRecorder.ih();
                        sessionCamRecorder.gU = Math.round(window.innerWidth * scale);
                        sessionCamRecorder.hy = Math.round(window.innerHeight * scale);
                        sessionCamRecorder.fY = true;
                        if (!sessionCamRecorder.mo) sessionCamRecorder.ig();
                    } else {
                        sessionCamRecorder.gU = sessionCamRecorder.lT();
                        sessionCamRecorder.hy = sessionCamRecorder.na();
                        if (!isRestartRecording) sessionCamRecorder.qD();
                    }
                    if (!sessionCamRecorder.mo) sessionCamRecorder.cU();
                    sessionCamRecorder.eI(isRestartRecording);
                    if (!isRestartRecording) sessionCamRecorder.pb(sessionCamRecorder.lQ());
                } else sessionCamRecorder.notifications.lD('recording/off');
                sessionCamRecorder.ae = sessionCamRecorder.getTime();
                if (sessionCamRecorder.configuration.I) {
                    sessionCamRecorder.ey();
                    setTimeout(sessionCamRecorder.cB, 100);
                    sessionCamRecorder.jM();
                    sessionCamRecorder.cZ = true;
                    if (!isRestartRecording) window.setTimeout(sessionCamRecorder.dz, 100);
                    if (!sessionCamRecorder.mo && (sessionCamRecorder.configuration.BI || sessionCamRecorder.configuration.BJ)) sessionCamRecorder.pn();
                    sessionCamRecorder.mo = true;
                    window.setTimeout(sessionCamRecorder.jB, 1000);
                    if (sessionCamRecorder.configuration.BD && sessionCamRecorder.configuration.BD.length > 0) {
                        for (i = 0, ln = sessionCamRecorder.configuration.BD.length; i < ln; ++i) {
                            try {
                                sessionCamRecorder.oY.enableIntegration(sessionCamRecorder.configuration.BD[i], false);
                            } catch (err1) {
                                sessionCamRecorder.log('initialise enableIntegration', err1);
                            }
                        }
                    }
                    sessionCamRecorder.oB();
                }
            }
        }
    } catch (err) {
        sessionCamRecorder.log('initialise', err);
    }
    return;
};
SessionCamRecorder.prototype.bQ = function(config) {
    for (var i = 0; i < config.length; i++) {
        try {
            sessionCamRecorder.aM[config[i].n.toLowerCase()] = {
                t: config[i].t,
                v: config[i].v
            };
        } catch (err) {}
    }
};
SessionCamRecorder.prototype.au = function(name) {
    return (function($) {
        var fO = '',
            result;
        try {
            if (sessionCamRecorder.aM[name]) {
                switch (sessionCamRecorder.aM[name].t) {
                    case 'T':
                        fO = $(sessionCamRecorder.aM[name].v).text().replace(/\n/g, '').trim();
                        break;
                    case 'F':
                        result = $(sessionCamRecorder.aM[name].v);
                        if (result && result.length) fO = result.val();
                        if (Array.isArray(fO)) fO = fO.join(',');
                        else fO = fO + '';
                        break;
                    case 'D':
                        fO = eval(sessionCamRecorder.aM[name].v) + '';
                        break;
                    case 'Q':
                        result = new RegExp('[\?&]' + sessionCamRecorder.aM[name].v.replace(/([\$\-_\.\+!*'()])/g, '\$1') + '=(.*?)&').exec(window.location.search + '&');
                        if (result && result.length > 0) fO = result[1];
                        break;
                }
            }
        } catch (err) {}
        return fO;
    }(window.sessionCamJQuery));
};
SessionCamRecorder.prototype.ar = function(s) {
    for (var item in sessionCamRecorder.aM) {
        s = s.replace(new RegExp('{{' + item + '}}', 'gi'), sessionCamRecorder.au(item));
    }
    return s;
};
SessionCamRecorder.prototype.bb = function(config, ap) {
    var i, ho;
    for (i = 0; i < config.length; i++) {
        try {
            ho = config[i];
            ho.code = ap;
            switch (ho.t) {
                case 'P':
                case 'U':
                    sessionCamRecorder.bK(ho);
                    break;
                case 'C':
                    if (ho.s) sessionCamRecorder.bG(ho);
                    break;
                case 'V':
                    if (ho.s) sessionCamRecorder.bx.push(ho);
                    break;
            }
        } catch (err) {}
    }
};
SessionCamRecorder.prototype.aV = function() {
    var i, ho, elem, time;
    for (i = 0; i < sessionCamRecorder.bx.length; i++) {
        try {
            ho = sessionCamRecorder.bx[i];
            elem = document.querySelectorAll(ho.s);
            if (elem && elem.length && sessionCamRecorder.isOpaque(elem)) {
                sessionCamRecorder.bx.splice(i, 1);
                sessionCamRecorder.bK(ho);
            }
        } catch (err) {}
    }
    time = sessionCamRecorder.getTime();
    for (i = 0; i < sessionCamRecorder.bE.length; i++) {
        if (sessionCamRecorder.bE[i].az <= time) {
            sessionCamRecorder.bR(sessionCamRecorder.bE[i]);
            sessionCamRecorder.bE.splice(i, 1);
        }
    }
    window.setTimeout(sessionCamRecorder.aV, sessionCamRecorder.bz);
};
SessionCamRecorder.prototype.bG = function(ho) {
    return (function($) {
        $(document.body).on('click', ho.s, function() {
            sessionCamRecorder.bK(ho);
        }, true);
    }(window.sessionCamJQuery));
};
SessionCamRecorder.prototype.bK = function(ho) {
    if (ho.t === 'U') {
        sessionCamRecorder.aU = true;
        sessionCamRecorder.bI = ho.d;
        sessionCamRecorder.bs = ho.n;
    } else if (ho.d === 0) sessionCamRecorder.bR(ho);
    else {
        ho.az = sessionCamRecorder.getTime() + ho.d;
        sessionCamRecorder.bE.push(ho);
    }
};
SessionCamRecorder.prototype.bR = function(ho) {
    switch (ho.code) {
        case 'BB':
            sessionCamRecorder.sendCustomDataEvent(sessionCamRecorder.ar(ho.n || ''), sessionCamRecorder.ar(ho.v || ''));
            break;
        case 'CD':
            sessionCamRecorder.createVirtualPageLoad(sessionCamRecorder.ar(ho.n));
            break;
    }
};
SessionCamRecorder.prototype.iQ = function() {
    try {
        var orientation = sessionCamRecorder.jk();
        if (orientation != this.gw) {
            sessionCamRecorder.gG(sessionCamRecorder.fo.io, orientation);
            this.gw = orientation;
        }
    } catch (err) {
        sessionCamRecorder.log('updateOrientation', err);
    }
};
SessionCamRecorder.prototype.log = function(message, data) {
    return (true ? null : message + data);
};
SessionCamRecorder.prototype.iY = function() {
    var fO = false,
        d;
    try {
        d = document.createElement('DIV');
        d.innerHTML = '<xyz></xyz>';
        fO = d.childNodes.length == 1;
    } catch (jK) {}
    return fO;
};
SessionCamRecorder.prototype.kh = function() {
    sessionCamRecorder.ge = (document.body && document.body.attachShadow && !('prototype' in document.body.attachShadow) && sessionCamRecorder.configuration && sessionCamRecorder.configuration.CA);
    return sessionCamRecorder.ge;
};
SessionCamRecorder.prototype.gr = function(gN) {
    return (gN && gN.shadowRoot ? gN.shadowRoot.innerHTML : '');
};
SessionCamRecorder.prototype.he = function(gN) {
    var fO = new sessionCamRecorder.iO(),
        i, j, k, l, children = gN ? gN.getElementsByTagName('*') : [],
        child, fB;
    for (i = -1; i < children.length; i++) {
        child = i === -1 ? gN : children[i];
        if (child.shadowRoot) {
            var hR = child.shadowRoot.querySelectorAll('style');
            for (j = 0; j < hR.length; j++) {
                if (hR[j].innerHTML == "") {
                    fB = new sessionCamRecorder.iO();
                    for (k = 0; k < hR[j].sheet.cssRules.length; k++) {
                        fB.append(hR[j].sheet.cssRules[k].cssText);
                    }
                    hR[j].innerHTML = fB.toString();
                }
            }
            fO.append(child.shadowRoot.innerHTML);
            for (l = 0; l < child.shadowRoot.children.length; l++) {
                fO.append(sessionCamRecorder.he(child.shadowRoot.children[l]));
            }
        }
    }
    return fO.toString();
};
SessionCamRecorder.prototype.gK = function(oP) {
    var i, elements = oP.getElementsByTagName('*'),
        gN, fO = [];
    for (i = -1; i < elements.length; i++) {
        gN = i === -1 ? oP : elements[i];
        if (gN.shadowRoot && gN.shadowRoot.firstElementChild) {
            fO.push(gN);
            if (!gN.shadowRoot.scBindEventsCompleted) {
                sessionCamRecorder.cU(gN.shadowRoot);
                gN.shadowRoot.scBindEventsCompleted = true;
            }
        }
    }
    return fO;
};
SessionCamRecorder.prototype.AdoptedCssObserver = function() {
    if (window.CSSStyleSheet) {
        sessionCamRecorder.startHookAdoptedCss(window.Document.prototype, window.ShadowRoot.prototype);
    }
};
SessionCamRecorder.prototype.startHookAdoptedCss = function(proto, proto2) {
    var _getAdoptedStyleSheets = Object.getOwnPropertyDescriptor(proto, "adoptedStyleSheets") && Object.getOwnPropertyDescriptor(proto, "adoptedStyleSheets").get,
        _setAdoptedStyleSheets = Object.getOwnPropertyDescriptor(proto, "adoptedStyleSheets") && Object.getOwnPropertyDescriptor(proto, "adoptedStyleSheets").set,
        _getShadowAdoptedStyleSheets = Object.getOwnPropertyDescriptor(proto2, "adoptedStyleSheets") && Object.getOwnPropertyDescriptor(proto2, "adoptedStyleSheets").get,
        _setShadowAdoptedStyleSheets = Object.getOwnPropertyDescriptor(proto2, "adoptedStyleSheets") && Object.getOwnPropertyDescriptor(proto2, "adoptedStyleSheets").set;
    if (_getAdoptedStyleSheets) {
        Object.defineProperty(proto, "adoptedStyleSheets", {
            get: function() {
                var returnValue = _getAdoptedStyleSheets.apply(this, arguments);
                try {
                    sessionCamRecorder.adoptedSet(this, returnValue);
                } catch (e) {
                    sessionCamRecorder.log(e);
                }
                return returnValue;
            }
        });
    }
    if (_getShadowAdoptedStyleSheets) {
        Object.defineProperty(proto2, "adoptedStyleSheets", {
            get: function() {
                var returnValue = _getShadowAdoptedStyleSheets.apply(this, arguments);
                try {
                    sessionCamRecorder.adoptedSet(this, returnValue);
                } catch (e) {
                    sessionCamRecorder.log(e);
                }
                return returnValue;
            },
        });
    }
    if (_setAdoptedStyleSheets) {
        Object.defineProperty(proto, "adoptedStyleSheets", {
            set: function() {
                var returnValue = _setAdoptedStyleSheets.apply(this, arguments);
                try {
                    sessionCamRecorder.adoptedSet(this, arguments[0]);
                } catch (e) {
                    sessionCamRecorder.log(e);
                }
                return returnValue;
            }
        });
    }
    if (_setShadowAdoptedStyleSheets) {
        Object.defineProperty(proto2, "adoptedStyleSheets", {
            set: function() {
                var returnValue = _setShadowAdoptedStyleSheets.apply(this, arguments);
                try {
                    sessionCamRecorder.adoptedSet(this, arguments[0]);
                } catch (e) {
                    sessionCamRecorder.log(e);
                }
                return returnValue;
            }
        });
    }
};
SessionCamRecorder.prototype.adoptedSet = function(gN, adoptedSheets) {
    var j, af, rootId, rootAndPageId;
    if (adoptedSheets && adoptedSheets[0]) {
        af = new sessionCamRecorder.iO();
        rootId = gN.nodeType === Node.DOCUMENT_NODE ? 0 : gN.host.scshadowrootid ? gN.host.scshadowrootid : sessionCamRecorder.fP++;
        rootAndPageId = sessionCamRecorder.configuration.BL + '-' + rootId;
        if (gN.host && !gN.host.scshadowrootid) {
            gN.host.scshadowrootid = rootId;
        }
        if (rootId !== undefined) {
            adoptedSheets.forEach(function(style) {
                for (j = 0; j < style.cssRules.length; j++) {
                    af.append(style.cssRules[j].cssText);
                }
            });
            var sbAdoptedStyleStringified = af.toString();
            if (sessionCamRecorder.aI[rootAndPageId] !== sbAdoptedStyleStringified) {
                sessionCamRecorder.aI[rootAndPageId] = sbAdoptedStyleStringified;
                if (sessionCamRecorder.getPageIdResponseOk) {
                    sessionCamRecorder.sendShadowChangedAdoptedCSS(rootAndPageId, sbAdoptedStyleStringified);
                } else {
                    sessionCamRecorder.sendShadowInitialAdoptedCSS(rootAndPageId, sbAdoptedStyleStringified);
                }
            }
        }
    }
};
SessionCamRecorder.prototype.sendShadowChangedAdoptedCSS = function(fP, ac) {
    sessionCamRecorder.gG(sessionCamRecorder.fo.ChangedAdoptedStyle, ac, fP);
};
SessionCamRecorder.prototype.sendShadowInitialAdoptedCSS = function(fP, ac) {
    sessionCamRecorder.gG(sessionCamRecorder.fo.InitialAdoptedStyle, ac, fP);
};
SessionCamRecorder.prototype.fT = function(oP, kn, gn) {
    try {
        var i, j, k, l, fragment, mP, fP, qp = sessionCamRecorder.nR(gn, oP, kn),
            fB;
        for (i = 0; i < gn.length; i++) {
            mP = fP = sessionCamRecorder.an(gn[i], 'scshadowrootid');
            if (!fP) fP = sessionCamRecorder.fP++;
            fragment = document.createDocumentFragment();
            fragment.appendChild(document.createRange().createContextualFragment(gn[i].shadowRoot.innerHTML));
            for (k = 0; k < fragment.children.length; k++) {
                if (fragment.children[k].nodeName.toLowerCase() == "style" && fragment.children[k].innerHTML == "") {
                    fB = new sessionCamRecorder.iO();
                    for (l = 0; l < gn[i].shadowRoot.children[k].sheet.cssRules.length; l++) {
                        fB.append(gn[i].shadowRoot.children[k].sheet.cssRules[l].cssText);
                    }
                    fragment.children[k].innerHTML = fB.toString();
                }
                fragment.children[k].setAttribute("scshadowhostid", fP);
            }
            if (qp[i]) {
                if (qp[i].firstElementChild) qp[i].insertBefore(fragment, qp[i].firstElementChild);
                else qp[i].appendChild(fragment);
                for (j = 0; j < gn[i].shadowRoot.children.length; j++) {
                    var nD = sessionCamRecorder.gK(gn[i].shadowRoot.children[j]);
                    if (nD.length) sessionCamRecorder.fT(gn[i].shadowRoot.children[j], qp[i].children[j], nD);
                }
                qp[i].setAttribute('scshadowrootid', fP);
            }
            if (!mP) {
                sessionCamRecorder.bg(gn[i], 'scshadowrootid', fP);
                if (sessionCamRecorder.nP) sessionCamRecorder.nA.observe(gn[i].shadowRoot, sessionCamRecorder.nS);
            }
            gn[i].shadowRoot.adoptedStyleSheets;
        }
    } catch (err) {
        sessionCamRecorder.log('fT', err);
    }
};
SessionCamRecorder.prototype.nK = function(s) {
    return s.replace(/<plaintext[\s\S]*?<\/plaintext>/, '');
};
SessionCamRecorder.prototype.dr = function(s) {
    return s.replace(/(href="[^"]+)(\?[^"]+)(")/g, '$1$3');
};
SessionCamRecorder.prototype.ml = function() {
    return (function($) {
        var hz = '',
            body, eN, eL, c, children, s, hR, gR, hW, i, qZ, eC, canvas, ni, elements, F = sessionCamRecorder.bN(),
            gn, attributesToIgnore;
        if (sessionCamRecorder.kh()) gn = sessionCamRecorder.gK(document.body);
        attributesToIgnore = sessionCamRecorder.bD();
        hz = document.documentElement.cloneNode(false);
        body = document.createElement('body');
        eN = document.body.innerHTML;
        if (window.location.href.toLowerCase().indexOf('https://www.petfinder.com/search') > -1) eN = eN.replace(/(srcset=(['"])[\s\S]*?\2)/g, "");
        if (attributesToIgnore.length > 0) {
            var qC = new RegExp('(' + attributesToIgnore.join('|') + ')="[^"]+"', 'g');
            eN = eN.replace(qC, '');
        }
        if (sessionCamRecorder.configuration && sessionCamRecorder.qA && sessionCamRecorder.configuration.BX && sessionCamRecorder.configuration.BX.length > 0) {
            eN = eN.replace(sessionCamRecorder.qA, "$1$2*$4");
        }
        eN = sessionCamRecorder.mz(eN);
        if (eN.indexOf('plaintext') != -1) eN = sessionCamRecorder.nK(eN);
        eN = sessionCamRecorder.dr(eN);
        body.innerHTML = eN;
        sessionCamRecorder.nj(body);
        if (document.body.className.length > 0) body.className = document.body.className;
        if (sessionCamRecorder.configuration && sessionCamRecorder.configuration.CB) {
            $(body).attr('style', $('BODY').attr('style').length ? $('BODY').attr('style').length + ";min-height:100% !important; height: auto !important;" : "min-height:100% !important; height: auto !important;");
        } else {
            $(body).attr('style', $('BODY').attr('style'));
        }
        if (document.body.id.length > 0) body.id = document.body.id;
        for (i = 0; i < document.body.attributes.length; i++) {
            if (document.body.attributes[i].name.indexOf('data-') === 0) {
                body.setAttribute(document.body.attributes[i].name, document.body.attributes[i].value);
            }
        }
        if (sessionCamRecorder.ge) {
            sessionCamRecorder.AdoptedCssObserver();
            sessionCamRecorder.fT(document.body, body, gn);
        }
        if (document.adoptedStyleSheets && document.adoptedStyleSheets.length) {
            document.adoptedStyleSheets;
        }
        sessionCamRecorder.mE(body, document.body);
        eL = document.createElement('head');
        hz.appendChild(eL);
        children = eL.childNodes;
        for (c = 0; c < children.length; c++) {
            eL.removeChild(children[c]);
        }
        hz.appendChild(body);
        hz = $(hz);
        hz.find('.' + sessionCamRecorder.nz).contents().filter(function() {
            return this.nodeType === 3;
        }).remove();
        hz.find('.' + sessionCamRecorder.nz).contents().val('');
        elements = $('a[href*="<"]', hz).add('a[href*=">"]', hz);
        for (i = 0; i < elements.length; i++) {
            $(elements[i]).attr('href', $(elements[i]).attr('href').replace(/</g, '&lt;').replace(/>/g, '&gt;'));
        }
        qZ = $('input,select,textarea');
        eC = $('input,select,textarea', hz);
        for (i = 0; i < eC.length; i++) {
            eC[i].outerHTML = sessionCamRecorder.ck(eC[i], qZ[i]);
        }
        if (hz.find('.sessioncammonitoroverflow').length > 0) sessionCamRecorder.gG(sessionCamRecorder.fo.po, 'true');
        if (F) {
            elements = $(F, hz);
            for (i = 0; i < elements.length; i++) $(elements[i]).replaceNew(sessionCamRecorder.eg($(elements[i])));
        }
        if (sessionCamRecorder.configuration.AV) {
            canvas = $('canvas');
            ni = $('canvas', hz);
            for (i = 0; i < canvas.length; i++) {
                if (i < ni.length) {
                    $(ni[i]).attr('sccanvasdata', sessionCamRecorder.mV(canvas[i]));
                }
            }
        }
        hR = sessionCamRecorder.iR(($('body'), hz)[0]);
        gR = sessionCamRecorder.iR(sessionCamRecorder.lQ());
        if (hR.length == gR.length) {
            for (s = 0; s < hR.length; s++) {
                $(hR[s]).replaceWith(sessionCamRecorder.fS(gR[s]));
            }
        }
        sessionCamRecorder.hK = sessionCamRecorder.aH(hz[0].outerHTML);
        if (hR.length != gR.length) {
            for (s = 0; s < gR.length; s++) {
                sessionCamRecorder.hK = sessionCamRecorder.hK.replace(/<body([\s\S]*?)>/i, '$&' + sessionCamRecorder.fS(gR[s]));
            }
        }
        if (sessionCamRecorder.hK.toLowerCase().indexOf('<head>') >= 0) {
            hW = '<head>' + sessionCamRecorder.nb() + sessionCamRecorder.jj(sessionCamRecorder.jh()) + '</head>';
            hW = hW.replace(/\$/g, 'SessionCamDollar');
            sessionCamRecorder.hK = sessionCamRecorder.hK.replace(/<head><\/head>/i, hW);
            sessionCamRecorder.hK = sessionCamRecorder.hK.replace(/SessionCamDollar/g, '$');
        } else sessionCamRecorder.hK = '<head>' + sessionCamRecorder.nb() + sessionCamRecorder.jj(sessionCamRecorder.jh()) + '</head>' + sessionCamRecorder.hK;
        sessionCamRecorder.hK = sessionCamRecorder.hK.replace(/<head>/i, "<head><title>" + document.title + "</title>").replace(/SessionCamAutoPlay/gi, '');
        return;
    }(window.sessionCamJQuery));
};
SessionCamRecorder.prototype.aH = function(data) {
    if (sessionCamRecorder.configuration.AA == "5df763bb-c975-eb11-a998-d4d076bc62fe" && data) {
        data = data.replace(/\\2f |\\2f/g, "\\");
    }
    return data;
};
SessionCamRecorder.prototype.jC = function() {
    var fO = '';
    if (document.doctype && document.doctype.name) fO = '<!DOCTYPE ' + document.doctype.name + (document.doctype.publicId ? ' PUBLIC "' + document.doctype.publicId + '"' : '') + (document.doctype.systemId ? '"' + document.doctype.systemId + '"' : '') + '>';
    else if (document.documentElement && document.documentElement.previousSibling && document.documentElement.previousSibling.data && (document.documentElement.previousSibling.data.toLowerCase().indexOf('doctype') >= 0)) fO = '<!' + document.documentElement.previousSibling.data + '>';
    return fO;
};
SessionCamRecorder.prototype.hP = function() {
    var fO = false,
        doctype, reg;
    doctype = sessionCamRecorder.jC();
    reg = new RegExp(/<!doctype(\s+)html(\s*)>/i);
    fO = reg.test(doctype);
    if (!fO) {
        reg = new RegExp(/<!doctype(\s+)html(\s+)system(\s+)"about:legacy-compat"(\s*)>/i);
        fO = reg.test(doctype);
    }
    if (!fO) {
        reg = new RegExp(/<!doctype(\s+)html(\s+)system(\s+)'about:legacy-compat'(\s*)>/i);
        fO = reg.test(doctype);
    }
    return fO;
};
SessionCamRecorder.prototype.sessionId = function() {
    try {
        var fO = '';
        if (this.configuration && this.configuration.I && this.configuration.S && this.configuration.T) fO = this.configuration.S + ',' + this.configuration.T;
        return fO;
    } catch (err) {
        sessionCamRecorder.log('sessionId', err);
    }
};
SessionCamRecorder.prototype.subscribe = function(event, listener) {
    return this.notifications.subscribe(event, listener).remove;
};
SessionCamRecorder.prototype.version = function() {
    return this.gg;
};
SessionCamRecorder.prototype.getTime = function() {
    return new Date().getTime();
};
SessionCamRecorder.prototype.bk = function() {
    this.hV = sessionCamRecorder.getTime();
    return;
};
SessionCamRecorder.prototype.hI = function() {
    return Math.floor(Math.random() * 100) + 1;
};
SessionCamRecorder.prototype.lm = function(swapStreams, restartRecording) {
    var ay, os = '',
        i, src;
    if (restartRecording && sessionCamRecorder.me) {
        sessionCamRecorder.resetRecording();
        sessionCamRecorder.me = false;
    } else if (restartRecording && !sessionCamRecorder.me) {
        return;
    }
    try {
        if (!swapStreams && window.sessioncamConfiguration && window.sessioncamConfiguration.notifications && !restartRecording) {
            for (i = 0; i < window.sessioncamConfiguration.notifications.length; i++) {
                try {
                    sessionCamRecorder.subscribe(window.sessioncamConfiguration.notifications[i].event, window.sessioncamConfiguration.notifications[i].listener);
                } catch (err1) {
                    sessionCamRecorder.log('error in window.sessioncamConfiguration.notifications[' + i + ']', err1);
                }
            }
        }
        if (navigator.appVersion.toUpperCase().indexOf('MSIE') < 0 && (screen.width > 50 && screen.height > 50) && (sessionCamRecorder.lN() > 50 && sessionCamRecorder.mG() > 50)) {
            if (sessionCamRecorder.iV()) {
                if (!swapStreams) {
                    if (sessionCamRecorder.nx()) {
                        sessionCamRecorder.jp(true);
                        os = sessionCamRecorder.lb;
                    }
                    sessionCamRecorder.jp();
                    if (sessionCamRecorder.bp.protocol.indexOf('https') >= 0) ay = sessionCamRecorder.iC('sc.Status') & 2;
                    else ay = sessionCamRecorder.iC('sc.Status') & 1;
                    if (ay) {
                        sessionCamRecorder.notifications.lD('recording/off');
                        return;
                    }
                    if (!sessionCamRecorder.jG) sessionCamRecorder.jG = sessionCamRecorder.getTime();
                    sessionCamRecorder.originalUrl = sessionCamRecorder.bd(window.location.toString());
                }
                if (swapStreams) sessionCamRecorder.ak = sessionCamRecorder.ak === 'a' ? 'b' : 'a';
                else if (!sessionCamRecorder.ak) {
                    if (sessionCamRecorder.hI() <= sessionCamRecorder.bIngestionPercent) {
                        sessionCamRecorder.ak = "b";
                    } else {
                        sessionCamRecorder.ak = "a";
                    }
                }
                src = '&jsver=' + sessionCamRecorder.gg + '&originalUrl=' + sessionCamRecorder.originalUrl.protocol + sessionCamRecorder.originalUrl.hostname + '&sse=' + sessionCamRecorder.jG + (os ? '&urlnc=' + encodeURIComponent(os) : '') + '&inTg=' + sessionCamRecorder.ak + '&acr=' + (swapStreams ? "1" : "0");
                var hT = sessionCamRecorder.iC('sc.ASP.NET_SESSIONID');
                if (hT && (hT != 'undefined')) src += "&id=" + hT;
                sessionCamRecorder.lh("/config.aspx", "GET", src, sessionCamRecorder.initialise, true, restartRecording);
                sessionCamRecorder.bk();
            } else {
                sessionCamRecorder.notifications.lD('recording/off');
                sessionCamRecorder.log('Unable to write cookie');
            }
        } else sessionCamRecorder.notifications.lD('recording/off');
    } catch (err) {
        sessionCamRecorder.log('requestConfig', err);
    }
};
SessionCamRecorder.prototype.getConfig = function() {
    return this.configuration;
};
SessionCamRecorder.prototype.eO = function(gN) {
    var name;
    switch (sessionCamRecorder.hJ(gN)) {
        case 'input':
        case 'select':
        case 'textarea':
            if (gN && gN.getAttribute) {
                name = gN.getAttribute(sessionCamRecorder.sessioncamName);
                if (sessionCamRecorder.jW(name) && (sessionCamRecorder.configuration.BO && sessionCamRecorder.configuration.BO.length > 0)) {
                    name = gN.getAttribute(sessionCamRecorder.configuration.BO);
                }
                if (sessionCamRecorder.jW(name)) {
                    name = gN.getAttribute('name');
                }
                return sessionCamRecorder.jW(name) ? '' : name.replace(/[\"\']/g, '');
            } else return '';
            break;
        default:
            return sessionCamRecorder.et(gN);
    }
};
SessionCamRecorder.prototype.r = function(gN) {
    return gN.scId;
};
SessionCamRecorder.prototype.et = function(gN, fc) {
    var id = (fc ? 'scDummyId' : sessionCamRecorder.an(gN, 'scElementId') || (gN && gN.getAttribute ? gN.getAttribute('id') : '')),
        scId = sessionCamRecorder.r(gN);
    return 'xp{' + sessionCamRecorder.dU(gN) + '}' + (id && id.replace ? 'id{' + id.replace(/[\"\']/g, '') + '}' : '') + (scId ? 'scId{' + scId + '}' : '');
};
SessionCamRecorder.prototype.dU = function(gN, useId) {
    return (function($) {
        var id, index, eQ = '';
        try {
            for (undefined; gN && (gN.nodeType == 1 || gN.nodeType == 11) && gN.nodeName.toLowerCase() !== 'body' && !id; gN = gN.parentNode) {
                if (gN.nodeType == 11) {
                    eQ = gN.host.nodeName.toLowerCase() + "[scshadowrootid='" + gN.host.scshadowrootid + "']/" + eQ;
                } else {
                    if (useId) {
                        id = sessionCamRecorder.an(gN, 'scElementId') || gN.getAttribute('id') || '';
                        if (id && id.match && id.match(/\d{4,}/)) id = '';
                    }
                    if (id) eQ = '#' + id + eQ;
                    else {
                        if ($(gN.parentNode).is('select') && !gN.parentNode.multiple) {
                            index = 0;
                        } else {
                            index = $(gN.parentNode).children(gN.tagName.replace(':', '\\\\:')).index(gN);
                        }
                        if (index > 0) index = ':' + index;
                        else index = '';
                        eQ = '/' + gN.tagName.toLowerCase() + index + eQ;
                    }
                }
            }
        } catch (err) {
            eQ = '';
        }
        return eQ;
    }(window.sessionCamJQuery));
};
SessionCamRecorder.prototype.pQ = function(gN, fc) {
    return (function($) {
        var result = {},
            xi;
        if (gN) {
            result.i = (fc ? 'scDummyId' : sessionCamRecorder.an(gN, 'scElementId') || $(gN).attr('id') || '');
            result.n = $(gN).attr('name') || '';
            result.si = sessionCamRecorder.r(gN) || '';
            result.sn = $(gN).attr(sessionCamRecorder.sessioncamName) || '';
            result.bo = (sessionCamRecorder.configuration.BO && sessionCamRecorder.configuration.BO.length > 0) ? $(gN).attr(sessionCamRecorder.configuration.BO) || '' : '';
            result.xp = sessionCamRecorder.dU(gN);
            result.ix = sessionCamRecorder.an(gN, 'scIXP') || '';
            if (!window.sessioncamConfiguration.dontUseIdInZonal) {
                xi = sessionCamRecorder.dU(gN, true);
                if (xi !== result.xp) result.xi = xi;
            }
        }
        return JSON.stringify(result);
    }(window.sessionCamJQuery));
};
SessionCamRecorder.prototype.iv = function(gN) {
    var fO = null;
    while (!fO && gN.previousSibling) {
        if ((gN.previousSibling.nodeType == 1) && (sessionCamRecorder.hJ(gN.previousSibling) == 'style' || !sessionCamRecorder.kJ(gN.previousSibling))) fO = gN.previousSibling;
        else gN = gN.previousSibling;
    }
    return fO;
};
SessionCamRecorder.prototype.jw = function(gN) {
    var fO = gN.scId;
    if (!fO) {
        gN.scId = this.eY++;
        fO = gN.scId;
    }
    return fO;
};
SessionCamRecorder.prototype.eG = function(scId, elements) {
    var fO = null,
        i = 0;
    while ((fO == null) && (i < elements.length)) {
        if (sessionCamRecorder.r(elements[i]) == scId) fO = elements[i];
        i++;
    }
    return fO;
};
SessionCamRecorder.prototype.eg = function(fU) {
    var fO;
    if (fU.length) {
        var nodeName = this.oc(this.hJ(fU[0]));
        switch (nodeName) {
            case "span":
            case "option":
            case "select":
            case "p":
            case "div":
                fO = '<' + nodeName + ' style="display: none"></' + nodeName + '>';
                break;
            default:
                fO = '<' + nodeName + ' style="display: none" />';
                break;
        }
    } else fO = '';
    return fO;
};
SessionCamRecorder.prototype.bm = function(fU) {
    var lang;
    var e = fU[0] || document.documentElement;
    while (e) {
        lang = (e.getAttribute ? e.getAttribute('lang') : null);
        if (lang && !lang.nodeType) break;
        else e = e.parentNode;
    }
    if (!lang) {
        var meta = document.getElementsByTagName('meta');
        for (var i = 0; i < meta.length; i++) {
            if (/(?:dc\.)?language/i.test(meta[i].name) || /content-language/i.test(meta[i].httpEquiv)) {
                lang = meta[i].content;
                break;
            }
        }
    }
    return lang || '';
};
SessionCamRecorder.prototype.mQ = function() {
    return /translated-(?:ltr|rtl)/i.test(document.documentElement.className);
};
SessionCamRecorder.prototype.dP = function(fU, group) {
    return (function($) {
        try {
            if (!fU || !fU[0]) return '';
            var result = {},
                nh = false;
            result.i = fU[0].getAttribute(sessionCamRecorder.sessioncamName);
            result.s = 3;
            if (sessionCamRecorder.jW(result.i) && (sessionCamRecorder.configuration.BO && sessionCamRecorder.configuration.BO.length > 0)) {
                result.i = fU[0].getAttribute(sessionCamRecorder.configuration.BO);
                result.s = 4;
            }
            if (sessionCamRecorder.jW(result.i)) {
                result.i = fU[0].getAttribute('name');
                result.s = 2;
            }
            if (sessionCamRecorder.jW(result.i)) {
                result.i = fU[0].getAttribute('id');
                result.s = 1;
            }
            var ju = Array.prototype.slice.call(document.getElementsByName(fU[0].getAttribute('name')));
            for (var i = ju.length - 1; i >= 0; i--) {
                if (ju[i].getAttribute('name') != fU[0].getAttribute('name')) {
                    ju.splice(i, 1);
                } else if (ju[i].type == "hidden") {
                    ju.splice(i, 1);
                }
            }
            var type = fU[0].getAttribute('type') || fU[0].type;
            var label, lang;
            if (type && ju.length > 1 && group && (type.toLowerCase() == 'radio' || type.toLowerCase() == 'checkbox')) {
                var fieldset = ju[0];
                while (fieldset) {
                    if (fieldset.tagName && fieldset.tagName.toLowerCase() == 'fieldset') break;
                    else fieldset = fieldset.parentNode;
                }
                if (fieldset) {
                    var legend = fieldset.getElementsByTagName('legend')[0];
                    if (legend && fieldset.getElementsByTagName('input').length == ju.length) {
                        var legendClone = legend.cloneNode(true);
                        nh = $(legend).hasClass(sessionCamRecorder.mA);
                        sessionCamRecorder.mE(legendClone, legend, nh);
                        label = legendClone.innerHTML.replace(/\n/g, ' ').trim();
                        lang = sessionCamRecorder.bm($(legendClone));
                    }
                }
            } else {
                if (ju.length > 1) {
                    if (type.toLowerCase() == 'radio' || type.toLowerCase() == 'checkbox') {
                        result.v = sessionCamRecorder.fW(fU[0].getAttribute('value')).replace(/[\"\']/g, '');
                        if (sessionCamRecorder.jW(result.v) || (result.v == 'on')) result.v = 'true';
                    }
                    var lH = ju[0].getAttribute(sessionCamRecorder.sessioncamName);
                    if (lH) result.i = lH;
                }
                var mu = sessionCamRecorder.lP(fU);
                if (mu) {
                    var labelClone = mu[0].cloneNode(true);
                    nh = mu.hasClass(sessionCamRecorder.mA);
                    sessionCamRecorder.mE(labelClone, mu[0], nh);
                    label = sessionCamRecorder.mB($(labelClone)).replace(/[\"\']/g, '').replace(/\n/g, ' ').trim();
                    lang = sessionCamRecorder.bm($(labelClone));
                }
            }
            if (label) {
                if (label.length > 100) result.l = label.substr(0, 100);
                else result.l = label;
                if (sessionCamRecorder.jW(lang)) lang = sessionCamRecorder.bm(fU);
                result.c = lang;
            }
            if (sessionCamRecorder.mQ()) result.t = 'true';
            if (sessionCamRecorder.jW(result.l) && sessionCamRecorder.jW(result.v) && sessionCamRecorder.jW(result.c) && sessionCamRecorder.jW(result.s) && sessionCamRecorder.jW(result.t)) return result.i;
            else return JSON.stringify(result);
        } catch (err) {
            sessionCamRecorder.log('getFieldName', err);
        }
        return '';
    })(window.sessionCamJQuery);
};
SessionCamRecorder.prototype.ij = function(fU) {
    return sessionCamRecorder.dP(fU, true);
};
SessionCamRecorder.prototype.lP = function(fU) {
    return (function($) {
        if (!fU || !fU[0]) return null;
        var id = fU[0].getAttribute('id');
        if (id) {
            var label = $('label[for="' + id.replace(/\./g, '\\.').replace(/:/g, '\\:') + '"]');
            if (label && label.length > 0) return label;
        }
        return null;
    }(window.sessionCamJQuery));
};
SessionCamRecorder.prototype.mB = function(fU) {
    return fU.text().trim().replace(/'/g, '&apos;').replace(/"/g, '&quot;');
};
SessionCamRecorder.prototype.jW = function(data) {
    return (data === null) || (data === undefined) || (data === '');
};
SessionCamRecorder.prototype.fW = function(data) {
    return (data == null ? '' : data);
};
SessionCamRecorder.prototype.hJ = function(gN) {
    var fO = '';
    try {
        if (gN && gN.nodeName) fO = gN.nodeName.toLowerCase();
    } catch (jK) {}
    return fO;
};
SessionCamRecorder.prototype.od = function(elem) {
    var className = elem ? (elem.className ? elem.className : '') : '';
    if (className.baseVal !== undefined) className = className.baseVal;
    return className + '';
};
SessionCamRecorder.prototype.oL = function(elem) {
    return (function($) {
        var width = $(elem).attr('width');
        if ((typeof(width) === 'object') && elem && elem.getAttribute) width = elem.getAttribute('width');
        return width || '';
    }(window.sessionCamJQuery));
};
SessionCamRecorder.prototype.pe = function(elem) {
    return (function($) {
        var height = $(elem).attr('height');
        if ((typeof(height) === 'object') && elem && elem.getAttribute) height = elem.getAttribute('height');
        return height || '';
    }(window.sessionCamJQuery));
};
SessionCamRecorder.prototype.lf = function(elem) {
    var fO = elem;
    while (elem) {
        if (elem.nodeType != 1 && elem.nodeType != 9) fO = null;
        else if (!fO) fO = elem;
        elem = elem.parentNode || elem.host;
    }
    return fO;
};
SessionCamRecorder.prototype.oW = function(elem) {
    return (function($) {
        var fO = elem,
            pf;
        if (sessionCamRecorder.ge) {
            fO = sessionCamRecorder.lf(elem);
        } else {
            pf = $(elem).closest('svg');
            if (pf.length) fO = pf[0];
        }
        if (fO && fO.nodeType == 3) fO = fO.parentNode;
        return fO;
    }(window.sessionCamJQuery));
};
SessionCamRecorder.prototype.pZ = function(gN) {
    var depth = -1;
    while (gN.parentNode && gN.parentNode.nodeType !== 9) {
        gN = gN.parentNode;
        depth++;
    }
    return depth;
};
SessionCamRecorder.prototype.oD = function(nZ) {
    try {
        var nH = [],
            gN;
        for (var i = 0; i < nZ.length; i++) {
            gN = sessionCamRecorder.oW(nZ[i].target);
            if (gN) {
                var aC = nH.indexOf(gN);
                if (aC < 0) {
                    gN.scDepth = sessionCamRecorder.pZ(gN);
                    gN.scDMOType = nZ[i].type;
                    if (gN.scDepth >= 0) nH.push(gN);
                } else {
                    if (nH[aC].scDMOType == "attributes" && nZ[i].type != "attributes") nH[aC].scDMOType = "processAll";
                }
            }
        }
        nH.sort(function(a, b) {
            return a.scDepth - b.scDepth;
        });
        for (i = 0; i < nH.length; i++) {
            var target = nH[i];
            sessionCamRecorder.dJ(target, 0, target.scDMOType);
        }
    } catch (err) {
        sessionCamRecorder.log('domMutationsCallback', err);
    }
};
SessionCamRecorder.prototype.eI = function(isRestartRecording) {
    return (function($) {
        try {
            var pG, i, fQ, val, scChildIds = [],
                head, body = sessionCamRecorder.lQ();
            if ((sessionCamRecorder.configuration != null) && (sessionCamRecorder.configuration.D)) {
                pG = document.body;
                if ((sessionCamRecorder.configuration.C != null) && (sessionCamRecorder.configuration.C.length > 0)) pG = document.getElementById(sessionCamRecorder.configuration.C);
                if (!pG || pG.length < 1) pG = document.body;
                sessionCamRecorder.kC(pG, 0);
                if (sessionCamRecorder.nP) {
                    sessionCamRecorder.sendCustomDataEvent("UsingDMO", "true");
                    if (!isRestartRecording) sessionCamRecorder.nA.observe(pG, sessionCamRecorder.nS);
                }
            }
            fQ = document.querySelectorAll(sessionCamRecorder.kX + ', textarea, ' + sessionCamRecorder.jZ);
            for (i = 0; i < fQ.length; i++) {
                sessionCamRecorder.bg(fQ[i], 'scVal', fQ[i].value);
            }
            fQ = document.querySelectorAll('select');
            for (i = 0; i < fQ.length; i++) {
                val = fQ[i].value;
                if (val.constructor === Array) val = val.join();
                sessionCamRecorder.bg(fQ[i], 'scVal', val);
            }
            fQ = document.querySelectorAll('input[type=checkbox]');
            for (i = 0; i < fQ.length; i++) {
                sessionCamRecorder.bg(fQ[i], 'scVal', fQ[i].checked);
            }
            fQ = document.querySelectorAll('input[type=radio]');
            for (i = 0; i < fQ.length; i++) {
                sessionCamRecorder.bg(fQ[i], 'scVal', fQ[i].checked);
            }
            head = sessionCamRecorder.jh();
            if (head) {
                fQ = sessionCamRecorder.iP(head);
                for (i = 0; i < fQ.length; i++) {
                    scChildIds.push(sessionCamRecorder.jw(fQ[i]));
                    sessionCamRecorder.bg(fQ[i], 'scOuterHTML', sessionCamRecorder.fS(fQ[i]));
                }
                sessionCamRecorder.bg(head, 'scChildIds', scChildIds);
                sessionCamRecorder.bg(head, 'scInnerHTMLRaw', head.innerHTML);
                sessionCamRecorder.bg(head, 'scInnerHTML', sessionCamRecorder.jj());
            }
            scChildIds = [];
            fQ = sessionCamRecorder.iR(body, true);
            for (i = 0; i < fQ.length; i++) {
                scChildIds.push(sessionCamRecorder.jw(fQ[i]));
                sessionCamRecorder.bg(fQ[i], 'scOuterHTML', sessionCamRecorder.fS(fQ[i]));
            }
            sessionCamRecorder.bg($('body')[0], 'scStyleIds', scChildIds);
            sessionCamRecorder.bg(document.documentElement, 'scClassName', document.documentElement.className);
            sessionCamRecorder.bg(document.documentElement, 'scStyle', sessionCamRecorder.fW($(document.documentElement).attr('style')));
        } catch (err) {
            sessionCamRecorder.log('setupDOMMonitoring', err);
        }
        return;
    }(window.sessionCamJQuery));
};
SessionCamRecorder.prototype.kJ = function(gN) {
    return (function($) {
        var fO = true,
            F = sessionCamRecorder.bN();
        if (gN && gN.nodeName) {
            try {
                switch (gN.nodeName.toLowerCase()) {
                    case 'object':
                    case 'script':
                    case '#comment':
                    case '#text':
                    case 'link':
                    case 'style':
                        break;
                    case 'esi:include':
                    case 'c:set':
                    case 'svg':
                        if (gN.getAttribute('aria-label') && gN.getAttribute('aria-label') === "Loading interface...") fO = true;
                        else fO = false;
                        break;
                    default:
                        fO = ((gN.nodeName.indexOf(':') >= 0) || (gN.className && gN.className.toString().indexOf(sessionCamRecorder.sessionCamIgnoreChanges) > -1)) || (F && $(gN).is(F));
                        break;
                }
            } catch (err) {
                sessionCamRecorder.log('error in ignoreElement', err);
                fO = true;
            }
        }
        return fO;
    }(window.sessionCamJQuery));
};
SessionCamRecorder.prototype.mZ = function(gN) {
    var type;
    if (gN.getAttribute('sessioncammonitorhidden') === 'true') return true;
    if (gN.offsetWidth || gN.offsetHeight) return true;
    if (gN.nodeName.toLowerCase() === 'input') {
        type = gN.getAttribute('type');
        if (type && type.toLowerCase() === 'hidden') return false;
    }
    if (gN.currentStyle) return gN.currentStyle.display != 'none';
    else if (window.getComputedStyle) return window.getComputedStyle(gN, null) && (window.getComputedStyle(gN, null).display != 'none');
    return true;
};
SessionCamRecorder.prototype.isOpaque = function(gN) {
    return (function($) {
        return $(gN).css('visibility') !== 'hidden' && $(gN).is(':visible') && $(gN).css('opacity') == 1;
    }(window.sessionCamJQuery));
};
SessionCamRecorder.prototype.dT = function(gN) {
    var fO = gN.nodeName.toLowerCase() === 'textarea',
        type;
    if (!fO && gN.nodeName.toLowerCase() === 'input') {
        type = gN.getAttribute('type');
        if (type) {
            switch (type.toLowerCase()) {
                case 'text':
                case 'email':
                case 'url':
                case 'search':
                case 'tel':
                    fO = true;
                    break;
            }
        }
    }
    return fO;
};
SessionCamRecorder.prototype.mg = function(gN) {
    var fO = false,
        type;
    if (gN.nodeName.toLowerCase() === 'input') {
        type = gN.getAttribute('type');
        if (type) {
            switch (type.toLowerCase()) {
                case 'number':
                case 'date':
                case 'week':
                case 'month':
                case 'time':
                case 'datetime':
                case 'datetime-local':
                case 'color':
                case 'range':
                    fO = true;
                    break;
            }
        }
    }
    return fO;
};
SessionCamRecorder.prototype.ds = function() {
    var fO = 7;
    if (this.configuration != null && this.configuration.B != null) fO = this.configuration.B;
    return fO;
};
SessionCamRecorder.prototype.kC = function(gN, fN) {
    var jO, c, cY, child, en, type, val, i;
    if (gN && !sessionCamRecorder.kJ(gN)) {
        try {
            jO = sessionCamRecorder.mZ(gN);
            sessionCamRecorder.bg(gN, 'scVisible', jO);
            if (jO) {
                cY = [];
                sessionCamRecorder.bg(gN, 'scChildIds', []);
                if (!sessionCamRecorder.an(gN, 'scChildIds')) return;
                if (sessionCamRecorder.hJ(gN) != 'select') {
                    en = gN.childNodes ? gN.childNodes.length : 0;
                    for (c = 0; c < en; c++) {
                        child = gN.childNodes[c];
                        if (!sessionCamRecorder.kJ(child)) {
                            sessionCamRecorder.an(gN, 'scChildIds').push(sessionCamRecorder.jw(child));
                            if (fN < sessionCamRecorder.ds()) cY.push(child);
                            sessionCamRecorder.cL(child);
                        }
                    }
                }
                sessionCamRecorder.fK(gN);
                for (i = 0; i < sessionCamRecorder.hx.length; i++) {
                    sessionCamRecorder.bg(gN, 'sc' + sessionCamRecorder.hx[i], sessionCamRecorder.fW(gN.getAttribute(sessionCamRecorder.hx[i])));
                }
                if (!sessionCamRecorder.nP) {
                    sessionCamRecorder.bg(gN, 'scInnerHtml', sessionCamRecorder.rd(gN));
                }
                sessionCamRecorder.bg(gN, 'scOpen', sessionCamRecorder.fW(gN.open));
                sessionCamRecorder.bg(gN, 'scClass', sessionCamRecorder.od(gN));
                sessionCamRecorder.bg(gN, 'scDataSet', sessionCamRecorder.nV(gN));
                sessionCamRecorder.bg(gN, 'scElementId', sessionCamRecorder.fW(gN.getAttribute('id')));
                sessionCamRecorder.bg(gN, 'scTitle', sessionCamRecorder.fW(gN.getAttribute('title')));
                sessionCamRecorder.bg(gN, 'scStyle', sessionCamRecorder.fW(gN.getAttribute('style')));
                if (sessionCamRecorder.matches(gN, 'IMG')) {
                    sessionCamRecorder.bg(gN, 'scSrc', sessionCamRecorder.ja(gN));
                    sessionCamRecorder.bg(gN, 'scAlt', sessionCamRecorder.fW(gN.getAttribute('alt')));
                    sessionCamRecorder.bg(gN, 'scSrcSet', sessionCamRecorder.fW(gN.getAttribute('srcset')));
                }
                if (sessionCamRecorder.matches(gN, 'SOURCE')) {
                    sessionCamRecorder.bg(gN, 'scSrcSet', sessionCamRecorder.fW(gN.getAttribute('srcset')));
                }
                if (sessionCamRecorder.matches(gN, 'SELECT') || sessionCamRecorder.dT(gN) || sessionCamRecorder.mg(gN)) {
                    val = gN.value;
                    if (val.constructor === Array) val = val.join();
                    sessionCamRecorder.bg(gN, 'scVal', val);
                } else if (sessionCamRecorder.matches(gN, 'INPUT')) {
                    type = gN.getAttribute('type');
                    if (type) type = type.toLowerCase();
                    if ((type === 'checkbox') || (type === 'radio')) sessionCamRecorder.bg(gN, 'scVal', gN.checked);
                    if ((type === 'submit') || (type === 'button')) {
                        sessionCamRecorder.bg(gN, 'scVal', gN.value);
                        sessionCamRecorder.bg(gN, 'scDisabled', gN.disabled);
                    }
                } else if (sessionCamRecorder.matches(gN, 'BUTTON')) {
                    sessionCamRecorder.bg(gN, 'scDisabled', gN.disabled);
                }
                if (sessionCamRecorder.ge) {
                    sessionCamRecorder.bg(gN, 'scTopShadowHtml', sessionCamRecorder.gr(gN));
                    sessionCamRecorder.bg(gN, 'scInnerShadowHtml', sessionCamRecorder.he(gN));
                }
                sessionCamRecorder.ob(gN);
                for (c = 0; c < cY.length; c++) {
                    sessionCamRecorder.kC(cY[c], fN + 1);
                }
            }
        } catch (e) {
            sessionCamRecorder.log('error in initDOMMonitoring', e);
        }
    }
    return;
};
SessionCamRecorder.prototype.ct = function(gN) {
    var hg = '',
        kK;
    if (gN) {
        kK = gN.previousSibling;
        while (kK && sessionCamRecorder.kJ(kK)) {
            if (kK.parentElement && (kK.parentElement.className && kK.parentElement.className.toString().indexOf(sessionCamRecorder.nz) > -1)) hg = '';
            else if (kK.nodeType == 3) hg = kK.data + hg;
            else if (!sessionCamRecorder.configuration.CF && kK.nodeType == 8) {
                try { //-->
                    if (kK.nodeValue.indexOf('SessionCam:Hide') >= 0) hg = kK.nodeValue.replace(/\/SessionCam:Hide/g, 'SessionCam:Temp').replace(/SessionCam:Hide/g, sessionCamRecorder.ll).replace(/SessionCam:Temp/g, sessionCamRecorder.ld) + hg;
                } catch (jK) {}
            }
            kK = kK.previousSibling;
        }
    }
    return hg;
};
SessionCamRecorder.prototype.cL = function(gN) {
    sessionCamRecorder.bg(gN, 'scTextBefore', this.fW(this.ct(gN)));
    return;
};
SessionCamRecorder.prototype.dD = function(fU, hg) {
    var fO = false;
    if (this.fW(hg) != sessionCamRecorder.an(fU[0], 'scTextBefore')) {
        fO = true;
        this.cL(fU[0]);
    }
    return fO;
};
SessionCamRecorder.prototype.cQ = function(gN) {
    var jm = '',
        child;
    if (gN) {
        child = gN.lastChild;
        while (child && sessionCamRecorder.kJ(child)) {
            if (gN.className && gN.className.toString().indexOf(sessionCamRecorder.nz) > -1) jm = '';
            else if (child.nodeType == 3) jm = child.data + jm;
            else if (!sessionCamRecorder.configuration.CF && child.nodeType == 8) {
                try {
                    if (child.nodeValue.indexOf('SessionCam:Hide') >= 0) jm = child.nodeValue.replace(/\/SessionCam:Hide/g, 'SessionCam:Temp').replace(/SessionCam:Hide/g, sessionCamRecorder.ll).replace(/SessionCam:Temp/g, sessionCamRecorder.ld) + jm;
                } catch (jK) {}
            }
            child = child.previousSibling;
        }
    }
    return jm;
};
SessionCamRecorder.prototype.fK = function(gN) {
    sessionCamRecorder.bg(gN, 'scTextAtEnd', this.fW(this.cQ(gN)));
    return;
};
SessionCamRecorder.prototype.fe = function(fU, jm, fN) {
    var fO = false;
    if (this.fW(jm) != sessionCamRecorder.an(fU[0], 'scTextAtEnd')) {
        fO = true;
        this.gG(this.fo.jz, sessionCamRecorder.ms(jm, fU[0]), this.et(fU[0]), this.hJ(fU[0]), null, null, fU[0], fN);
        sessionCamRecorder.bg(fU[0], 'scTextAtEnd', this.fW(jm));
    }
    return fO;
};
SessionCamRecorder.prototype.dc = function(fU) {
    return (function($) {
        var jR = new sessionCamRecorder.iO(),
            nextSibling;
        if (fU[0]) {
            nextSibling = fU[0].nextSibling;
            while (nextSibling && sessionCamRecorder.kJ(nextSibling)) {
                if ($(nextSibling.parentElement).hasClass(sessionCamRecorder.nz)) jR.append('');
                else if (nextSibling.nodeType == 3) jR.append(nextSibling.data);
                else if (!sessionCamRecorder.configuration.CF && nextSibling.nodeType == 8) {
                    try {
                        if (nextSibling.nodeValue.indexOf('SessionCam:Hide') >= 0) jR.append(nextSibling.nodeValue.replace(/\/SessionCam:Hide/g, 'SessionCam:Temp').replace(/SessionCam:Hide/g, sessionCamRecorder.ll).replace(/SessionCam:Temp/g, sessionCamRecorder.ld));
                    } catch (jK) {}
                }
                if (nextSibling.nodeType == 1) nextSibling = null;
                else nextSibling = nextSibling.nextSibling;
            }
        }
        return jR.toString();
    }(window.sessionCamJQuery));
};
SessionCamRecorder.prototype.nV = function(gN) {
    var nF = new sessionCamRecorder.iO(),
        i, dataset = gN ? gN.dataset : '';
    try {
        if (dataset) {
            for (i in dataset) {
                if (!nF.isEmpty()) {
                    nF.append("&");
                }
                nF.append(i + "=" + dataset[i]);
            }
        }
    } catch (err) {
        sessionCamRecorder.log('nV', err);
    }
    return nF.toString();
};
SessionCamRecorder.prototype.ja = function(gN) {
    return gN.src ? gN.src : (gN.getAttribute("src") ? gN.getAttribute("src") : '');
};
SessionCamRecorder.prototype.df = function(fU, fN, time, ad) {
    return (function($) {
        var fO = false,
            mw = true,
            nodeName, innerHTML, eK, gT, jV, jQ, fX, hu, oa, pq, md, cW, cF, pV, dK, de, eVal, eDisabled, nq, type, val, gb, i, dR;
        nodeName = sessionCamRecorder.hJ(fU[0]);
        if (!ad || ad.toLowerCase() !== "attributes") {
            if (nodeName == 'select') {
                val = fU.val();
                if ($.isArray(val)) val = val.join();
                if (sessionCamRecorder.an(fU[0], 'scVal') != val) {
                    sessionCamRecorder.bg(fU[0], 'scVal', val);
                    gb = sessionCamRecorder.eb(fU[0]);
                    if (!((sessionCamRecorder.configuration != null && sessionCamRecorder.configuration.BP === 0) || gb)) {
                        sessionCamRecorder.gG(sessionCamRecorder.fo.ji, sessionCamRecorder.kN(fU, true), sessionCamRecorder.et(fU[0]), nodeName, null, null, fU[0], fN, time);
                        mw = false;
                    }
                }
            } else if (nodeName != 'textarea') {
                if (sessionCamRecorder.ge) {
                    gT = sessionCamRecorder.he(fU[0]);
                    jV = sessionCamRecorder.an(fU[0], 'scInnerShadowHtml');
                }
                if (!sessionCamRecorder.nP) {
                    innerHTML = sessionCamRecorder.rd(fU[0]);
                    eK = sessionCamRecorder.an(fU[0], 'scInnerHtml');
                }
                if ((!sessionCamRecorder.nP && innerHTML != eK) || (gT != jV) || sessionCamRecorder.nP) {
                    if (!sessionCamRecorder.nP && innerHTML != eK) {
                        sessionCamRecorder.bg(fU[0], 'scInnerHtml', innerHTML);
                    }
                    if (sessionCamRecorder.ge) sessionCamRecorder.bg(fU[0], 'scInnerShadowHtml', gT);
                    if ((fU.children().length === 0) || (!sessionCamRecorder.nP && fN == sessionCamRecorder.ds()) || nodeName === 'svg' || (sessionCamRecorder.nP && gT != jV)) {
                        dR = sessionCamRecorder.kN(fU, true);
                        sessionCamRecorder.gG(sessionCamRecorder.fo.ji, dR, sessionCamRecorder.et(fU[0]), nodeName, null, null, fU[0], fN, time);
                        if (dR.indexOf(sessionCamRecorder.aj) !== -1) {
                            sessionCamRecorder.ob(fU[0]);
                        }
                        if (nodeName !== 'svg') {
                            sessionCamRecorder.pb(fU[0]);
                            sessionCamRecorder.aK(sessionCamRecorder.getTime() + 1, fU[0]);
                            sessionCamRecorder.bq(fU[0]);
                        }
                        mw = false;
                    } else fO = true;
                }
            }
        }
        if (mw) {
            if (sessionCamRecorder.ge) {
                gT = sessionCamRecorder.gr(fU[0]);
                jV = sessionCamRecorder.an(fU[0], 'scTopShadowHtml');
                if (gT != jV) {
                    sessionCamRecorder.gG(sessionCamRecorder.fo.ji, sessionCamRecorder.kN(fU, true), sessionCamRecorder.et(fU[0]), nodeName, null, null, fU[0], fN, time);
                    sessionCamRecorder.kC(fU[0], fN);
                    return false;
                }
            }
            jQ = sessionCamRecorder.od(fU[0]);
            fX = sessionCamRecorder.an(fU[0], 'scClass');
            if (jQ != fX) {
                if (nodeName == 'select') sessionCamRecorder.gG(sessionCamRecorder.fo.ji, sessionCamRecorder.kN(fU, true), sessionCamRecorder.et(fU[0]), nodeName, null, null, fU[0], fN, time);
                else sessionCamRecorder.gG(sessionCamRecorder.fo.jA, jQ ? sessionCamRecorder.an(fU[0], 'scHover') === 1 ? jQ + ' sessionCamHover' : jQ : (sessionCamRecorder.an(fU[0], 'scHover') === 1 ? 'sessionCamHover' : ''), sessionCamRecorder.et(fU[0]), nodeName, null, null, fU[0], fN, time);
                sessionCamRecorder.bg(fU[0], 'scClass', jQ);
                if (jQ.indexOf('sessioncammonitoroverflow') !== -1) {
                    sessionCamRecorder.gG(sessionCamRecorder.fo.po, 'true');
                    sessionCamRecorder.ob(fU[0]);
                }
                if (jQ.indexOf(sessionCamRecorder.aj) !== -1) {
                    sessionCamRecorder.ob(fU[0]);
                }
            }
            hu = sessionCamRecorder.nV(fU[0]);
            oa = sessionCamRecorder.an(fU[0], 'scDataSet');
            if (hu != oa) {
                if (nodeName == 'select') sessionCamRecorder.gG(sessionCamRecorder.fo.ji, sessionCamRecorder.kN(fU, true), sessionCamRecorder.et(fU[0]), nodeName, null, null, fU[0], fN, time);
                else sessionCamRecorder.gG(sessionCamRecorder.fo.pr, hu, sessionCamRecorder.et(fU[0]), nodeName, null, null, fU[0], fN, time);
                sessionCamRecorder.bg(fU[0], 'scDataSet', hu);
            }
            pq = sessionCamRecorder.fW(fU.attr('id'));
            md = sessionCamRecorder.an(fU[0], 'scElementId');
            if (pq != md) {
                if (nodeName == 'select') sessionCamRecorder.gG(sessionCamRecorder.fo.ji, sessionCamRecorder.kN(fU, true), sessionCamRecorder.et(fU[0]), nodeName, null, null, fU[0], fN, time);
                else sessionCamRecorder.gG(sessionCamRecorder.fo.mx, fU.attr('id'), sessionCamRecorder.et(fU[0]), nodeName, null, null, fU[0], fN, time);
                sessionCamRecorder.bg(fU[0], 'scElementId', pq);
            }
            cW = sessionCamRecorder.fW(fU.attr('title'));
            if (cW != sessionCamRecorder.an(fU[0], 'scTitle')) {
                if (nodeName == 'select') sessionCamRecorder.gG(sessionCamRecorder.fo.ji, sessionCamRecorder.kN(fU, true), sessionCamRecorder.et(fU[0]), nodeName, null, null, fU[0], fN, time);
                else sessionCamRecorder.gG(sessionCamRecorder.fo.js, fU.attr('title'), sessionCamRecorder.et(fU[0]), nodeName, null, null, fU[0], fN, time);
                sessionCamRecorder.bg(fU[0], 'scTitle', cW);
            }
            cF = sessionCamRecorder.fW(fU.attr('style'));
            if (cF != sessionCamRecorder.an(fU[0], 'scStyle')) {
                if (nodeName == 'select') sessionCamRecorder.gG(sessionCamRecorder.fo.ji, sessionCamRecorder.kN(fU, true), sessionCamRecorder.et(fU[0]), nodeName, null, null, fU[0], fN, time);
                else {
                    sessionCamRecorder.gG(sessionCamRecorder.fo.ib, cF.replace(/[\"\']/g, ''), sessionCamRecorder.et(fU[0]), nodeName, null, null, fU[0], fN, time);
                }
                sessionCamRecorder.bg(fU[0], 'scStyle', cF);
            }
            for (i = 0; i < sessionCamRecorder.hx.length; i++) {
                pV = sessionCamRecorder.fW(fU[0].getAttribute(sessionCamRecorder.hx[i]));
                if (pV != sessionCamRecorder.fW(sessionCamRecorder.an(fU[0], 'sc' + sessionCamRecorder.hx[i]))) {
                    sessionCamRecorder.gG(sessionCamRecorder.fo.ji, sessionCamRecorder.kN(fU, true), sessionCamRecorder.et(fU[0]), nodeName, null, null, fU[0], fN, time);
                    sessionCamRecorder.kC(fU[0], fN);
                }
            }
            if (fU[0].open != undefined && fU[0].open != sessionCamRecorder.an(fU[0], 'scOpen')) {
                sessionCamRecorder.gG(sessionCamRecorder.fo.ji, sessionCamRecorder.kN(fU, true), sessionCamRecorder.et(fU[0]), nodeName, null, null, fU[0], fN, time);
                sessionCamRecorder.kC(fU[0], fN);
            }
            if (fU.is('IMG')) {
                dK = sessionCamRecorder.ja(fU[0]);
                if (dK != sessionCamRecorder.an(fU[0], 'scSrc')) {
                    sessionCamRecorder.gG(sessionCamRecorder.fo.iX, dK, sessionCamRecorder.et(fU[0]), nodeName, null, null, fU[0], fN, time);
                    sessionCamRecorder.bg(fU[0], 'scSrc', dK);
                }
                de = sessionCamRecorder.fW(fU.attr('alt'));
                if (de != sessionCamRecorder.an(fU[0], 'scAlt')) {
                    sessionCamRecorder.gG(sessionCamRecorder.fo.iB, de, sessionCamRecorder.et(fU[0]), nodeName, null, null, fU[0], fN, time);
                    sessionCamRecorder.bg(fU[0], 'scAlt', de);
                }
                nq = sessionCamRecorder.fW(fU.attr('srcset'));
                if (nq != sessionCamRecorder.an(fU[0], 'scSrcSet')) {
                    sessionCamRecorder.gG(sessionCamRecorder.fo.lO, nq, sessionCamRecorder.et(fU[0]), nodeName, null, null, fU[0], fN, time);
                    sessionCamRecorder.bg(fU[0], 'scSrcSet', nq);
                }
            }
            if (fU.is('SOURCE')) {
                nq = sessionCamRecorder.fW(fU.attr('srcset'));
                if (nq != sessionCamRecorder.an(fU[0], 'scSrcSet')) {
                    sessionCamRecorder.gG(sessionCamRecorder.fo.lO, nq, sessionCamRecorder.et(fU[0]), nodeName, null, null, fU[0], fN, time);
                    sessionCamRecorder.bg(fU[0], 'scSrcSet', nq);
                }
            }
            if (fU.is('INPUT') || fU.is('BUTTON')) {
                if (fU.is('INPUT')) {
                    type = fU.attr('type');
                    if (type) type = type.toLowerCase();
                    if ((type === 'submit') || (type === 'button')) {
                        eVal = fU.val();
                        if (eVal != sessionCamRecorder.an(fU[0], 'scVal')) {
                            sessionCamRecorder.gG(sessionCamRecorder.fo.iJ, eVal, sessionCamRecorder.dP($(fU[0])), nodeName, sessionCamRecorder.pQ(fU[0]), null, fU[0], fN, time);
                            sessionCamRecorder.bg(fU[0], 'scVal', eVal);
                        }
                    }
                }
                eDisabled = fU.prop('disabled');
                if (eDisabled != sessionCamRecorder.an(fU[0], 'scDisabled')) {
                    sessionCamRecorder.gG(sessionCamRecorder.fo.qG, eDisabled, sessionCamRecorder.dP($(fU[0])), nodeName, sessionCamRecorder.pQ(fU[0]), null, fU[0], fN, time);
                    sessionCamRecorder.bg(fU[0], 'scDisabled', eDisabled);
                }
            }
        }
        return fO;
    }(window.sessionCamJQuery));
};
SessionCamRecorder.prototype.nj = function(gN) {
    var i, objects, jU;
    objects = gN.querySelectorAll('script');
    for (i = 0; i < objects.length; i++) {
        try {
            objects[i].parentNode.replaceChild(document.createElement('SCRIPT'), objects[i]);
        } catch (err) {}
    }
    objects = gN.querySelectorAll('object');
    for (i = 0; i < objects.length; i++) {
        try {
            jU = document.createElement('OBJECT');
            if (objects[i].type === 'image/svg+xml' && typeof objects[i].data === 'string' && objects[i].data.toLowerCase().endsWith('.svg')) {
                sessionCamRecorder.nL(objects[i], jU);
            } else {
                sessionCamRecorder.nL(objects[i], jU, ['data']);
            }
            objects[i].parentNode.replaceChild(jU, objects[i]);
        } catch (err) {}
    }
    objects = gN.querySelectorAll('video');
    for (i = 0; i < objects.length; i++) {
        try {
            jU = document.createElement('VIDEO');
            sessionCamRecorder.nL(objects[i], jU, ['src']);
            objects[i].parentNode.replaceChild(jU, objects[i]);
        } catch (err) {}
    }
    objects = gN.querySelectorAll('audio');
    for (i = 0; i < objects.length; i++) {
        try {
            jU = document.createElement('AUDIO');
            try {
                jU.innerHTML = objects[i].innerHTML;
            } catch (err1) {}
            sessionCamRecorder.nL(objects[i], jU, ['src']);
            objects[i].parentNode.replaceChild(jU, objects[i]);
        } catch (err) {}
    }
    objects = gN.querySelectorAll('[action]');
    for (i = 0; i < objects.length; i++) {
        try {
            objects[i].setAttribute('action', objects[i].getAttribute('action').replace(/[<>]|(&lt;)|(&gt;)/g, '...'));
        } catch (err) {}
    }
};
SessionCamRecorder.prototype.nL = function(lX, nr, mF) {
    return (function($) {
        try {
            var attributes = lX.attributes;
            for (var i = 0; i < attributes.length; i++) {
                if (attributes[i].specified === true) {
                    if (!$.isArray(mF) || ($.inArray(attributes[i].nodeName.toLowerCase(), mF) < 0)) {
                        try {
                            $(nr).attr(attributes[i].nodeName, attributes[i].nodeValue);
                        } catch (err1) {}
                    }
                }
            }
        } catch (err) {}
    }(window.sessionCamJQuery));
};
SessionCamRecorder.prototype.mz = function(s) {
    s = s || '';
    s = s.replace(/\n/g, "SessionCam:NL").replace(/\r/g, "").replace(/(autoplay)/gi, "SessionCamAutoPlay$1");
    if (sessionCamRecorder.frameworks.nestedForms || sessionCamRecorder.configuration.BW) {
        s = s.replace(/<form ([\S\s]*?)>/gi, '<sessioncamform $1>');
        s = s.replace(/<\/form>/gi, '<\/sessioncamform>');
    }
    s = s.replace(/(<img[^>]+?src)([^>]+?)([\'\"]{1})([^>]*?captcha[^>]*?)(\3)([^>]*?)(>)/gi, '$1$2$3$5$6$7');
    s = s.replace(/(<img[^>]+?src)([^>]+?)([\'\"]{1})([^>]*?cryptograph[^>]*?)(\3)([^>]*?)(>)/gi, '$1$2$3$5$6$7');
    s = s.replace(/(<img[^>]+?src)([^>]+?)([\'\"]{1})([^>]*?bat\.bing[^>]*?)(\3)([^>]*?)(>)/gi, '$1$2$3$5$6$7');
    s = s.replace(/(<img[^>]+?src)([^>]+?)([\'\"]{1})([^>]*?www.awin[^>]*?)(\3)([^>]*?)(>)/gi, '$1$2$3$5$6$7');
    s = s.replace(/(<img[^>]+?src)([^>]+?)([\'\"]{1})([^>]*?secure.eloqua[^>]*?)(\3)([^>]*?)(>)/gi, '$1$2$3$5$6$7');
    s = s.replace(/(<iframe[\S|\s]+?)srcdoc=([\'|\"])([\S|\s]*?)\2([\S\s]*?)>([\S|\s]*?)(<\/iframe>)/gi, '$1$4>$6');
    s = s.replace(/(<\/*)(pf)([^>]+?>)/g, '$1SessionCamConstructorOverride-$2$3');
    s = s.replace(/<(carwow-card-filter)([\S\s]*?<\/)(carwow-card-filter)>/g, '<SessionCamConstructorOverride-$1$2SessionCamConstructorOverride-$3>');
    s = s.replace(/(\W)(on([\w]+?)([\s]*?))(=)/g, '$1scremoved-$2-handler$5');
    s = s.replace(/SessionCam:NL/g, "\n");
    return s;
};
SessionCamRecorder.prototype.oc = function(name) {
    return name.replace(/^(pf){1}/, 'SessionCamConstructorOverride-$1').replace(/^(carwow-card-filter){1}/, 'SessionCamConstructorOverride-$1');
};
SessionCamRecorder.prototype.ab = function(s) {
    if (s.indexOf && ((s.indexOf('<S') >= 0) || (s.indexOf('<s') >= 0))) {
        s = s.replace(/\n/g, "SessionCam:NL").replace(/\r/g, "");
        s = s.replace(/<script(.*?)<\/script>/gi, '');
        s = s.replace(/<script(.*?)>/gi, '').replace(/<\/script>/gi, '');
        s = s.replace(/SessionCam:NL/g, "\n");
    }
    return s;
};
SessionCamRecorder.prototype.qD = function() {
    if (!sessionCamRecorder.fY) {
        sessionCamRecorder.rh = false;
        sessionCamRecorder.pK = {};
        sessionCamRecorder.qt.push(document.body);
        sessionCamRecorder.pJ();
    }
};
SessionCamRecorder.prototype.ag = function(gN) {
    var children;
    if (sessionCamRecorder.qR.indexOf(gN.nodeName.toLowerCase()) < 0 && sessionCamRecorder.nC(gN)) {
        if (!sessionCamRecorder.an(gN, 'scZi')) {
            gN.addEventListener('mouseenter', function() {
                sessionCamRecorder.qT(this);
            });
            gN.addEventListener('mouseleave', function() {
                sessionCamRecorder.pA(this);
            });
        }
        sessionCamRecorder.bg(gN, 'scZi', sessionCamRecorder.jw(gN));
        if (!sessionCamRecorder.matches(gN, sessionCamRecorder.du)) {
            children = gN.children ? gN.children : [];
            for (var i = 0; i < children.length; i++) {
                sessionCamRecorder.qt.push(children[i]);
            }
        }
    }
};
SessionCamRecorder.prototype.pJ = function() {
    try {
        var pN, startTime = sessionCamRecorder.getTime(),
            timeUp = false;
        while (sessionCamRecorder.qt.length > 0 && !timeUp) {
            sessionCamRecorder.ag(sessionCamRecorder.qt.pop());
            pN = sessionCamRecorder.getTime();
            sessionCamRecorder.pH += (pN - startTime);
            timeUp = sessionCamRecorder.pH > sessionCamRecorder.rb;
        }
        if (sessionCamRecorder.qt.length > 0) window.setTimeout(sessionCamRecorder.pJ, 1);
        else sessionCamRecorder.rh = true;
    } catch (err) {
        sessionCamRecorder.log('pJ', err);
    }
};
SessionCamRecorder.prototype.qT = function(gN) {
    try {
        if (sessionCamRecorder.rh) sessionCamRecorder.bg(gN, 'scHoverStart', sessionCamRecorder.getTime());
    } catch (err) {
        sessionCamRecorder.log('qT', err);
    }
};
SessionCamRecorder.prototype.pA = function(gN) {
    try {
        if (sessionCamRecorder.rh) {
            var start = sessionCamRecorder.an(gN, 'scHoverStart'),
                qc = sessionCamRecorder.an(gN, 'scZi'),
                qe, xi;
            if (qc && !isNaN(start)) {
                qe = sessionCamRecorder.qd(qc);
                qe.ht += (sessionCamRecorder.getTime() - parseInt(start));
                qe.hc++;
                if (!qe.xp) qe.xp = sessionCamRecorder.dU(gN);
                if (!qe.id && gN.getAttribute('id')) qe.id = gN.getAttribute('id');
                if (!window.sessioncamConfiguration.dontUseIdInZonal) {
                    xi = sessionCamRecorder.dU(gN, true);
                    if (qe.xi === undefined) qe.xi = xi;
                }
            }
        }
    } catch (err) {
        sessionCamRecorder.log('pA', err);
    }
};
SessionCamRecorder.prototype.qd = function(scZi) {
    var item = sessionCamRecorder.pK[scZi];
    if (!item) item = sessionCamRecorder.pK[scZi] = {
        xp: '',
        id: '',
        hc: 0,
        ht: 0
    };
    return item;
};
SessionCamRecorder.prototype.pI = function() {
    try {
        var rn = [],
            item, pa;
        for (var prop in sessionCamRecorder.pK) {
            if (sessionCamRecorder.pK.hasOwnProperty(prop)) {
                item = sessionCamRecorder.pK[prop];
                if (item.ht >= sessionCamRecorder.qo) {
                    pa = {
                        'xp': item.xp,
                        ht: item.ht,
                        hc: item.hc
                    };
                    if (item.id) pa.id = item.id;
                    if (item.xi && item.xi !== pa.xp) pa.xi = item.xi;
                    rn.push(pa);
                }
            }
        }
        return rn;
    } catch (err) {
        sessionCamRecorder.log('pI', err);
    }
};
SessionCamRecorder.prototype.rp = function() {
    try {
        if (sessionCamRecorder.rh) {
            var rn = sessionCamRecorder.pI(),
                qq;
            if (rn && rn.length) {
                qq = JSON.stringify(rn);
                if (qq != sessionCamRecorder.qh) {
                    sessionCamRecorder.gG(sessionCamRecorder.fo.pY, qq);
                    sessionCamRecorder.qh = qq;
                }
            }
        }
        window.setTimeout(sessionCamRecorder.rp, sessionCamRecorder.qI);
    } catch (err) {
        sessionCamRecorder.log('rp', err);
    }
};
SessionCamRecorder.prototype.pb = function(gN) {
    return (function($) {
        try {
            var nM = [];
            if (gN) {
                if ($(gN).is('select, input, textarea')) nM.push(gN);
                else nM = Array.prototype.slice.call(gN.querySelectorAll('select, input, textarea'));
                if (nM.length > 0) {
                    for (var i = 0; i < nM.length; ++i) {
                        if (sessionCamRecorder.an(nM[i], 'scInvalidBound') == 1) {
                            nM.splice(i, 1);
                        } else {
                            sessionCamRecorder.bg(nM[i], 'scInvalidBound', 1);
                        }
                    }
                    $(nM).on('invalid', function(e) {
                        if ((sessionCamRecorder.getTime() - sessionCamRecorder.oC) > 1000) {
                            sessionCamRecorder.oV(e);
                            sessionCamRecorder.oC = sessionCamRecorder.getTime();
                        }
                    });
                }
            }
        } catch (err) {
            if (sessionCamRecorder && sessionCamRecorder.log) sessionCamRecorder.log('Error in SessionCam pb', err);
        }
    }(window.sessionCamJQuery));
};
SessionCamRecorder.prototype.ob = function(gN) {
    return (function($) {
        var children, c;
        try {
            if (gN.className && gN.className.toString().indexOf(sessionCamRecorder.aj) > -1) sessionCamRecorder.aN(gN);
            if ((gN.className && gN.className.toString().indexOf(sessionCamRecorder.oN) > -1) && ($(gN).children('div').length > 0)) sessionCamRecorder.oR(gN);
            children = gN.querySelectorAll('.' + sessionCamRecorder.aj);
            for (c = 0; c < children.length; c++) {
                sessionCamRecorder.aN(children[c]);
            }
        } catch (err) {
            sessionCamRecorder.log('initScrollMonitoring - Error initialising scroll monitoring:', err);
        }
    }(window.sessionCamJQuery));
};
SessionCamRecorder.prototype.aN = function(gN) {
    return (function($) {
        if (sessionCamRecorder.an(gN, 'scScrollMonitor') != 1) {
            $(gN).scroll(function() {
                sessionCamRecorder.bw(this);
            });
            sessionCamRecorder.bg(gN, 'scScrollMonitor', 1);
        }
    }(window.sessionCamJQuery));
};
SessionCamRecorder.prototype.oR = function(gN) {
    return (function($) {
        var nG;
        if (sessionCamRecorder.an(gN, 'scOverflowMonitor') != 1 && $(gN).children('div').length > 0) {
            nG = $(gN).children('div')[0];
            if (!nG.getBoundingClientRect) {
                return;
            }
            $(gN).scroll(function() {
                sessionCamRecorder.bw(nG);
            });
            sessionCamRecorder.bg(gN, 'scOverflowMonitor', 1);
            sessionCamRecorder.mH = true;
        }
    }(window.sessionCamJQuery));
};
SessionCamRecorder.prototype.oT = function(nG) {
    if (nG) {
        sessionCamRecorder.ny = Math.ceil(Math.abs(nG.getBoundingClientRect().top - nG.offsetTop));
        sessionCamRecorder.ng = Math.ceil(Math.abs(nG.getBoundingClientRect().left - nG.offsetLeft));
    }
};
SessionCamRecorder.prototype.bw = function(gN) {
    return (function($) {
        if ($.inArray(gN, sessionCamRecorder.bv) < 0) {
            sessionCamRecorder.bv.push(gN);
            if (sessionCamRecorder.bF == null) sessionCamRecorder.bF = window.setTimeout(sessionCamRecorder.eh, sessionCamRecorder.es);
        }
    }(window.sessionCamJQuery));
};
SessionCamRecorder.prototype.bq = function(gN) {
    return (function($) {
        var i, children = $('.' + sessionCamRecorder.aj, $(gN));
        if ($(gN).hasClass(sessionCamRecorder.aj)) sessionCamRecorder.bw(gN);
        for (i = 0; i < children.length; i++) sessionCamRecorder.bw(children[i]);
    }(window.sessionCamJQuery));
};
SessionCamRecorder.prototype.eh = function() {
    try {
        sessionCamRecorder.bF = null;
        while (sessionCamRecorder.bv.length > 0) {
            sessionCamRecorder.bM(sessionCamRecorder.bv[0]);
            sessionCamRecorder.bv.splice(0, 1);
        }
    } catch (err) {
        if (sessionCamRecorder && sessionCamRecorder.log) sessionCamRecorder.log('Error in processScrollQueue', err);
    }
};
SessionCamRecorder.prototype.bM = function(gN) {
    if (sessionCamRecorder.mH && sessionCamRecorder.an(gN.parentElement, 'scOverflowMonitor') == 1) sessionCamRecorder.oT(gN);
    else sessionCamRecorder.gG(sessionCamRecorder.fo.ri, gN.scrollLeft + ',' + gN.scrollTop, sessionCamRecorder.et(gN), sessionCamRecorder.hJ(gN));
};
SessionCamRecorder.prototype.kN = function(fU, hi, nh) {
    return (function($) {
        var nodeName, id, style, src, jH, className, href, hidden, name, value, scId, width, height, color, face, size, kn, gp, canvas = '',
            i, j, eC, fJ, eR, otherAttributes, attrName, elements, F = sessionCamRecorder.bN(),
            qz = false,
            gn, scShadowRootId, av = '',
            attributesToIgnore;
        if (!fU[0]) return '';
        attributesToIgnore = sessionCamRecorder.bD();
        nodeName = sessionCamRecorder.hJ(fU[0]);
        if ((nodeName == 'input') || (nodeName == 'select') || (nodeName == 'textarea') || (nodeName == 'option')) {
            if (hi && (sessionCamRecorder.dT(fU[0]) || sessionCamRecorder.mg(fU[0]))) sessionCamRecorder.bg(fU[0], 'scVal', fU.val());
            return sessionCamRecorder.ck(fU[0]);
        }
        if (nodeName == 'svg') return sessionCamRecorder.qk(fU[0]);
        if (sessionCamRecorder.ge) gn = sessionCamRecorder.gK(fU[0]);
        id = fU[0].getAttribute('id') ? ' id="' + fU[0].getAttribute('id') + '" ' : '';
        if (nodeName == 'body' && sessionCamRecorder.configuration.CB == 1) {
            style = fU[0].getAttribute('style') ? ' style="' + fU[0].getAttribute('style').replace(/[\"\']/g, '').replace(/[\s;]*$/, '; ') + 'min-height:100% !important; height: auto !important;" ' : ' style="min-height:100% !important; height: auto !important;" ';
        } else {
            style = fU[0].getAttribute('style') ? ' style="' + fU[0].getAttribute('style').replace(/[\"\']/g, '') + '" ' : '';
        }
        className = sessionCamRecorder.od(fU[0]);
        jH = className ? ' class="' + (sessionCamRecorder.an(fU[0], 'scHover') === 1 ? className + ' sessionCamHover' : className) + '" ' : (sessionCamRecorder.an(fU[0], 'scHover') === 1 ? ' class="sessionCamHover" ' : '');
        src = sessionCamRecorder.ja(fU[0]);
        if (src) src = ' src="' + src + '"';
        else src = '';
        href = fU[0].getAttribute('href') ? ' href="' + fU[0].getAttribute('href').replace(/</g, '&lt;').replace(/>/g, '&gt;') + '" ' : '';
        hidden = fU[0].hidden ? ' hidden=hidden" ' : '';
        name = fU[0].getAttribute('name') ? ' name="' + fU[0].getAttribute('name') + '" ' : '';
        value = fU[0].getAttribute('value') ? ' value="' + fU[0].getAttribute('value') + '" ' : '';
        scId = sessionCamRecorder.r(fU[0]);
        if (scId) scId = ' scId="' + scId + '"  ';
        else scId = '';
        width = sessionCamRecorder.oL(fU[0]);
        if (width) width = ' width="' + width + '" ';
        height = sessionCamRecorder.pe(fU[0]);
        if (height) height = ' height="' + height + '" ';
        scShadowRootId = "";
        otherAttributes = new sessionCamRecorder.iO();
        for (i = 0; i < fU[0].attributes.length; i++) {
            attrName = fU[0].attributes[i].name;
            if (attrName && attributesToIgnore.indexOf(attrName) == -1) {
                attrName = attrName.toLowerCase();
                if (sessionCamRecorder.configuration && sessionCamRecorder.qY && sessionCamRecorder.configuration.BX && sessionCamRecorder.configuration.BX.length > 0) {
                    qz = attrName.match(sessionCamRecorder.qY);
                }
                if (attrName.substring(0, 2) === "on") attrName = 'scremoved-' + attrName + '-handler';
                if (!sessionCamRecorder.lB(attrName, true)) otherAttributes.append(' ' + attrName + '="' + (sessionCamRecorder.jW(fU[0].attributes[i].value) ? '' : qz ? '*' : fU[0].attributes[i].value.replace(/\"/g, '&quot;')) + '"');
            }
        }
        if (sessionCamRecorder.configuration.AV && (nodeName == 'canvas')) canvas = ' sccanvasdata="' + sessionCamRecorder.mV(fU[0]) + '" ';
        if (nodeName == 'img') {
            width = (fU[0].getAttribute('width') ? ' width="' + fU[0].getAttribute('width') + '" ' : '');
            height = (fU[0].getAttribute('height') ? ' height="' + fU[0].getAttribute('height') + '" ' : '');
        }
        color = '';
        face = '';
        size = '';
        if (nodeName == 'font') {
            color = fU[0].getAttribute('color') ? ' color="' + fU[0].getAttribute('color') + '" ' : '';
            face = fU[0].getAttribute('face') ? ' face="' + fU[0].getAttribute('face') + '" ' : '';
            size = sessionCamRecorder.jW(fU[0].getAttribute('size')) ? '' : ' size="' + fU[0].getAttribute('size') + '" ';
        }
        gp = fU[0].innerHTML;
        if (window.location.href.toLowerCase().indexOf('https://www.petfinder.com/search') > -1) gp = gp.replace(/(srcset=(['"])[\s\S]*?\2)/g, "");
        gp = sessionCamRecorder.dr(gp);
        kn = document.createElement(sessionCamRecorder.oc(nodeName));
        kn.setAttribute('id', fU[0].getAttribute('id'));
        kn.setAttribute('class', fU[0].getAttribute('class'));
        if (gp) {
            if (attributesToIgnore.length > 0) {
                var qC = new RegExp('(' + attributesToIgnore.join('|') + ')="[^"]+"', 'g');
                gp = gp.replace(qC, '');
            }
            if (sessionCamRecorder.configuration && sessionCamRecorder.qA && sessionCamRecorder.configuration.BX && sessionCamRecorder.configuration.BX.length > 0) {
                gp = gp.replace(sessionCamRecorder.qA, "$1$2*$4");
            }
            kn.innerHTML = sessionCamRecorder.mz(gp);
        }
        if (sessionCamRecorder.ge) {
            sessionCamRecorder.fT(fU[0], kn, gn);
        }
        if (kn.getAttribute('scshadowrootid')) scShadowRootId = ' scShadowRootId="' + kn.getAttribute('scshadowrootid') + '"';
        if (kn.getAttribute('scshadowrootadoptedcssids')) av = ' scshadowrootadoptedcssids="' + kn.getAttribute('scshadowrootadoptedcssids') + '"';
        sessionCamRecorder.nj(kn);
        sessionCamRecorder.mE(kn, fU[0], nh);
        kn = $(kn);
        elements = $('a[href*="<"]', kn).add('a[href*=">"]', kn);
        for (i = 0; i < elements.length; i++) {
            $(elements[i]).attr('href', $(elements[i]).attr('href').replace(/</g, '&lt;').replace(/>/g, '&gt;'));
        }
        if (sessionCamRecorder.configuration.AW && sessionCamRecorder.configuration.AW.length) {
            try {
                eC = kn[0].querySelectorAll(sessionCamRecorder.configuration.AW);
                fJ = fU[0].querySelectorAll(sessionCamRecorder.configuration.AW);
                if (eC.length === fJ.length) {
                    for (i = 0; i < eC.length; i++) {
                        if (sessionCamRecorder.an(fJ[i], 'scHover') === 1) eC[i].classList.add('sessionCamHover');
                    }
                }
            } catch (err) {
                sessionCamRecorder.log('Error in getOuterHtml applying configuration.AW', err);
            }
        }
        eC = kn[0].querySelectorAll('textarea,input,select');
        fJ = fU[0].querySelectorAll('textarea,input,select');
        for (i = 0; i < eC.length; i++) {
            if (i < fJ.length) {
                if (hi && (sessionCamRecorder.dT(fJ[i]) || sessionCamRecorder.mg(fJ[i]))) sessionCamRecorder.bg(fJ[i], 'scVal', fJ[i].value != "" ? fJ[i].value : null);
                $(eC[i]).replaceWith(sessionCamRecorder.ck(fJ[i]));
            }
        }
        if (sessionCamRecorder.configuration.AV && (nodeName != 'canvas')) {
            eC = kn.find('canvas');
            fJ = fU[0].querySelectorAll('canvas');
            for (i = 0; i < eC.length; i++) {
                if (i < fJ.length) {
                    $(eC[i]).replaceWith(sessionCamRecorder.kN($(fJ[i]), hi));
                }
            }
        }
        kn.find('.' + sessionCamRecorder.sessionCamIgnoreChanges).empty().remove();
        if (kn.hasClass(sessionCamRecorder.nz)) {
            kn.contents().filter(function() {
                return this.nodeType === 3;
            }).remove();
            if (value) value = '';
        }
        kn.find('.' + sessionCamRecorder.nz).contents().filter(function() {
            return this.nodeType === 3;
        }).remove();
        kn.find('.' + sessionCamRecorder.nz).contents().val('');
        if (F) {
            elements = kn[0].querySelectorAll(F);
            for (i = 0; i < elements.length; i++) $(elements[i]).replaceWith(sessionCamRecorder.eg($(elements[i])));
        }
        eR = kn[0].querySelectorAll('input[type="checkbox"], input[type="radio"]');
        for (j = 0; j < eR.length; j++) {
            if (eR[j].checked) eR[j].setAttribute('checked', 'checked');
            else eR[j].removeAttribute('checked');
        }
        gp = kn.html().replace(/SessionCamAutoPlay/gi, '');
        return '<' + nodeName + sessionCamRecorder.ab(id + name + width + height + style + jH + href + hidden + color + face + size + scId + value + canvas + scShadowRootId + av + otherAttributes.toString()) + '>' + gp + '</' + nodeName + '>';
    }(window.sessionCamJQuery));
};
SessionCamRecorder.prototype.lB = function(attrName, oQ) {
    var nX = ["id", "style", "hidden", "name", "size", "class", "value"];
    var oS = ["href", "width", "height", "scId", "color", "face"];
    var oX = ["multiple", "cols", "rows", "min", "max", "type", "placeholder", "sessioncam-name", "disabled", "readonly", "checked", "src", "selected"];
    if (nX.indexOf(attrName) != -1) {
        return attrName;
    } else if (oQ) {
        if (oS.indexOf(attrName) != -1) {
            return attrName;
        }
    } else if (oX.indexOf(attrName) != -1) {
        return attrName;
    }
};
SessionCamRecorder.prototype.qn = function(gN, aw) {
    var fO = '',
        pO = aw ? aw : gN;
    if (pO.style && pO.style.width == "") {
        fO = ' style="' + pO.style.cssText + 'width:' + Math.max(0, pO.offsetWidth - 1) + 'px;"';
    } else if (pO.style && pO.style.width != "") {
        fO = ' style="' + pO.style.cssText + '"';
    }
    return fO;
};
SessionCamRecorder.prototype.qk = function(gN) {
    return (XMLSerializer ? new XMLSerializer().serializeToString(gN) : '').replace(/\s+\S+:href\s*=/gi, ' href=');
};
SessionCamRecorder.prototype.rd = function(gN) {
    return (gN ? (gN.nodeName && gN.nodeName.toLowerCase() === 'svg' ? sessionCamRecorder.qk(gN).replace(/<svg[\S\s]*?>([\S\s]*)<\/svg>/i, '$1') : (gN.innerHTML ? gN.innerHTML : '')) : '');
};
SessionCamRecorder.prototype.matches = function(el, selector) {
    return (el.matches || el.matchesSelector || el.msMatchesSelector || el.mozMatchesSelector || el.webkitMatchesSelector || el.oMatchesSelector).call(el, selector);
};
SessionCamRecorder.prototype.ck = function(gN, aw) {
    var fO, gb, gv, nodeName, disabled, readonly, checked, src, id, name, style, jH, className, hidden, placeholder, size, type, multiple, value, kA, attributes, html, iZ, otherAttributes, attrName, i, possiblePasswordElement, cols, rows, min, max, op, qz = false,
        attributesToIgnore, selected;
    type = gN.getAttribute('type') ? ' type="' + gN.getAttribute('type') + '" ' : '';
    name = (gN.getAttribute('name') ? ' name="' + gN.getAttribute('name').replace(/[\"\']/g, '') + '" ' : '');
    if ((type.toLowerCase().indexOf('hidden') != -1 && !window.sessioncamConfiguration.captureHiddenFields) || (name.toUpperCase().indexOf('__EVENT') >= 0) || (name.toUpperCase().indexOf('__VIEWSTATE') >= 0)) return '<input type="hidden" />';
    attributesToIgnore = sessionCamRecorder.bD();
    nodeName = sessionCamRecorder.hJ(gN);
    gb = sessionCamRecorder.eb(nodeName === 'option' ? gN.parentNode : gN);
    gv = (sessionCamRecorder.configuration != null && (sessionCamRecorder.configuration.BP === 0 || gb));
    possiblePasswordElement = sessionCamRecorder.lZ(gN);
    op = gN.className && gN.className.toLowerCase().indexOf(sessionCamRecorder.nz) >= 0;
    id = gN.getAttribute('id') ? ' id="' + gN.getAttribute('id').replace(/[\"\']/g, '') + '" ' : '';
    if (gN.getAttribute(sessionCamRecorder.sessioncamName)) iZ = ' ' + sessionCamRecorder.sessioncamName + '="' + sessionCamRecorder.fW(gN.getAttribute(sessionCamRecorder.sessioncamName)).replace(/[\"\']/g, '') + '" ';
    else if (sessionCamRecorder.configuration != null && !sessionCamRecorder.jW(sessionCamRecorder.configuration.BO) && gN.getAttribute(sessionCamRecorder.configuration.BO)) iZ = ' ' + sessionCamRecorder.configuration.BO + '="' + sessionCamRecorder.fW(gN.getAttribute(sessionCamRecorder.configuration.BO)).replace(/[\"\']/g, '') + '" ';
    else iZ = '';
    if (nodeName == 'select') style = sessionCamRecorder.qn(gN, aw);
    else style = gN.getAttribute('style') ? ' style="' + gN.getAttribute('style').replace(/[\"\']/g, '') + '" ' : '';
    className = sessionCamRecorder.od(gN);
    jH = className ? ' class="' + (sessionCamRecorder.an(gN, 'scHover') === 1 ? className + ' sessionCamHover' : className) + '" ' : (sessionCamRecorder.an(gN, 'scHover') === 1 ? ' class="sessionCamHover" ' : '');
    size = sessionCamRecorder.jW(gN.getAttribute('size')) ? '' : ' size="' + gN.getAttribute('size') + '" ';
    multiple = gN.multiple ? ' multiple="' + gN.multiple + '" ' : '';
    hidden = gN.hidden ? ' hidden="' + gN.hidden + '" ' : '';
    cols = gN.getAttribute('cols') ? ' cols="' + gN.getAttribute('cols') + '" ' : '';
    rows = gN.getAttribute('rows') ? ' rows="' + gN.getAttribute('rows') + '" ' : '';
    min = gN.getAttribute('min') ? ' min="' + gN.getAttribute('min') + '" ' : '';
    max = gN.getAttribute('max') ? ' max="' + gN.getAttribute('max') + '" ' : '';
    disabled = gN.disabled ? ' disabled="' + gN.disabled + '" ' : '';
    readonly = gN.readOnly ? ' readonly="' + gN.readOnly + '" ' : '';
    src = gN.getAttribute('src') ? ' src="' + gN.getAttribute('src') + '" ' : '';
    checked = gN.checked ? ' checked="' + gN.checked + '" ' : '';
    placeholder = gN.getAttribute('placeholder') || '';
    selected = nodeName === 'option' ? (gN.selected ? ' selected="selected" ' : '') : '';
    if (!possiblePasswordElement) {
        if (placeholder) {
            if (op) {
                placeholder = '';
            } else if (gb || gv) {
                placeholder = sessionCamRecorder.fg(placeholder, gb);
            }
            placeholder = ' placeholder="' + placeholder + '" ';
        }
        otherAttributes = new sessionCamRecorder.iO();
        for (i = 0; i < gN.attributes.length; i++) {
            attrName = gN.attributes[i].name;
            if (attrName && attributesToIgnore.indexOf(attrName) == -1) {
                attrName = attrName.toLowerCase();
                if (sessionCamRecorder.configuration && sessionCamRecorder.qY && sessionCamRecorder.configuration.BX && sessionCamRecorder.configuration.BX.length > 0) {
                    qz = attrName.match(sessionCamRecorder.qY);
                } else qz = false;
                if (attrName.substring(0, 2) === "on") attrName = 'scremoved-' + attrName + '-handler';
                if (!sessionCamRecorder.lB(attrName, false)) {
                    if (attrName.indexOf('password') != -1) otherAttributes.append(' ' + attrName + '=""');
                    else otherAttributes.append(' ' + attrName + '="' + (sessionCamRecorder.jW(gN.attributes[i].value) ? '' : qz ? "*" : gN.attributes[i].value.replace(/\"/g, '&quot;')) + '"');
                }
            }
        }
    }
    value = '';
    if (possiblePasswordElement || op) {
        kA = '';
    } else {
        if (nodeName == 'select' && gN.type == 'select-multiple') {
            kA = sessionCamRecorder.jt(gN, gv, gb);
        } else {
            kA = sessionCamRecorder.fW(gN.value);
        }
    }
    if (kA) {
        if (kA.replace) kA = kA.replace(/</g, '&lt;').replace(/>/g, '&gt;');
        if (nodeName == 'select' || (!sessionCamRecorder.configuration.BT && ((gN.getAttribute('type') == 'button') || (gN.getAttribute('type') == 'submit')))) {
            if (gv || gb) {
                if (multiple || ((nodeName == 'select') && (gN.type == 'select-multiple'))) value = sessionCamRecorder.jt(gN, gv, gb);
                else {
                    if (gb || (nodeName == 'select')) value = sessionCamRecorder.fg(kA, gb);
                    else value = kA;
                }
            } else value = kA;
        } else {
            if ((gb || gv || (gN.getAttribute('type') && gN.getAttribute('type').toLowerCase() === 'password')) && !((gN.getAttribute('type') == 'radio') || (gN.getAttribute('type') == 'checkbox'))) {
                switch (gN.getAttribute('type') || '') {
                    case 'password':
                        break;
                    case 'number':
                    case 'date':
                    case 'week':
                    case 'month':
                    case 'time':
                    case 'datetime':
                    case 'datetime-local':
                    case 'color':
                    case 'range':
                        value = sessionCamRecorder.mX(kA, gN);
                        break;
                    default:
                        value = sessionCamRecorder.fg(kA, gb);
                        break;
                }
                kA = value;
            } else value = kA;
        }
        value = ' value="' + value + '" ';
    } else if ((gN.getAttribute('type') == 'button') || (gN.getAttribute('type') == 'submit')) {
        value = ' value="SessionCam:Blank" ';
    }
    if (possiblePasswordElement) {
        attributes = sessionCamRecorder.ab(id + iZ + name + style + jH + size + hidden + type + multiple + cols + rows + min + max + disabled + readonly + checked + src + selected);
    } else {
        attributes = sessionCamRecorder.ab(id + iZ + name + style + jH + hidden + size + placeholder + type + multiple + value + cols + rows + min + max + disabled + readonly + checked + src + selected + otherAttributes.toString());
    }
    html = '';
    if (nodeName == 'select') html = sessionCamRecorder.dg(gN, gv, gb, possiblePasswordElement);
    else if (nodeName == 'textarea') html = kA;
    else if (nodeName === 'option') html = (gv || possiblePasswordElement || op) ? sessionCamRecorder.fg(gN.innerHTML, gb) : gN.innerHTML;
    else html = gN.innerHTML;
    nodeName = sessionCamRecorder.oc(nodeName);
    if (html.length > 0) fO = '<' + nodeName + attributes + '>' + html + '</' + nodeName + '>';
    else fO = '<' + nodeName + attributes + ' />';
    return fO;
};
SessionCamRecorder.prototype.cE = function(gN) {
    return (function($) {
        var fO = new sessionCamRecorder.iO(),
            gv, gb, s, jo;
        gv = (sessionCamRecorder.configuration != null && sessionCamRecorder.configuration.BP === 0);
        gb = (gv ? null : sessionCamRecorder.eb(gN));
        jo = $('option:selected', gN);
        if ((jo != null) && (jo.length > 0)) {
            for (s = 0; s < jo.length; s++) {
                fO.append('<option value="' + (gv || gb ? sessionCamRecorder.fg(jo[s].value) : jo[s].value) + '" selected="selected">' + (gv || gb ? sessionCamRecorder.fg(jo[s].text, gb) : jo[s].text) + '</option>');
            }
        }
        return fO.toString();
    }(window.sessionCamJQuery));
};
SessionCamRecorder.prototype.jt = function(gN, gv, gb) {
    var i, G = (gN.selectedOptions || []),
        fO = [];
    if (G.length == 0) {
        return "";
    }
    if (gv == null) gv = (sessionCamRecorder.configuration != null && sessionCamRecorder.configuration.BP === 0);
    if (!gv && (gb == null)) gb = sessionCamRecorder.eb(gN);
    if (gv || gb) {
        for (i = 0; i < G.length; i++) {
            fO.push(sessionCamRecorder.fg(G[i].value));
        }
    } else {
        for (i = 0; i < G.length; i++) {
            fO.push(G[i].value);
        }
    }
    return fO.join(',');
};
SessionCamRecorder.prototype.dg = function(gN, gv, gb, possiblePasswordElement) {
    return (function($) {
        var fO = new sessionCamRecorder.iO(),
            dY, s, jo;
        dY = gN.multiple;
        jo = (dY ? $('option', gN) : $('option:selected', gN));
        if ((jo != null) && (jo.length > 0)) {
            for (s = 0; s < jo.length; s++) {
                if (dY) fO.append('<option value="' + (possiblePasswordElement || gN.classList.contains(sessionCamRecorder.nz) ? '' : gv || gb ? sessionCamRecorder.fg(jo[s].value) : jo[s].value) + (jo[s].selected ? '" selected="selected">' : '">') + (gN.classList.contains(sessionCamRecorder.nz) ? '' : gv || gb ? sessionCamRecorder.fg(jo[s].text, gb) : jo[s].text) + '</option>');
                else fO.append('<option value="' + (possiblePasswordElement || gN.classList.contains(sessionCamRecorder.nz) ? '' : gv || gb ? sessionCamRecorder.fg(jo[s].value) : jo[s].value) + '" selected="selected">' + (gN.classList.contains(sessionCamRecorder.nz) ? '' : gv || gb ? sessionCamRecorder.fg(jo[s].text, gb) : jo[s].text) + '</option>');
            }
        }
        return fO.toString();
    }(window.sessionCamJQuery));
};
SessionCamRecorder.prototype.nC = function(gN) {
    return gN.nodeName.toLowerCase() === "body" || document.body.contains(gN);
};
SessionCamRecorder.prototype.dJ = function(gN, fN, ad) {
    return (function($) {
        var fO = 0,
            time, nodeName, jO, da, child, lu, gV, i, en, ks, cc, ki, dw, c, gs, hg, dm, ek, data, or = false,
            nh;
        if (!sessionCamRecorder.kJ(gN) && sessionCamRecorder.nC(gN)) {
            time = sessionCamRecorder.getTime();
            nodeName = sessionCamRecorder.hJ(gN);
            jO = sessionCamRecorder.mZ(gN);
            da = sessionCamRecorder.an(gN, 'scVisible');
            if (jO !== da) {
                sessionCamRecorder.gG(sessionCamRecorder.fo.ji, sessionCamRecorder.kN($(gN), true), sessionCamRecorder.et(gN, true), nodeName, null, null, gN, fN, time);
                sessionCamRecorder.bg(gN, 'scVisible', jO);
                if (jO) {
                    sessionCamRecorder.aK(time + 1, gN);
                    sessionCamRecorder.kC(gN, fN);
                    or = true;
                }
            } else if (jO || (gN.nodeName.toLowerCase() === 'input' && (gN.getAttribute('type') === 'checkbox'))) {
                gV = sessionCamRecorder.df($(gN), fN, time, ad);
                if (gV) {
                    if (sessionCamRecorder.fe($(gN), sessionCamRecorder.cQ(gN), fN)) or = true;
                    lu = sessionCamRecorder.an(gN, 'scChildIds') || [];
                    i = 0;
                    while (i < lu.length) {
                        child = sessionCamRecorder.eG(lu[i], gN.childNodes);
                        if (child && !sessionCamRecorder.kJ(child)) i++;
                        else {
                            sessionCamRecorder.gG(sessionCamRecorder.fo.pw, '', sessionCamRecorder.et(gN) + 'child{' + i + '}childScId{' + lu[i] + '}serial{' + (sessionCamRecorder.fF++) + '}', null, null, null, gN, fN, time);
                            or = true;
                            lu.splice(i, 1);
                        }
                    }
                    en = gN.childNodes ? gN.childNodes.length : 0;
                    cc = [];
                    ki = [];
                    dw = -1;
                    if (en === 0) sessionCamRecorder.aK(time + 1, gN);
                    for (c = 0; c < en; c++) {
                        child = gN.childNodes[c];
                        if (!sessionCamRecorder.kJ(child)) {
                            gs = $(child);
                            dw++;
                            hg = sessionCamRecorder.ct(child);
                            dm = sessionCamRecorder.dD(gs, hg);
                            if (($.inArray(sessionCamRecorder.jw(child), lu) < 0)) {
                                nh = $(gN).hasClass(sessionCamRecorder.mA);
                                data = sessionCamRecorder.ms(hg, gN) + sessionCamRecorder.kN(gs, true, nh) + sessionCamRecorder.ms(sessionCamRecorder.dc(gs), gN);
                                if (!sessionCamRecorder.configuration.CF && data.indexOf(sessionCamRecorder.ll) >= 0) data = sessionCamRecorder.bS(data);
                                if (ks) sessionCamRecorder.gG(sessionCamRecorder.fo.hS, data, sessionCamRecorder.et(ks[0]), sessionCamRecorder.hJ(ks[0]), null, null, gN, fN, time);
                                else sessionCamRecorder.gG(sessionCamRecorder.fo.jd, data, sessionCamRecorder.et(gN), sessionCamRecorder.hJ(gN), null, null, gN, fN, time);
                                or = true;
                                sessionCamRecorder.pb(child);
                                lu.splice(dw, 0, sessionCamRecorder.jw(child));
                                sessionCamRecorder.kC(child, fN + 1);
                                sessionCamRecorder.cL(child);
                                if (!(window.location.href.toLowerCase().indexOf('https://www.petfinder.com/search') > -1 && gN.className && gN.className.toLowerCase().indexOf('filterList') >= 0)) sessionCamRecorder.aK(time + 1, child);
                            } else if (!sessionCamRecorder.nP) cc.push(child);
                            if (dm) {
                                sessionCamRecorder.gG(sessionCamRecorder.fo.bl, sessionCamRecorder.ms(hg, gN), sessionCamRecorder.et(child), sessionCamRecorder.hJ(child), null, null, gN, fN, time + 1);
                                or = true;
                            }
                            ki.push(sessionCamRecorder.jw(child));
                            ks = gs;
                        }
                    }
                    sessionCamRecorder.bg(gN, 'scChildIds', ki);
                    ek = false;
                    if (ki.toString() != lu.toString()) {
                        sessionCamRecorder.gG(sessionCamRecorder.fo.ji, sessionCamRecorder.kN($(gN), true), sessionCamRecorder.et(gN), nodeName, null, null, gN, fN, time);
                        ek = true;
                        or = true;
                        sessionCamRecorder.kC(gN, fN);
                    }
                    if (!ek && (cc.length > 0)) {
                        for (c = 0; c < cc.length; c++) {
                            sessionCamRecorder.kR.push({
                                elem: cc[c],
                                level: fN + 1
                            });
                        }
                        fO = cc.length;
                    }
                }
            }
            if (or) sessionCamRecorder.bq(gN);
        }
        return fO;
    }(window.sessionCamJQuery));
};
SessionCamRecorder.prototype.dz = function(ez) {
    var pG, cc, mh;
    try {
        sessionCamRecorder.gQ = (sessionCamRecorder.gQ - 1) || 4;
        if ((sessionCamRecorder.configuration != null) && (sessionCamRecorder.configuration.D)) {
            if (sessionCamRecorder.kR.length < 1) {
                if (sessionCamRecorder.nP) pG = null;
                else if ((sessionCamRecorder.configuration.C != null) && (sessionCamRecorder.configuration.C.length > 0)) pG = document.getElementById(sessionCamRecorder.configuration.C) || sessionCamRecorder.lQ();
                else pG = sessionCamRecorder.lQ();
                cc = 0;
                if (pG) cc = sessionCamRecorder.dJ(pG, 0);
                else if (sessionCamRecorder.nP) cc = sessionCamRecorder.kR.length;
                else cc = 0;
                if (cc > 0 && !ez) window.setTimeout(sessionCamRecorder.dH, 1);
            }
            if (ez) {
                sessionCamRecorder.cv();
                sessionCamRecorder.hN();
                sessionCamRecorder.kQ();
                if (sessionCamRecorder.configuration.AV) sessionCamRecorder.nu();
            } else {
                switch (sessionCamRecorder.gQ) {
                    case 1:
                        sessionCamRecorder.cv();
                        break;
                    case 2:
                        sessionCamRecorder.hN();
                        break;
                    case 3:
                        sessionCamRecorder.kQ();
                        break;
                    case 4:
                        if (sessionCamRecorder.configuration.AV) sessionCamRecorder.nu();
                        break;
                }
            }
        } else if (sessionCamRecorder.gQ === 3) {
            sessionCamRecorder.cv();
            sessionCamRecorder.kQ();
        }
        mh = sessionCamRecorder.configuration.AT;
        if (!mh) mh = 250;
        if (!ez) window.setTimeout(sessionCamRecorder.dz, mh);
    } catch (err) {
        sessionCamRecorder.log('monitorDOM', err);
    }
    return;
};
SessionCamRecorder.prototype.dH = function(ez) {
    try {
        if (sessionCamRecorder.kR.length > 0) {
            sessionCamRecorder.dJ(sessionCamRecorder.kR[0].elem, sessionCamRecorder.kR[0].level);
            sessionCamRecorder.kR.splice(0, 1);
        }
        if (sessionCamRecorder.kR.length > 0 && !ez) setTimeout(sessionCamRecorder.dH, 1);
        return sessionCamRecorder.kR.length;
    } catch (err) {
        sessionCamRecorder.log('processDOMQueue', err);
    }
};
SessionCamRecorder.prototype.cv = function() {
    return (function($) {
        try {
            var fQ, eS, i, j, val, name, F = sessionCamRecorder.bN();
            fQ = $(sessionCamRecorder.kX + ', ' + sessionCamRecorder.jZ + ', textarea:not(.' + sessionCamRecorder.sessionCamIgnoreChanges + ')');
            eS = ((document.activeElement !== undefined) && (document.activeElement !== null)) ? document.activeElement : '';
            for (i = 0, j = fQ.length; i < j; i++) {
                if (!F || !$(fQ[i]).is(F)) {
                    val = $(fQ[i]).val();
                    if (val != sessionCamRecorder.an(fQ[i], 'scVal')) {
                        if (fQ[i] != eS && fQ[i].className.indexOf(sessionCamRecorder.nz) === -1 && !sessionCamRecorder.lZ(fQ[i])) {
                            sessionCamRecorder.bg(fQ[i], 'scVal', val);
                            sessionCamRecorder.gG(sessionCamRecorder.fo.iJ, val, sessionCamRecorder.dP($(fQ[i])), sessionCamRecorder.hJ(fQ[i]), sessionCamRecorder.eO(fQ[i]), null, fQ[i]);
                        }
                    }
                }
            }
            fQ = $('select');
            for (i = 0, j = fQ.length; i < j; i++) {
                if (!F || !$(fQ[i]).is(F)) {
                    val = $(fQ[i]).val();
                    if ($.isArray(val)) val = val.join();
                    if (val != sessionCamRecorder.an(fQ[i], 'scVal')) {
                        sessionCamRecorder.bg(fQ[i], 'scVal', val);
                        if (fQ[i] != eS && fQ[i].className.indexOf(sessionCamRecorder.nz) === -1 && !sessionCamRecorder.lZ(fQ[i])) sessionCamRecorder.gG(sessionCamRecorder.fo.iJ, ($(fQ[i]).prop('multiple') ? sessionCamRecorder.jt(fQ[i]) : sessionCamRecorder.cE(fQ[i])), sessionCamRecorder.dP($(fQ[i])), 'select', sessionCamRecorder.et(fQ[i]), null, fQ[i]);
                    }
                }
            }
            var ky = [];
            fQ = $('input[type=checkbox]');
            for (i = 0, j = fQ.length; i < j; i++) {
                if (!F || !$(fQ[i]).is(F)) {
                    val = sessionCamRecorder.mD($(fQ[i]));
                    if (val != sessionCamRecorder.an(fQ[i], 'scVal')) {
                        sessionCamRecorder.bg(fQ[i], 'scVal', val);
                        if (fQ[i] != eS && fQ[i].className.indexOf(sessionCamRecorder.nz) === -1 && !sessionCamRecorder.lZ(fQ[i])) {
                            sessionCamRecorder.gG(sessionCamRecorder.fo.iJ, sessionCamRecorder.iS($(fQ[i])), sessionCamRecorder.dP($(fQ[i])), 'checkbox', sessionCamRecorder.et(fQ[i]), val, fQ[i]);
                            name = $(fQ[i]).attr('name');
                            if (ky.indexOf(name) < 0) {
                                sessionCamRecorder.gG(sessionCamRecorder.fo.mU, sessionCamRecorder.mn($(fQ[i])), sessionCamRecorder.ij($(fQ[i])), 'checkbox');
                                ky.push(name);
                            }
                        }
                    }
                }
            }
            ky = [];
            fQ = $('input[type=radio]');
            for (i = 0, j = fQ.length; i < j; i++) {
                if (!F || !$(fQ[i]).is(F)) {
                    val = sessionCamRecorder.mD($(fQ[i]));
                    if (val != sessionCamRecorder.an(fQ[i], 'scVal')) {
                        sessionCamRecorder.bg(fQ[i], 'scVal', val);
                        if (fQ[i] != eS && fQ[i].className.indexOf(sessionCamRecorder.nz) === -1 && !sessionCamRecorder.lZ(fQ[i])) {
                            sessionCamRecorder.gG(sessionCamRecorder.fo.iJ, sessionCamRecorder.iS($(fQ[i])), sessionCamRecorder.dP($(fQ[i])), 'radio', sessionCamRecorder.et(fQ[i]), val, fQ[i]);
                            name = $(fQ[i]).attr('name');
                            if (ky.indexOf(name) < 0) {
                                sessionCamRecorder.gG(sessionCamRecorder.fo.mU, sessionCamRecorder.nk($(fQ[i])), sessionCamRecorder.ij($(fQ[i])), 'radio');
                                ky.push(name);
                            }
                        }
                    }
                }
            }
        } catch (err) {
            sessionCamRecorder.log('checkInputsForValChanges', err);
        }
        return;
    }(window.sessionCamJQuery));
};
SessionCamRecorder.prototype.nu = function() {
    return (function($) {
        if (!sessionCamRecorder.configuration.AV) return;
        try {
            var i, fU = $('canvas'),
                nm, val;
            for (i = 0; i < fU.length; i++) {
                nm = sessionCamRecorder.an(fU[i], 'sccanvasdata') || "";
                val = sessionCamRecorder.mV(fU[i]) || nm;
                if (val !== nm && fU[0].className.toLowerCase().indexOf(sessionCamRecorder.nz) === -1) sessionCamRecorder.gG(sessionCamRecorder.fo.nl, val, sessionCamRecorder.et(fU[i]), 'canvas');
            }
        } catch (err) {
            sessionCamRecorder.log('checkCanvas', err);
        }
    }(window.sessionCamJQuery));
};
SessionCamRecorder.prototype.mV = function(gN) {
    var fO;
    try {
        if (!sessionCamRecorder.configuration.AV) fO = '';
        else if (sessionCamRecorder.configuration.AV === 10) fO = gN.toDataURL();
        else fO = gN.toDataURL('image/jpeg', (sessionCamRecorder.configuration.AV / 10));
        sessionCamRecorder.bg(gN, 'sccanvasdata', fO);
    } catch (err) {
        sessionCamRecorder.log('setCanvasData', err);
        fO = '';
    }
    return fO;
};
SessionCamRecorder.prototype.jh = function() {
    var cy = document.getElementsByTagName('HEAD');
    return (cy.length ? cy[0] : null);
};
SessionCamRecorder.prototype.lQ = function() {
    var elements = document.getElementsByTagName('BODY');
    return (elements.length ? elements[0] : null);
};
SessionCamRecorder.prototype.iP = function() {
    return document.head.querySelectorAll('head>link[href][rel*=stylesheet]:not([media=print]), head>link[href][rel*=STYLESHEET]:not([media=print]), head>link[href][rel*=Stylesheet]:not([media=print]), head>link[href][rel*=StyleSheet]:not([media=print]), head>base[href][target], head>style:not([media=print]), head>base');
};
SessionCamRecorder.prototype.iR = function(body, mq) {
    return (function($) {
        var fO = [],
            i, elements = $('link', $(body)).add('style', $(body));
        for (i = 0; i < elements.length; i++) {
            switch (sessionCamRecorder.hJ(elements[i])) {
                case 'style':
                    if ($(elements[i]).attr('media') !== 'print') fO.push(elements[i]);
                    break;
                case 'link':
                    if (($(elements[i]).attr('href')) && ($(elements[i]).attr('rel') && $(elements[i]).attr('rel').indexOf('stylesheet') >= 0) && ($(elements[i]).attr('media') !== 'print')) {
                        if (!mq || !$(elements[i]).prop('disabled')) fO.push(elements[i]);
                    }
                    break;
            }
        }
        return fO;
    }(window.sessionCamJQuery));
};
SessionCamRecorder.prototype.fS = function(gk) {
    return (function($) {
        var fO = '',
            rel, href, type, media, disabled, gP, hE, val, val1, lastVal, lastVal1, fB, i, pk, scBlobId, target, aB;
        switch (sessionCamRecorder.hJ(gk)) {
            case 'style':
                if (gk.getAttribute) media = gk.getAttribute('media');
                if (gk.styleSheet && gk.styleSheet.cssText) {
                    val = (gk.innerHTML || gk.innerText || '');
                    val1 = gk.styleSheet.cssText || '';
                    lastVal = sessionCamRecorder.an(gk, 'scVal0') || '';
                    lastVal1 = sessionCamRecorder.an(gk, 'scVal1') || '';
                    sessionCamRecorder.bg(gk, 'scVal0', val);
                    sessionCamRecorder.bg(gk, 'scVal1', val1);
                    if (lastVal == val) {
                        if (lastVal1 == val1) val = sessionCamRecorder.an(gk, 'scVal') || '';
                        else val = val1;
                    }
                    sessionCamRecorder.bg(gk, 'scVal', val);
                } else {
                    val = (gk.innerHTML || gk.innerText);
                    if (val && val.trim) val = val.trim();
                    if (!val && gk.sheet && gk.sheet.cssRules && gk.sheet.cssRules.length < 15000) {
                        sessionCamRecorder.aG = true;
                        fB = new sessionCamRecorder.iO();
                        for (i = 0; i < gk.sheet.cssRules.length; i++) {
                            fB.append(gk.sheet.cssRules[i].cssText);
                        }
                        val = fB.toString();
                    }
                }
                fO = '<style scId="' + sessionCamRecorder.jw(gk) + '"' + (media ? ' media="' + media + '"' : '') + '>' + val + '</style>';
                break;
            case 'link':
                rel = gk.getAttribute('rel');
                href = gk.getAttribute('href');
                if (href && href.indexOf('blob') === 0) {
                    pk = $.inArray(href, sessionCamRecorder.oh) + 1;
                    if (pk < 1) {
                        sessionCamRecorder.oh.push(href);
                        pk = sessionCamRecorder.oh.length;
                        sessionCamRecorder.oU(gk, pk, sessionCamRecorder.nJ);
                    }
                    scBlobId = pk;
                    href = '';
                } else if (href) href = sessionCamRecorder.aX(href);
                type = gk.getAttribute('type');
                media = gk.getAttribute('media');
                disabled = gk.disabled;
                if (href && href.indexOf('dailylook.com') > -1 || window.location.hostname === 'dailylook.com') {
                    aB = sessionCamRecorder.aT(href, rel);
                    if (aB) {
                        href = aB;
                    }
                }
                gP = (gk.outerHTML.substr(gk.outerHTML.length - 2).toLowerCase() == '/>');
                hE = (gP ? '' : ((gk.outerHTML.length > 6) && (gk.outerHTML.substr(gk.outerHTML.length - 7).toLowerCase() == '</link>') ? '</link>' : ''));
                fO = '<link scId="' + sessionCamRecorder.jw(gk) + '" ' + (scBlobId ? 'scBlobId="' + scBlobId + '" ' : '') + (rel ? 'rel="' + rel + '" ' : '') + (media ? 'media="' + media + '" ' : '') + (href ? 'href="' + href + '" ' : '') + (type ? 'type="' + type + '" ' : '') + (disabled ? 'disabled="true" ' : '') + (gP ? '/>' : '>' + hE);
                break;
            case 'base':
                href = gk.getAttribute('href');
                target = gk.getAttribute('target');
                if (href) href = sessionCamRecorder.aX(href);
                fO = '<base scId="' + sessionCamRecorder.jw(gk) + '" ' + (href ? 'href="' + href + '" ' : '') + (target ? 'target="' + target + '" ' : '') + '/>';
        }
        return fO;
    }(window.sessionCamJQuery));
};
SessionCamRecorder.prototype.aT = function(href, rel) {
    var bu = sessionCamRecorder.configuration.R;
    var aP = 'scdevicetype=' + encodeURIComponent(bu);
    if (bu !== 'Desktop/Laptop' && rel == 'stylesheet') {
        if (href && href.indexOf('?') > -1) {
            return href += '&' + aP.toLowerCase();
        } else {
            return href += '?' + aP.toLowerCase();
        }
    }
    return false;
};
SessionCamRecorder.prototype.oU = function(gN, pk, nU) {
    return (function($) {
        var fO = '',
            href = $(gN).attr('href');
        var request = XMLHttpRequest ? new XMLHttpRequest() : undefined;
        if (request) {
            request.open('GET', href, true);
            request.onload = function() {
                if (this.status >= 200 && this.status < 400) {
                    fO = this.response;
                    nU(pk, fO);
                } else {
                    sessionCamRecorder.log('Get request sent for Blob urls reached target, but returned an error');
                }
            };
            request.onerror = function() {
                sessionCamRecorder.log('Error while sending GET request for Blob urls');
            };
            request.send();
        } else {
            sessionCamRecorder.log('XMLHttpRequest is not supported in this browser.');
        }
    }(window.sessionCamJQuery));
};
SessionCamRecorder.prototype.nJ = function(pk, response) {
    sessionCamRecorder.gG(sessionCamRecorder.fo.oM, response, pk);
};
SessionCamRecorder.prototype.jj = function() {
    var sb = new sessionCamRecorder.iO(),
        i, fQ = sessionCamRecorder.iP();
    for (i = 0; i < fQ.length; i++) {
        sb.append(sessionCamRecorder.fS(fQ[i]));
    }
    return sb.toString();
};
SessionCamRecorder.prototype.nb = function() {
    return (function($) {
        var meta = $('meta[name=viewport][content]');
        return (meta.length ? meta[0].outerHTML : '');
    }(window.sessionCamJQuery));
};
SessionCamRecorder.prototype.hN = function() {
    return (function($) {
        try {
            var i, fQ, scChildIds, bt, dR, head, body, kK, scId;
            head = sessionCamRecorder.jh();
            if (head) {
                if ((sessionCamRecorder.aG || sessionCamRecorder.an(head, 'scInnerHTMLRaw') != head.innerHTML) && (sessionCamRecorder.an(head, 'scInnerHTML') != sessionCamRecorder.jj())) {
                    fQ = sessionCamRecorder.iP();
                    scChildIds = [];
                    bt = sessionCamRecorder.an(head, 'scChildIds') || [];
                    for (i = 0; i < bt.length; i++) {
                        if (!sessionCamRecorder.eG(bt[i], fQ)) sessionCamRecorder.gG(sessionCamRecorder.fo.il, null, bt[i], 'head');
                    }
                    for (i = 0; i < fQ.length; i++) {
                        dR = sessionCamRecorder.fS(fQ[i]);
                        scId = sessionCamRecorder.r(fQ[i]);
                        if ($.inArray(scId, bt) >= 0) {
                            if (sessionCamRecorder.an(fQ[i], 'scOuterHTML') != dR) {
                                sessionCamRecorder.gG(sessionCamRecorder.fo.jc, dR, scId, 'head');
                                sessionCamRecorder.bg(fQ[i], 'scOuterHTML', dR);
                            }
                        } else {
                            sessionCamRecorder.gG(sessionCamRecorder.fo.iy, dR, (i > 0 ? sessionCamRecorder.r(fQ[i - 1]) : 0), 'head');
                            sessionCamRecorder.bg(fQ[i], 'scOuterHTML', dR);
                        }
                        scChildIds.push(scId);
                    }
                    sessionCamRecorder.bg(head, 'scChildIds', scChildIds);
                    sessionCamRecorder.bg(head, 'scInnerHTMLRaw', head.innerHTML);
                    sessionCamRecorder.bg(head, 'scInnerHTML', sessionCamRecorder.jj());
                }
            }
            scChildIds = [];
            body = sessionCamRecorder.lQ();
            bt = sessionCamRecorder.an(body, 'scStyleIds');
            fQ = sessionCamRecorder.iR(body, true);
            for (i = 0; i < bt.length; i++) {
                if (!sessionCamRecorder.eG(bt[i], fQ)) sessionCamRecorder.gG(sessionCamRecorder.fo.iK, null, bt[i]);
            }
            scChildIds = [];
            for (i = 0; i < fQ.length; i++) {
                dR = sessionCamRecorder.fS(fQ[i]);
                scId = sessionCamRecorder.r(fQ[i]);
                if ($.inArray(scId, bt) >= 0) {
                    if (sessionCamRecorder.an(fQ[i], 'scOuterHTML') != dR) {
                        sessionCamRecorder.gG(sessionCamRecorder.fo.iI, dR, scId, sessionCamRecorder.hJ(fQ[i]));
                        sessionCamRecorder.bg(fQ[i], 'scOuterHTML', dR);
                    }
                } else {
                    kK = sessionCamRecorder.iv(fQ[i]);
                    if (kK) sessionCamRecorder.gG(sessionCamRecorder.fo.iG, dR, sessionCamRecorder.et(kK), sessionCamRecorder.hJ(fQ[i]));
                    else sessionCamRecorder.gG(sessionCamRecorder.fo.ik, dR, sessionCamRecorder.et(fQ[i].parentNode), sessionCamRecorder.hJ(fQ[i]));
                    sessionCamRecorder.bg(fQ[i], 'scOuterHTML', dR);
                }
                scChildIds.push(scId);
            }
            sessionCamRecorder.bg(body, 'scStyleIds', scChildIds);
            if (sessionCamRecorder.an(document.documentElement, 'scClassName') != document.documentElement.className) {
                sessionCamRecorder.gG(sessionCamRecorder.fo.jq, document.documentElement.className, null, 'html', null, null, document.documentElement);
                sessionCamRecorder.bg(document.documentElement, 'scClassName', document.documentElement.className);
            }
            var style = sessionCamRecorder.fW($(document.documentElement).attr('style'));
            if (sessionCamRecorder.an(document.documentElement, 'scStyle') != style) {
                sessionCamRecorder.gG(sessionCamRecorder.fo.lC, style, null, 'html', null, null, document.documentElement);
                sessionCamRecorder.bg(document.documentElement, 'scStyle', style);
            }
        } catch (err) {
            sessionCamRecorder.log('domMonitorNonBody', err);
        }
        return;
    }(window.sessionCamJQuery));
};
SessionCamRecorder.prototype.jB = function(onUnload) {
    if (window.sessioncamConfiguration && window.sessioncamConfiguration.customDataObjects) {
        try {
            var fb;
            while (window.sessioncamConfiguration.customDataObjects.length) {
                fb = window.sessioncamConfiguration.customDataObjects.pop();
                sessionCamRecorder.sendCustomDataEvent(fb.key, fb.value, onUnload);
            }
        } catch (err) {
            sessionCamRecorder.log('checkCustomDataObjects', err);
        }
    }
    window.setTimeout(sessionCamRecorder.jB, 1000);
    return;
};
SessionCamRecorder.prototype.sendCustomDataEvent = function(key, value, onUnload) {
    try {
        if (sessionCamRecorder.configuration.I) {
            if (Array.isArray(value)) {
                var qS = [];
                for (var i = 0; i < value.length; i++) {
                    var val = value[i];
                    if (typeof val === 'object') qS.push(JSON.stringify(val));
                    else qS.push(val);
                }
                value = qS.join('|');
            }
            if (value !== null && typeof value === 'object') {
                value = JSON.stringify(value);
            }
            if (!sessionCamRecorder.jW(value)) {
                value += "";
            }
            if (key.indexOf('+')) key = key.replace('+', '%2B');
            if (onUnload) {
                value = sessionCamRecorder.mO(value, null, null);
                sessionCamRecorder.bO(sessionCamRecorder.fo.ew + sessionCamRecorder.fi + (sessionCamRecorder.getTime() - sessionCamRecorder.jG) + sessionCamRecorder.fi + value + sessionCamRecorder.fi + key);
            } else {
                sessionCamRecorder.gG(sessionCamRecorder.fo.ew, value, key);
            }
        }
    } catch (err) {
        sessionCamRecorder.log('sendCustomDataEvent', err);
    }
    return;
};
SessionCamRecorder.prototype.registerFields = function(dZ) {
    try {
        var i, bZ = [];
        for (i = 1; i < arguments.length; i++) {
            bZ.push(arguments[i]);
        }
        sessionCamRecorder.la.push({
            kw: dZ,
            lJ: bZ,
            kd: sessionCamRecorder.fu(window.sessionCamJQuery(dZ))
        });
    } catch (err) {
        sessionCamRecorder.log('registerFields', err);
    }
    return;
};
SessionCamRecorder.prototype.getFieldValue = function(gN) {
    return (function($) {
        var fO = '';
        try {
            switch (sessionCamRecorder.hJ(gN)) {
                case 'input':
                    switch ($(gN).attr('type').toLowerCase()) {
                        case 'radio':
                        case 'checkbox':
                            fO = (gN.checked ? gN.value : '');
                            break;
                        default:
                            fO = $(gN).val();
                            break;
                    }
                    break;
                case 'select':
                case 'textarea':
                    fO = $(gN).val();
                    break;
                default:
                    fO = $(gN).html();
                    break;
            }
        } catch (err) {
            sessionCamRecorder.log('getFieldValue', err);
        }
        return (fO || '');
    }(window.sessionCamJQuery));
};
SessionCamRecorder.prototype.registeredFieldsGetValue = function(fU) {
    return (function($) {
        var fO = '',
            sb, i, kg;
        try {
            sb = sessionCamRecorder.iO();
            kg = '';
            for (i = 0; i < fU.length; i++) {
                kg = sessionCamRecorder.getFieldValue(fU[i]);
                if (kg) {
                    if ($.isArray(kg)) sb.append(',' + kg.join());
                    else sb.append(',' + kg);
                }
            }
            fO = sb.toString();
            return (fO.length > 1 ? fO.substring(1) : '');
        } catch (err) {
            sessionCamRecorder.log('registeredFieldsGetValue', err);
        }
        return fO || '';
    }(window.sessionCamJQuery));
};
SessionCamRecorder.prototype.fu = function(fU) {
    var i, sb = sessionCamRecorder.iO(),
        fO;
    for (i = 0; i < fU.length; i++) {
        sb.append(',' + sessionCamRecorder.getFieldValue(fU[i]));
    }
    fO = sb.toString();
    return (fO.length > 1 ? fO.substring(1) : '');
};
SessionCamRecorder.prototype.kQ = function() {
    return (function($) {
        try {
            var i, f, kd;
            for (i = 0; i < sessionCamRecorder.la.length; i++) {
                kd = sessionCamRecorder.fu($(sessionCamRecorder.la[i].kw));
                if (kd != sessionCamRecorder.la[i].kd) {
                    sessionCamRecorder.la[i].kd = kd;
                    for (f = 0; f < sessionCamRecorder.la[i].lJ.length; f++) {
                        try {
                            sessionCamRecorder.la[i].lJ[f].call(sessionCamRecorder, $(sessionCamRecorder.la[i].kw));
                        } catch (err1) {
                            sessionCamRecorder.log('Warning: error calling function ' + f + ' for registered fields ' + i + ' in SessionCamRecorder.checkRegisteredFields', err1);
                        }
                    }
                }
            }
        } catch (err) {
            sessionCamRecorder.log('checkRegisteredFields', err);
        }
        return;
    }(window.sessionCamJQuery));
};
SessionCamRecorder.prototype.ao = function(data, kS, gN) {
    return (function($) {
        var O, pres, nn, i;
        if (data && data.length) {
            try {
                if ((gN && $(gN).hasClass(sessionCamRecorder.sessionCamPreserveWhitespace)) || (kS && ((kS.toLowerCase() === 'textarea') || (kS.toLowerCase() === 'pre')))) data = sessionCamRecorder.cp(data);
                else {
                    O = gN ? $('TEXTAREA', gN) : [];
                    pres = gN ? $('PRE', gN) : [];
                    nn = gN ? $('.' + sessionCamRecorder.sessionCamPreserveWhitespace, gN) : [];
                    data = data.replace(/\s{1,}/g, ' ');
                    for (i = 0; i < O.length; i++) {
                        data = data.replace(O[i].outerHTML.replace(/\s{1,}/g, ' '), sessionCamRecorder.cp(O[i].outerHTML));
                    }
                    for (i = 0; i < pres.length; i++) {
                        data = data.replace(pres[i].outerHTML.replace(/\s{1,}/g, ' '), sessionCamRecorder.cp(pres[i].outerHTML));
                    }
                    for (i = 0; i < nn.length; i++) {
                        data = data.replace(nn[i].outerHTML.replace(/\s{1,}/g, ' '), sessionCamRecorder.cp(nn[i].outerHTML));
                    }
                }
                data = encodeURIComponent(data);
            } catch (e) {
                data = encodeURIComponent(data);
            }
        }
        return data;
    }(window.sessionCamJQuery));
};
SessionCamRecorder.prototype.fj = function(s) {
    if (s && s.replace) s = s.replace(/\u001E/g, 'SessionCam:field').replace(/\u001D/g, 'SessionCam:event').replace(/\&/g, 'SessionCam:amp');
    return s;
};
SessionCamRecorder.prototype.mO = function(data, gN, lv) {
    var ho, e = 0,
        bB = [];
    if (sessionCamRecorder.pU.indexOf(lv) < 0) e = sessionCamRecorder.pD++;
    if ((data === null) || (data === undefined)) data = '';
    if (typeof data !== 'string') data = data.toString();
    if (data && data.toLowerCase().indexOf('%3d%22') > -1) {
        bB = bB.concat(data.match(/url\(([^\)data:image\/svg+xml]+)\)/g));
        bB = bB.concat(data.match(/data:image\/.*?\%2Fsvg\%3E/gi));
        for (var i = 0; i < bB.length; i++) {
            var bh = decodeURIComponent(bB[i]);
            if (bh.indexOf("<style") === -1) {
                data = data.replace(bB[i], bh);
            }
        }
    }
    ho = {
        d: data,
        e: e
    };
    return JSON.stringify(ho);
};
SessionCamRecorder.prototype.gG = function(lv, data, dC, kS, kY, kI, gN, fN, timeStamp) {
    return (function($) {
        try {
            if (sessionCamRecorder.me || !sessionCamRecorder.configuration) return;
            if (sessionCamRecorder.mt) {
                switch (lv) {
                    case sessionCamRecorder.fo.lU:
                    case sessionCamRecorder.fo.MouseDown:
                    case sessionCamRecorder.fo.MouseUp:
                    case sessionCamRecorder.fo.KeyPress:
                    case sessionCamRecorder.fo.KeyDown:
                    case sessionCamRecorder.fo.iL:
                    case sessionCamRecorder.fo.iq:
                    case sessionCamRecorder.fo.hO:
                    case sessionCamRecorder.fo.iF:
                        sessionCamRecorder.mt = false;
                        break;
                    default:
                        return;
                }
            }
            if (!sessionCamRecorder.getPageIdResponseOk) {
                if (sessionCamRecorder.getTime() > (sessionCamRecorder.jG + 60000)) sessionCamRecorder.me = true;
            }
            var gb = null,
                db;
            if (!sessionCamRecorder.jS) {
                if (!timeStamp) timeStamp = sessionCamRecorder.getTime();
                timeStamp -= sessionCamRecorder.jG;
                if (data == null) data = '';
                if (dC == null) dC = '';
                if (kS == null) kS = '';
                switch (kS) {
                    case 'submit':
                    case 'button':
                        if (gN) gb = sessionCamRecorder.eb(gN);
                        if (sessionCamRecorder.configuration.BP === 0 && sessionCamRecorder.configuration.BT || gb) {
                            data = sessionCamRecorder.jx(lv, data, kS, gb, $(gN));
                            if (kI != null) kI = sessionCamRecorder.jx(lv, kI, kS, gb, $(gN));
                        }
                        break;
                    case 'radio':
                    case 'checkbox':
                    case 'select':
                        break;
                    case 'head':
                    case 'html':
                        break;
                    default:
                        if (gN) gb = sessionCamRecorder.eb(gN);
                        if (sessionCamRecorder.configuration.BP === 0 || gb) {
                            data = sessionCamRecorder.jx(lv, data, kS, gb, $(gN));
                            if (kI != null) kI = sessionCamRecorder.jx(lv, kI, kS, gb, $(gN));
                        }
                }
                if (sessionCamRecorder.configuration.L && (sessionCamRecorder.configuration.L > 0) && ((data && (data.length > sessionCamRecorder.configuration.L)) || (kI && (kI.length > sessionCamRecorder.configuration.L)))) {
                    data = 'eventDesc=' + lv + ', data.length=' + (data ? data.length : 0) + ', playbackData.length=' + (kI ? kI.length : 0);
                    kI = data;
                    lv = sessionCamRecorder.fo.eo;
                }
                if (dC.indexOf) {
                    while (dC.indexOf(String.fromCharCode(10)) >= 0) {
                        dC = dC.replace(String.fromCharCode(10), '');
                    }
                }
                if ((kY != null) && kY.indexOf) {
                    while (kY.indexOf(String.fromCharCode(10)) >= 0) {
                        kY = kY.replace(String.fromCharCode(10), '');
                    }
                }
                switch (lv) {
                    case sessionCamRecorder.fo.iU:
                    case sessionCamRecorder.fo.jr:
                    case sessionCamRecorder.fo.iJ:
                    case sessionCamRecorder.fo.DefaultValue:
                    case sessionCamRecorder.fo.hY:
                    case sessionCamRecorder.fo.KeyPress:
                    case sessionCamRecorder.fo.jd:
                    case sessionCamRecorder.fo.hS:
                    case sessionCamRecorder.fo.bl:
                    case sessionCamRecorder.fo.jz:
                        if (!gN || !kS) {
                            sessionCamRecorder.log('queueEvent requires both element and elementType parameters for this event type, aborting');
                            return;
                        }
                        break;
                }
                data = sessionCamRecorder.ao(sessionCamRecorder.fj(sessionCamRecorder.mO(data, gN, lv)), kS, gN);
                if (kI != null) kI = sessionCamRecorder.ao(sessionCamRecorder.fj(kI), kS, gN);
                dC = sessionCamRecorder.fj(sessionCamRecorder.ab(dC));
                if (kY != null) kY = sessionCamRecorder.fj(sessionCamRecorder.ab(kY));
                if ((kI != null) && (kI.length === 0) && (data)) kI = 'SessionCam:Blank';
                db = new sessionCamRecorder.iO();
                db.append(lv + sessionCamRecorder.fi + timeStamp + sessionCamRecorder.fi + data);
                if (dC || kS || !sessionCamRecorder.jW(kI) || kY) db.append(sessionCamRecorder.fi + (dC ? dC : ''));
                if (kS || !sessionCamRecorder.jW(kI) || kY) db.append(sessionCamRecorder.fi + (kS ? kS : ''));
                if (!sessionCamRecorder.jW(kI) || kY) db.append(sessionCamRecorder.fi + (sessionCamRecorder.jW(kI) ? '' : kI));
                if (kY) db.append(sessionCamRecorder.fi + kY);
                db = db.toString();
                sessionCamRecorder.lc.append(db + sessionCamRecorder.ed);
                sessionCamRecorder.cG(db);
            }
        } catch (err) {
            sessionCamRecorder.log('queueEvent', err);
        }
        return;
    }(window.sessionCamJQuery));
};
SessionCamRecorder.prototype.cp = function(s) {
    if (sessionCamRecorder.jW(s)) return '';
    if (s.indexOf) {
        if (s.indexOf('\n') >= 0) s = s.replace(/\n/g, 'SessionCam:NL');
        if (s.indexOf('\r') >= 0) s = s.replace(/\r/g, '');
    }
    return s;
};
SessionCamRecorder.prototype.ey = function() {
    var reg, match;
    this.hK = this.hK.replace(/<div FirebugVersion=\"(.*?)\" style=\"display: none;\" id=\"_firebugConsole\"><\/div>/i, '<div></div>');
    reg = new RegExp(/url\(&quot;(.*?)&quot;/gi);
    match = reg.exec(this.hK);
    while (match) {
        this.hK = this.hK.replace(match[0], match[0].replace(/&quot;/g, ''));
        match = reg.exec(this.hK);
    }
    return;
};
SessionCamRecorder.prototype.bN = function() {
    return window.sessioncamConfiguration && window.sessioncamConfiguration.elementsToRemove ? sessionCamRecorder.er + ', ' + window.sessioncamConfiguration.elementsToRemove : sessionCamRecorder.er;
};
SessionCamRecorder.prototype.bD = function() {
    var fO = [];
    if (window.sessioncamConfiguration && window.sessioncamConfiguration.attributesToIgnore) fO = window.sessioncamConfiguration.attributesToIgnore;
    return fO;
};
SessionCamRecorder.prototype.eb = function(gN) {
    var fO = false,
        i = 0,
        name, iZ, className, kB, nB = false;
    try {
        if (gN) {
            className = sessionCamRecorder.od(gN);
            if ((className && (className.toLowerCase().indexOf('sessioncamexclude') >= 0)) || (sessionCamRecorder.configuration && sessionCamRecorder.configuration.BU == "2")) fO = new sessionCamRecorder.fq();
            if (!fO) {
                name = (gN.getAttribute && gN.getAttribute('name')) || '';
                iZ = (gN.getAttribute && gN.getAttribute(sessionCamRecorder.sessioncamName)) || '';
                kB = (sessionCamRecorder.configuration && !sessionCamRecorder.jW(sessionCamRecorder.configuration.BO) && (gN.getAttribute && gN.getAttribute(sessionCamRecorder.configuration.BO))) || '';
                name = name.replace('scName_', '').replace(/SessionCamAutoPlay/gi, '').toLowerCase();
                iZ = iZ.replace('scName_', '').replace(/SessionCamAutoPlay/gi, '').toLowerCase();
                kB = kB.replace('scName_', '').replace(/SessionCamAutoPlay/gi, '').toLowerCase();
                if (name || iZ || kB) {
                    if (sessionCamRecorder.qx(name, iZ, kB, 'card', 'day') || sessionCamRecorder.qx(name, iZ, kB, 'card', 'month') || sessionCamRecorder.qx(name, iZ, kB, 'card', 'num') || sessionCamRecorder.qx(name, iZ, kB, 'card', 'year') || sessionCamRecorder.qx(name, iZ, kB, 'card', 'ccard') || sessionCamRecorder.qx(name, iZ, kB, 'card', 'credit') || sessionCamRecorder.qx(name, iZ, kB, 'sort', 'code') || sessionCamRecorder.qx(name, iZ, kB, 'account', 'num') || sessionCamRecorder.qx(name, iZ, kB, 'account', 'no') || sessionCamRecorder.qx(name, iZ, kB, 'cv', 'cvv') || sessionCamRecorder.qx(name, iZ, kB, 'cv', 'cv2') || sessionCamRecorder.qx(name, iZ, kB, 'cv', 'ccv') || sessionCamRecorder.qx(name, iZ, kB, 'cv', 'cvc') || sessionCamRecorder.qx(name, iZ, kB, 'cv', 'num') || sessionCamRecorder.qx(name, iZ, kB, 'exp', 'day') || sessionCamRecorder.qx(name, iZ, kB, 'exp', 'month') || sessionCamRecorder.qx(name, iZ, kB, 'exp', 'year') || sessionCamRecorder.qx(name, iZ, kB, 'cc', 'day') || sessionCamRecorder.qx(name, iZ, kB, 'cc', 'month') || sessionCamRecorder.qx(name, iZ, kB, 'cc', 'num') || sessionCamRecorder.qx(name, iZ, kB, 'cc', 'year') || (name.indexOf('password') >= 0) || (iZ.indexOf('password') >= 0) || (kB.indexOf('password') >= 0) || (name.indexOf('pwd') >= 0) || (iZ.indexOf('pwd') >= 0) || (kB.indexOf('pwd') >= 0) || (name.indexOf('security') >= 0) || (iZ.indexOf('security') >= 0) || (kB.indexOf('security') >= 0) || (name.indexOf('cardno') >= 0) || (iZ.indexOf('cardno') >= 0) || (kB.indexOf('cardno') >= 0) || (name.indexOf('cvn') >= 0) || (iZ.indexOf('cvn') >= 0) || (kB.indexOf('cvn') >= 0) || (name.indexOf('expir') >= 0) || (iZ.indexOf('expir') >= 0) || (kB.indexOf('expir') >= 0)) {
                        fO = new sessionCamRecorder.fq();
                    } else if ((sessionCamRecorder.configuration != null) && (sessionCamRecorder.configuration.E && sessionCamRecorder.configuration.BP === 2)) {
                        while (!fO && (i < sessionCamRecorder.configuration.E.length)) {
                            if (sessionCamRecorder.configuration.E[i].AF) {
                                if ((sessionCamRecorder.configuration.E[i].AF.toLowerCase() === name) || (sessionCamRecorder.configuration.E[i].AF.toLowerCase() === iZ) || (sessionCamRecorder.configuration.E[i].AF.toLowerCase() === kB)) {
                                    fO = new sessionCamRecorder.fq();
                                    fO.ShowFirstChars = (sessionCamRecorder.configuration.E[i].AG ? sessionCamRecorder.configuration.E[i].AG : 0);
                                    fO.ShowLastChars = (sessionCamRecorder.configuration.E[i].AH ? sessionCamRecorder.configuration.E[i].AH : 0);
                                }
                            }
                            if (!fO) i++;
                        }
                    } else if ((sessionCamRecorder.configuration != null) && (sessionCamRecorder.configuration.E && sessionCamRecorder.configuration.BP === 3)) {
                        while (!nB && (i < sessionCamRecorder.configuration.E.length)) {
                            if (sessionCamRecorder.configuration.E[i].AF) {
                                if ((sessionCamRecorder.configuration.E[i].AF.toLowerCase() === name) || (sessionCamRecorder.configuration.E[i].AF.toLowerCase() === iZ) || (sessionCamRecorder.configuration.E[i].AF.toLowerCase() === kB)) {
                                    nB = true;
                                }
                            }
                            if (!nB) i++;
                        }
                        if (!nB) fO = new sessionCamRecorder.fq();
                    }
                } else {
                    if (!sessionCamRecorder.configuration.AY || (!sessionCamRecorder.configuration.BT && (gN.getAttribute && ((gN.getAttribute('type') === 'button') || (gN.getAttribute('type') === 'submit'))))) fO = false;
                    else fO = new sessionCamRecorder.fq();
                }
            }
        }
    } catch (err) {
        sessionCamRecorder.log('getExcludeDetailsForElement', err);
        return new sessionCamRecorder.fq();
    }
    return fO;
};
SessionCamRecorder.prototype.qx = function(s0, s1, s2, match0, match1) {
    var fO = false;
    if (s0.indexOf(match0) >= 0) fO = (s0.indexOf(match1) >= 0);
    if (!fO && (s1.indexOf(match0) >= 0)) fO = (s1.indexOf(match1) >= 0);
    if (!fO && (s2.indexOf(match0) >= 0)) fO = (s2.indexOf(match1) >= 0);
    return fO;
}; //-->
//-->
//-->
SessionCamRecorder.prototype.bS = function(s) {
    var fO = s,
        cN, eA, kP, lA, match, lastIndex, kq;
    cN = sessionCamRecorder.ll;
    eA = sessionCamRecorder.ld;
    kP = "(" + cN + ")(.*?)(" + eA + ")";
    lA = new RegExp(kP, "gi");
    lastIndex = 0;
    fO = fO.replace(/\n/g, "SessionCam:NL");
    match = lA.exec(fO);
    while (match) {
        lastIndex = lA.lastIndex;
        fO = fO.replace(match[0], sessionCamRecorder.dM(match[0]));
        match = lA.exec(fO);
    }
    kq = fO.substr(lastIndex).indexOf(cN);
    if (kq >= 0) {
        kq += lastIndex;
        fO = fO.substring(0, kq) + sessionCamRecorder.dM(fO.substr(kq));
    }
    fO = fO.replace(/SessionCam:NL/g, "\n");
    return fO;
};
SessionCamRecorder.prototype.oK = function(oP, oF) {
    return (function($) {
        var fO = false;
        while (!fO && oP && oP != oP.parentNode && oP.nodeName.toLowerCase() != '#document') {
            if ($(oP).is(oF)) fO = true;
            else oP = oP.parentNode;
        }
        return fO;
    }(window.sessionCamJQuery));
};
SessionCamRecorder.prototype.ro = function(elementToCheck, oF, ow) {
    return (function($) {
        var nQ = $(elementToCheck.children).not("script, style, img, link");
        for (var ec = 0, qN = nQ.length; ec < qN; ec++) {
            if ($(nQ[ec]).not(":input") && nQ[ec].nodeType !== 8 && $(nQ[ec]).is(oF)) {
                ow.push(nQ[ec]);
            }
            if (nQ[ec].children && nQ[ec].children.length > 0) {
                sessionCamRecorder.ro(nQ[ec], oF, ow);
            }
        }
    }(window.sessionCamJQuery));
};
SessionCamRecorder.prototype.ms = function(s, parent) {
    return (function($) {
        if ($('body').hasClass(sessionCamRecorder.mA) || sessionCamRecorder.oK(parent, '.' + sessionCamRecorder.mA + ', ' + sessionCamRecorder.je) || sessionCamRecorder.configuration.BQ === 1 || sessionCamRecorder.configuration.BU == "2" || (sessionCamRecorder.configuration.BQ === 3 && sessionCamRecorder.oK(parent, sessionCamRecorder.configuration.BR)) || (sessionCamRecorder.configuration.BQ === 2 && !sessionCamRecorder.oK(parent, sessionCamRecorder.configuration.BR))) s = sessionCamRecorder.nh(s);
        else if (!sessionCamRecorder.configuration.CF && s.indexOf(sessionCamRecorder.ll) >= 0) s = sessionCamRecorder.bS(s);
        return s;
    }(window.sessionCamJQuery));
};
SessionCamRecorder.prototype.mE = function(kn, oP, nh) {
    return (function($) {
        var ow, nT, i, oF, pd;
        if (!kn) return;
        pd = $(sessionCamRecorder.je, kn);
        if (pd.length > 1) {
            for (i = 0; i < pd.length; i++) {
                $(pd[i]).attr('title', '***');
            }
        }
        if (!oP || nh || $('body').hasClass(sessionCamRecorder.mA) || sessionCamRecorder.oK(oP, '.' + sessionCamRecorder.mA + ', ' + sessionCamRecorder.je) || sessionCamRecorder.configuration.BQ === 1 || sessionCamRecorder.configuration.BU == "2") {
            sessionCamRecorder.mC(kn);
        } else {
            oF = sessionCamRecorder.configuration.BR && sessionCamRecorder.configuration.BR.length > 0 ? sessionCamRecorder.configuration.BR : '';
            if (sessionCamRecorder.configuration.BQ === 2) {
                ow = $(oF, oP);
                if (sessionCamRecorder.oK(oP, oF)) {
                    ow.push(oP);
                }
                if (oP.children && oP.children.length > 0) sessionCamRecorder.ro(oP, oF, ow);
            } else if (sessionCamRecorder.configuration.BQ === 3) {
                ow = $('.' + sessionCamRecorder.mA + ', ' + sessionCamRecorder.je + ',' + oF, oP);
                if (sessionCamRecorder.oK(oP, oF)) {
                    ow.push(oP);
                }
                if (oP.children && oP.children.length > 0) sessionCamRecorder.ro(oP, oF, ow);
            } else {
                ow = $('.' + sessionCamRecorder.mA + ', ' + sessionCamRecorder.je, oP);
            }
            nT = sessionCamRecorder.nR(ow, oP, kn);
            if (sessionCamRecorder.configuration.CA) {
                var aD = $('.' + sessionCamRecorder.mA + ', ' + sessionCamRecorder.je, kn);
                for (i = 0; i < aD.length; i++) {
                    sessionCamRecorder.mC(aD[i]);
                }
            }
            if (sessionCamRecorder.configuration.BQ === 2) {
                sessionCamRecorder.mC(kn, nT);
                nT = $('.' + sessionCamRecorder.mA + ', ' + sessionCamRecorder.je, kn);
                for (i = 0; i < nT.length; i++) {
                    sessionCamRecorder.mC(nT[i]);
                }
            } else {
                for (i = 0; i < nT.length; i++) {
                    sessionCamRecorder.mC(nT[i]);
                }
            }
            if (kn.innerHTML && !sessionCamRecorder.configuration.CF && (kn.innerHTML.indexOf(sessionCamRecorder.ll) >= 0)) kn.innerHTML = sessionCamRecorder.bS(kn.innerHTML);
        }
    }(window.sessionCamJQuery));
};
SessionCamRecorder.prototype.nR = function(elements, oP, kn) {
    return (function($) {
        var fO = [],
            pi, oq, i;
        for (i = 0; i < elements.length; i++) {
            pi = sessionCamRecorder.og(oP, elements[i]);
            if (sessionCamRecorder.frameworks.nestedForms || sessionCamRecorder.configuration.BW) pi = pi.replace(/(\s>\s)(form)/g, '$1sessioncam$2');
            pi = pi.replace(/(\s>\s)(pf)([^:]+)/g, '$1SessionCamConstructorOverride-$2$3').replace(/(\s>\s)(carwow-card-filter)([^:]+)/g, '$1SessionCamConstructorOverride-$2$3');
            oq = pi ? $(kn).find(pi) : $(kn);
            if (oq.length) fO.push(oq[0]);
        }
        return fO;
    }(window.sessionCamJQuery));
};
SessionCamRecorder.prototype.og = function(parentElement, gN) {
    return (function($) {
        var id, eQ = '';
        try {
            for (undefined; gN && gN != parentElement && gN.nodeType == 1; gN = gN.parentNode) {
                id = $(gN.parentNode).children(gN.tagName.replace(':', '\\\\:')).index(gN);
                id = ':eq(' + id + ')';
                eQ = ' > ' + gN.tagName.toLowerCase() + id + eQ;
            }
        } catch (err) {
            eQ = '';
        }
        return eQ;
    }(window.sessionCamJQuery));
};
SessionCamRecorder.prototype.dM = function(s) {
    var sb, kP, lA, jn, bV, lastIndex;
    sb = new sessionCamRecorder.iO();
    kP = "(<([^<]*?)[\/]?>)|(SessionCam:NL)";
    lA = new RegExp(kP, "gi");
    jn = lA.exec(s);
    bV = 0;
    lastIndex = -1;
    while (jn) {
        lastIndex = lA.lastIndex - jn[0].length;
        if (lastIndex > 0) sb.append(this.fg(s.substring(bV, lastIndex)));
        sb.append(jn[0]);
        bV = lA.lastIndex;
        jn = lA.exec(s);
    }
    if (bV > 0) sb.append(this.fg(s.substr(bV)));
    else {
        sb = new sessionCamRecorder.iO();
        sb.append(s);
    }
    return sb.toString();
};
SessionCamRecorder.prototype.fg = function(s, gb) {
    var fO, str, dW, length, fs, i, charCode, eU;
    fO = new sessionCamRecorder.iO();
    if ((s !== undefined) && (s !== null)) {
        str = String(s);
        dW = 0;
        length = str.length;
        fs = -1;
        if (gb && gb.ShowLastChars) {
            fs = length - 1;
            eU = 0;
            while ((fs >= 0) && (eU < gb.ShowLastChars)) {
                if (str.charCodeAt(fs) > 32) eU++;
                fs--;
            }
        } else fs = length;
        for (i = 0; i < length; i++) {
            charCode = str.charCodeAt(i);
            if (charCode > 32) {
                if (gb) {
                    if (!gb.ShowFirstChars || (dW >= gb.ShowFirstChars)) {
                        if (i <= fs) fO.append('*');
                        else fO.append(str.charAt(i));
                    } else fO.append(str.charAt(i));
                    dW++;
                } else fO.append('*');
            } else if (charCode == 10) fO.append("SessionCam:NL");
            else if (charCode != 13) fO.append(" ");
        }
    }
    return fO.toString();
};
SessionCamRecorder.prototype.nh = function(s) {
    var fO = '';
    if (s) {
        var gN = document.createElement('DIV');
        gN.innerHTML = s;
        sessionCamRecorder.mC(gN);
        fO = gN.innerHTML;
    }
    return fO;
};
SessionCamRecorder.prototype.mC = function(gN, elementsToIgnore) {
    var i, fx = sessionCamRecorder.mr(gN, false, elementsToIgnore || []);
    for (i = 0; i < fx.length; i++) {
        if (fx[i].data && fx[i].data.replace) fx[i].data = fx[i].data.replace(/\S/gi, '*');
    }
};
SessionCamRecorder.prototype.mr = function(node, mK, elementsToIgnore) {
    var fx = [],
        lS = /\S/;

    function lV(node, elementsToIgnore) {
        return (function($) {
            if ($.inArray(node, elementsToIgnore) >= 0) {
                return;
            } else if (node.nodeType == 3 && node.parentNode.nodeName.toLowerCase() != "style" && node.parentNode.nodeName.toLowerCase() != "textarea") {
                if (mK || lS.test(node.nodeValue)) {
                    fx.push(node);
                }
            } else {
                for (var i = 0, hj = node.childNodes.length; i < hj; ++i) {
                    lV(node.childNodes[i], elementsToIgnore);
                }
            }
        }(window.sessionCamJQuery));
    };
    lV(node, elementsToIgnore);
    return fx;
};
SessionCamRecorder.prototype.mX = function(value, gN) {
    var fO = (value ? value.replace(/\S/g, '*') : ''),
        type = gN.getAttribute('type') || '';
    switch (type) {
        case 'week':
            fO = '2000-W01';
            break;
        case 'month':
            fO = '2000-01';
            break;
        case 'time':
            fO = '00:00';
            break;
        case 'date':
            fO = '2000-01-01';
            break;
        case 'datetime':
        case 'datetime-local':
            fO = '2000-01-01T00:00';
            break;
        case 'color':
            fO = '#000000';
            break;
        case 'number':
            fO = '0';
            break;
        case 'range':
            fO = gN.getAttribute('min') || '0';
            break;
    }
    return fO;
};
SessionCamRecorder.prototype.bW = function() {
    return (function($) {
        $(document).ready(function() {
            var i, j, o, defaultValue, kd, kw = $('input, select, textarea');
            for (i = 0; i < kw.length; i++) {
                o = kw[i];
                defaultValue = '';
                kd = '';
                if (o.type == 'password' || sessionCamRecorder.lZ(o) || o.className && o.className.toLowerCase().indexOf(sessionCamRecorder.nz) >= 0) {
                    continue;
                }
                if (o.type == 'text' || o.type == 'search' || o.type == 'number' || o.type == 'url' || o.type == 'email' || o.type == 'tel' || o.type == 'textarea') {
                    kd = o.value;
                    defaultValue = o.defaultValue;
                }
                if (o.type == 'checkbox' || o.type == 'radio') {
                    kd = o.checked;
                    defaultValue = o.defaultChecked;
                }
                if (o.type == 'select-one') {
                    for (j = 0; j < o.options.length; j++) {
                        if (o.options[j].defaultSelected) defaultValue = o.options[j].value;
                    }
                    if ((o.options.length > 0) && (o.selectedIndex >= 0)) kd = o.options[o.selectedIndex].value;
                }
                if (kd != defaultValue) {
                    switch (o.type) {
                        case 'textarea':
                            sessionCamRecorder.gG(sessionCamRecorder.fo.jr, kd, sessionCamRecorder.eO(o), 'textarea', sessionCamRecorder.pQ(o), null, o, null, sessionCamRecorder.jG + 1);
                            break;
                        case 'checkbox':
                            sessionCamRecorder.gG(sessionCamRecorder.fo.jr, kd, sessionCamRecorder.eO(o), 'checkbox', sessionCamRecorder.pQ(o), null, o, null, sessionCamRecorder.jG + 1);
                            break;
                        case 'radio':
                            sessionCamRecorder.gG(sessionCamRecorder.fo.jr, kd, sessionCamRecorder.eO(o), 'radio', sessionCamRecorder.pQ(o), null, o, null, sessionCamRecorder.jG + 1);
                            break;
                        case 'text':
                        case 'search':
                        case 'number':
                        case 'url':
                        case 'email':
                        case 'tel':
                            sessionCamRecorder.gG(sessionCamRecorder.fo.jr, kd, sessionCamRecorder.eO(o), o.type, sessionCamRecorder.pQ(o), null, o, null, sessionCamRecorder.jG + 1);
                            break;
                        case '':
                            sessionCamRecorder.gG(sessionCamRecorder.fo.jr, kd, sessionCamRecorder.eO(o), 'text', sessionCamRecorder.pQ(o), null, o, null, sessionCamRecorder.jG + 1);
                            break;
                        case 'select-one':
                            if (defaultValue.length > 0) sessionCamRecorder.gG(sessionCamRecorder.fo.jr, sessionCamRecorder.cE(o), sessionCamRecorder.eO(o), 'select', sessionCamRecorder.pQ(o), null, o, null, sessionCamRecorder.jG + 1);
                            break;
                    }
                }
            }
            sessionCamRecorder.gG(sessionCamRecorder.fo.Start, null, null, null, null, null, null, null, sessionCamRecorder.jG + 1);
        });
        return;
    }(window.sessionCamJQuery));
};
SessionCamRecorder.prototype.aK = function(kb, gN) {
    return (function($) {
        var kw, i, fU, jb, nodeName, gv, gb, selectedOptions, defaultValue, eZ, mT, nv;
        var nc = [];
        var nt = [];
        kw = $('input, textarea, select', gN);
        for (i = 0; i < kw.length; i++) {
            fU = $(kw[i]);
            jb = sessionCamRecorder.dP(fU);
            nodeName = sessionCamRecorder.hJ(kw[i]);
            if (nodeName === 'input') nodeName = fU.attr('type') || fU.prop('type');
            eZ = false;
            if ((fU[0].className && fU[0].className.indexOf(sessionCamRecorder.nz) > -1) || sessionCamRecorder.lZ(fU[0])) {
                continue;
            }
            switch (nodeName) {
                case 'radio':
                    defaultValue = sessionCamRecorder.iS(fU);
                    eZ = true;
                    if ($.inArray(fU[0].getAttribute('name'), nc) < 0) {
                        mT = sessionCamRecorder.ij(fU);
                        nv = sessionCamRecorder.nk(fU);
                        sessionCamRecorder.gG(sessionCamRecorder.fo.DefaultValue, nv, mT, nodeName, null, null, kw[i], null, kb);
                        nc.push(fU[0].getAttribute('name'));
                    }
                    break;
                case 'checkbox':
                    defaultValue = sessionCamRecorder.iS(fU);
                    eZ = true;
                    if ($.inArray(fU[0].getAttribute('name'), nt) < 0) {
                        mT = sessionCamRecorder.ij(fU);
                        nv = sessionCamRecorder.mn(fU);
                        sessionCamRecorder.gG(sessionCamRecorder.fo.DefaultValue, nv, mT, nodeName, null, null, kw[i], null, kb);
                        nt.push(fU[0].getAttribute('name'));
                    }
                    break;
                case 'select':
                    gv = (sessionCamRecorder.configuration != null && sessionCamRecorder.configuration.BP === 0);
                    gb = sessionCamRecorder.eb(fU[0]);
                    if (fU.prop('multiple')) defaultValue = sessionCamRecorder.jt(fU[0], gv, gb);
                    else {
                        selectedOptions = $('option:selected', fU);
                        if (!selectedOptions.length) selectedOptions = $('option', fU);
                        if (selectedOptions.length) defaultValue = '<option value="' + (gv || gb ? sessionCamRecorder.fg(selectedOptions[0].value) : selectedOptions[0].value) + '" selected="selected">' + (gv || gb ? sessionCamRecorder.fg(selectedOptions[0].text, gb) : selectedOptions[0].text);
                        else defaultValue = '';
                    }
                    eZ = true;
                    break;
                case 'hidden':
                case 'image':
                case 'reset':
                case 'button':
                case 'submit':
                case 'password':
                case 'file':
                    break;
                default:
                    defaultValue = sessionCamRecorder.fW(fU[0].value).replace(/</g, '&lt;').replace(/>/g, '&gt;');
                    eZ = true;
                    break;
            }
            if (eZ) sessionCamRecorder.gG(sessionCamRecorder.fo.DefaultValue, defaultValue, jb, nodeName, null, null, kw[i], null, kb);
        }
        return;
    }(window.sessionCamJQuery));
};
SessionCamRecorder.prototype.ir = function(gl, hm, hC) {
    return (gl + hC >= hm && gl - hC <= hm);
};
SessionCamRecorder.prototype.pg = function(gN) {
    return (function($) {
        try {
            if (gN) {
                if (sessionCamRecorder.an(gN, 'scVal') != $(gN).val()) {
                    sessionCamRecorder.kH($(gN));
                }
                sessionCamRecorder.gG(sessionCamRecorder.fo.jr, ($(gN).hasClass(sessionCamRecorder.nz) || sessionCamRecorder.lZ(gN)) ? '' : $(gN).val(), sessionCamRecorder.eO(gN), 'textarea', sessionCamRecorder.pQ(gN), null, gN);
                sessionCamRecorder.bg(gN, 'scVal', $(gN).val());
                sessionCamRecorder.bg(gN, "newlyFocussed", null);
            }
        } catch (err) {
            if (sessionCamRecorder && sessionCamRecorder.log) sessionCamRecorder.log('Error in textareaBlur', err);
        }
    }(window.sessionCamJQuery));
};
SessionCamRecorder.prototype.oE = function(gN) {
    return (function($) {
        try {
            if (gN) {
                var val = $(gN).val();
                if ($.isArray(val)) val = val.join();
                if (val != sessionCamRecorder.an(gN, 'scVal')) {
                    sessionCamRecorder.kH($(gN));
                }
                sessionCamRecorder.bg(gN, 'scVal', val);
                sessionCamRecorder.gG(sessionCamRecorder.fo.jr, ($(gN).hasClass(sessionCamRecorder.nz) || sessionCamRecorder.lZ(gN)) ? '' : $(gN).prop('multiple') ? sessionCamRecorder.jt(gN) : sessionCamRecorder.cE(gN), sessionCamRecorder.eO(gN), 'select', sessionCamRecorder.pQ(gN), null, gN);
            }
        } catch (err) {
            if (sessionCamRecorder && sessionCamRecorder.log) sessionCamRecorder.log('Error in selectBlur', err);
        }
    }(window.sessionCamJQuery));
};
SessionCamRecorder.prototype.oi = function(gN) {
    return (function($) {
        try {
            if (gN) {
                if (sessionCamRecorder.an(gN, 'scVal') != $(gN).val()) {
                    sessionCamRecorder.kH($(gN));
                }
                sessionCamRecorder.gG(sessionCamRecorder.fo.jr, ($(gN).hasClass(sessionCamRecorder.nz) || sessionCamRecorder.lZ(gN)) ? '' : $(gN).val(), sessionCamRecorder.eO(gN), $(gN).attr('type'), sessionCamRecorder.pQ(gN), null, gN);
                sessionCamRecorder.bg(gN, 'scVal', $(gN).val());
                sessionCamRecorder.bg(gN, "newlyFocussed", null);
            }
        } catch (err) {
            sessionCamRecorder.log('Error in inputTextTypesBlur', err);
        }
    }(window.sessionCamJQuery));
};
SessionCamRecorder.prototype.qa = function() {
    var ra = sessionCamRecorder.pl.pageName;
    if (ra != sessionCamRecorder.qF) {
        sessionCamRecorder.mS();
        sessionCamRecorder.qF = ra;
    }
    window.setTimeout(sessionCamRecorder.qa, sessionCamRecorder.fd);
};
SessionCamRecorder.prototype.cU = function(alternativeListenerElement) {
    return (function($) {
        var targetElement = alternativeListenerElement ? alternativeListenerElement : document.body;

        function mW() {
            try {
                sessionCamRecorder.dk();
                sessionCamRecorder.jM();
            } catch (err) {
                if (sessionCamRecorder && sessionCamRecorder.log) sessionCamRecorder.log('Error in beforeUnloadProcess', err);
            }
        };
        if (!alternativeListenerElement) {
            if (sessionCamRecorder.aU) {
                try {
                    if (sessionCamRecorder.pl) {
                        sessionCamRecorder.qa();
                    } else {
                        $(window).on('popstate', function() {
                            sessionCamRecorder.mS();
                        });
                        $(window).on('hashchange', function() {
                            sessionCamRecorder.mS();
                        });
                        if (window.history && window.history.pushState) {
                            (function(history) {
                                var pushState = history.pushState;
                                history.pushState = function() {
                                    var fO = pushState.apply(history, arguments);
                                    sessionCamRecorder.mS();
                                    return fO;
                                };
                            })(window.history);
                        }
                        if (window.history && window.history.replaceState) {
                            (function(history) {
                                var replaceState = history.replaceState;
                                history.replaceState = function() {
                                    var fO = replaceState.apply(history, arguments);
                                    sessionCamRecorder.mS();
                                    return fO;
                                };
                            })(window.history);
                        }
                    }
                } catch (err) {
                    if (sessionCamRecorder && sessionCamRecorder.log) sessionCamRecorder.log('Error in bindEvents for AZ', err);
                }
            }
        }
        try {
            if (!alternativeListenerElement) {
                sessionCamRecorder.dO();
                sessionCamRecorder.cC();
                sessionCamRecorder.iQ();
                if (sessionCamRecorder.configuration.AW && sessionCamRecorder.configuration.AW.length) {
                    try {
                        $(document.body).on('mouseenter', sessionCamRecorder.configuration.AW, function() {
                            sessionCamRecorder.bg(this, 'scHover', 1);
                            sessionCamRecorder.gG(sessionCamRecorder.fo.ea, '', sessionCamRecorder.et(this), sessionCamRecorder.hJ(this));
                        });
                        $(document.body).on('mouseleave', sessionCamRecorder.configuration.AW, function() {
                            sessionCamRecorder.bg(this, 'scHover', 0);
                            sessionCamRecorder.gG(sessionCamRecorder.fo.ns, '', sessionCamRecorder.et(this), sessionCamRecorder.hJ(this));
                        });
                    } catch (err) {
                        sessionCamRecorder.log('Error in bindEvents applying configuration.AW', err);
                    }
                }
                $(document).mousemove(function(e) {
                    try {
                        sessionCamRecorder.cr(e, false);
                    } catch (err) {
                        if (sessionCamRecorder && sessionCamRecorder.log) sessionCamRecorder.log('Error in SessionCam handler for $(document).mousemove', err);
                    }
                });
                $(document).scroll(function(e) {
                    try {
                        sessionCamRecorder.cr(e, true);
                    } catch (err) {
                        if (sessionCamRecorder && sessionCamRecorder.log) sessionCamRecorder.log('Error in SessionCam handler for $(document).scroll', err);
                    }
                });
                sessionCamRecorder.ob(sessionCamRecorder.lQ());
                $(document).mousedown(function(e) {
                    try {
                        sessionCamRecorder.hb(e);
                        sessionCamRecorder.mI = e.which;
                        sessionCamRecorder.gG(sessionCamRecorder.fo.MouseDown, sessionCamRecorder.mI, sessionCamRecorder.et(e.target), sessionCamRecorder.hJ(e.target));
                        if (!$(e.target).is(sessionCamRecorder.du)) {
                            var gN = sessionCamRecorder.g(e.target) || e.target;
                            sessionCamRecorder.fH(sessionCamRecorder.et(gN), sessionCamRecorder.hJ(gN), sessionCamRecorder.pQ(gN));
                        }
                    } catch (err) {
                        if (sessionCamRecorder && sessionCamRecorder.log) sessionCamRecorder.log('Error in SessionCam handler for $(document).mousedown', err);
                    }
                });
                $(document).mouseup(function(e) {
                    try {
                        sessionCamRecorder.hb(e);
                        sessionCamRecorder.gG(sessionCamRecorder.fo.MouseUp, sessionCamRecorder.mI, sessionCamRecorder.et(e.target), sessionCamRecorder.hJ(e.target));
                    } catch (err) {
                        if (sessionCamRecorder && sessionCamRecorder.log) sessionCamRecorder.log('Error in SessionCam handler for $(document).mouseup', err);
                    }
                });
                $(document).click(function(e) {
                    try {
                        sessionCamRecorder.hb(e);
                    } catch (err) {
                        if (sessionCamRecorder && sessionCamRecorder.log) sessionCamRecorder.log('Error in SessionCam handler for $(document).click', err);
                    }
                });
                $(window).on('orientationchange resize', function() {
                    try {
                        window.clearTimeout(this.hk);
                        this.hk = window.setTimeout(function() {
                            var w, h, data;
                            sessionCamRecorder.iQ();
                            if (sessionCamRecorder.fY) {
                                w = Math.round(sessionCamRecorder.lT());
                                h = Math.round(sessionCamRecorder.na());
                                data = w + '-' + h + '|' + sessionCamRecorder.ih() + '-' + (sessionCamRecorder.mH ? sessionCamRecorder.ng : $(window).scrollLeft()) + '-' + (sessionCamRecorder.mH ? sessionCamRecorder.ny : $(window).scrollTop()) + '|' + sessionCamRecorder.lN() + '-' + sessionCamRecorder.mG();
                                if (!sessionCamRecorder.ir(w, sessionCamRecorder.gU, 20) || !sessionCamRecorder.ir(h, sessionCamRecorder.hy, 20)) {
                                    sessionCamRecorder.gG(sessionCamRecorder.fo.qy, data, null, null, null, null, this, null, sessionCamRecorder.getTime() - sessionCamRecorder.fd);
                                    sessionCamRecorder.gU = w;
                                    sessionCamRecorder.hy = h;
                                }
                            } else {
                                sessionCamRecorder.gG(sessionCamRecorder.fo.qy, sessionCamRecorder.lT() + '-' + sessionCamRecorder.na() + '|' + '1' + '-' + (sessionCamRecorder.mH ? sessionCamRecorder.ng : $(window).scrollLeft()) + '-' + (sessionCamRecorder.mH ? sessionCamRecorder.ny : $(window).scrollTop()) + '|' + sessionCamRecorder.lN() + '-' + sessionCamRecorder.mG(), null, null, null, null, this, null, sessionCamRecorder.getTime() - sessionCamRecorder.fd);
                                sessionCamRecorder.gU = sessionCamRecorder.lT();
                                sessionCamRecorder.hy = sessionCamRecorder.na();
                            }
                        }, sessionCamRecorder.fd);
                    } catch (err) {
                        if (sessionCamRecorder && sessionCamRecorder.log) sessionCamRecorder.log('Error in SessionCam handler for $(window).resize', err);
                    }
                });
                if ("onerror" in window) {
                    window.addEventListener('error', sessionCamRecorder.pm);
                }
                if ("onunhandledrejection" in window) {
                    window.addEventListener('unhandledrejection', sessionCamRecorder.pm);
                }
                if ("onrejectionhandled" in window) {
                    window.addEventListener('rejectionhandled', sessionCamRecorder.pm);
                }
                if ("onbeforeunload" in window) {
                    window.addEventListener('beforeunload', mW);
                } else {
                    $(window).unload(mW);
                }
                $(window).on('hashchange', function() {
                    sessionCamRecorder.gG(sessionCamRecorder.fo.oI, window.location.hash ? window.location.hash : '');
                });
                $(document.body).on('mouseenter', sessionCamRecorder.du, function() {
                    try {
                        sessionCamRecorder.nd();
                    } catch (err) {
                        if (sessionCamRecorder && sessionCamRecorder.log) {
                            sessionCamRecorder.log('Error in SessionCam handler for $(linkAnalyticsElements).mouseenter', err);
                        }
                    }
                });
                $(document.body).on('mouseleave', sessionCamRecorder.du, function() {
                    try {
                        sessionCamRecorder.dS(sessionCamRecorder.et(this), sessionCamRecorder.hJ(this), false, sessionCamRecorder.pF(this), sessionCamRecorder.pQ(this));
                    } catch (err) {
                        if (sessionCamRecorder && sessionCamRecorder.log) {
                            sessionCamRecorder.log('Error in SessionCam handler for $(linkAnalyticsElements).mouseleave', err);
                        }
                    }
                });
                $(document.body).on('mousedown', sessionCamRecorder.du, function(e) {
                    try {
                        sessionCamRecorder.hb(e);
                        sessionCamRecorder.dS(sessionCamRecorder.et(this), sessionCamRecorder.hJ(this), true, sessionCamRecorder.pF(this), sessionCamRecorder.pQ(this));
                    } catch (err) {
                        if (sessionCamRecorder && sessionCamRecorder.log) sessionCamRecorder.log('Error in SessionCam handler for $(linkAnalyticsElements).mousedown', err);
                    }
                });
            }
            $(targetElement).on('focus', 'textarea', function() {
                try {
                    if (!sessionCamRecorder.lZ(this)) {
                        sessionCamRecorder.lk($(this));
                        sessionCamRecorder.jJ($(this));
                    }
                    sessionCamRecorder.bg(this, "newlyFocussed", "1");
                    sessionCamRecorder.gG(sessionCamRecorder.fo.iU, ($(this).hasClass(sessionCamRecorder.nz) || sessionCamRecorder.lZ(this)) ? '' : $(this).val(), sessionCamRecorder.eO(this), 'textarea', sessionCamRecorder.pQ(this), null, this);
                    if (sessionCamRecorder.an(this, 'scVal') != $(this).val()) {
                        sessionCamRecorder.gG(sessionCamRecorder.fo.iJ, ($(this).hasClass(sessionCamRecorder.nz) || sessionCamRecorder.lZ(this)) ? '' : $(this).val(), sessionCamRecorder.dP($(this)), 'textarea', sessionCamRecorder.pQ(this), null, this);
                    }
                    sessionCamRecorder.bg(this, 'scVal', $(this).val());
                } catch (err) {
                    if (sessionCamRecorder && sessionCamRecorder.log) sessionCamRecorder.log('Error in SessionCam handler for textarea.focus', err);
                }
            });
            $(targetElement).on('blur', 'textarea', function(e) {
                try {
                    if (e && e.target) {
                        sessionCamRecorder.pg(e.target);
                    }
                } catch (err) {
                    if (sessionCamRecorder && sessionCamRecorder.log) sessionCamRecorder.log('Error in SessionCam handler for textareaBlur', err);
                }
            });
            $(targetElement).on('focus', 'select', function() {
                try {
                    if (!sessionCamRecorder.lZ(this)) {
                        sessionCamRecorder.lk($(this));
                        sessionCamRecorder.jJ($(this));
                    }
                    var val = $(this).val();
                    if ($.isArray(val)) val = val.join();
                    var valToSend = ($(this).hasClass(sessionCamRecorder.nz) || sessionCamRecorder.lZ(this)) ? '' : ($(this).prop('multiple') ? sessionCamRecorder.jt(this) : sessionCamRecorder.cE(this));
                    sessionCamRecorder.gG(sessionCamRecorder.fo.iU, valToSend, sessionCamRecorder.eO(this), 'select', sessionCamRecorder.pQ(this), null, this);
                    if (sessionCamRecorder.an(this, 'scVal') != val) {
                        sessionCamRecorder.gG(sessionCamRecorder.fo.iJ, valToSend, sessionCamRecorder.dP($(this)), 'select', sessionCamRecorder.pQ(this), null, this);
                    }
                    sessionCamRecorder.bg(this, 'scVal', val);
                } catch (err) {
                    if (sessionCamRecorder && sessionCamRecorder.log) sessionCamRecorder.log('Error in SessionCam handler for select.focus', err);
                }
            });
            $(targetElement).on('blur', 'select', function(e) {
                try {
                    if (e && e.target) {
                        sessionCamRecorder.oE(e.target);
                    }
                } catch (err) {
                    if (sessionCamRecorder && sessionCamRecorder.log) sessionCamRecorder.log('Error in SessionCam handler for select.blur', err);
                }
            });
            $(targetElement).on('submit', 'form', function() {
                try {
                    sessionCamRecorder.gG(sessionCamRecorder.fo.kr, null, null, 'form');
                } catch (err) {
                    if (sessionCamRecorder && sessionCamRecorder.log) sessionCamRecorder.log('Error in SessionCam handler for form.submit', err);
                }
            });
            $(targetElement).on('focus', sessionCamRecorder.kX + ', ' + sessionCamRecorder.jZ + ', input[type=password]', function(e) {
                try {
                    if (e && e.target) {
                        if (!sessionCamRecorder.lZ(this)) {
                            sessionCamRecorder.lk($(this));
                            sessionCamRecorder.jJ($(this));
                        }
                        var fU = $(this);
                        sessionCamRecorder.bg(this, "newlyFocussed", "1");
                        sessionCamRecorder.gG(sessionCamRecorder.fo.iU, (fU.hasClass(sessionCamRecorder.nz) || sessionCamRecorder.lZ(this)) ? '' : fU.val(), sessionCamRecorder.eO(this), fU.attr('type'), sessionCamRecorder.pQ(this), null, fU[0]);
                        if (sessionCamRecorder.an(this, 'scVal') != fU.val()) {
                            sessionCamRecorder.gG(sessionCamRecorder.fo.iJ, (fU.hasClass(sessionCamRecorder.nz) || sessionCamRecorder.lZ(this)) ? '' : fU.val(), sessionCamRecorder.dP(fU), fU.attr('type'), sessionCamRecorder.pQ(this), null, this);
                        }
                        sessionCamRecorder.bg(this, 'scVal', fU.val());
                    }
                } catch (err) {
                    if (sessionCamRecorder && sessionCamRecorder.log) sessionCamRecorder.log('Error in SessionCam handler for inputTextTypes.focus', err);
                }
            });
            $(targetElement).on('blur', sessionCamRecorder.kX + ', ' + sessionCamRecorder.jZ + ', input[type=password]', function(e) {
                try {
                    if (e && e.target) {
                        sessionCamRecorder.oi(e.target);
                    }
                } catch (err) {
                    if (sessionCamRecorder && sessionCamRecorder.log) sessionCamRecorder.log('Error in SessionCam handler for inputTextTypes.blur', err);
                }
            });
            $(targetElement).on('click', 'input[type=checkbox]', function() {
                try {
                    if (!sessionCamRecorder.lZ(this)) {
                        sessionCamRecorder.lk($(this));
                        sessionCamRecorder.jJ($(this));
                        sessionCamRecorder.kH($(this));
                        var val = sessionCamRecorder.mD($(this));
                        sessionCamRecorder.bg(this, 'scVal', val);
                        sessionCamRecorder.gG(sessionCamRecorder.fo.iJ, sessionCamRecorder.iS($(this)), sessionCamRecorder.dP($(this)), 'checkbox', sessionCamRecorder.et(this), val, this);
                        sessionCamRecorder.gG(sessionCamRecorder.fo.mU, sessionCamRecorder.mn($(this)), sessionCamRecorder.ij($(this)), 'checkbox');
                    }
                } catch (err) {
                    if (sessionCamRecorder && sessionCamRecorder.log) sessionCamRecorder.log('Error in SessionCam handler for checkbox.click', err);
                }
            });
            $(targetElement).on('click', 'input[type=radio]', function() {
                try {
                    if (!sessionCamRecorder.lZ(this)) {
                        sessionCamRecorder.lk($(this));
                        sessionCamRecorder.jJ($(this));
                        sessionCamRecorder.kH($(this));
                        var val = sessionCamRecorder.mD($(this));
                        sessionCamRecorder.bg(this, 'scVal', val);
                        sessionCamRecorder.gG(sessionCamRecorder.fo.iJ, sessionCamRecorder.iS($(this)), sessionCamRecorder.dP($(this)), 'radio', sessionCamRecorder.et(this), val, this);
                        sessionCamRecorder.gG(sessionCamRecorder.fo.mU, sessionCamRecorder.nk($(this)), sessionCamRecorder.ij($(this)), 'radio');
                    }
                } catch (err) {
                    if (sessionCamRecorder && sessionCamRecorder.log) sessionCamRecorder.log('Error in SessionCam handler for radio.click', err);
                }
            });
            $(alternativeListenerElement ? alternativeListenerElement : document).keydown(function(e) {
                try {
                    sessionCamRecorder.mp(e, "kd");
                } catch (err) {
                    if (sessionCamRecorder && sessionCamRecorder.log) sessionCamRecorder.log('Error in SessionCam handler for $(document).keydown', err);
                }
            });
            $(alternativeListenerElement ? alternativeListenerElement : document).keypress(function(e) {
                try {
                    sessionCamRecorder.mp(e, "k");
                } catch (err) {
                    if (sessionCamRecorder && sessionCamRecorder.log) sessionCamRecorder.log('Error in SessionCam handler for $(document).keypress', err);
                }
            });
        } catch (err) {
            sessionCamRecorder.log('bindEvents', err);
        }
        return;
    }(window.sessionCamJQuery));
};
SessionCamRecorder.prototype.pF = function(target) {
    return (function($) {
        var qW = "",
            qi, gv;
        if ($(target).closest(sessionCamRecorder.du).length > 0) {
            if ($(target).attr(sessionCamRecorder.rg) || $(target).children().attr(sessionCamRecorder.rg)) {
                if ($(target).attr(sessionCamRecorder.rg) !== undefined) qW = $(target).attr(sessionCamRecorder.rg);
                else qW = $(target).children().attr(sessionCamRecorder.rg);
            } else if ($(target).closest("a").length && $(target).closest("a")[0].innerText && $(target).closest("a")[0].innerText.trim().length !== 0) {
                qW = $(target).closest("a")[0].innerText;
            } else {
                if ($(target).children().is("img") && $(target).children().attr("alt")) {
                    qW = $(target).children().attr("alt");
                } else if ($(target)[0].nodeName.toLowerCase() == "input") {
                    qi = sessionCamRecorder.eb(($(target)[0]));
                    gv = (sessionCamRecorder.configuration != null && (sessionCamRecorder.configuration.BP === 0 || qi));
                    if (gv) qW = sessionCamRecorder.fg($(target).attr("value"), qi);
                    else qW = $(target).attr("value");
                } else if ($(target)[0].nodeName.toLowerCase() == "button") {
                    qW = $(target)[0].innerText;
                }
            }
            if (qW.indexOf(",") > -1) {
                qW = qW.replace(/,/g, sessionCamRecorder.qU);
            }
            qW = sessionCamRecorder.ms(qW, $(target)[0]);
            try {
                qW = decodeURI(qW).trim();
            } catch (err) {
                qW = encodeURI(qW);
                qW = qW.replace(/%2520/, '%20');
                qW = decodeURI(qW).trim();
            }
            if (qW.indexOf('\n') > 0) qW = qW.substring(0, qW.indexOf('\n'));
            qW = qW.replace(/\s{2,}/g, ' ').trim();
            if (qW.length > 100) qW = qW.substring(0, 97).trim() + '...';
            return qW;
        }
    }(window.sessionCamJQuery));
};
SessionCamRecorder.prototype.lZ = function(gN) {
    var fO, qv = new sessionCamRecorder.iO();
    if (gN.type == "text" || gN.type == "password" || gN.type == "") fO = gN.outerHTML.toLowerCase().indexOf('password') >= 0 || gN.outerHTML.toLowerCase().indexOf('pwd') >= 0;
    else {
        for (var i = 0, pz = gN.attributes.length; i < pz; i++) {
            qv.append(' ' + [gN.attributes[i].name]);
        }
        fO = qv.toString().toLowerCase().indexOf('password') >= 0 || qv.toString().toLowerCase().indexOf('pwd') >= 0;
    }
    return fO;
};
SessionCamRecorder.prototype.mn = function(fU) {
    return (function($) {
        var fO, name, group, i, value;
        fO = new sessionCamRecorder.iO();
        name = fU[0].getAttribute('name');
        if (name === null) group = $('input[name=""]');
        else group = $('input[name="' + name + '"]');
        for (i = 0; i < group.length; i++) {
            if (!fO.isEmpty()) fO.append(',');
            if (group[i].checked) {
                value = group[i].getAttribute('value');
                if (!value || (value == 'on')) value = 'true';
            } else value = "false";
            fO.append(value);
        }
        return fO.toString();
    }(window.sessionCamJQuery));
};
SessionCamRecorder.prototype.nk = function(fU) {
    return (function($) {
        var radioName = fU[0].getAttribute('name');
        var value;
        if (radioName === null) value = $('input[name=""]:checked').val();
        else value = $('input[name="' + radioName + '"]:checked').val();
        if (!value) value = '';
        return value;
    })(window.sessionCamJQuery);
};
SessionCamRecorder.prototype.mD = function(fU) {
    return fU[0].checked;
};
SessionCamRecorder.prototype.iS = function(fU) {
    var type = fU.attr('type').toLowerCase();
    var value = (fU.length ? fU[0].getAttribute('value') : undefined);
    if (!value) value = 'true';
    if (type.toLowerCase() == 'checkbox') return value;
    else if (type.toLowerCase() == 'radio') return value + '{' + fU.prop('checked') + '}';
    else return '';
};
SessionCamRecorder.prototype.nd = function() {
    sessionCamRecorder.kj++;
    sessionCamRecorder.kk = sessionCamRecorder.getTime();
};
SessionCamRecorder.prototype.gj = function(jb, kS, fy, pF, kY) {
    return (function($) {
        if ((jb !== undefined) && (jb !== null) && (jb !== '')) {
            var jg, jT, fl, fw, gq, data, gI = sessionCamRecorder.getTime();
            var rk = (sessionCamRecorder.configuration.AS && sessionCamRecorder.kj < sessionCamRecorder.gM);
            if (sessionCamRecorder.kk <= sessionCamRecorder.eq) {
                jg = 0;
                jT = gI - sessionCamRecorder.eq;
            } else {
                jg = (gI - sessionCamRecorder.kk);
                jT = (sessionCamRecorder.kk - sessionCamRecorder.eq);
            }
            fw = jg + ',' + jT + ',' + (fy ? '1' : '0') + ',' + sessionCamRecorder.kj + (pF === undefined || pF === "" ? "" : ',' + pF);
            if (fy) {
                sessionCamRecorder.eT(sessionCamRecorder.fo.mL);
                sessionCamRecorder.eT(sessionCamRecorder.fo.Click);
                if (sessionCamRecorder.mH) {
                    sessionCamRecorder.scrollX = sessionCamRecorder.ng;
                    sessionCamRecorder.scrollY = sessionCamRecorder.ny;
                } else {
                    sessionCamRecorder.scrollX = $(document).scrollLeft();
                    sessionCamRecorder.scrollY = $(document).scrollTop();
                }
                fl = sessionCamRecorder.scrollX + ',' + sessionCamRecorder.scrollY + ',' + sessionCamRecorder.lT() + ',' + sessionCamRecorder.na() + ',' + (gI - sessionCamRecorder.gm);
                gq = sessionCamRecorder.kp + ',' + sessionCamRecorder.jX + ',' + (gI - sessionCamRecorder.eq) + (pF === undefined || pF === "" ? '' : ',' + pF) + sessionCamRecorder.fi + (jb) + sessionCamRecorder.fi + (kS ? kS : '') + sessionCamRecorder.fi + sessionCamRecorder.fi + kY;
                sessionCamRecorder.gm = gI;
                data = sessionCamRecorder.fo.mL + sessionCamRecorder.fi + (gI - sessionCamRecorder.jG) + sessionCamRecorder.fi + fl;
                if (rk) data += sessionCamRecorder.ed + sessionCamRecorder.fo.eH + sessionCamRecorder.fi + (gI - sessionCamRecorder.jG) + sessionCamRecorder.fi + fw + sessionCamRecorder.fi + jb + sessionCamRecorder.fi + sessionCamRecorder.fi + sessionCamRecorder.fi + kY;
                data += sessionCamRecorder.ed + sessionCamRecorder.fo.Click + sessionCamRecorder.fi + (gI - sessionCamRecorder.jG) + sessionCamRecorder.fi + gq;
                if (data.length > 2000) data = sessionCamRecorder.fo.Click + sessionCamRecorder.fi + (gI - sessionCamRecorder.jG) + sessionCamRecorder.fi + gq;
            } else if (rk) {
                data = sessionCamRecorder.fo.eH + sessionCamRecorder.fi + (gI - sessionCamRecorder.jG) + sessionCamRecorder.fi + fw + sessionCamRecorder.fi + jb + sessionCamRecorder.fi + sessionCamRecorder.fi + sessionCamRecorder.fi + kY;
            } else data = '';
            return data;
        }
        return;
    }(window.sessionCamJQuery));
};
SessionCamRecorder.prototype.eT = function(type, jb) {
    var remove = -1,
        lE = !jb,
        lK;
    for (var i = sessionCamRecorder.lc.bT.length - 1; i >= 0; i--) {
        if (sessionCamRecorder.lc.bT[i].substring(0, type.length + 1) === type + sessionCamRecorder.fi) {
            if (!lE) {
                lK = sessionCamRecorder.lc.bT[i].split(sessionCamRecorder.fi);
                lE = (((lK.length > 3) && (lK[3] == jb)) || ((lK.length > 6) && (lK[6] == jb)));
            }
            if (lE) {
                remove = i;
                break;
            }
        }
    }
    if (remove > -1) sessionCamRecorder.lc.bT.splice(remove, 1);
};
SessionCamRecorder.prototype.dS = function(jb, kS, fy, pF, kY) {
    var data = sessionCamRecorder.gj(jb, kS, fy, pF, kY);
    if (data.length > 0) sessionCamRecorder.bO(data);
};
SessionCamRecorder.prototype.fH = function(jb, kS, kY) {
    var data = sessionCamRecorder.kp + ',' + sessionCamRecorder.jX + ',' + (sessionCamRecorder.getTime() - sessionCamRecorder.jG);
    sessionCamRecorder.gG(sessionCamRecorder.fo.Click, data, jb, kS, kY);
};
SessionCamRecorder.prototype.g = function(gN) {
    var fO = null;
    while (!fO && gN) {
        if (gN.nodeName && sessionCamRecorder.linkAnalyticsElementsAsArray.indexOf(gN.nodeName.toLowerCase()) >= 0) fO = gN;
        gN = gN.parentNode;
    }
    return fO;
};
SessionCamRecorder.prototype.dO = function() {
    return (function($) {
        if (sessionCamRecorder.cO == -1) sessionCamRecorder.scrollX = sessionCamRecorder.scrollY = 0;
        else {
            if (sessionCamRecorder.mH) {
                sessionCamRecorder.scrollX = sessionCamRecorder.ng;
                sessionCamRecorder.scrollY = sessionCamRecorder.ny;
            } else {
                sessionCamRecorder.scrollX = $(document).scrollLeft();
                sessionCamRecorder.scrollY = $(document).scrollTop();
            }
        }
        if (sessionCamRecorder.cO != sessionCamRecorder.scrollX || sessionCamRecorder.cq != sessionCamRecorder.scrollY) {
            var data = sessionCamRecorder.scrollX + ',' + sessionCamRecorder.scrollY + ',' + sessionCamRecorder.lT() + ',' + sessionCamRecorder.na() + ',' + (sessionCamRecorder.getTime() - sessionCamRecorder.gm);
            sessionCamRecorder.gG(sessionCamRecorder.fo.mL, data);
            sessionCamRecorder.gm = sessionCamRecorder.getTime();
        }
        sessionCamRecorder.cO = sessionCamRecorder.scrollX;
        sessionCamRecorder.cq = sessionCamRecorder.scrollY;
        window.setTimeout(sessionCamRecorder.dO, sessionCamRecorder.fd);
    }(window.sessionCamJQuery));
};
SessionCamRecorder.prototype.bO = function(data) {
    if (sessionCamRecorder.me || sessionCamRecorder.mt) return false;
    var sb = new sessionCamRecorder.iO(),
        img;
    if (sessionCamRecorder.getPageIdResponseOk && sessionCamRecorder.configuration != null && sessionCamRecorder.configuration.I) {
        data = encodeURIComponent(data).replace(/~/g, '%7E');
        sb.append((sessionCamRecorder.ak === "a" ? sessionCamRecorder.lg : sessionCamRecorder.at) + '/record.asmx/SaveGETEvents');
        sb.append('?data=' + sessionCamRecorder.eW(data));
        sb.append('&id=' + sessionCamRecorder.configuration.H);
        sb.append('&w=' + sessionCamRecorder.lN());
        sb.append('&h=' + sessionCamRecorder.mG());
        sb.append('&url=' + encodeURIComponent(sessionCamRecorder.lb));
        sb.append('&originalUrl=' + (window.sessioncamConfiguration.removeQueryStrings ? encodeURIComponent(window.location.protocol + '//' + window.location.hostname + (window.location.port ? (':' + window.location.port) : '') + window.location.pathname) : encodeURIComponent(window.location.toString().replace(/#.*/, ""))));
        sb.append('&plsse=' + sessionCamRecorder.jG);
        if (sessionCamRecorder.configuration.VP) sb.append('&vp=1');
        else if (sessionCamRecorder.currentPageState) sb.append('&ps=' + encodeURIComponent(sessionCamRecorder.currentPageState));
        if (sessionCamRecorder.configuration.S) sb.append('&si=' + sessionCamRecorder.configuration.S);
        if (sessionCamRecorder.configuration.AA) sb.append('&aa=' + sessionCamRecorder.configuration.AA);
        if (sessionCamRecorder.configuration.AB) sb.append('&ab=' + sessionCamRecorder.configuration.AB);
        sb.append('&jsver=' + sessionCamRecorder.gg);
        img = new window.Image();
        img.src = sb.toString();
    }
};
SessionCamRecorder.prototype.eW = function(input) {
    var output, gC, hB, gB, cx, dn, kU, lw, i;
    output = new sessionCamRecorder.iO();
    i = 0;
    while (i < input.length) {
        gC = input.charCodeAt(i++);
        hB = input.charCodeAt(i++);
        gB = input.charCodeAt(i++);
        cx = gC >> 2;
        dn = ((gC & 3) << 4) | (hB >> 4);
        kU = ((hB & 15) << 2) | (gB >> 6);
        lw = gB & 63;
        if (isNaN(hB)) kU = lw = 64;
        else if (isNaN(gB)) lw = 64;
        output.append(sessionCamRecorder.kM.charAt(cx) + sessionCamRecorder.kM.charAt(dn) + sessionCamRecorder.kM.charAt(kU) + sessionCamRecorder.kM.charAt(lw));
    }
    return output.toString();
};
SessionCamRecorder.prototype.pm = function(event) {
    try {
        if (sessionCamRecorder.oz > 0) {
            var ee = event,
                data;
            if (window.event) {
                event = window.event;
            }
            if (event.promise) {
                data = {
                    message: event.reason.message,
                    stack: event.reason.stack || '',
                    timeStamp: event.kb || 0
                };
            } else {
                data = {
                    message: event.message || event.errorMessage,
                    lineno: event.lineno || event.errorLine,
                    colno: event.colno || event.errorCharacter,
                    stack: event.error && event.error.stack ? event.error.stack : '',
                    timeStamp: event.timeStamp || ee.timeStamp || 0
                };
            }
            if (data.message && data.message.length > sessionCamRecorder.ou) {
                data.message = data.message.substring(0, sessionCamRecorder.ou) + '...';
            }
            sessionCamRecorder.gG(sessionCamRecorder.fo.oO, JSON.stringify(data));
            sessionCamRecorder.oz -= 1;
        }
    } catch (err) {
        if (sessionCamRecorder && sessionCamRecorder.log) sessionCamRecorder.log('Error in jserrorEvent', err);
    }
};
SessionCamRecorder.prototype.dk = function() {
    return (function($) {
        var id, gb, possiblePasswordElement, val;
        if (document.activeElement && ($(document.activeElement).is(sessionCamRecorder.kX + ', ' + sessionCamRecorder.jZ + ', textarea') || ($(document.activeElement).is('SELECT')))) {
            sessionCamRecorder.kH($(document.activeElement));
            id = sessionCamRecorder.eO(document.activeElement);
            sessionCamRecorder.eT(sessionCamRecorder.fo.jr, id);
            gb = sessionCamRecorder.eb(document.activeElement);
            possiblePasswordElement = sessionCamRecorder.lZ(document.activeElement);
            if ($(document.activeElement).is('SELECT')) val = ($(document.activeElement).prop('multiple') ? sessionCamRecorder.jt(document.activeElement) : sessionCamRecorder.cE(document.activeElement));
            else val = $(document.activeElement).val();
            if (sessionCamRecorder.configuration.BP === 0 || gb) val = sessionCamRecorder.jx('b', val, sessionCamRecorder.hJ(document.activeElement), gb, $(document.activeElement));
            if (possiblePasswordElement || document.activeElement.className.indexOf(sessionCamRecorder.nz) >= 0) val = '';
            val = sessionCamRecorder.mO(val, document.activeElement, sessionCamRecorder.fo.jr);
            sessionCamRecorder.bO(sessionCamRecorder.fo.jr + sessionCamRecorder.fi + (sessionCamRecorder.getTime() - sessionCamRecorder.jG) + sessionCamRecorder.fi + val + sessionCamRecorder.fi + id + sessionCamRecorder.fi + $(document.activeElement).attr('type') + sessionCamRecorder.fi + sessionCamRecorder.fi + id);
        }
        sessionCamRecorder.jB(true);
        sessionCamRecorder.gG(sessionCamRecorder.fo.iH);
        return;
    }(window.sessionCamJQuery));
};
SessionCamRecorder.prototype.lk = function(fU) {
    if (!this.gi) {
        this.gG(sessionCamRecorder.fo.hQ, '', this.dP(fU), null, null, null, fU[0]);
        this.gi = true;
    }
    this.lG = sessionCamRecorder.getTime();
    return;
};
SessionCamRecorder.prototype.kH = function(fU) {
    if (this.lG != null) {
        var dV = sessionCamRecorder.getTime() - this.lG;
        var type = fU.attr('type');
        if (type && (type.toLowerCase() == 'checkbox' || type.toLowerCase() == 'radio')) {
            this.gG(sessionCamRecorder.fo.jv, dV, this.ij(fU), null, sessionCamRecorder.pQ(fU[0]), null, fU[0]);
        } else {
            this.gG(sessionCamRecorder.fo.jv, dV, this.dP(fU), null, sessionCamRecorder.pQ(fU[0]), null, fU[0]);
        }
    }
    return;
};
SessionCamRecorder.prototype.oV = function(e) {
    return (function($) {
        var gb, message, ho, result;
        if (e && e.target && e.target.type && e.target.type.toLowerCase() != "password") {
            gb = sessionCamRecorder.configuration.BP === 0 || sessionCamRecorder.eb(e.target);
            message = e.target.validationMessage;
            if (gb && (e.target.value.length && message.indexOf(e.target.value) > -1)) message = message.replace(e.target.value, "***");
            ho = {
                n: sessionCamRecorder.eO(e.target),
                t: e.target.type,
                f: e.target.form ? sessionCamRecorder.eO(e.target.form) : "",
                m: message,
                v: {
                    BI: e.target.validity.badInput,
                    CE: e.target.validity.customError,
                    PM: e.target.validity.patternMismatch,
                    RO: e.target.validity.rangeOverflow,
                    RU: e.target.validity.rangeUnderflow,
                    SM: e.target.validity.stepMismatch,
                    TL: e.target.validity.tooLong,
                    TS: e.target.validity.tooShort,
                    TM: e.target.validity.typeMismatch,
                    V: e.target.validity.valid,
                    VM: e.target.validity.valueMissing
                }
            };
            for (var key in ho.v) {
                if (ho.v[key] === false) delete ho.v[key];
            }
            result = JSON.stringify(ho);
            sessionCamRecorder.gG(sessionCamRecorder.fo.ok, result, sessionCamRecorder.dP($(e.target)), null, null, null, null, null, sessionCamRecorder.getTime() - sessionCamRecorder.fd);
        }
    }(window.sessionCamJQuery));
};
SessionCamRecorder.prototype.jJ = function(fU) {
    var type = fU.attr('type');
    var groupName = null;
    if (type && (type.toLowerCase() == 'checkbox' || type.toLowerCase() == 'radio')) {
        var fnStr = sessionCamRecorder.ij(fU);
        if (fnStr.trim()[0] == '{') {
            var fnObj = JSON.parse(fnStr);
            groupName = fnObj.i;
        } else groupName = fnStr;
    }
    sessionCamRecorder.gG(sessionCamRecorder.fo.ly, '', sessionCamRecorder.dP(fU), groupName, null, null, fU[0]);
    return;
};
SessionCamRecorder.prototype.cC = function() {
    if (sessionCamRecorder.dL != sessionCamRecorder.kp || sessionCamRecorder.ce != sessionCamRecorder.jX || sessionCamRecorder.cO != sessionCamRecorder.scrollX || sessionCamRecorder.cq != sessionCamRecorder.scrollY) {
        sessionCamRecorder.dL = sessionCamRecorder.kp;
        sessionCamRecorder.ce = sessionCamRecorder.jX;
        sessionCamRecorder.cO = sessionCamRecorder.scrollX;
        sessionCamRecorder.cq = sessionCamRecorder.scrollY;
        sessionCamRecorder.gG(sessionCamRecorder.fo.lU, sessionCamRecorder.kp + '.' + sessionCamRecorder.jX);
    }
    window.setTimeout(sessionCamRecorder.cC, sessionCamRecorder.fd);
    return;
};
SessionCamRecorder.prototype.cr = function(e, mb) {
    return (function($) {
        var ke, cS;
        if (sessionCamRecorder.mH) {
            sessionCamRecorder.scrollX = sessionCamRecorder.ng;
            sessionCamRecorder.scrollY = sessionCamRecorder.ny;
        } else {
            sessionCamRecorder.scrollX = $(document).scrollLeft();
            sessionCamRecorder.scrollY = $(document).scrollTop();
        }
        if (mb === false && (e.pageX !== undefined) && (e.pageX !== null)) {
            sessionCamRecorder.kp = parseInt(e.pageX, 10);
            sessionCamRecorder.jX = parseInt(e.pageY, 10);
            sessionCamRecorder.ma(e);
            sessionCamRecorder.kZ = sessionCamRecorder.scrollX;
            sessionCamRecorder.jL = sessionCamRecorder.scrollY;
            sessionCamRecorder.cs = false;
        } else {
            if (mb === true && !sessionCamRecorder.cs) {
                sessionCamRecorder.dB = sessionCamRecorder.kp;
                sessionCamRecorder.bY = sessionCamRecorder.jX;
                sessionCamRecorder.cs = true;
            }
            ke = Math.abs(sessionCamRecorder.jL - sessionCamRecorder.scrollY);
            cS = Math.abs(sessionCamRecorder.kZ - sessionCamRecorder.scrollX);
            if (sessionCamRecorder.jL > sessionCamRecorder.scrollY) sessionCamRecorder.jX = sessionCamRecorder.bY - ke;
            else sessionCamRecorder.jX = sessionCamRecorder.bY + ke;
            if (sessionCamRecorder.kZ > sessionCamRecorder.scrollX) sessionCamRecorder.kp = sessionCamRecorder.dB - cS;
            else sessionCamRecorder.kp = sessionCamRecorder.dB + cS;
            if (sessionCamRecorder.kp < 0) sessionCamRecorder.kp = 0;
            if (sessionCamRecorder.jX < 0) sessionCamRecorder.jX = 0;
        }
        return;
    }(window.sessionCamJQuery));
};
SessionCamRecorder.prototype.hb = function(e) {
    try {
        var evnt = e;
        if (!evnt) evnt = window.event;
        if (evnt.pageX || evnt.pageY) {
            sessionCamRecorder.kp = parseInt(evnt.pageX, 10);
            sessionCamRecorder.jX = parseInt(evnt.pageY, 10);
        } else if (evnt.clientX || evnt.clientY) {
            sessionCamRecorder.kp = parseInt(evnt.clientX, 10) + parseInt(document.body.scrollLeft, 10) + parseInt(document.documentElement.scrollLeft, 10);
            sessionCamRecorder.jX = parseInt(evnt.clientY, 10) + parseInt(document.body.scrollTop, 10) + parseInt(document.documentElement.scrollTop, 10);
        }
        sessionCamRecorder.ma(e);
    } catch (err) {
        sessionCamRecorder.log('updateMousePositionFromEvent', err);
    }
    return;
};
SessionCamRecorder.prototype.ma = function(e) {
    return (function($) {
        var fU;
        try {
            if (($('body').css('position') === 'fixed') && (!sessionCamRecorder.mH)) {
                var mj = parseInt($('body').css('left'));
                if (mj) sessionCamRecorder.kp -= mj;
                var my = parseInt($('body').css('top'));
                if (my) sessionCamRecorder.jX -= my;
                var lI = $('body').scrollLeft();
                if (lI) sessionCamRecorder.kp -= lI;
                var lL = $('body').scrollTop();
                if (lL) sessionCamRecorder.jX -= lL;
                var mN = $('html').scrollLeft();
                if (mN) sessionCamRecorder.kp -= mN;
                var mi = $('html').scrollTop();
                if (mi) sessionCamRecorder.jX -= mi;
            } else if (sessionCamRecorder.mH) {
                sessionCamRecorder.kp += sessionCamRecorder.ng;
                sessionCamRecorder.jX += sessionCamRecorder.ny;
            } else if (e && e.target && $('.' + sessionCamRecorder.sessioncamMainFixed).length) {
                fU = $(e.target);
                while (fU.length && !fU.parent().hasClass(sessionCamRecorder.sessioncamMainFixed)) fU = fU.parent();
                if (fU.parent().hasClass(sessionCamRecorder.sessioncamMainFixed)) {
                    sessionCamRecorder.kp += fU.parent().scrollLeft();
                    sessionCamRecorder.jX += fU.parent().scrollTop();
                }
            } else if (e && e.target && $('.sessioncamfullscreenoverlay').length) {
                fU = $(e.target);
                while (fU.length && !fU.parent().hasClass('sessioncamfullscreenoverlay')) fU = fU.parent();
                if (fU.parent().hasClass('sessioncamfullscreenoverlay')) {
                    sessionCamRecorder.kp -= $('html').scrollLeft();
                    sessionCamRecorder.jX -= $('html').scrollTop();
                }
            }
        } catch (err) {
            sessionCamRecorder.log('adjustMouseForBodyFixed', err);
        }
        return;
    }(window.sessionCamJQuery));
};
SessionCamRecorder.prototype.jM = function(ez) {
    try {
        if (sessionCamRecorder.getPageIdResponseOk === true && !sessionCamRecorder.lc.isEmpty() && sessionCamRecorder.configuration != null && sessionCamRecorder.configuration.I) {
            var kW = sessionCamRecorder.lc.toString();
            kW = kW.substr(0, kW.length - 1);
            kW += '&ASPNetSessionId=' + sessionCamRecorder.configuration.H;
            kW += '&w=' + sessionCamRecorder.lN();
            kW += '&h=' + sessionCamRecorder.mG();
            kW += '&originalUrl=' + encodeURIComponent(sessionCamRecorder.qQ);
            kW += '&plsse=' + sessionCamRecorder.jG;
            kW += '&jsver=' + sessionCamRecorder.gg;
            if (sessionCamRecorder.configuration.VP) kW += '&vp=1';
            else if (sessionCamRecorder.currentPageState) kW += ('&ps=' + encodeURIComponent(sessionCamRecorder.currentPageState));
            sessionCamRecorder.lh('/record.asmx/SaveEvents', 'POST', 'data=' + kW, sessionCamRecorder.cK, false);
            sessionCamRecorder.cG('data=' + kW);
            sessionCamRecorder.lc.reset();
        }
        if (!ez) window.setTimeout(sessionCamRecorder.jM, sessionCamRecorder.ft);
    } catch (err) {
        sessionCamRecorder.log('processEventQueue', err);
    }
    return;
};
SessionCamRecorder.prototype.jx = function(e, d, t, gb, fU) {
    var newValue = d,
        ls, jn;
    if (e == sessionCamRecorder.fo.jr || e == sessionCamRecorder.fo.iU || e == sessionCamRecorder.fo.iJ || e == sessionCamRecorder.fo.hY || e == sessionCamRecorder.fo.DefaultValue) {
        if (t != 'select') {
            newValue = sessionCamRecorder.mX(d, fU[0]);
            if (newValue.indexOf('*') >= 0) newValue = sessionCamRecorder.fg(d, gb);
        }
    } else if (e == sessionCamRecorder.fo.KeyPress) {
        ls = new RegExp("k{(.*?)}", "gi");
        jn = ls.exec(d);
        while (jn) {
            newValue = d.replace(jn[0], "k{" + sessionCamRecorder.fg(jn[1]) + "}");
            jn = ls.exec(d);
        }
    }
    return newValue;
};
SessionCamRecorder.prototype.cB = function() {
    return (function($) {
        var params, fE, scale;
        try {
            params = new sessionCamRecorder.iO();
            fE = sessionCamRecorder.iC('sc.ASP.NET_SESSIONID');
            params.append('doctype=');
            params.append(encodeURIComponent(sessionCamRecorder.jC()));
            params.append('&d=');
            params.append(sessionCamRecorder.ao(sessionCamRecorder.hK, 'body', $('body')[0]));
            params.append('&sse=');
            params.append(sessionCamRecorder.jG);
            if (sessionCamRecorder.fY) {
                scale = sessionCamRecorder.ih();
                params.append('&s=' + scale);
                params.append('&im=' + sessionCamRecorder.fY);
            }
            params.append('&w=');
            params.append(sessionCamRecorder.lT());
            params.append('&h=');
            params.append(sessionCamRecorder.na());
            params.append('&sx=' + $(window).scrollLeft());
            params.append('&sy=' + $(window).scrollTop());
            params.append('&dw=' + sessionCamRecorder.lN());
            params.append('&dh=' + sessionCamRecorder.mG());
            params.append('&sw=' + screen.width);
            params.append('&sh=' + screen.height);
            params.append('&r=');
            params.append(sessionCamRecorder.configuration && sessionCamRecorder.configuration.CG && document.referrer.length > 0 ? "Disabled" : encodeURIComponent(document.referrer));
            params.append('&originalUrl=');
            params.append(encodeURIComponent(sessionCamRecorder.qQ));
            params.append('&flashVersion=');
            params.append('&sessionUserId=');
            params.append(sessionCamRecorder.getSessionCamUserId());
            params.append('&ASPNetSessionId=');
            params.append(fE);
            params.append('&test=');
            params.append((window.location.search.indexOf('sessioncamtestmode') > -1 ? '1' : '0'));
            params.append('&jsver=' + sessionCamRecorder.version());
            params.append('&ca=' + (sessionCamRecorder.configuration.BO && sessionCamRecorder.configuration.BO.length > 0 ? sessionCamRecorder.configuration.BO : ''));
            sessionCamRecorder.kF = params.toString();
            sessionCamRecorder.kl();
        } catch (err) {
            sessionCamRecorder.log('getPageId', err);
        }
        return;
    }(window.sessionCamJQuery));
};
SessionCamRecorder.prototype.kl = function() {
    var fm = '';
    try {
        var lp = (window.performance && window.performance.timing && window.performance.timing.responseStart ? (window.scInitTime0 - window.performance.timing.responseStart) : 'NA');
        fm = '&jsstats=pre ' + lp + ' startup ' + (sessionCamRecorder.hV - window.scInitTime0) + ' config ' + (sessionCamRecorder.gJ - sessionCamRecorder.hV) + ' eventsBound ' + (sessionCamRecorder.ae - sessionCamRecorder.gJ) + ' getPageId ' + (sessionCamRecorder.getTime() - sessionCamRecorder.gJ);
    } catch (jK) {}
    if (sessionCamRecorder.lh('/record.asmx/GetPageId', 'POST', sessionCamRecorder.kF + fm, sessionCamRecorder.dI, false) === 'tryAgain') {
        if (sessionCamRecorder.kz < sessionCamRecorder.kE) {
            sessionCamRecorder.kz++;
            window.setTimeout(sessionCamRecorder.kl, sessionCamRecorder.jP);
        }
    }
};
SessionCamRecorder.prototype.getSessionCamUserId = function() {
    try {
        var ip = this.iC('sc.UserId');
        if (!ip) {
            if ((this.configuration != null) && this.configuration.U) ip = this.configuration.U;
            if (ip == null) this.ip = '';
            if ((ip.length > 0) && (ip != '00000000-0000-0000-0000-000000000000')) this.hU('sc.UserId', ip, 8760, sessionCamRecorder.Q);
        }
        return ip;
    } catch (err) {
        sessionCamRecorder.log('getSessionCamUserId', err);
    }
};
SessionCamRecorder.prototype.eu = function(swapStreams) {
    try {
        var mc = '&originalUrl=' + (window.sessioncamConfiguration.removeQueryStrings ? encodeURIComponent(window.location.protocol + '//' + window.location.hostname + (window.location.port ? (':' + window.location.port) : '') + window.location.pathname) : encodeURIComponent(window.location.toString().replace(/#.*/, ""))) + '&sse=' + sessionCamRecorder.jG;
        var hT = sessionCamRecorder.iC('sc.ASP.NET_SESSIONID');
        if (hT) mc += "&ASPNetSessionId=" + hT;
        mc += '&inTg=' + sessionCamRecorder.ak;
        if (swapStreams) {
            sessionCamRecorder.ak = sessionCamRecorder.ak === 'a' ? 'b' : 'a';
            mc += "&acr=1";
        }
        this.lh('/record.asmx/LoadConfig', 'POST', mc, this.cA);
    } catch (err) {
        sessionCamRecorder.log('loadConfig', err);
    }
};
SessionCamRecorder.prototype.cA = function(response) {
    try {
        var lA, data, config;
        if (response && response.length) {
            if (response[0] === '<') {
                lA = new RegExp("<string.*?>(.*?)</string>", "");
                data = response.match(lA);
                if (data && data.length > 1) config = JSON.parse(data[1]);
            } else config = JSON.parse(response);
        }
        if (config) {
            if (config.CE) sessionCamRecorder.eu(true);
            else {
                sessionCamRecorder.aI = {};
                sessionCamRecorder.initialise(config);
            }
        }
    } catch (err) {
        sessionCamRecorder.log('handle_loadConfig', err);
    }
    return;
};
SessionCamRecorder.prototype.cK = function(response) {
    try {
        if (response.length > 0 && sessionCamRecorder.configuration != null && sessionCamRecorder.getPageIdResponseOk === true) {
            var di = JSON.parse(response);
            if (di.X) sessionCamRecorder.me = true;
            else if (di.V) {
                sessionCamRecorder.resetRecording();
                sessionCamRecorder.eu();
            } else {
                if (di.AB) sessionCamRecorder.configuration.AB = di.AB;
                if (di.BC) sessionCamRecorder.mt = true;
            }
        }
    } catch (err) {
        sessionCamRecorder.log('handle_sendEvents', err);
    }
    return;
};
SessionCamRecorder.prototype.resetRecording = function() {
    sessionCamRecorder.jG = sessionCamRecorder.getTime();
    sessionCamRecorder.eq = sessionCamRecorder.jG;
    sessionCamRecorder.cZ = false;
    sessionCamRecorder.configuration = new sessionCamRecorder.ia(sessionCamRecorder.configuration.S, sessionCamRecorder.configuration.AA, sessionCamRecorder.configuration.AB);
    sessionCamRecorder.getPageIdResponseOk = false;
    sessionCamRecorder.requestType = '';
    sessionCamRecorder.lc.reset();
    window.SessionCamPath = '';
    window.SessionCamPageName = '';
    window.sessioncamConfiguration.isManuallyStartedRecording = true;
    sessionCamRecorder.oz = sessionCamRecorder.ot;
};
SessionCamRecorder.prototype.handle_endSessionStartNew = function() {
    try {
        if (sessionCamRecorder.configuration != null && sessionCamRecorder.getPageIdResponseOk === true) {
            sessionCamRecorder.startSession(true);
        }
    } catch (err) {
        sessionCamRecorder.log('handle_endSessionStartNew', err);
    }
    return;
};
SessionCamRecorder.prototype.dI = function(response) {
    try {
        sessionCamRecorder.aR(response);
    } catch (err) {
        sessionCamRecorder.log('handle_getPageId', err);
    }
};
SessionCamRecorder.prototype.aR = function(response) {
    var setting;
    try {
        if (response.length == 0) response = "{}";
        if (response) {
            if (window.navigator.userAgent.indexOf("Trident/") > 0) {
                response = JSON.parse(response.replace(/\\\\/g, '\\'));
            } else {
                response = JSON.parse(response);
            }
            for (setting in response) {
                sessionCamRecorder.configuration[setting] = response[setting];
            }
            if (!sessionCamRecorder.configuration.I) {
                sessionCamRecorder.me = true;
                sessionCamRecorder.notifications.lD('recording/off');
                return;
            }
            if (sessionCamRecorder.configuration.BY && sessionCamRecorder.configuration.BY.length > 0) {
                sessionCamRecorder.configuration.BY = sessionCamRecorder.configuration.BY.replace(/&amp;/g, '&');
                sessionCamRecorder.configuration.BY = sessionCamRecorder.configuration.BY.replace(/&gt;/g, '>');
                try {
                    eval(sessionCamRecorder.configuration.BY);
                } catch (err1) {
                    sessionCamRecorder.log('error in custom javascript for getpageId', err1);
                    return;
                }
            }
            if (sessionCamRecorder.configuration.CH) sessionCamRecorder.Q = true;
            sessionCamRecorder.eV();
            sessionCamRecorder.getPageIdResponseOk = true;
            sessionCamRecorder.notifications.lD('session/started', {
                sessionId: sessionCamRecorder.sessionId()
            });
            if (!sessionCamRecorder.fY) window.setTimeout(sessionCamRecorder.rp, 1);
        }
    } catch (err) {
        sessionCamRecorder.log('aR', err);
    }
    return;
};
SessionCamRecorder.prototype.eV = function() {
    if (!sessionCamRecorder.iC('sc.ASP.NET_SESSIONID')) this.hU('sc.ASP.NET_SESSIONID', this.configuration.H, undefined, sessionCamRecorder.Q);
    return;
};
SessionCamRecorder.prototype.aX = function(url) {
    if (url.indexOf('http') === 0) return url;
    var gN = document.createElement('div');
    gN.innerHTML = '<a href="' + url.split('"').join('&quot;') + '">x</a>';
    return gN.firstChild.href.toString();
};
SessionCamRecorder.prototype.bd = function(url) {
    var path, pathname, pagename, port, dy, a = document.createElement("A");
    a.href = sessionCamRecorder.aX(url);
    path = a.pathname;
    if (sessionCamRecorder.jW(path)) path = '/';
    else if (path[0] !== '/') path = '/' + path;
    dy = path.lastIndexOf('/');
    pathname = path.substr(0, dy + 1);
    pagename = (path.length > (dy + 1) ? path.substr(dy + 1) : '');
    if ((a.port === '') || (a.port.toString() === '0') || ((a.protocol === 'http:') && (a.port.toString() === '80')) || ((a.protocol === 'https:') && (a.port.toString() === '443'))) port = '';
    else port = ':' + a.port;
    return {
        protocol: a.protocol + '//',
        port: port,
        hostname: a.hostname,
        path: pathname,
        pageName: pagename,
        aE: window.sessioncamConfiguration.removeQueryStrings ? "" : a.search
    };
};
SessionCamRecorder.prototype.nx = function() {
    var link = null;
    if (!sessionCamRecorder.configuration.AX && (window.sessioncamConfiguration && window.sessioncamConfiguration.IgnoreCanonicalLink)) sessionCamRecorder.configuration.AX = 1;
    if (!sessionCamRecorder.configuration.AX) {
        link = document.head.querySelectorAll('link[href][rel=canonical]');
        if (link.length != 1) link = null;
    }
    return link;
};
SessionCamRecorder.prototype.lW = function(aA) {
    var link = aA ? null : sessionCamRecorder.nx();
    return (link ? sessionCamRecorder.bd(link[0].getAttribute('href')) : sessionCamRecorder.bd(window.location.toString()));
};
SessionCamRecorder.prototype.jp = function(aA) {
    var uri, hostname, path, pageName, aF, prevUri = sessionCamRecorder.bp,
        aE = "";
    try {
        uri = sessionCamRecorder.lW(aA);
        if (window.SessionCamPath !== undefined && window.SessionCamPath.length) path = window.SessionCamPath;
        else if (window.sessioncamConfiguration && (window.sessioncamConfiguration.SessionCamPath !== undefined)) path = window.sessioncamConfiguration.SessionCamPath;
        else if (sessionCamRecorder.configuration.P) path = eval(sessionCamRecorder.ar(sessionCamRecorder.configuration.P));
        else path = uri.path;
        path = sessionCamRecorder.fW(path);
        if (!path.length) path = '/';
        else if (path.indexOf('/') !== 0) path = '/' + path;
        if (path.lastIndexOf('/') !== (path.length - 1)) path = path + '/';
        if (window.SessionCamPageName !== undefined && window.SessionCamPageName.length) pageName = window.SessionCamPageName;
        else if (window.sessioncamConfiguration && (window.sessioncamConfiguration.SessionCamPageName !== undefined)) pageName = window.sessioncamConfiguration.SessionCamPageName;
        else if (sessionCamRecorder.configuration.N) pageName = eval(sessionCamRecorder.ar(sessionCamRecorder.configuration.N));
        else pageName = uri.pageName;
        pageName = sessionCamRecorder.fW(pageName);
        aF = pageName.toLowerCase().indexOf(';jsessionid=');
        if (aF > 0) pageName = pageName.substring(0, aF);
        else if (aF === 0) pageName = '';
        if (window.sessioncamConfiguration && (window.sessioncamConfiguration.SessionCamHostname !== undefined)) {
            hostname = window.sessioncamConfiguration.SessionCamHostname;
            if (hostname.indexOf('https://') === 0) {
                if (hostname.substr(8).indexOf('/') >= 0) hostname = 'https://' + hostname.substr(8).substring(0, hostname.substr(8).indexOf('/'));
            } else if (hostname.indexOf('http://') === 0) {
                if (hostname.substr(7).indexOf('/') >= 0) hostname = 'http://' + hostname.substr(7).substring(0, hostname.substr(7).indexOf('/'));
            } else if (hostname.indexOf('/') > 0) hostname = hostname.substring(0, hostname.indexOf('/'));
        }
        if (!hostname) hostname = uri.hostname;
        if (!window.sessioncamConfiguration.removeQueryStrings) {
            aE = decodeURIComponent(uri.aE);
        }
        if (hostname.indexOf('http') === 0) sessionCamRecorder.lb = hostname + uri.port + path + decodeURIComponent(pageName) + aE;
        else sessionCamRecorder.lb = uri.protocol + hostname + uri.port + path + decodeURIComponent(pageName) + aE;
    } catch (err) {
        sessionCamRecorder.log('setPageURL - returning window.location', err);
        sessionCamRecorder.lb = window.sessioncamConfiguration.removeQueryStrings ? window.location.protocol + '//' + window.location.hostname + (window.location.port ? (':' + window.location.port) : '') + window.location.pathname : window.location.toString();
    }
    try {
        aF = sessionCamRecorder.lb.toLowerCase().indexOf(';jsessionid=');
        if (aF >= 0) sessionCamRecorder.lb = sessionCamRecorder.lb.substring(0, aF);
        sessionCamRecorder.bp = sessionCamRecorder.bd(sessionCamRecorder.lb.replace("%", "%25"));
    } catch (err) {}
    if (prevUri) {
        if ((sessionCamRecorder.bp.protocol != prevUri.protocol) || (sessionCamRecorder.bp.hostname != prevUri.hostname) || (sessionCamRecorder.bp.port != prevUri.port)) {
            sessionCamRecorder.configuration.AA = null;
            sessionCamRecorder.configuration.AB = null;
        } else if ((sessionCamRecorder.bp.path != prevUri.path) || (sessionCamRecorder.bp.pageName != prevUri.pageName) || (sessionCamRecorder.bp.aE != prevUri.aE)) sessionCamRecorder.configuration.AA = null;
        sessionCamRecorder.configuration.AB = null;
    }
    return sessionCamRecorder.lb;
};
SessionCamRecorder.prototype.lM = function() {
    var hash, path = window.location.pathname;
    if (sessionCamRecorder.pl) path = sessionCamRecorder.qF ? sessionCamRecorder.pl.pageName : '';
    else if (sessionCamRecorder.bs && sessionCamRecorder.bs != 'auto-virtual-pages') path = sessionCamRecorder.ar(sessionCamRecorder.bs);
    else if (window.location.hash) {
        hash = window.location.hash;
        if (hash.indexOf('?') >= 0) hash = hash.substring(0, hash.indexOf('?'));
        if (hash.indexOf('#') === 0) hash = hash.substring(1);
        if ((hash.indexOf('/') === 0) && (hash.length > 1)) hash = hash.substring(1);
        if (path.length && (path.substr(path.length - 1, 1) != '/')) path += '/';
        path += hash;
        if (path.length > 1) path = path.substring(1);
    }
    return path;
};
SessionCamRecorder.prototype.bJ = function(path, delay, bA) {
    var ho = {
        p: path,
        d: delay || 0
    };
    if (bA) sessionCamRecorder.bC.unshift(ho);
    else sessionCamRecorder.bC.push(ho);
    sessionCamRecorder.aO();
};
SessionCamRecorder.prototype.aO = function() {
    var ho, delay;
    if (sessionCamRecorder.mJ) {
        window.clearTimeout(sessionCamRecorder.mJ);
        sessionCamRecorder.mJ = 0;
    }
    if (sessionCamRecorder.getPageIdResponseOk && sessionCamRecorder.configuration && sessionCamRecorder.configuration.I && !sessionCamRecorder.mt) {
        while (sessionCamRecorder.bC.length > 1) {
            ho = sessionCamRecorder.bC.splice(0, 1)[0];
            sessionCamRecorder.createVirtualPageLoad(ho.p);
        }
    }
    if (sessionCamRecorder.bC.length) {
        if (sessionCamRecorder.bC[0].d) {
            delay = sessionCamRecorder.bC[0].d;
            sessionCamRecorder.bC[0].d = 0;
            sessionCamRecorder.mJ = window.setTimeout(sessionCamRecorder.aO, delay);
        } else {
            ho = sessionCamRecorder.bC.splice(0, 1)[0];
            sessionCamRecorder.createVirtualPageLoad(ho.p);
        }
    }
};
SessionCamRecorder.prototype.mS = function() {
    var path = sessionCamRecorder.lM();
    if (path != sessionCamRecorder.nf) {
        sessionCamRecorder.nf = path;
        sessionCamRecorder.bJ(path, sessionCamRecorder.bI);
    }
};
SessionCamRecorder.prototype.createVirtualPageLoad = function(path) {
    var eP, jI, lo, kv, kV, result, dy, params, i, ln;
    if (!path || !sessionCamRecorder.configuration || !sessionCamRecorder.configuration.I || sessionCamRecorder.mt || sessionCamRecorder.me) return;
    if (!sessionCamRecorder.getPageIdResponseOk) {
        sessionCamRecorder.bJ(path, 500, true);
        return;
    }
    try {
        eP = sessionCamRecorder.lb;
        jI = sessionCamRecorder.bp;
        lo = sessionCamRecorder.configuration.VP;
        kv = sessionCamRecorder.configuration.AA;
        kV = sessionCamRecorder.configuration.AB;
        sessionCamRecorder.dz(true);
        result = sessionCamRecorder.dH(true);
        while (result) {
            result = sessionCamRecorder.dH(true);
        }
        sessionCamRecorder.jM(true);
        if (path) {
            dy = path.lastIndexOf('/');
            if (dy >= 0) {
                window.SessionCamPath = path.substr(0, dy + 1);
                window.SessionCamPageName = path.substr(dy + 1);
            } else {
                window.SessionCamPath = '/';
                window.SessionCamPageName = path;
            }
        }
        sessionCamRecorder.currentPageState = '';
        sessionCamRecorder.jp();
        sessionCamRecorder.qD();
        sessionCamRecorder.configuration.AA = null;
        sessionCamRecorder.configuration.AB = null;
        if (sessionCamRecorder.useVPLsAsNewPageLoad) {
            sessionCamRecorder.getPageIdResponseOk = false;
            sessionCamRecorder.jG = sessionCamRecorder.getTime();
            sessionCamRecorder.eq = sessionCamRecorder.jG;
            sessionCamRecorder.gm = sessionCamRecorder.jG;
            sessionCamRecorder.pD = 1;
            sessionCamRecorder.ml();
            sessionCamRecorder.bW();
            sessionCamRecorder.ey();
            sessionCamRecorder.cB();
            sessionCamRecorder.sendCustomDataEvent("useVPLsAsNewPageLoad-createVirtualPageLoad", "true");
        } else {
            sessionCamRecorder.configuration.VP = true;
            sessionCamRecorder.eq = sessionCamRecorder.getTime();
            params = new sessionCamRecorder.iO();
            params.append('sse=');
            params.append(sessionCamRecorder.getTime());
            params.append('&w=');
            params.append(sessionCamRecorder.lN());
            params.append('&h=');
            params.append(sessionCamRecorder.mG());
            params.append('&r=');
            params.append(encodeURIComponent(eP));
            params.append('&originalUrl=');
            params.append(window.sessioncamConfiguration.removeQueryStrings ? encodeURIComponent(window.location.protocol + '//' + window.location.hostname + (window.location.port ? (':' + window.location.port) : '') + window.location.pathname) : encodeURIComponent(window.location));
            params.append('&ASPNetSessionId=');
            params.append(sessionCamRecorder.iC('sc.ASP.NET_SESSIONID'));
            params.append('&test=');
            params.append((window.location.search.indexOf('sessioncamtestmode') > -1 ? '1' : '0'));
            sessionCamRecorder.lh('/record.asmx/CreateVirtualPageLoad', 'POST', params.toString(), sessionCamRecorder.cK, false);
        }
        sessionCamRecorder.iD.push(sessionCamRecorder.iA(eP, jI, lo, kv, kV));
        sessionCamRecorder.aK(sessionCamRecorder.getTime() + 1, document);
        if (sessionCamRecorder.configuration.BL == 0 && (sessionCamRecorder.configuration.BD && sessionCamRecorder.configuration.BD.length > 0)) {
            for (i = 0, ln = sessionCamRecorder.configuration.BD.length; i < ln; ++i) {
                try {
                    sessionCamRecorder.oY.enableIntegration(sessionCamRecorder.configuration.BD[i], true);
                } catch (err) {
                    sessionCamRecorder.log('createVirtualPageLoad enableIntegration', err);
                }
            }
        }
        sessionCamRecorder.oz = sessionCamRecorder.ot;
    } catch (err) {
        sessionCamRecorder.log('createVirtualPageLoad', err);
    }
    return;
};
SessionCamRecorder.prototype.closeVirtualPage = function() {
    var gS, result, params;
    try {
        if (sessionCamRecorder.getPageIdResponseOk === true && sessionCamRecorder.configuration != null && sessionCamRecorder.configuration.I && (sessionCamRecorder.iD.length >= 1) && !sessionCamRecorder.mt) {
            gS = sessionCamRecorder.iD.pop();
            sessionCamRecorder.dz(true);
            result = sessionCamRecorder.dH(true);
            while (result) {
                result = sessionCamRecorder.dH(true);
            }
            sessionCamRecorder.jM(true);
            sessionCamRecorder.qD();
            sessionCamRecorder.lb = gS.url;
            sessionCamRecorder.bp = gS.uri;
            sessionCamRecorder.configuration.VP = gS.gz;
            sessionCamRecorder.configuration.AA = gS.kL;
            sessionCamRecorder.configuration.AB = gS.iE;
            if (sessionCamRecorder.useVPLsAsNewPageLoad) {
                sessionCamRecorder.getPageIdResponseOk = false;
                sessionCamRecorder.jG = sessionCamRecorder.getTime();
                sessionCamRecorder.eq = sessionCamRecorder.jG;
                sessionCamRecorder.gm = sessionCamRecorder.jG;
                sessionCamRecorder.pD = 1;
                sessionCamRecorder.ml();
                sessionCamRecorder.bW();
                sessionCamRecorder.ey();
                sessionCamRecorder.cB();
                sessionCamRecorder.sendCustomDataEvent("useVPLsAsNewPageLoad-closeVirtualPage", "true");
            } else {
                sessionCamRecorder.eq = sessionCamRecorder.getTime();
                params = new sessionCamRecorder.iO();
                params.append('sse=');
                params.append(sessionCamRecorder.getTime());
                params.append('&w=');
                params.append(sessionCamRecorder.lN());
                params.append('&h=');
                params.append(sessionCamRecorder.mG());
                params.append('&aa=' + gS.kL);
                params.append('&ab=' + gS.iE);
                params.append('&isvp=' + (gS.gz ? '1' : '0'));
                params.append('&originalUrl=');
                params.append(window.sessioncamConfiguration.removeQueryStrings ? encodeURIComponent(window.location.protocol + '//' + window.location.hostname + (window.location.port ? (':' + window.location.port) : '') + window.location.pathname) : encodeURIComponent(window.location));
                params.append('&ASPNetSessionId=');
                params.append(sessionCamRecorder.iC('sc.ASP.NET_SESSIONID'));
                params.append('&test=');
                params.append((window.location.search.indexOf('sessioncamtestmode') > -1 ? '1' : '0'));
                sessionCamRecorder.lh('/record.asmx/CloseVirtualPage', 'POST', params.toString(), sessionCamRecorder.cK, false);
            }
            sessionCamRecorder.oz = sessionCamRecorder.ot;
        }
    } catch (err) {
        sessionCamRecorder.log('closeVirtualPage', err);
    }
    return;
};
SessionCamRecorder.prototype.endSession = function(startNewSession) {
    if (sessionCamRecorder.configuration != null && sessionCamRecorder.configuration.I) {
        var params;
        sessionCamRecorder.jM();
        params = new sessionCamRecorder.iO();
        params.append('sse=');
        params.append(sessionCamRecorder.getTime());
        params.append('&w=');
        params.append(sessionCamRecorder.lT());
        params.append('&test=');
        params.append((window.location.search.indexOf('sessioncamtestmode') > -1 ? '1' : '0'));
        params.append('&originalUrl=');
        params.append(window.sessioncamConfiguration.removeQueryStrings ? encodeURIComponent(window.location.protocol + '//' + window.location.hostname + (window.location.port ? (':' + window.location.port) : '') + window.location.pathname) : encodeURIComponent(window.location));
        params.append('&ASPNetSessionId=');
        params.append(sessionCamRecorder.iC('sc.ASP.NET_SESSIONID'));
        sessionCamRecorder.lh('/record.asmx/EndSession', 'POST', params.toString(), (startNewSession ? sessionCamRecorder.handle_endSessionStartNew : undefined));
        sessionCamRecorder.me = true;
    }
};
SessionCamRecorder.prototype.createClientEvent = function(data, callbackFunction, callbackFunctionParameter) {
    if (data.length > 256) data = data.substr(0, 256);
    data = encodeURIComponent(sessionCamRecorder.cp(sessionCamRecorder.fj(data)));
    sessionCamRecorder.bO('ce' + sessionCamRecorder.fi + (sessionCamRecorder.getTime() - sessionCamRecorder.jG) + sessionCamRecorder.fi + data);
    if (callbackFunction) callbackFunction(callbackFunctionParameter);
};
SessionCamRecorder.prototype.setPageState = function(state) {
    if (typeof state === 'string') {
        state = state.replace(/[\W]+/g, ' ').replace(/ +/g, ' ').trim();
        if (state.length && state.length <= 15 && state != sessionCamRecorder.pageStatePfl && !sessionCamRecorder.iD.length && sessionCamRecorder.pageStates.indexOf(sessionCamRecorder.pageStatePfl) < 0 && (sessionCamRecorder.pageStates.length < 5 || sessionCamRecorder.pageStates.indexOf(state) >= 0)) {
            sessionCamRecorder.jM(true);
            if (sessionCamRecorder.pageStates.indexOf(state) < 0) sessionCamRecorder.pageStates.push(state);
            sessionCamRecorder.currentPageState = state;
            sessionCamRecorder.gG(sessionCamRecorder.fo.pM, state);
            return state;
        }
    }
    return false;
};
SessionCamRecorder.prototype.pageFullyLoaded = function() {
    if (sessionCamRecorder.iD.length || sessionCamRecorder.pageStates.length) return false;
    sessionCamRecorder.pageStates.push(sessionCamRecorder.pageStatePfl);
    sessionCamRecorder.gG(sessionCamRecorder.fo.pM, sessionCamRecorder.pageStatePfl);
    return true;
};
SessionCamRecorder.prototype.unsetPageState = function() {
    sessionCamRecorder.jM(true);
    sessionCamRecorder.currentPageState = '';
    return true;
};
SessionCamRecorder.prototype.aS = function(value) {
    sessionCamRecorder.ph = value;
    sessionCamRecorder.gG(sessionCamRecorder.fo.nN, value);
};
SessionCamRecorder.prototype.bf = function(currencyCode) {
    sessionCamRecorder.oj = currencyCode;
    sessionCamRecorder.gG(sessionCamRecorder.fo.oG, currencyCode);
};
SessionCamRecorder.prototype.pn = function() {
    if (sessionCamRecorder.configuration.BI) {
        try {
            var bi = sessionCamRecorder.aJ(sessionCamRecorder.configuration.BI);
            if (!sessionCamRecorder.jW(bi) && (bi != sessionCamRecorder.ph)) sessionCamRecorder.aS(bi);
        } catch (jK) {}
    }
    if (sessionCamRecorder.configuration.BJ) {
        try {
            var bj = sessionCamRecorder.aJ(sessionCamRecorder.configuration.BJ);
            if (!sessionCamRecorder.jW(bj) && (bj != sessionCamRecorder.oj)) sessionCamRecorder.bf(bj);
        } catch (jK) {}
    }
    window.setTimeout(sessionCamRecorder.pn, sessionCamRecorder.om);
};
SessionCamRecorder.prototype.aJ = function(am) {
    var K = window,
        ah = am.split(/[\.\[]/gi);
    for (var i = 0; i < ah.length; i++) {
        var accessor = ah[i];
        if (i === 0 && (accessor === 'window' || accessor === '')) continue;
        if (accessor.substring(accessor.length - 1) === "]") {
            var matches = /(?:^|['"])(?!['"])(.+?)(?:\]|['"])/.exec(accessor);
            if (!matches || matches.length < 2) {
                return null;
            }
            accessor = matches[1];
        }
        if (!K.hasOwnProperty(accessor)) {
            return null;
        }
        K = K[accessor];
    }
    return K;
};
SessionCamRecorder.prototype.lh = function(url, method, data, le, by, isRestartRecording) {
    var gF, bL, fO = false,
        sb = new sessionCamRecorder.iO();
    if (sessionCamRecorder.me) return fO;
    try {
        if (!this.jS) {
            if (!by && (data !== null) && (data !== undefined) && (data !== '')) {
                data += '&';
            }
            if (!by) data += 'url=' + encodeURIComponent(this.lb);
            bL = sessionCamRecorder.ak === "a" ? this.lg : this.at;
            if (this.configuration.S || this.configuration.AA || this.configuration.AB) {
                if (this.configuration.S) sb.append('&si=' + this.configuration.S);
                if (this.configuration.AA) sb.append('&aa=' + this.configuration.AA);
                if (this.configuration.AB) sb.append('&ab=' + this.configuration.AB);
            }
            data += sb.toString();
            if ((this.requestType === 'XMLHttpRequest') || ((!this.requestType) && window.XMLHttpRequest)) {
                gF = new XMLHttpRequest();
                if ('withCredentials' in gF) {
                    this.requestType = 'XMLHttpRequest';
                    url += '?url=' + encodeURIComponent(this.lb);
                    if (this.configuration.H) {
                        url += '&id=' + this.configuration.H;
                    }
                    try {
                        if (by) {
                            gF.open(method, bL + url + data, true);
                        } else {
                            gF.open(method, bL + url, true);
                        }
                    } catch (e) {
                        this.requestType = 'None';
                        gF = null;
                    }
                    if (gF != null) {
                        gF.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
                        gF.withCredentials = true;
                        gF.onreadystatechange = function() {
                            if (gF.readyState == 4 && gF.status == 200) {
                                if (le) {
                                    if (by) {
                                        le(JSON.parse(gF.response), isRestartRecording);
                                    } else {
                                        le(gF.responseText);
                                    }
                                }
                            } else if (gF.readyState == 4 && gF.status !== 0) {
                                sessionCamRecorder.log('Server error', gF.statusText);
                                sessionCamRecorder.jS = true;
                            }
                        };
                    }
                } else {
                    gF = null;
                    this.requestType = 'None';
                }
            }
            if (gF != null) {
                try {
                    gF.send(data);
                    fO = true;
                } catch (e) {
                    sessionCamRecorder.log('Send error', e);
                }
            } else sessionCamRecorder.log('No transport');
        }
    } catch (err) {
        sessionCamRecorder.log('General makeRequest', err);
    }
    return fO;
};
SessionCamRecorder.prototype.dN = function(text) {
    return text.replace(/\r/g, '');
};
SessionCamRecorder.prototype.lx = function(gN) {
    var fO, lz, jN, cn, dG, ka, ee, cR, cI, range, tr, dF, cf, dA, dv;
    try {
        if ((gN.selectionStart !== undefined) && (gN.selectionStart !== null)) {
            lz = gN.selectionStart;
            jN = gN.selectionEnd;
            cn = gN.value.substring(0, lz).match(/\r\n/g);
            dG = gN.value.substring(0, jN).match(/\r\n/g);
            if (cn) lz -= cn.length;
            if (dG) jN -= dG.length;
            fO = {
                start: lz,
                end: jN
            };
        } else if (document.selection) {
            if (document.activeElement && (document.activeElement === gN)) {
                range = document.selection.createRange();
                if (gN.type == "textarea") {
                    ka = document.body.createTextRange();
                    ka.moveToElementText(gN);
                    for (cR = 0; ka.compareEndPoints('StartToStart', range) < 0; cR++) {
                        ka.moveStart('character', 1);
                    }
                    ee = gN.value.replace(/\n/g, '.').replace(/\r/g, '');
                    for (cI = ee.length; ka.compareEndPoints('EndToEnd', range) > 0; cI--) {
                        ka.moveEnd('character', -1);
                    }
                    fO = {
                        start: cR,
                        end: cI
                    };
                } else {
                    tr = gN.createTextRange();
                    dF = tr.duplicate();
                    dF.moveToBookmark(range.getBookmark());
                    tr.setEndPoint('EndToStart', dF);
                    if (range == null || tr == null) fO = {
                        start: gN.value.length,
                        end: gN.value.length,
                        length: 0,
                        text: ''
                    };
                    cf = range.text.replace(/[\r\n]/g, '.');
                    dA = gN.value.replace(/[\r\n]/g, '.');
                    dv = dA.indexOf(cf, tr.text.length);
                    fO = {
                        start: dv,
                        end: dv + cf.length
                    };
                }
            } else fO = {
                start: gN.value.length,
                end: gN.value.length
            };
        } else fO = {
            start: gN.value.length,
            end: gN.value.length
        };
    } catch (jK) {
        fO = {
            start: gN.value.length,
            end: gN.value.length
        };
    }
    return fO;
};
SessionCamRecorder.prototype.cV = function(kT) {
    var np = String(kT.start);
    if (kT.end != kT.start) np += ":" + kT.end;
    return np;
};
SessionCamRecorder.prototype.cw = function(cH) {
    return (function($) {
        var fO, kG;
        if (cH) {
            kG = $('input[name="' + cH.name + '"]:radio:checked');
            if (kG && kG.length == 1) fO = kG[0];
        }
        return fO;
    }(window.sessionCamJQuery));
};
SessionCamRecorder.prototype.mv = function(event) {
    var fO = "";
    if (event) {
        fO = event.keyCode;
        if ((event.which !== undefined) && (event.which !== null)) fO = event.which.toString();
        if (fO) {
            if (fO < 32) fO = "";
            else fO = String.fromCharCode(fO);
        }
    }
    return fO;
};
SessionCamRecorder.prototype.cj = function(event) {
    var fO = "";
    if (event && event.keyCode) fO = event.keyCode;
    return fO;
};
SessionCamRecorder.prototype.eJ = function(fk, kS, kt, key, km, selection, kb, gN) {
    return (function($) {
        var data, lv, val;
        val = $(gN).val();
        if ($.isArray(val)) val = val.join();
        if (sessionCamRecorder.an(gN, 'scVal') == val) key = '';
        data = "k{" + key + "} s{" + selection + "}";
        if (km) data += " m{o}";
        lv = sessionCamRecorder.fo.KeyPress;
        if (kt == "kd") lv = sessionCamRecorder.fo.KeyDown;
        else if (kt == "k") lv = sessionCamRecorder.fo.KeyPress;
        else return;
        if (!kb) kb = sessionCamRecorder.getTime();
        sessionCamRecorder.gG(lv, data, fk, kS, sessionCamRecorder.pQ(gN), null, gN, null, kb);
        return;
    }(window.sessionCamJQuery));
};
SessionCamRecorder.prototype.kx = function(fk, kS, kt, key, dE, kD, target) {
    window.setTimeout(function() {
        var km = false;
        if (dE) km = dE();
        sessionCamRecorder.eJ(fk, kS, kt, key, km, kD(target), null, target);
    }, 50);
    return;
};
SessionCamRecorder.prototype.mp = function(event, fo) {
    return (function($) {
        try {
            if (!event) return;
            var target, eF, character, key, kD, cJ, cd, cg, dQ;
            target = event.target.shadowRoot ? event.path[0] : event.target;
            if (target) {
                if (target.className && target.className.indexOf(sessionCamRecorder.nz) >= 0) return;
                if (sessionCamRecorder.lZ(target)) return;
                eF = sessionCamRecorder.cj(window.event);
                character = sessionCamRecorder.mv(window.event);
                key = "";
                if (fo == "kd") key = eF;
                else if (fo == "k") key = character;
                if ((fo == "kd") && (eF == sessionCamRecorder.kO)) return;
                if ((fo == "k") && (eF == sessionCamRecorder.kO)) {
                    fo = "kd";
                    key = sessionCamRecorder.kO;
                }
                switch (target.type) {
                    case "text":
                    case "textarea":
                    case "search":
                    case "url":
                    case "email":
                    case "number":
                    case "tel":
                        if (((fo == "k") && (character.length > 0)) || ((fo == "kd") && ((eF == sessionCamRecorder.ef) || (eF == sessionCamRecorder.mk) || (eF == sessionCamRecorder.altKey) || (eF == sessionCamRecorder.ctrlKey) || (eF == sessionCamRecorder.kO) || (eF == sessionCamRecorder.dp) || (eF == sessionCamRecorder.jY) || (eF == sessionCamRecorder.cP) || (eF == sessionCamRecorder.ko) || (eF == sessionCamRecorder.ku) || (eF == sessionCamRecorder.cD) || (eF == sessionCamRecorder.cT) || (eF == sessionCamRecorder.co) || (eF == sessionCamRecorder.cX)))) {
                            if (sessionCamRecorder.an(target, "newlyFocussed") == "1") {
                                sessionCamRecorder.gG(sessionCamRecorder.fo.hY, $(target).val(), sessionCamRecorder.eO(target), target.type, sessionCamRecorder.pQ(target), null, target);
                                sessionCamRecorder.bg(target, "newlyFocussed", null);
                            }
                            kD = function(target) {
                                var fO, kT;
                                fO = "0";
                                kT = sessionCamRecorder.lx(target);
                                if (kT) fO = sessionCamRecorder.cV(kT);
                                return fO;
                            };
                            cJ = kD(target);
                            cd = function() {
                                return cJ;
                            };
                            cg = cd;
                            if ((fo == "kd") && ((eF == sessionCamRecorder.altKey) || (eF == sessionCamRecorder.ctrlKey) || (eF == sessionCamRecorder.dp) || (eF == sessionCamRecorder.jY) || (eF == sessionCamRecorder.cP) || (eF == sessionCamRecorder.ko) || (eF == sessionCamRecorder.ku) || (eF == sessionCamRecorder.cD) || (eF == sessionCamRecorder.cT) || (eF == sessionCamRecorder.co) || (eF == sessionCamRecorder.cX))) {
                                cg = kD;
                            }
                            dQ = sessionCamRecorder.dN(target.value).substr(sessionCamRecorder.lx(target).end);
                            sessionCamRecorder.kx(sessionCamRecorder.eO(target), target.type, fo, key, function() {
                                var fM, cu;
                                fM = sessionCamRecorder.lx(target);
                                cu = sessionCamRecorder.dN(target.value).substr(fM.end);
                                return (fo == "k") && (cu != dQ);
                            }, cg, target);
                        }
                        break;
                    case "select-one":
                        sessionCamRecorder.kx(sessionCamRecorder.eO(target), target.type, fo, key, false, function() {
                            return sessionCamRecorder.cE(target);
                        }, target);
                        break;
                    case "select-multiple":
                        sessionCamRecorder.kx(sessionCamRecorder.eO(target), target.type, fo, key, false, function() {
                            return sessionCamRecorder.jt(target);
                        }, target);
                        break;
                    case "checkbox":
                        sessionCamRecorder.kx(sessionCamRecorder.eO(target), target.type, fo, key, false, function() {
                            return target.checked ? '1' : '0';
                        }, target);
                        break;
                    case "radio":
                        if ((fo == "kd") && ((eF == sessionCamRecorder.ku) || (eF == sessionCamRecorder.ko) || (eF == sessionCamRecorder.jY) || (eF == sessionCamRecorder.cP) || (eF == sessionCamRecorder.dh) || (eF == sessionCamRecorder.kO) || (eF == sessionCamRecorder.altKey) || (eF == sessionCamRecorder.ctrlKey))) {
                            sessionCamRecorder.kx(sessionCamRecorder.eO(target), target.type, fo, key, false, function() {
                                var fO, kT;
                                fO = "";
                                kT = sessionCamRecorder.cw(target);
                                if (kT) fO = kT.id;
                                return fO;
                            }, target);
                        }
                        break;
                }
            }
        } catch (err) {
            sessionCamRecorder.log('processKeyboardEvent', err);
        }
        return;
    }(window.sessionCamJQuery));
};
SessionCamRecorder.prototype.mY = function() {
    return (document.webkitVisibilityState && (document.webkitVisibilityState === 'prerender')) || (document.visibilityState && (document.visibilityState === 'prerender'));
};
SessionCamRecorder.prototype.lF = function() {
    return (function($) {
        $(document).on('visibilitychange', function() {
            if (!sessionCamRecorder.mY()) sessionCamRecorder.startSession(false);
        });
        $(document).on('webkitvisibilitychange', function() {
            if (!sessionCamRecorder.mY()) sessionCamRecorder.startSession(false);
        });
    }(window.sessionCamJQuery));
};
SessionCamRecorder.prototype.lY = function() {
    return sessionCamRecorder.sessionCamDebug ? true : false;
};
SessionCamRecorder.prototype.cG = function(s) {
    if (!sessionCamRecorder.lY()) {
        return;
    }
    window.sessionCamJQuery('#sessionCamDebugWindow').val(s + "\n" + window.sessionCamJQuery('#sessionCamDebugWindow').val());
    return;
};
SessionCamRecorder.prototype.dj = function() {
    if (!sessionCamRecorder.lY()) {
        return;
    }
    window.sessionCamJQuery('body').append('<textarea id="sessionCamDebugWindow" style="width:100%; height:200px;"></textarea>');
    return;
};
//]]>
SessionCamRecorder.prototype.startSession = function(restartRecording) {
    sessionCamRecorder.lm(false, restartRecording);
    return;
};
if (!window.sessionCamRecorder) {
    window.sessionCamRecorder = new SessionCamRecorder("https://ws.sessioncam.com/Record", "https://b.ws.sessioncam.com/Record");
    if (window.sessionCamRecorder.mY()) window.sessionCamRecorder.lF();
    else window.sessionCamRecorder.startSession(false);
}