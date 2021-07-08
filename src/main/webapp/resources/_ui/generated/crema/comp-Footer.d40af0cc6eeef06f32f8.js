(window.webpackJsonpCrema = window.webpackJsonpCrema || []).push([
    [29], {
        1358: function(e, t, a) {
            "use strict";
            Object.defineProperty(t, "__esModule", {
                value: !0
            });
            var l = p(a(5)),
                r = p(a(8)),
                n = p(a(0)),
                u = (p(a(1)), p(a(67))),
                o = p(a(126)),
                i = p(a(211)),
                s = p(a(1359)),
                c = p(a(1360)),
                d = p(a(1361)),
                f = p(a(1363)),
                m = p(a(41)),
                _ = p(a(83));

            function p(e) {
                return e && e.__esModule ? e : {
                    default: e
                }
            }
            a(820);
            var y = function(e) {
                    var t = e.children,
                        a = e.url,
                        r = e.target;
                    return a ? n.default.createElement(_.default, (0, l.default)({
                        href: a,
                        className: "Footer__countries-page-link"
                    }, {
                        children: t,
                        target: r
                    })) : n.default.createElement("div", {
                        className: "Footer__countries-page-link"
                    }, t)
                },
                g = function(e) {
                    var t = e.storeCountryCodes,
                        a = e.line1Links,
                        l = e.line2Links,
                        u = e.followLabel,
                        o = e.socialLinks,
                        _ = e.topPageLinkLabel,
                        p = e.logoLink,
                        g = e.copyrightLabel,
                        k = e.className,
                        v = e.a11yLanguageAndCountryTitle,
                        E = e.a11yWebsiteLinksTitle,
                        L = e.a11yCurrentCountriesLabel,
                        b = e.countriesPageLink,
                        h = e.baseStaticImageUrl;
                    return n.default.createElement("div", {
                        className: (0, r.default)("Footer ResponsiveContainer", k)
                    }, n.default.createElement("div", {
                        className: "Footer__bar"
                    }, n.default.createElement("div", {
                        className: "Footer__intl"
                    }, n.default.createElement(m.default, {
                        value: v,
                        tagName: "h3"
                    }), n.default.createElement(y, b, n.default.createElement(m.default, {
                        value: L
                    }), t.map((function(e) {
                        return n.default.createElement(f.default, {
                            key: e,
                            className: "Footer__country-flag",
                            isoCode: e,
                            baseUrl: h
                        })
                    }))), n.default.createElement(i.default, {
                        className: "Footer__language-switcher",
                        dropdownClassName: "Footer__language-switcher-dropdown"
                    })), n.default.createElement("div", {
                        className: "Footer__links"
                    }, n.default.createElement(m.default, {
                        value: E,
                        tagName: "h3"
                    }), n.default.createElement(s.default, {
                        links: a,
                        primary: !0
                    }), n.default.createElement(s.default, {
                        links: l
                    }))), n.default.createElement("div", {
                        className: "Footer__bottom"
                    }, n.default.createElement(c.default, {
                        label: u,
                        links: o
                    }), n.default.createElement("a", {
                        className: "Footer__top-page-link",
                        href: "#top"
                    }, _, n.default.createElement("span", {
                        className: "Footer__top-page-link-icon",
                        "aria-hidden": !0
                    }, "^")), n.default.createElement(d.default, {
                        logoLink: p,
                        copyrightLabel: g
                    })))
                };
            g.defaultProps = {
                storeCountryCodes: [],
                countriesPageLink: {}
            };
            var k = (0, u.default)({
                a11yCountrySelectionLabel: "companyfooterrespblock.a11y.countryselection",
                a11yLanguageAndCountryTitle: "companyfooterrespblock.a11y.languageandcountry.title",
                a11yWebsiteLinksTitle: "companyfooterrespblock.a11y.websitelinks.title",
                a11yCurrentCountriesLabel: "companyfooterrespblock.a11y.currentcountries.label"
            })(g);
            t.default = (0, o.default)(k)
        },
        1359: function(e, t, a) {
            "use strict";
            Object.defineProperty(t, "__esModule", {
                value: !0
            }), a(815);
            var l = u(a(0)),
                r = u(a(8)),
                n = (u(a(1)), u(a(83)));

            function u(e) {
                return e && e.__esModule ? e : {
                    default: e
                }
            }
            var o = function(e) {
                var t = e.links,
                    a = e.primary;
                if (!t.length) return null;
                var u = (0, r.default)("FooterLine", {
                        "FooterLine--primary": a
                    }),
                    o = t.map((function(e) {
                        var t = e.url,
                            a = e.target,
                            r = e.name;
                        return l.default.createElement("li", {
                            className: "FooterLine__item",
                            key: r
                        }, l.default.createElement(n.default, {
                            className: "FooterLine__item-link",
                            href: t,
                            target: a
                        }, r))
                    }));
                return l.default.createElement("ul", {
                    className: u
                }, o)
            };
            o.defaultProps = {
                links: []
            }, t.default = o
        },
        1360: function(e, t, a) {
            "use strict";
            Object.defineProperty(t, "__esModule", {
                value: !0
            });
            var l = i(a(0)),
                r = (i(a(1)), i(a(83))),
                n = i(a(41)),
                u = i(a(67)),
                o = i(a(185));

            function i(e) {
                return e && e.__esModule ? e : {
                    default: e
                }
            }
            a(816);
            var s = function(e) {
                var t = e.label,
                    a = e.links,
                    u = e.a11yTitle;
                if (!a.length) return null;
                var i = a.map((function(e) {
                    var t = e.link,
                        a = e.media;
                    return l.default.createElement("li", {
                        className: "SocialLink__item",
                        key: t.name
                    }, l.default.createElement(r.default, {
                        className: "SocialLink__item-link",
                        href: t.url,
                        target: t.target
                    }, l.default.createElement(o.default, {
                        className: "SocialLink__item-img",
                        src: a.url,
                        alt: t.name,
                        width: "30",
                        height: "30",
                        lazyLoaded: !0
                    })))
                }));
                return l.default.createElement("div", {
                    className: "SocialLink"
                }, l.default.createElement(n.default, {
                    value: u,
                    tagName: "h3"
                }), l.default.createElement("span", {
                    className: "SocialLink__label",
                    dangerouslySetInnerHTML: {
                        __html: t
                    }
                }), l.default.createElement("ul", {
                    className: "SocialLink__list"
                }, i))
            };
            s.defaultProps = {
                links: []
            }, t.default = (0, u.default)({
                a11yTitle: "companyfooterrespblock.a11y.sociallinks.title"
            })(s)
        },
        1361: function(e, t, a) {
            "use strict";
            Object.defineProperty(t, "__esModule", {
                value: !0
            });
            var l = u(a(0)),
                r = (u(a(1)), u(a(1362))),
                n = u(a(185));

            function u(e) {
                return e && e.__esModule ? e : {
                    default: e
                }
            }
            a(818);
            var o = function(e) {
                var t = e.logoLink,
                    a = e.copyrightLabel,
                    u = t.link,
                    o = (t.media || {}).url,
                    i = (u || {}).name;
                return l.default.createElement("div", {
                    className: "FooterCopyright"
                }, l.default.createElement(r.default, u, l.default.createElement(n.default, {
                    className: "FooterCopyright__picture",
                    src: o,
                    alt: i,
                    width: "55",
                    lazyLoaded: !0
                })), l.default.createElement("span", {
                    dangerouslySetInnerHTML: {
                        __html: a
                    }
                }))
            };
            o.defaultProps = {
                logoLink: {
                    link: {},
                    media: {}
                }
            }, t.default = o
        },
        1362: function(e, t, a) {
            "use strict";
            Object.defineProperty(t, "__esModule", {
                value: !0
            });
            var l = n(a(0)),
                r = (n(a(1)), n(a(83)));

            function n(e) {
                return e && e.__esModule ? e : {
                    default: e
                }
            }
            a(817), t.default = function(e) {
                var t = e.target,
                    a = e.url,
                    n = e.children;
                return l.default.createElement(r.default, {
                    className: "FooterLink",
                    href: a,
                    target: t
                }, n)
            }
        },
        1363: function(e, t, a) {
            "use strict";
            Object.defineProperty(t, "__esModule", {
                value: !0
            }), a(819);
            var l = u(a(0)),
                r = u(a(8)),
                n = (u(a(1)), u(a(185)));

            function u(e) {
                return e && e.__esModule ? e : {
                    default: e
                }
            }
            var o = function(e) {
                var t = e.isoCode,
                    a = e.className,
                    u = e.baseUrl;
                if (!t) return null;
                var o = u + "/_ui/img/flags/" + t + ".png";
                return l.default.createElement("span", {
                    className: (0, r.default)("CountryFlag", a)
                }, l.default.createElement(n.default, {
                    className: "CountryFlag__image",
                    src: o,
                    alt: "",
                    width: "24",
                    height: "25",
                    lazyLoaded: !0
                }))
            };
            o.defaultProps = {
                baseUrl: ""
            }, t.default = o
        },
        814: function(e, t, a) {
            "use strict";
            Object.defineProperty(t, "__esModule", {
                value: !0
            });
            var l, r = a(0),
                n = a(15),
                u = (l = a(1358)) && l.__esModule ? l : {
                    default: l
                },
                o = a(188);
            t.default = (0, r.memo)((0, n.connect)((function(e) {
                return {
                    storeCountryCodes: e.config.storeCountryCodes
                }
            }))(u.default), o.isElementEqual)
        }
    }
]);