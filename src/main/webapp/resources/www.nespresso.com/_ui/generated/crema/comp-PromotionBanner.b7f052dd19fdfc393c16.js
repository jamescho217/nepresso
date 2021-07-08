(window.webpackJsonpCrema = window.webpackJsonpCrema || []).push([
    [36], {
        1107: function(e, t, n) {
            "use strict";
            Object.defineProperty(t, "__esModule", {
                value: !0
            });
            var r = s(n(5)),
                o = s(n(19)),
                a = s(n(12)),
                u = s(n(34)),
                i = s(n(122)),
                l = s(n(0)),
                c = n(15),
                d = (s(n(1)), s(n(1108))),
                f = n(57);

            function s(e) {
                return e && e.__esModule ? e : {
                    default: e
                }
            }
            var p = console.error,
                m = function(e) {
                    return {
                        viewport: e.viewport
                    }
                };
            t.default = function() {
                for (var e = arguments.length, t = Array(e), n = 0; n < e; n++) t[n] = arguments[n];
                return function(e) {
                    var n = function(n) {
                        var c = n.viewport,
                            d = function(e, t, n) {
                                var r = (0, i.default)(n, 2),
                                    l = r[0],
                                    c = r[1];
                                switch (void 0 === l ? "undefined" : (0, u.default)(l)) {
                                    case "string":
                                        return (0, a.default)({}, l, c(e)[t]);
                                    case "object":
                                        return (0, o.default)(l).reduce((0, f.quickAssignReducer)((function(n) {
                                            return l[n](e)[t]
                                        })), {});
                                    default:
                                        return p("You should provide data as a string or as an object construction."), {}
                                }
                            }(n, (void 0 === c ? {} : c).formFactor, t);
                        return l.default.createElement(e, (0, r.default)({}, n, d))
                    };
                    return n.displayName = (0, d.default)(e, "WithValueByFormFactor"), (0, c.connect)(m)(n)
                }
            }
        },
        1108: function(e, t, n) {
            "use strict";
            Object.defineProperty(t, "__esModule", {
                value: !0
            });
            var r = /function ([^(]+)/;
            t.default = function(e, t) {
                var n = 1 < arguments.length && void 0 !== t ? t : "anonymous",
                    o = e.displayName || e.name || e.toString().match(r);
                return o ? "string" == typeof o ? o : o[1] : n
            }
        },
        1439: function(e, t, n) {
            "use strict";
            Object.defineProperty(t, "__esModule", {
                value: !0
            });
            var r = v(n(11)),
                o = v(n(13)),
                a = v(n(14)),
                u = v(n(17)),
                i = v(n(18)),
                l = v(n(2)),
                c = v(n(0)),
                d = n(15),
                f = (v(n(1)), n(1440)),
                s = n(222),
                p = n(24),
                m = n(69),
                h = n(56);

            function v(e) {
                return e && e.__esModule ? e : {
                    default: e
                }
            }
            var g = function(e) {
                return {
                    isLoggedIn: (0, h.userIsLogged)((0, m.fromEcapiGetter)(e)(p.CUSTOMER_DATA)),
                    cartQuantity: (0, s.getCartQuantity)(e)
                }
            };
            t.default = function(e) {
                var t = function(t) {
                    function n(e) {
                        (0, o.default)(this, n);
                        var t = (0, u.default)(this, (n.__proto__ || (0, r.default)(n)).call(this, e));
                        return t.state = {
                            eCommerceData: e.eCommerceData
                        }, t
                    }
                    return (0, i.default)(n, t), (0, a.default)(n, [{
                        key: "componentWillReceiveProps",
                        value: function(e) {
                            ! function(e, t) {
                                return t && e.isLoggedIn && void 0 !== t.cartQuantity && e.cartQuantity !== t.cartQuantity
                            }(this.props, e) || this.refreshECommerceData()
                        }
                    }, {
                        key: "refreshECommerceData",
                        value: function() {
                            var e = this,
                                t = this.props.eCommerceData.sourceUrl;
                            t && (0, f.fetchJsonNoCache)(t).then((function(t) {
                                t && t.length && e.setState({
                                    eCommerceData: JSON.parse(t)
                                })
                            }))
                        }
                    }, {
                        key: "render",
                        value: function() {
                            return c.default.createElement(e, (t = this.props, (n = this.state.eCommerceData) && n !== t.eCommerceData ? (0, l.default)({}, t, {
                                eCommerceData: n
                            }) : t));
                            var t, n
                        }
                    }]), n
                }(c.default.Component);
                return t.defaultProps = {
                    cartQuantity: 0,
                    isLoggedIn: !1
                }, (0, d.connect)(g)(t)
            }
        },
        1440: function(e, t, n) {
            "use strict";
            Object.defineProperty(t, "__esModule", {
                value: !0
            });
            var r = {
                credentials: "same-origin",
                headers: {
                    Accept: "application/json",
                    cache: "no-store",
                    pragma: "no-cache",
                    "Cache-Control": "no-cache"
                }
            };
            t.fetchJsonNoCache = function(e) {
                return fetch(e, r).then((function(e) {
                    return e.json()
                })).catch((function() {
                    return null
                }))
            }
        },
        1441: function(e, t, n) {
            "use strict";
            Object.defineProperty(t, "__esModule", {
                value: !0
            });
            var r = c(n(2)),
                o = c(n(0)),
                a = c(n(8)),
                u = (c(n(1)), c(n(194))),
                i = c(n(41)),
                l = c(n(1442));

            function c(e) {
                return e && e.__esModule ? e : {
                    default: e
                }
            }
            var d = function(e) {
                var t = e.className,
                    n = e.bannerElements,
                    c = e.shouldHaveBackgroundColor,
                    d = e.width,
                    f = e.height,
                    s = e.policy,
                    p = e.a11yBannerTitle,
                    m = function(e, t) {
                        return function(e) {
                            var t = e.promotions;
                            if (t && t.length) {
                                var n = t[0],
                                    o = n.banner,
                                    a = n.products,
                                    u = n.promotionCode,
                                    i = (0, r.default)({}, o.lightbox, {
                                        products: a
                                    });
                                return (0, r.default)({}, o, {
                                    isNpm: !0,
                                    lightbox: i,
                                    promotionCode: u
                                })
                            }
                            return null
                        }(e) || t[0]
                    }(e.eCommerceData, n);
                if (!m) return null;
                var h = m.backgroundColor ? m.backgroundColor : "white",
                    v = c ? {
                        backgroundColor: h
                    } : {},
                    g = (0, a.default)("ResponsiveContainer", {
                        "ResponsiveContainer--collated": c
                    }, "PromotionBanner__Banner"),
                    b = (0, r.default)({}, m, {
                        className: g,
                        flexible: !0,
                        lazyLoaded: !1,
                        policy: s,
                        height: f,
                        width: d
                    }),
                    _ = m.isNpm ? o.default.createElement(l.default, b) : o.default.createElement(u.default, b);
                return o.default.createElement("div", {
                    className: (0, a.default)(t, "PromotionBanner"),
                    style: v
                }, o.default.createElement(i.default, {
                    tagName: "h2",
                    value: p
                }), _)
            };
            d.displayName = "PromotionBanner", d.defaultProps = {
                bannerElements: [],
                eCommerceData: {}
            }, t.default = d
        },
        1442: function(e, t, n) {
            "use strict";
            Object.defineProperty(t, "__esModule", {
                value: !0
            });
            var r = n(1443);
            Object.defineProperty(t, "default", {
                enumerable: !0,
                get: function() {
                    return (e = r, e && e.__esModule ? e : {
                        default: e
                    }).default;
                    var e
                }
            })
        },
        1443: function(e, t, n) {
            "use strict";
            Object.defineProperty(t, "__esModule", {
                value: !0
            });
            var r = f(n(2)),
                o = f(n(11)),
                a = f(n(13)),
                u = f(n(14)),
                i = f(n(17)),
                l = f(n(18)),
                c = f(n(0)),
                d = f(n(1444));

            function f(e) {
                return e && e.__esModule ? e : {
                    default: e
                }
            }
            var s = function(e) {
                function t(e) {
                    (0, a.default)(this, t);
                    var n = (0, i.default)(this, (t.__proto__ || (0, o.default)(t)).call(this, e));
                    return n.openLightbox = n.openLightbox.bind(n), n.closeLightbox = n.closeLightbox.bind(n), n.state = {
                        npmLightboxOpen: !1
                    }, n
                }
                return (0, l.default)(t, e), (0, u.default)(t, [{
                    key: "openLightbox",
                    value: function() {
                        this.setState({
                            npmLightboxOpen: !0
                        })
                    }
                }, {
                    key: "closeLightbox",
                    value: function() {
                        this.setState({
                            npmLightboxOpen: !1
                        })
                    }
                }, {
                    key: "render",
                    value: function() {
                        var e = (0, r.default)({}, this.props, {
                            openLightbox: this.openLightbox,
                            closeLightbox: this.closeLightbox,
                            isOpen: this.state.npmLightboxOpen
                        });
                        return c.default.createElement(d.default, e)
                    }
                }]), t
            }(c.default.Component);
            t.default = s
        },
        1444: function(e, t, n) {
            "use strict";
            Object.defineProperty(t, "__esModule", {
                value: !0
            });
            var r = i(n(5)),
                o = i(n(0)),
                a = (i(n(1)), i(n(215))),
                u = i(n(1445));

            function i(e) {
                return e && e.__esModule ? e : {
                    default: e
                }
            }
            t.default = function(e) {
                var t = e.lightbox,
                    n = e.isOpen,
                    i = e.closeLightbox,
                    l = e.openLightbox,
                    c = e.promotionCode;
                return o.default.createElement("div", null, o.default.createElement(a.default, (0, r.default)({}, e, {
                    isButton: !0,
                    focusId: "NpmBanner__banner",
                    onClick: l
                })), o.default.createElement(u.default, {
                    lightbox: t,
                    isOpen: n,
                    handleOpenLightbox: l,
                    handleCloseLightbox: i,
                    promotionCode: c
                }))
            }
        },
        1445: function(e, t, n) {
            "use strict";
            Object.defineProperty(t, "__esModule", {
                value: !0
            });
            var r = n(1446);
            Object.defineProperty(t, "default", {
                enumerable: !0,
                get: function() {
                    return (e = r, e && e.__esModule ? e : {
                        default: e
                    }).default;
                    var e
                }
            })
        },
        1446: function(e, t, n) {
            "use strict";
            Object.defineProperty(t, "__esModule", {
                value: !0
            });
            var r = u(n(5)),
                o = u(n(0)),
                a = u(n(130));

            function u(e) {
                return e && e.__esModule ? e : {
                    default: e
                }
            }
            t.default = function(e) {
                return o.default.createElement(a.default, (0, r.default)({}, e, {
                    componentName: "NpmLightboxContainer"
                }))
            }
        },
        853: function(e, t, n) {
            "use strict";
            Object.defineProperty(t, "__esModule", {
                value: !0
            });
            var r = c(n(20)),
                o = c(n(126)),
                a = c(n(67)),
                u = c(n(1439)),
                i = c(n(1441)),
                l = c(n(1107));

            function c(e) {
                return e && e.__esModule ? e : {
                    default: e
                }
            }
            var d = (0, r.default)(u.default, o.default, (0, l.default)({
                width: function() {
                    return {
                        narrow: "768",
                        medium: "996",
                        wide: "996"
                    }
                },
                height: function() {
                    return {
                        narrow: "178",
                        medium: "115",
                        wide: "115"
                    }
                },
                policy: function() {
                    return {
                        narrow: "horizontalBannerNarrow",
                        medium: "large",
                        wide: "large"
                    }
                }
            }), (0, a.default)({
                a11yBannerTitle: "promotionbannersrespblock.a11y.title"
            }));
            t.default = d(i.default)
        }
    }
]);