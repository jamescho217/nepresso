(window.webpackJsonpCrema = window.webpackJsonpCrema || []).push([
    [31], {
        1379: function(e, t, a) {
            "use strict";
            Object.defineProperty(t, "__esModule", {
                value: !0
            }), t.checkCountry = t.setCountryCheckData = void 0;
            var r = a(91),
                n = a(27),
                o = t.setCountryCheckData = function(e) {
                    return {
                        type: n.ECAPI_SET_COUNTRY_CHECK_DATA,
                        data: e
                    }
                };
            t.checkCountry = (0, r.wrapWithPromiseCache)("ECAPI_checkCountry", (function(e) {
                return napi.misc().checkCountry().then((function(t) {
                    e(o(t))
                }))
            }))
        },
        829: function(e, t, a) {
            "use strict";
            Object.defineProperty(t, "__esModule", {
                value: !0
            });
            var r = E(a(12)),
                n = E(a(2)),
                o = E(a(11)),
                s = E(a(13)),
                u = E(a(14)),
                l = E(a(17)),
                c = E(a(18)),
                i = E(a(0)),
                d = a(15),
                f = E(a(20)),
                h = a(33),
                p = E(a(8)),
                y = (E(a(1)), a(24)),
                m = a(1379),
                C = E(a(42)),
                g = a(43),
                _ = E(a(126)),
                v = E(a(67)),
                M = E(a(41)),
                k = E(a(55));
            a(830);
            var w = a(69);

            function E(e) {
                return e && e.__esModule ? e : {
                    default: e
                }
            }
            var D = h.local.namespace("nespresso"),
                B = function() {
                    return i.default.createElement("div", {
                        className: "CloseIcon"
                    }, i.default.createElement("svg", {
                        version: "1.1",
                        xmlns: "http://www.w3.org/2000/svg",
                        viewBox: "0 0 24 24",
                        width: "100%",
                        height: "100%"
                    }, i.default.createElement("path", {
                        d: "M19,6.41L17.59,5,12,10.59,6.41,5,5,6.41,10.59,12,5,17.59, 6.41,19,12,13.41,17.59,19,19,17.59,13.41,12z",
                        className: "CloseIcon__path"
                    })))
                },
                N = function(e) {
                    function t(e) {
                        (0, s.default)(this, t);
                        var a = (0, l.default)(this, (t.__proto__ || (0, o.default)(t)).call(this, e));
                        return a.handleClose = a.handleClose.bind(a), a.state = {
                            shouldBeDisplayed: a.props.shouldBeDisplayed
                        }, a
                    }
                    return (0, c.default)(t, e), (0, u.default)(t, [{
                        key: "componentDidMount",
                        value: function() {
                            "function" == typeof this.props.checkCountry && this.props.checkCountry()
                        }
                    }, {
                        key: "componentWillReceiveProps",
                        value: function(e) {
                            var t = e.shouldBeDisplayed;
                            t !== this.props.shouldBeDisplayed && this.setState({
                                shouldBeDisplayed: t
                            })
                        }
                    }, {
                        key: "handleClose",
                        value: function() {
                            var e = this.props.currentMarket;
                            if (e) {
                                var t = D.get("hasCloseCountryMessage") || {},
                                    a = (0, n.default)({}, t, (0, r.default)({}, e, !0));
                                D.set("hasCloseCountryMessage", a)
                            }
                            this.setState({
                                shouldBeDisplayed: !1
                            })
                        }
                    }, {
                        key: "render",
                        value: function() {
                            var e = this.props,
                                t = e.currentmarketMessage,
                                a = e.othercountryMessage,
                                r = e.a11yTitle,
                                n = e.correctStoreUrl,
                                o = e.a11yCloseLabel,
                                s = e.formFactor,
                                u = e.activated,
                                l = e.className;
                            if (!this.state.shouldBeDisplayed || !u) return null;
                            var c = function(e) {
                                    return e === g.FORMFACTOR_WIDE ? {
                                        height: 60,
                                        marginBottom: 20
                                    } : {
                                        height: 80,
                                        marginBottom: 0
                                    }
                                }(s),
                                d = c.height,
                                f = c.marginBottom,
                                h = (0, p.default)("HeaderCountryMessage", l);
                            return i.default.createElement("div", {
                                className: h,
                                role: "banner",
                                style: {
                                    height: d
                                }
                            }, i.default.createElement("style", null, function(e, t) {
                                return "\n  html {\n    margin-top: " + (e + t) + "px;\n  }\n  .Header__top-wrapper,\n  .HeaderNavigationBar,\n  .HeaderNavigationBar__nav {\n    top: " + e + "px;\n  }\n"
                            }(d, f)), i.default.createElement(M.default, {
                                value: r,
                                tagName: "h2"
                            }), i.default.createElement("div", {
                                className: "HeaderCountryMessage__container ResponsiveContainer"
                            }, i.default.createElement("div", {
                                className: "HeaderCountryMessage__text"
                            }, i.default.createElement("span", {
                                className: "HeaderCountryMessage__current-market",
                                dangerouslySetInnerHTML: {
                                    __html: t
                                }
                            }), i.default.createElement("span", {
                                className: "HeaderCountryMessage__other-country",
                                dangerouslySetInnerHTML: {
                                    __html: (0, C.default)(a, {
                                        correctStoreUrl: n
                                    })
                                }
                            })), i.default.createElement(k.default, {
                                className: "HeaderCountryMessage__close-button",
                                onClick: this.handleClose
                            }, i.default.createElement(M.default, {
                                value: o
                            }), i.default.createElement(B, null))))
                        }
                    }]), t
                }(i.default.Component);
            N.defaultProps = {
                shouldBeDisplayed: !1
            };
            var H = function(e, t) {
                    return (0, w.fromEcapiGetter)(e)(y.MISC_DATA, y.MISC_COUNTRY_CHECK_DATA, t)
                },
                S = (0, f.default)((0, d.connect)((function(e) {
                    var t = (0, w.getFromState)(e),
                        a = t("config", "currentMarket"),
                        r = !!H(e, "showCountryNotification"),
                        n = (D.get("hasCloseCountryMessage") || {})[a];
                    return {
                        currentMarket: a,
                        shouldBeDisplayed: r && !n,
                        correctStoreUrl: H(e, "correctStoreUrl"),
                        formFactor: t("viewport", "formFactor")
                    }
                }), (function(e) {
                    return {
                        checkCountry: function() {
                            return e(m.checkCountry)
                        }
                    }
                })), (0, v.default)({
                    currentmarketMessage: "wrongcountrynotification.currentmarket.message",
                    othercountryMessage: "wrongcountrynotification.othercountry.message",
                    a11yTitle: "wrongcountrynotification.a11y.title",
                    a11yCloseLabel: "wrongcountrynotification.a11y.button.close"
                }), _.default);
            t.default = S(N)
        }
    }
]);