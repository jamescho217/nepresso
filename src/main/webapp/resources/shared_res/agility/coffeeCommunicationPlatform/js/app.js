/*! coffee-communication-platform - 1.0.0 | Thu May 06 2021 11:38:50 GMT+0200 (Central European Summer Time) */
agilityJsonp([5], [, , , , , , , , , , , , , function(t, e, n) {
    "use strict";
    var i = n(20),
        a = n.n(i),
        s = n(26),
        r = n.n(s),
        o = n(21),
        c = n.n(o),
        l = n(115),
        u = n.n(l),
        d = n(6),
        v = n.n(d),
        p = n(5),
        f = n.n(p),
        _ = function Article(t, e, n) {
            f()(this, Article), this.category = t, this.tags = e, this.data = n
        },
        h = function() {
            function Store() {
                f()(this, Store), this.categories = new u.a, this.tags = new u.a, this.channel = "B2C"
            }
            return v()(Store, [{
                key: "isCorrectChannel",
                value: function(t) {
                    return null === t || void 0 === t || "" === t || t === this.channel
                }
            }, {
                key: "setChannel",
                value: function(t) {
                    this.channel = t
                }
            }, {
                key: "setData",
                value: function(t) {
                    var e = this,
                        n = new Date,
                        i = this.categories,
                        s = [].concat(c()(t.articles)),
                        o = {},
                        l = !0,
                        d = !1,
                        v = void 0;
                    try {
                        for (var p, f = r()(t.tags); !(l = (p = f.next()).done); l = !0) {
                            var h = p.value;
                            o[h.id] = []
                        }
                    } catch (t) {
                        d = !0, v = t
                    } finally {
                        try {
                            !l && f.return && f.return()
                        } finally {
                            if (d) throw v
                        }
                    }
                    var m = !0,
                        g = !1,
                        y = void 0;
                    try {
                        for (var b, C = r()(t.categories); !(m = (b = C.next()).done); m = !0) {
                            var w = b.value;
                            ! function(a) {
                                i.set(a.localRoute, a), a.articles = new u.a, s.filter(function(t) {
                                    return t.category === a.id && n > new Date(t.pubDateStart) && n < new Date(t.pubDateEnd) && e.isCorrectChannel(t.channel)
                                }).forEach(function(e) {
                                    var n = new _(a, t.tags.filter(function(t) {
                                        return ~e.tags.indexOf(t.id)
                                    }), e);
                                    e.tags.forEach(function(t) {
                                        return o[t].push(n)
                                    }), a.articles.set(e.localRoute, n), s.splice(s.indexOf(e), 1)
                                }), 0 === a.articles.size && i.delete(a.localRoute)
                            }(w)
                        }
                    } catch (t) {
                        g = !0, y = t
                    } finally {
                        try {
                            !m && C.return && C.return()
                        } finally {
                            if (g) throw y
                        }
                    }
                    var T = !0,
                        k = !1,
                        P = void 0;
                    try {
                        for (var L, x = r()(t.tags); !(T = (L = x.next()).done); T = !0) {
                            var M = L.value;
                            this.tags.set(M.localRoute, a()({}, M, {
                                articles: o[M.id]
                            }))
                        }
                    } catch (t) {
                        k = !0, P = t
                    } finally {
                        try {
                            !T && x.return && x.return()
                        } finally {
                            if (k) throw P
                        }
                    }
                }
            }]), Store
        }();
    e.a = new h
}, , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , function(t, e, n) {
    "use strict";
    var i = n(83),
        a = n(290),
        s = n(0),
        r = s(i.a, a.a, !1, null, null, null);
    e.a = r.exports
}, , , , , , , , , , , , , , , , , , , , , , , , , function(t, e, n) {
    "use strict";
    var i = n(84),
        a = n(310),
        s = n(0),
        r = s(i.a, a.a, !1, null, null, null);
    e.a = r.exports
}, , , , , , , , , function(t, e, n) {
    "use strict";
    var i = n(11),
        a = n.n(i),
        s = n(26),
        r = n.n(s),
        o = n(21),
        c = n.n(o),
        l = n(47),
        u = n(38),
        d = n(77),
        v = n(18),
        p = n(27),
        f = n(48),
        _ = n(46),
        h = n(50),
        m = n(156),
        g = n.n(m),
        y = new f.a,
        b = new l.a;
    e.a = {
        props: {
            tracking: {
                type: Object,
                validator: function(t) {
                    return "string" == typeof t.list && "number" == typeof t.position
                }
            },
            translations: {
                type: Object,
                required: !0
            },
            product: {
                type: Object,
                required: !0
            },
            type: {
                type: String,
                required: !0,
                validator: function(t) {
                    return "quantitySelector" === t || "addOneToCart" === t
                }
            },
            quantity: {
                type: Number,
                default: 0
            },
            step: Number,
            customThirdLine: String,
            hasPhantom: Boolean,
            showPrice: {
                type: Boolean,
                default: !0
            },
            showPriceInQS: {
                type: Boolean,
                default: !1
            },
            modifier: {
                type: [Boolean, String],
                default: !1
            },
            amount: {
                type: Number,
                default: null
            }
        },
        data: function() {
            return {
                constants: g.a,
                isDesktop: v.a.isMosaic || v.a.isResponsive,
                isMobile: v.a.isMobile,
                isClassic: v.a.isClassic,
                quantitySelectorOpened: !1,
                activeQuantity: null,
                quantities: [],
                btnLabelAdd: null,
                btnLabelUpdate: null,
                btnLabelPhantom: null,
                voiceAddToCart: null,
                materialPlay: !1,
                quantityStep: null,
                useCustomThirdLine: !!this.customThirdLine
            }
        },
        created: function() {
            var t = this;
            if (this.getProduct(), this._cartEvent = ["cart.update", function() {
                    return t.setActiveQuantity(!0)
                }], this.isDesktop) try {
                var e;
                (e = window.napi.data()).on.apply(e, c()(this._cartEvent))
            } catch (t) {} else b.$on.apply(b, c()(this._cartEvent));
            this.translations.useMosaicOne && l.a.component("MosaicATC", function() {
                return n.e(2).then(n.bind(null, 316)).then(function(t) {
                    return t.default
                })
            }), this.hasPhantom && l.a.component("Phantom", function() {
                return n.e(1).then(n.bind(null, 317)).then(function(t) {
                    return t.default
                })
            })
        },
        watch: {
            product: function(t, e) {
                t.sku !== e.sku && this.getProduct()
            },
            type: {
                immediate: !0,
                handler: function(t) {
                    "quantitySelector" === t && l.a.component("QuantitySelector", function() {
                        return n.e(0).then(n.bind(null, 318)).then(function(t) {
                            return t.default
                        })
                    })
                }
            }
        },
        methods: {
            buildQuantities: function() {
                var t = void 0;
                if ("quantitySelector" === this.type) {
                    t = [];
                    var e = "capsule" === this.product.data.type,
                        i = this.step;
                    i || (i = e ? 10 : 1), this.quantityStep = i;
                    var a = void 0;
                    if (this.customThirdLine && (a = this.customThirdLine.split(",").map(function(t) {
                            return Number(t.trim())
                        })), e && a && (5 !== a.length || a.some(function(t) {
                            return isNaN(t)
                        }))) {
                        var s = n.i(h.a)("config.capsulesThirdLineQuantities", window);
                        a = s ? s.split(",").map(function(t) {
                            return Number(t)
                        }) : [100, 150, 200, 250, 300]
                    }
                    for (var r = 0, o = 0; o < 15; o++) o % 5 == 0 && (r = 0), o > 9 && a ? t.push(Number(a[r])) : o < 15 && t.push(o * i), r++
                }
                return t
            },
            init: function() {
                var t = this;
                _.a.scrollImpression({
                    product: this.product
                }).then(function() {
                    return t.$nextTick(function() {
                        t.$emit("data-loaded", t.product), _.a.itemDisplay({
                            action: "Product View",
                            element: t.$el
                        })
                    })
                }), this.quantities = this.buildQuantities(), this.setActiveQuantity()
            },
            getProduct: function() {
                var t = this;
                this.product.data ? this.init() : y.getProduct(this.product.sku).then(function(e) {
                    t.$set(t.product, "data", e), t.init()
                })
            },
            addToCart: function(t) {
                var e = this;
                this.$emit("click", this.product);
                var n = t.currentTarget.getBoundingClientRect();
                document.documentElement.style.setProperty("--mouseX", Math.round(t.clientX / window.innerWidth * 100) + "%"), document.documentElement.style.setProperty("--mouseY", Math.round(t.clientY / window.innerHeight * 100) + "%"), document.documentElement.style.setProperty("--relativeMouseX", Math.round((t.clientX - n.left) / n.width * 100) + "%"), document.documentElement.style.setProperty("--relativeMouseY", Math.round((t.clientY - n.top) / n.height * 100) + "%"), this.materialPlay = !0, setTimeout(function() {
                    return e.materialPlay = !1
                }, 300), this.quantity ? this.setQuantity(this.quantity) : this.quantitySelectorOpened = !this.quantitySelectorOpened
            },
            dispatchAddedToCart: function(t) {
                this.$emit("addedToCart", this.product, this.activeQuantity, t)
            },
            setQuantity: function(t, e) {
                var i = this;
                this.$refs.focusForAddOneToCart.focus(), window.setTimeout(function() {
                    return i.$refs.button.focus()
                }, 100);
                var s = this.activeQuantity;
                if (this.quantitySelectorOpened = !1, 0 !== s || 0 !== t) {
                    if (e || t !== s) {
                        var o = Number(t),
                            c = this.product.data.quantities;
                        if (o > 0 && !~c.indexOf(o)) {
                            var l = c[c.length - 1];
                            if (o > l) o = l;
                            else {
                                var f = !0,
                                    _ = !1,
                                    h = void 0;
                                try {
                                    for (var m, g = r()(c); !(f = (m = g.next()).done); f = !0) {
                                        var C = m.value;
                                        if (C > o) {
                                            o = C;
                                            break
                                        }
                                    }
                                } catch (t) {
                                    _ = !0, h = t
                                } finally {
                                    try {
                                        !f && g.return && g.return()
                                    } finally {
                                        if (_) throw h
                                    }
                                }
                            }
                        }
                        this.activeQuantity = o
                    } else this.activeQuantity = 0;
                    this.setText();
                    var w = this.activeQuantity,
                        T = this.product.sku;
                    if (this.amount > 0) window.CartManager.updateGiftCard(this.product.data.id, t, this.amount).then(function() {
                        i.activeQuantity = Number(t), i.setText()
                    });
                    else if (this.isDesktop)
                        if (this.amount > 0 && Number(t) > 1) {
                            var k = [];
                            Array(Number(t)).fill().map(function() {
                                k.push(window.CartManager.updateItem(T, 1, null, i.amount))
                            }), a.a.all(k).then(function() {
                                i.activeQuantity = Number(t), i.setText()
                            })
                        } else window.CartManager.updateItem(T, w, null, this.amount).then(function() {
                            return i.dispatchAddedToCart(s)
                        }).catch(function() {
                            i.activeQuantity = s, i.setText()
                        });
                    else y.addToCart(T, w).then(function() {
                        i.isMobile && !p.a && n.i(d.a)({
                            url: "/mobile/" + v.a.country.toLowerCase() + "/" + v.a.language + "/cart/addMultiple/ajaxEvent",
                            method: "POST",
                            body: {
                                additionalProducts: w + ":" + T
                            }
                        }).then(function(t) {
                            "string" == typeof t.formattedProductsCount && n.i(u.d)(n.i(u.a)("#cartProductsCount"), t.formattedProductsCount)
                        }), i.isClassic && (window[window.config.padl.namespace].dataLayer.user.isLoggedIn ? window.angular.element("#shopping-bag-controller-summary").scope().readCart() : window.location.reload(!0)), b.$emit("cart.update"), i.dispatchAddedToCart(s)
                    }).catch(function(t) {
                        i.activeQuantity = s, i.setText()
                    })
                }
            },
            setActiveQuantity: function(t) {
                var e = this,
                    i = this.product.data;
                if (i) return p.a ? (this.activeQuantity = this.activeQuantity || 0, void this.setText()) : void y.readCart().then(function(a) {
                    var s = void 0,
                        o = !0,
                        c = !1,
                        l = void 0;
                    try {
                        for (var u, d = r()(a); !(o = (u = d.next()).done); o = !0) {
                            var v = u.value;
                            if (v.productId === i.id) {
                                var p = e.amount === v.unitPrice;
                                if (!e.amount || p) {
                                    s = v;
                                    break
                                }
                            }
                        }
                    } catch (t) {
                        c = !0, l = t
                    } finally {
                        try {
                            !o && d.return && d.return()
                        } finally {
                            if (c) throw l
                        }
                    }
                    var f = n.i(h.a)("quantity", s) || 0;
                    if (e.amount) {
                        var _ = 0,
                            m = !0,
                            g = !1,
                            y = void 0;
                        try {
                            for (var b, C = r()(a); !(m = (b = C.next()).done); m = !0) {
                                var w = b.value;
                                if (w.productId === i.id) {
                                    e.amount === w.unitPrice && _++
                                }
                            }
                        } catch (t) {
                            g = !0, y = t
                        } finally {
                            try {
                                !m && C.return && C.return()
                            } finally {
                                if (g) throw y
                            }
                        }
                        e.activeQuantity = _, e.setText()
                    } else f !== e.activeQuantity ? (e.activeQuantity = f, e.setText()) : t || e.setText()
                })
            },
            setText: function() {
                this.product.data && (this.product.data.inStock ? (this.btnLabelAdd = this.translations.addToCart, this.btnLabelUpdate = this.translations.updateCart, this.btnLabelPhantom = this.translations.updateCart.length > this.translations.addToCart.length ? this.translations.updateCart : this.translations.addToCart, this.voiceAddToCart = this.translations.voices.addToCart.replace("{QUANTITY}", this.activeQuantity || 0).replace("{PRODUCT}", this.product.data.name).replace("{CART_STATE}", this.activeQuantity ? this.translations.updateCart : this.translations.addToCart)) : (this.btnLabelAdd = this.translations.outOfStock, this.btnLabelPhantom = this.translations.outOfStock, this.btnLabelUpdate = null, this.voiceAddToCart = this.translations.voices.outOfStock.replace("{PRODUCT}", this.product.data.name)))
            },
            checkProductPriceExist: function(t) {
                return "giftcard" === t.type || ("B2C" === v.a.channel.toUpperCase() || t.price && !isNaN(t.price))
            },
            checkHideForButton: function() {
                return this.translations.hideButtonForAll || this.translations.hideButtonForAnonymous && !window[window.config.padl.namespace].dataLayer.user.isLoggedIn
            },
            checkHidePrice: function() {
                return this.translations.hidePriceForAll || this.translations.hidePriceForAnonymous && !window[window.config.padl.namespace].dataLayer.user.isLoggedIn
            }
        },
        beforeDestroy: function() {
            var t = void 0;
            t = this.isDesktop || this.isClassic ? window.napi.data().off : b.$off, t.apply(void 0, c()(this._cartEvent))
        }
    }
}, function(t, e, n) {
    "use strict";
    e.a = {
        name: "swiper-slide",
        mounted: function() {
            this.update()
        },
        updated: function() {
            this.update()
        },
        attached: function() {
            this.update()
        },
        methods: {
            update: function() {
                this.$parent && this.$parent.swiper && (this.$parent.swiper.update(!0), this.$parent.options.loop && (this.$parent.swiper.destroyLoop(), this.$parent.swiper.createLoop()))
            }
        }
    }
}, function(t, e, n) {
    "use strict";
    var i = n(19),
        a = n.n(i),
        s = n(38),
        r = n(158),
        o = n(51);
    e.a = {
        name: "swiper",
        props: {
            options: {
                type: Object
            },
            isDiv: {
                type: Boolean,
                default: !1
            }
        },
        mounted: function() {
            var t = this,
                e = function() {
                    if (!t.swiper) {
                        delete t.options.nextTick;
                        var e = a()({}, t.options, t.refineClasses());
                        e.virtualTranslate = o.a, t.swiper = new r.a(t.$refs.container, e)
                    }
                };
            this.options.nextTick ? this.$nextTick(e) : e()
        },
        methods: {
            refineClasses: function() {
                var t = this,
                    e = {};
                return this.options && (this.options.pagination && (e.pagination = "#v_swiper_id_" + this._uid + " " + this.options.pagination, this.options.paginationBulletRender || (this.options.paginationBulletRender = function(t, e, n) {
                    return '<div><span class="' + n + '">' + (e + 1) + "</span></div>"
                })), this.options.nextButton && (e.nextButton = "#v_swiper_id_" + this._uid + " " + this.options.nextButton), this.options.prevButton && (e.prevButton = "#v_swiper_id_" + this._uid + " " + this.options.prevButton), this.options.scrollbar && (e.scrollbar = "#v_swiper_id_" + this._uid + " " + this.options.scrollbar), this.options.virtualTranslate && (this.options.onSetTranslate = function(e) {
                    n.i(s.c)(t.$refs.wrapper, "left", e.translate + "px")
                })), e
            }
        },
        updated: function() {
            this.swiper && this.swiper.update()
        },
        beforeDestroy: function() {
            this.swiper && (this.swiper.destroy(), delete this.swiper)
        }
    }
}, function(t, e, n) {
    "use strict";
    var i = n(13),
        a = n(251);
    e.a = {
        components: {
            Navigation: a.a
        },
        watch: {
            $json: function(t) {
                i.a.setChannel(this.$landing.channel), i.a.setData(t), this.track(this.$route)
            },
            $route: function(t, e) {
                this.$refs.main && this.$refs.main.$refs.hero && this.$refs.main.$refs.hero.stop(), this.track(t)
            }
        },
        mounted: function() {
            var t = this;
            window.addEventListener("click", function(e) {
                for (var n = e.target; null != n && "A" !== n.tagName;) n = n.parentNode;
                if (n && n.href && "innerLink" === n.className) {
                    e.preventDefault();
                    var i = !!~window.location.pathname.indexOf("/mobile/"),
                        a = n.href.replace(/^(?:\/\/|[^\\/]+)*/, "");
                    a = "/" + a.split("/").slice(i ? 5 : 4, i ? 7 : 6).join("/"), t.$router.push(a)
                }
            })
        },
        methods: {
            stripTags: function(t) {
                return t.replace(/<\/?[^>]+(>|$)/g, "")
            },
            parsedContent: function(t) {
                for (var e = this, n = /<a href="{ARTICLE_ID\u003D(\d+)}">(.*)<\/a>/, i = void 0; null !== (i = n.exec(t));) ! function() {
                    var a = e.$json.articles.filter(function(t) {
                            return t.id === i[1]
                        }),
                        s = e.$json.categories.filter(function(t) {
                            return t.id === a[0].category
                        });
                    t = t.replace(n, '<a class="innerLink" href="../' + s[0].localRoute + "/" + a[0].localRoute + '">' + i[2] + "</a>")
                }();
                return t
            },
            getRandom: function(t, e) {
                for (var n = t.slice(t), i = [], a = 0; a < e; a++) {
                    var s = Math.floor(Math.random() * n.length),
                        r = n.splice(s, 1);
                    i.push(r[0])
                }
                return i
            },
            sortByDate: function(t, e) {
                return new Date(e.data.editorialDate).getTime() - new Date(t.data.editorialDate).getTime()
            },
            track: function(t) {
                var e = t.params,
                    n = void 0,
                    a = void 0,
                    s = void 0,
                    r = window.landing,
                    o = "ccp-";
                e && e.category && (n = e.category, i.a.categories.size && (n = i.a.categories.get(e.category).id), o += this.toCamelCase(n)), e && e.article && (a = e.article, i.a.categories.size && (a = i.a.categories.get(e.category).articles.get(e.article).data.intRoute), o += "-" + this.toCamelCase(a)), e && e.tag && (s = e.tag, i.a.tags.size && (s = i.a.tags.get(e.tag).id), o += "tag-" + this.toCamelCase(s)), e && (e.category || e.article || e.tag) || (o += "home"), setTimeout(function() {
                    r.tracking.virtualPageView({
                        name: o,
                        type: "landing-page",
                        category: "ccp",
                        breadcrumbUID: "landing-page:ccp::" + o
                    })
                }, 1200)
            },
            toCamelCase: function(t) {
                return t.replace(/(-)/g, " ").replace(/(\s+.)/g, function(t) {
                    return t.charAt(t.length - 1).toUpperCase()
                })
            }
        }
    }
}, function(t, e, n) {
    "use strict";
    e.a = {
        props: ["article", "isTile"]
    }
}, function(t, e, n) {
    "use strict";
    (function(t) {
        var i = n(78),
            a = n(76);
        e.a = {
            props: ["content"],
            watch: {
                $route: function(t, e) {
                    this.removeBackgroundVideo(), this.setBackgroundVideo(), this.stop()
                }
            },
            methods: {
                play: function() {
                    var e = this,
                        s = this.content.video;
                    t("html").addClass("v_isPlaying"), n.i(a.a)(".v_home"), this.playerBackground && this.playerBackground.pauseVideo(), this.player && setTimeout(function() {
                        "youtube" === s.type && e.player.playVideo()
                    }, 1200), "youtube" !== s.type || this.player ? "youku" === s.type && n.e(3).then(n.bind(null, 315)).then(function(t) {
                        t = t.default, e._played = !1, t.attach("g_youkuContainerId", s.videoId, !1, !1).then(function(t) {
                            window.landing.tracking.customEvent({
                                category: "User Engagement",
                                action: "Youku Video - Play",
                                label: "CCP - Video : " + s.videoId,
                                interaction: 0
                            }), e.player = t
                        })
                    }) : (this._played = !1, i.a.attach(t(this.$el).find(".v_hero > .v_video > div")[0], s.videoId).then(function(t) {
                        e.player = t, t.addEventListener("onStateChange", function(n) {
                            e._played || 1 !== n.data || (e._played = !0, window.landing.tracking.customEvent({
                                category: "User Engagement",
                                action: "YouTube Video - Play",
                                label: "CCP - Video : " + t.getVideoData().title,
                                interaction: 0
                            }))
                        })
                    }))
                },
                stop: function() {
                    t("html").removeClass("v_isPlaying"), this.player && "youtube" === this.content.video.type && this.player.pauseVideo(), this.player && "youku" === this.content.video.type && t(this.$el).find("#g_youkuContainerId").html("").removeClass("play"), this.playerBackground && this.playerBackground.playVideo()
                },
                goContent: function() {
                    n.i(a.a)(".v_articlesAnchor")
                },
                removeBackgroundVideo: function() {
                    this.playerBackground = null, this.player = null, t(this.$el).find(".v_bg > .v_backgroundVideo").html("<div></div>").removeClass("play"), t(this.$el).find(".v_hero > .v_video").html('<div id="' + ("youku" === this.content.video.type ? "g_youkuContainerId" : "") + '"></div>').removeClass("play")
                },
                setBackgroundVideo: function() {
                    var e = this;
                    this.content.backgroundVideoId && "CN" !== this.$landing.country && this.$landing.breakpoints.viewport.width > 767 && i.a.attach(t(this.$el).find(".v_bg > div > div")[0], this.content.backgroundVideoId, !0).then(function(n) {
                        n.setVolume(0), e.playerBackground = n, n.addEventListener("onStateChange", function(n) {
                            n.data === window.YT.PlayerState.PLAYING ? t(e.$el).find(".v_bg > div").addClass("play") : 0 === n.data && e.playerBackground.seekTo(0)
                        }), n.addEventListener("onError", function(t) {})
                    })
                }
            },
            mounted: function() {
                this.setBackgroundVideo()
            }
        }
    }).call(e, n(22))
}, function(t, e, n) {
    "use strict";
    var i = n(28),
        a = n.n(i),
        s = n(13);
    e.a = {
        data: function() {
            return {
                store: s.a,
                mobileMenuOpened: !1
            }
        },
        computed: {
            categoryArray: function() {
                return a()(this.store.categories.values())
            }
        }
    }
}, function(t, e, n) {
    "use strict";
    var i = n(76),
        a = n(13),
        s = n(70),
        r = n(138),
        o = n(258),
        c = n(259),
        l = n(268),
        u = n(267),
        d = n(140),
        v = n(263),
        p = n(255),
        f = n(269),
        _ = n(137),
        h = n(136),
        m = n(253),
        g = n(254),
        y = n(262),
        b = n(265),
        C = n(271),
        w = n(256),
        T = n(257),
        k = n(139),
        P = n(264),
        L = n(270),
        x = n(260),
        M = n(261);
    e.a = {
        components: {
            Hero: s.a,
            Paragraph: r.a,
            ListicleItem: c.a,
            Shares: l.a,
            RelatedArticles: u.a,
            Tags: C.a,
            WideImage: d.a,
            LogoImage: x.a,
            LogoList: M.a,
            EmbedVideo: p.a,
            MediaText: v.a,
            SimilarArticles: f.a,
            LinkArticle: _.a,
            Emphasis: h.a,
            Farmer: w.a,
            IframeContent: o.a,
            Aluminium: m.a,
            PowerOfTrees: b.a,
            MapAaaSustainable: y.a,
            CarbonFootprint: g.a,
            Gif: T.a,
            SideBlock: k.a,
            Partners: P.a,
            Slider: L.a
        },
        data: function() {
            var t = this.$route.params,
                e = t.category,
                n = t.article,
                i = a.a.categories.get(e);
            return {
                category: i,
                article: i.articles.get(n)
            }
        },
        methods: {
            getBG: function(t) {
                return {
                    backgroundImage: "url()"
                }
            },
            goTop: function() {
                n.i(i.a)("article")
            }
        },
        watch: {
            $route: function(t, e) {
                this.category = a.a.categories.get(t.params.category), this.article = this.category.articles.get(t.params.article)
            }
        }
    }
}, function(t, e, n) {
    "use strict";
    e.a = {
        props: ["content", "article"]
    }
}, function(t, e, n) {
    "use strict";
    e.a = {
        props: ["content", "article"]
    }
}, function(t, e, n) {
    "use strict";
    var i = n(11),
        a = n.n(i),
        s = n(78);
    e.a = {
        props: ["content", "article"],
        data: function() {
            return {
                isPlaying: !1
            }
        },
        methods: {
            loadScript: function(t) {
                return new a.a(function(e, n) {
                    var i;
                    i = document.createElement("script"), i.src = t, i.onload = e, i.onerror = n, document.head.appendChild(i)
                })
            }
        },
        mounted: function() {
            var t = this,
                e = this.content;
            "youtube" === e.type && s.a.attach(this.$refs.video, e.videoId, !1, !1).then(function(e) {
                t.player = e, e.addEventListener("onStateChange", function(n) {
                    t.isPlaying || 1 !== n.data || (t.isPlaying = !0, window.landing.tracking.customEvent({
                        category: "User Engagement",
                        action: "YouTube Video - Play",
                        label: "CCP - Video : " + e.getVideoData().title,
                        interaction: 0
                    }))
                })
            })
        }
    }
}, function(t, e, n) {
    "use strict";
    e.a = {
        props: ["content", "article"]
    }
}, function(t, e, n) {
    "use strict";
    e.a = {
        props: ["content", "article"]
    }
}, function(t, e, n) {
    "use strict";
    e.a = {
        props: ["content", "article"]
    }
}, function(t, e, n) {
    "use strict";
    e.a = {
        props: ["content", "article"]
    }
}, function(t, e, n) {
    "use strict";
    var i = n(13),
        a = n(45);
    e.a = {
        props: ["content"],
        components: {
            ArticleCard: a.a
        },
        data: function() {
            var t = this,
                e = this.$json.articles.filter(function(e) {
                    return e.id === t.content.id
                })[0],
                n = void 0;
            return i.a.categories.forEach(function(t) {
                t.id === e.category && (n = t)
            }), {
                article: {
                    category: n,
                    data: e
                }
            }
        }
    }
}, function(t, e, n) {
    "use strict";
    e.a = {
        props: ["content", "article"]
    }
}, function(t, e, n) {
    "use strict";
    e.a = {
        name: "LogoImage",
        props: ["content", "article"]
    }
}, function(t, e, n) {
    "use strict";
    e.a = {
        name: "LogoList",
        props: ["content", "article"]
    }
}, function(t, e, n) {
    "use strict";
    (function(t) {
        e.a = {
            props: ["content", "article"],
            methods: {
                isMobile: function() {
                    return t("html").hasClass("mobile")
                }
            }
        }
    }).call(e, n(22))
}, function(t, e, n) {
    "use strict";
    var i = n(138),
        a = n(266),
        s = n(139),
        r = n(136),
        o = n(140),
        c = n(137);
    e.a = {
        props: ["content", "article"],
        components: {
            Paragraph: i.a,
            Product: a.a,
            SideBlock: s.a,
            WideImage: o.a,
            Emphasis: r.a,
            LinkArticle: c.a
        }
    }
}, function(t, e, n) {
    "use strict";
    e.a = {
        props: ["content", "article"],
        computed: {
            customClass: function() {
                var t = this.content.customClass;
                return t ? "v_" + t : ""
            }
        }
    }
}, function(t, e, n) {
    "use strict";
    e.a = {
        props: ["article", "content"]
    }
}, function(t, e, n) {
    "use strict";
    e.a = {
        props: ["content", "article"]
    }
}, function(t, e, n) {
    "use strict";
    (function(t) {
        var i = n(157);
        e.a = {
            props: ["content", "article"],
            components: {
                AddToCart: i.a
            },
            data: function() {
                var e = this.$landing;
                return this.content.atc.customThirdLine = this.content.atc.customThirdLine.quantities, this.content.addToCart = this.content.atc, delete this.content.atc, {
                    isFacebookAppInIos: e.isFacebookApp && t("html").hasClass("ios")
                }
            }
        }
    }).call(e, n(22))
}, function(t, e, n) {
    "use strict";
    var i = n(28),
        a = n.n(i);
    e.a = {
        props: ["article"],
        data: function() {
            var t = this.article,
                e = t.category,
                n = t.data;
            return {
                articles: this.$root.getRandom(a()(e.articles.values()).filter(function(t) {
                    return t.data.id !== n.id
                }), 3)
            }
        }
    }
}, function(t, e, n) {
    "use strict";
    (function(t) {
        var i = n(169);
        e.a = {
            props: ["article"],
            created: function() {
                this.url = window.location.href
            },
            computed: {
                pinterest: function() {
                    return i.a.url({
                        url: this.url,
                        description: this.$root.stripTags(this.article.data.description)
                    })
                },
                google: function() {
                    return i.b.url({
                        url: this.url
                    })
                },
                linkedin: function() {
                    return i.c.url({
                        url: this.url
                    })
                },
                twitter: function() {
                    return i.d.url({
                        url: this.url,
                        text: this.$root.stripTags(this.article.data.description)
                    })
                },
                email: function() {
                    return i.e.url({
                        url: this.url,
                        title: this.$root.stripTags(this.article.data.title)
                    })
                },
                weibo: function() {
                    return i.f.url({
                        url: this.url,
                        title: this.$root.stripTags(this.article.data.title)
                    })
                },
                whatsapp: function() {
                    return i.g.url({
                        text: this.url
                    })
                }
            },
            methods: {
                track: function(t) {
                    var e = this.article.data.category,
                        n = this.article.data.intRoute;
                    window.landing.tracking.customEvent({
                        category: "User Engagement",
                        action: "Email" === t ? "Sharing" : "Social Sharing",
                        label: "CCP - " + this.$root.toCamelCase(e) + " - " + this.$root.toCamelCase(n) + " - Shared on - " + t,
                        interaction: 0
                    })
                },
                facebook: function() {
                    var t = this;
                    i.h.init({
                        appId: "1727251284175615",
                        language: this.$landing.language,
                        country: this.$landing.country
                    }).then(function(e) {
                        e.ui({
                            method: "share",
                            href: t.url
                        }), t.track("Facebook")
                    })
                },
                isMobile: function() {
                    return t("html").hasClass("mobile")
                }
            }
        }
    }).call(e, n(22))
}, function(t, e, n) {
    "use strict";
    e.a = {
        props: ["content", "article"]
    }
}, function(t, e, n) {
    "use strict";
    var i = n(21),
        a = n.n(i),
        s = n(26),
        r = n.n(s),
        o = n(13),
        c = n(45);
    e.a = {
        props: ["article"],
        components: {
            ArticleCard: c.a
        },
        data: function() {
            var t = this.article,
                e = t.tags,
                n = t.data,
                i = {},
                s = [],
                c = !0,
                l = !1,
                u = void 0;
            try {
                for (var d, v = r()(e); !(c = (d = v.next()).done); c = !0)
                    for (var p = d.value, f = [].concat(a()(o.a.tags.get(p.localRoute).articles)), _ = 0; _ < f.length; _++) {
                        var h = f[_],
                            m = h.data.id;
                        n.id !== m && (i[m] ? i[m]++ : (s.push(h), i[m] = 1))
                    }
            } catch (t) {
                l = !0, u = t
            } finally {
                try {
                    !c && v.return && v.return()
                } finally {
                    if (l) throw u
                }
            }
            return s.sort(function(t, e) {
                return i[e.data.id] - i[t.data.id]
            }), {
                articles: this.$root.getRandom(s, 3)
            }
        }
    }
}, function(t, e, n) {
    "use strict";
    var i = n(142),
        a = n(141);
    e.a = {
        components: {
            Swiper: i.a,
            Slide: a.a
        },
        props: ["content", "article"],
        data: function() {
            return {
                swiperOption: {
                    nextTick: !0,
                    pagination: ".swiper-pagination",
                    paginationClickable: !0,
                    slidesPerView: 1,
                    prevButton: ".swiper-button-prev",
                    nextButton: ".swiper-button-next",
                    effect: "fade",
                    fade: {
                        crossFade: !0
                    },
                    breakpoints: {
                        767: {
                            effect: "slide"
                        }
                    },
                    a11y: !0
                }
            }
        }
    }
}, function(t, e, n) {
    "use strict";
    e.a = {
        props: ["tags"]
    }
}, function(t, e, n) {
    "use strict";
    e.a = {
        name: "WideImage",
        props: ["content", "article"]
    }
}, function(t, e, n) {
    "use strict";
    var i = n(28),
        a = n.n(i),
        s = n(19),
        r = n.n(s),
        o = n(13),
        c = n(70),
        l = n(45);
    e.a = {
        components: {
            ArticleCard: l.a,
            Hero: c.a
        },
        data: function() {
            return r()({}, this.initData())
        },
        watch: {
            $route: function(t, e) {
                r()(this, this.initData())
            }
        },
        methods: {
            initData: function() {
                var t = o.a.categories.get(this.$route.params.category);
                return {
                    category: t,
                    articles: a()(t.articles.values()).sort(this.$root.sortByDate)
                }
            }
        }
    }
}, function(t, e, n) {
    "use strict";
    var i = n(28),
        a = n.n(i),
        s = n(13),
        r = n(70),
        o = n(45),
        c = n(142),
        l = n(141);
    e.a = {
        components: {
            ArticleCard: o.a,
            Hero: r.a,
            Swiper: c.a,
            Slide: l.a
        },
        data: function() {
            var t = this;
            return {
                categories: a()(s.a.categories.values()).map(function(e) {
                    return {
                        id: e.id,
                        localRoute: e.localRoute,
                        title: e.title,
                        articles: a()(e.articles.values()).filter(function(t) {
                            return t.data.featured
                        }).sort(t.$root.sortByDate)
                    }
                }),
                swiperOption: {
                    nextTick: !0,
                    slidesPerView: 1,
                    centeredSlides: !0,
                    virtualTranslate: !0
                }
            }
        }
    }
}, function(t, e, n) {
    "use strict";
    var i = n(13);
    e.a = {
        data: function() {
            return {
                tags: i.a.tags.get(this.$route.params.tag)
            }
        }
    }
}, , , , , , , , , , , , , , , , , , , , , , , function(t, e, n) {
    "use strict";
    var i = n(90),
        a = n(289),
        s = n(0),
        r = s(i.a, a.a, !1, null, null, null);
    e.a = r.exports
}, function(t, e, n) {
    "use strict";
    var i = n(94),
        a = n(307),
        s = n(0),
        r = s(i.a, a.a, !1, null, null, null);
    e.a = r.exports
}, function(t, e, n) {
    "use strict";
    var i = n(100),
        a = n(284),
        s = n(0),
        r = s(i.a, a.a, !1, null, null, null);
    e.a = r.exports
}, function(t, e, n) {
    "use strict";
    var i = n(106),
        a = n(291),
        s = n(0),
        r = s(i.a, a.a, !1, null, null, null);
    e.a = r.exports
}, function(t, e, n) {
    "use strict";
    var i = n(110),
        a = n(303),
        s = n(0),
        r = s(i.a, a.a, !1, null, null, null);
    e.a = r.exports
}, function(t, e, n) {
    "use strict";
    var i = n(80),
        a = n(306),
        s = n(0),
        r = s(i.a, a.a, !1, null, null, null);
    e.a = r.exports
}, function(t, e, n) {
    "use strict";

    function injectStyle(t) {
        n(244)
    }
    var i = n(81),
        a = n(301),
        s = n(0),
        r = injectStyle,
        o = s(i.a, a.a, !1, r, null, null);
    e.a = o.exports
}, function(t, e, n) {
    "use strict";
    var i = n(247),
        a = (n.n(i), n(246));
    n.n(a).a.detect()
}, function(t, e, n) {
    "use strict";
    (function(t) {
        var i = n(175),
            a = n.n(i),
            s = n(5),
            r = n.n(s),
            o = n(181),
            c = n.n(o),
            l = n(6),
            u = n.n(l),
            d = n(180),
            v = n.n(d),
            p = n(162),
            f = n(147),
            _ = n(163),
            h = new _.a,
            m = function(e) {
                function VueLanding(t, e) {
                    var n = e.project,
                        i = e.breakpoints,
                        s = e.additionalBrands,
                        o = void 0 === s ? [] : s,
                        l = e.skipMutationKeys,
                        u = void 0 === l ? [] : l;
                    r()(this, VueLanding);
                    var d = c()(this, (VueLanding.__proto__ || a()(VueLanding)).call(this, {
                        project: n,
                        app: t,
                        additionalBrands: o
                    }));
                    d.app = t;
                    var v = "undefined" != typeof window && window.__AGILITY_DEVTOOLS_GLOBAL_HOOK__;
                    return v && v.emit("init", t), d.translations.setToSkip({
                        keys: u
                    }), d.breakpoints = new f.a(i), d.breakpoints.on("breakpointChange", function() {
                        t._media = d.getMedia()
                    }), d._media = d.getMedia(), d.getJSON().then(function(e) {
                        t._json = e
                    }), h.setOrientation(d.breakpoints.isLandscape), d.breakpoints.on("orientationChange", function(t, e) {
                        return h.setOrientation(e)
                    }), d
                }
                return v()(VueLanding, e), u()(VueLanding, null, [{
                    key: "install",
                    value: function(e, n) {
                        Object.defineProperty(e.prototype, "$landing", {
                            get: function() {
                                return this.$root._landing
                            }
                        }), Object.defineProperty(e.prototype, "$media", {
                            get: function() {
                                return this.$root._media
                            }
                        }), Object.defineProperty(e.prototype, "$json", {
                            get: function() {
                                return this.$root._json
                            }
                        }), e.prototype.$getAssetUrl = function(t) {
                            var e = t.folder,
                                n = t.name,
                                i = t.ext,
                                a = void 0 === i ? "jpg" : i,
                                s = t.hasSuffix,
                                r = void 0 === s || s,
                                o = this.$landing,
                                c = o.breakpoints,
                                l = "_",
                                u = c.viewport.width,
                                d = o.breakpoints.breakpoints,
                                v = d.list,
                                p = d.backgrounds;
                            for (var f in v)
                                if (u <= v[f]) {
                                    var _ = p[f];
                                    _ && (f = _), l += f.toUpperCase();
                                    break
                                }
                            return c.isRetina && (l += ""), r && "svg" !== a || (l = ""), o.landingPath + "img/" + e + "/" + n + l + "." + a
                        }, e.directive("bg", {
                            bind: function(e, n, i) {
                                t(e).addClass("v_bg v_bg_outOfScreen"), i.context.$watch("$media", function() {
                                    return n.def.update(e, n, i)
                                }), n.def.update(e, n, i)
                            },
                            update: function(e, n, i) {
                                var a = i.context.$getAssetUrl(n.value);
                                if (n.modifiers.sync) n.def.setBG(e, a);
                                else {
                                    var s = new window.Image;
                                    s.onload = function() {
                                        return n.def.setBG(e, a)
                                    }, s.onerror = function() {
                                        t(e).removeClass("v_bg_outOfScreen").addClass("v_bg_error")
                                    }, h.addItem({
                                        element: e,
                                        onViewportEnter: function() {
                                            s.src = a
                                        }
                                    })
                                }
                            },
                            setBG: function(e, n) {
                                window.requestAnimationFrame(function() {
                                    t(e).css("backgroundImage", "url(" + n + ")").addClass("v_bg_loaded").removeClass("v_bg_outOfScreen")
                                })
                            }
                        }), e.mixin({
                            beforeCreate: function() {
                                void 0 === this.$parent && (this._landing = new VueLanding(this, n), e.util.defineReactive(this, "_media", this._landing._media), e.util.defineReactive(this, "_json", null))
                            }
                        })
                    }
                }]), u()(VueLanding, [{
                    key: "getMedia",
                    value: function() {
                        var t = this.breakpoints;
                        return {
                            device: t.currentBreakpoint,
                            isRetina: t.isRetina,
                            isLandscape: t.isLandscape,
                            isPortrait: t.isPortrait
                        }
                    }
                }]), VueLanding
            }(p.a);
        e.a = m
    }).call(e, n(22))
}, function(t, e, n) {
    "use strict";

    function hasQueryParams(t) {
        return !!r()(t.query).length
    }
    var i = n(19),
        a = n.n(i),
        s = n(39),
        r = n.n(s),
        o = n(47),
        c = n(311),
        l = n(273),
        u = n(272),
        d = n(252),
        v = n(274);
    o.a.use(c.a);
    var p = window.Detectizr.browser,
        f = p.name,
        _ = p.major,
        h = window.location,
        m = h.hash,
        g = h.pathname;
    0 === g.indexOf("/mosaic") && (g = g.replace("/mosaic", ""));
    var y = "ie" === f && 9 === _,
        b = void 0,
        C = !!~g.indexOf("/mobile/"),
        w = 0 === g.indexOf("/pro");
    (y && !m && g.length > 1 || !y && m.length > 2) && (b = m.substr(2));
    var T = g.split("/");
    T = w ? T.slice(1, 6) : T.slice(1, C ? 6 : 4);
    var k = new c.a({
        base: "/" + T.join("/") + "/",
        mode: "history",
        routes: [{
            path: "/",
            name: "home",
            component: l.a
        }, {
            path: "/:category",
            name: "category",
            component: u.a
        }, {
            path: "/tag/:tag",
            name: "tag",
            component: v.a
        }, {
            path: "/:category/:article",
            name: "article",
            component: d.a
        }]
    });
    b && k.onReady(function() {
        return k.push(b)
    }), k.beforeEach(function(t, e, n) {
        if (!hasQueryParams(t) && hasQueryParams(e)) {
            n(a()({}, t, {
                query: e.query
            }))
        } else n()
    }), e.a = k
}, function(t, e, n) {
    "use strict";

    function injectStyle(t) {
        n(242)
    }
    var i = n(82),
        a = n(281),
        s = n(0),
        r = injectStyle,
        o = s(i.a, a.a, !1, r, null, null);
    e.a = o.exports
}, function(t, e, n) {
    "use strict";
    var i = n(5),
        a = n.n(i),
        s = n(6),
        r = n.n(s),
        o = n(74),
        c = n(170),
        l = function() {
            function _class() {
                var t = this,
                    e = arguments.length > 0 && void 0 !== arguments[0] ? arguments[0] : {
                        mobile: 750,
                        tablet: 996,
                        desktop: 996
                    };
                a()(this, _class), this.breakpoints = e, this.viewport = this.viewportSize, this.dispatcher = new o.a, this.lastBreakpoint = this.currentBreakpoint, window.addEventListener("resize", n.i(c.a)(function() {
                    var e = t.isLandscape;
                    t.viewport = t.viewportSize;
                    var n = t.currentBreakpoint,
                        i = void 0;
                    n !== t.lastBreakpoint && (t.dispatcher.fire("breakpointChange", t.lastBreakpoint, n), i = t.breakpoints[t.lastBreakpoint] > t.breakpoints[n] ? "Down" : "Up", t.dispatcher.fire("breakpointChange" + i, t.lastBreakpoint, n), t.lastBreakpoint = n), e !== t.isLandscape && t.dispatcher.fire("orientationChange", e, t.isLandscape)
                }, 200, {
                    trailing: !0
                }))
            }
            return r()(_class, [{
                key: "on",
                value: function(t, e) {
                    this.dispatcher.on(t, e)
                }
            }, {
                key: "off",
                value: function(t) {
                    this.dispatcher.off(t)
                }
            }, {
                key: "isBetween",
                value: function(t, e) {
                    return this.viewport.width >= this.breakpoints[t] && this.viewport.width <= this.breakpoints[e]
                }
            }, {
                key: "isLessThan",
                value: function(t) {
                    return this.viewport.width < this.breakpoints[t]
                }
            }, {
                key: "isGreaterThan",
                value: function(t) {
                    return this.viewport.width > this.breakpoints[t]
                }
            }, {
                key: "isLessThanEqualTo",
                value: function(t) {
                    return this.viewport.width <= this.breakpoints[t]
                }
            }, {
                key: "isGreaterThanEqualTo",
                value: function(t) {
                    return this.viewport.width >= this.breakpoints[t]
                }
            }, {
                key: "viewportSize",
                get: function() {
                    var t = window,
                        e = "inner";
                    return "innerWidth" in window || (e = "client", t = document.documentElement || document.body), {
                        width: t[e + "Width"],
                        height: t[e + "Height"]
                    }
                }
            }, {
                key: "currentBreakpoint",
                get: function() {
                    return this.isMobile ? "mobile" : this.isTablet ? "tablet" : this.isDesktop ? "desktop" : void 0
                }
            }, {
                key: "isMobile",
                get: function() {
                    return this.isLessThanEqualTo("mobile")
                }
            }, {
                key: "isTablet",
                get: function() {
                    return this.isBetween("mobile", "desktop")
                }
            }, {
                key: "isDesktop",
                get: function() {
                    return this.viewport.width >= this.breakpoints.desktop
                }
            }, {
                key: "isLandscape",
                get: function() {
                    return this.viewport.width > this.viewport.height
                }
            }, {
                key: "isPortrait",
                get: function() {
                    return !this.isLandscape
                }
            }, {
                key: "isRetina",
                get: function() {
                    return 2 === window.devicePixelRatio
                }
            }]), _class
        }();
    e.a = l
}, function(t, e, n) {
    "use strict";
    Object.defineProperty(e, "__esModule", {
        value: !0
    });
    var i = n(20),
        a = n.n(i),
        s = (n(143), n(47)),
        r = n(145),
        o = n(146),
        c = n(144),
        l = n(46),
        u = n(51),
        d = n(38);
    r.a.beforeEach(function(t, e, n) {
        window.scrollTo(0, 0), n()
    }), s.a.use(c.a, {
        project: "coffeeCommunicationPlatform",
        breakpoints: {
            list: {
                s: 414,
                m: 767,
                l: 1920,
                xl: 1 / 0
            },
            backgrounds: {
                s: "s",
                m: "m",
                l: "l",
                xl: "xl"
            }
        },
        skipMutationKeys: ["intRoute", "localRoute", "editorialDate", "pubDateStart", "pubDateEnd", "category", "featured", "type", "component", "customClass"]
    }), l.a.globalTracking("Coffee Communication Platform"), s.a.config.productionTip = !1;
    var v = n.i(d.a)("html")[0];
    n.i(d.b)(v, "g_isTouch", u.a), new s.a(a()({
        el: "app",
        router: r.a
    }, o.a))
}, , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , , function(t, e) {}, function(t, e) {}, function(t, e) {}, function(t, e) {}, function(t, e) {}, function(t, e) {}, , function(t, e) {
    ! function(e) {
        ! function(t, e, n, o) {
            function i(t, e) {
                return typeof t === e
            }

            function r(t) {
                var e = h.className,
                    n = v._config.classPrefix || "";
                if (m && (e = e.baseVal), v._config.enableJSClass) {
                    var i = new RegExp("(^|\\s)" + n + "no-js(\\s|$)");
                    e = e.replace(i, "$1" + n + "js$2")
                }
                v._config.enableClasses && (t.length > 0 && (e += " " + n + t.join(" " + n)), m ? h.className.baseVal = e : h.className = e)
            }

            function s(t, e) {
                if ("object" == typeof t)
                    for (var n in t) p(t, n) && s(n, t[n]);
                else {
                    t = t.toLowerCase();
                    var i = t.split("."),
                        a = v[i[0]];
                    if (2 === i.length && (a = a[i[1]]), void 0 !== a) return v;
                    e = "function" == typeof e ? e() : e, 1 === i.length ? v[i[0]] = e : (!v[i[0]] || v[i[0]] instanceof Boolean || (v[i[0]] = new Boolean(v[i[0]])), v[i[0]][i[1]] = e), r([(e && !1 !== e ? "" : "no-") + i.join("-")]), v._trigger(t, e)
                }
                return v
            }

            function a() {
                return "function" != typeof n.createElement ? n.createElement(arguments[0]) : m ? n.createElementNS.call(n, "http://www.w3.org/2000/svg", arguments[0]) : n.createElement.apply(n, arguments)
            }

            function l() {
                var t = n.body;
                return t || (t = a(m ? "svg" : "body"), t.fake = !0), t
            }

            function f(t, e, i, s) {
                var r, o, c, u, d = "modernizr",
                    v = a("div"),
                    p = l();
                if (parseInt(i, 10))
                    for (; i--;) c = a("div"), c.id = s ? s[i] : d + (i + 1), v.appendChild(c);
                return r = a("style"), r.type = "text/css", r.id = "s" + d, (p.fake ? p : v).appendChild(r), p.appendChild(v), r.styleSheet ? r.styleSheet.cssText = t : r.appendChild(n.createTextNode(t)), v.id = d, p.fake && (p.style.background = "", p.style.overflow = "hidden", u = h.style.overflow, h.style.overflow = "hidden", h.appendChild(p)), o = e(v, t), p.fake && p.parentNode ? (p.parentNode.removeChild(p), h.style.overflow = u, h.offsetHeight) : v.parentNode.removeChild(v), !!o
            }

            function u(t, n, i) {
                var a;
                if ("getComputedStyle" in e) {
                    a = getComputedStyle.call(e, t, n);
                    var s = e.console;
                    if (null !== a) i && (a = a.getPropertyValue(i));
                    else if (s) {
                        var r = s.error ? "error" : "log";
                        s[r].call(s, "getComputedStyle returning null, its possible modernizr test results are inaccurate")
                    }
                } else a = !n && t.currentStyle && t.currentStyle[i];
                return a
            }
            var c = [],
                d = {
                    _version: "3.11.7",
                    _config: {
                        classPrefix: "",
                        enableClasses: !0,
                        enableJSClass: !0,
                        usePrefixes: !0
                    },
                    _q: [],
                    on: function(t, e) {
                        var n = this;
                        setTimeout(function() {
                            e(n[t])
                        }, 0)
                    },
                    addTest: function(t, e, n) {
                        c.push({
                            name: t,
                            fn: e,
                            options: n
                        })
                    },
                    addAsyncTest: function(t) {
                        c.push({
                            name: null,
                            fn: t
                        })
                    }
                },
                v = function() {};
            v.prototype = d, v = new v;
            var p, _ = [],
                h = n.documentElement,
                m = "svg" === h.nodeName.toLowerCase();
            ! function() {
                var t = {}.hasOwnProperty;
                p = i(t, "undefined") || i(t.call, "undefined") ? function(t, e) {
                    return e in t && i(t.constructor.prototype[e], "undefined")
                } : function(e, n) {
                    return t.call(e, n)
                }
            }(), d._l = {}, d.on = function(t, e) {
                this._l[t] || (this._l[t] = []), this._l[t].push(e), v.hasOwnProperty(t) && setTimeout(function() {
                    v._trigger(t, v[t])
                }, 0)
            }, d._trigger = function(t, e) {
                if (this._l[t]) {
                    var n = this._l[t];
                    setTimeout(function() {
                        var t;
                        for (t = 0; t < n.length; t++)(0, n[t])(e)
                    }, 0), delete this._l[t]
                }
            }, v._q.push(function() {
                d.addTest = s
            });
            var g = function() {
                var t = e.matchMedia || e.msMatchMedia;
                return t ? function(e) {
                    var n = t(e);
                    return n && n.matches || !1
                } : function(t) {
                    var e = !1;
                    return f("@media " + t + " { #modernizr { position: absolute; } }", function(t) {
                        e = "absolute" === u(t, null, "position")
                    }), e
                }
            }();
            d.mq = g,
                function() {
                    var t, e, n, a, s, r, o;
                    for (var l in c)
                        if (c.hasOwnProperty(l)) {
                            if (t = [], e = c[l], e.name && (t.push(e.name.toLowerCase()), e.options && e.options.aliases && e.options.aliases.length))
                                for (n = 0; n < e.options.aliases.length; n++) t.push(e.options.aliases[n].toLowerCase());
                            for (a = i(e.fn, "function") ? e.fn() : e.fn, s = 0; s < t.length; s++) r = t[s], o = r.split("."), 1 === o.length ? v[o[0]] = a : (v[o[0]] && (!v[o[0]] || v[o[0]] instanceof Boolean) || (v[o[0]] = new Boolean(v[o[0]])), v[o[0]][o[1]] = a), _.push((a ? "" : "no-") + o.join("-"))
                        }
                }(), r(_), delete d.addTest, delete d.addAsyncTest;
            for (var y = 0; y < v._q.length; y++) v._q[y]();
            t.Modernizr = v
        }(e, e, document), t.exports = e.Modernizr
    }(window)
}, , , , function(t, e, n) {
    "use strict";
    var i = n(85),
        a = n(279),
        s = n(0),
        r = s(i.a, a.a, !1, null, null, null);
    e.a = r.exports
}, function(t, e, n) {
    "use strict";
    var i = n(86),
        a = n(299),
        s = n(0),
        r = s(i.a, a.a, !1, null, null, null);
    e.a = r.exports
}, function(t, e, n) {
    "use strict";
    var i = n(87),
        a = n(283),
        s = n(0),
        r = s(i.a, a.a, !1, null, null, null);
    e.a = r.exports
}, function(t, e, n) {
    "use strict";
    var i = n(88),
        a = n(280),
        s = n(0),
        r = s(i.a, a.a, !1, null, null, null);
    e.a = r.exports
}, function(t, e, n) {
    "use strict";
    var i = n(89),
        a = n(294),
        s = n(0),
        r = s(i.a, a.a, !1, null, null, null);
    e.a = r.exports
}, function(t, e, n) {
    "use strict";
    var i = n(91),
        a = n(298),
        s = n(0),
        r = s(i.a, a.a, !1, null, null, null);
    e.a = r.exports
}, function(t, e, n) {
    "use strict";
    var i = n(92),
        a = n(302),
        s = n(0),
        r = s(i.a, a.a, !1, null, null, null);
    e.a = r.exports
}, function(t, e, n) {
    "use strict";
    var i = n(93),
        a = n(293),
        s = n(0),
        r = s(i.a, a.a, !1, null, null, null);
    e.a = r.exports
}, function(t, e, n) {
    "use strict";
    var i = n(95),
        a = n(288),
        s = n(0),
        r = s(i.a, a.a, !1, null, null, null);
    e.a = r.exports
}, function(t, e, n) {
    "use strict";
    var i = n(96),
        a = n(287),
        s = n(0),
        r = s(i.a, a.a, !1, null, null, null);
    e.a = r.exports
}, function(t, e, n) {
    "use strict";
    var i = n(97),
        a = n(285),
        s = n(0),
        r = s(i.a, a.a, !1, null, null, null);
    e.a = r.exports
}, function(t, e, n) {
    "use strict";
    var i = n(98),
        a = n(276),
        s = n(0),
        r = s(i.a, a.a, !1, null, null, null);
    e.a = r.exports
}, function(t, e, n) {
    "use strict";
    var i = n(99),
        a = n(295),
        s = n(0),
        r = s(i.a, a.a, !1, null, null, null);
    e.a = r.exports
}, function(t, e, n) {
    "use strict";
    var i = n(101),
        a = n(292),
        s = n(0),
        r = s(i.a, a.a, !1, null, null, null);
    e.a = r.exports
}, function(t, e, n) {
    "use strict";
    var i = n(102),
        a = n(304),
        s = n(0),
        r = s(i.a, a.a, !1, null, null, null);
    e.a = r.exports
}, function(t, e, n) {
    "use strict";
    var i = n(103),
        a = n(296),
        s = n(0),
        r = s(i.a, a.a, !1, null, null, null);
    e.a = r.exports
}, function(t, e, n) {
    "use strict";
    var i = n(104),
        a = n(286),
        s = n(0),
        r = s(i.a, a.a, !1, null, null, null);
    e.a = r.exports
}, function(t, e, n) {
    "use strict";
    var i = n(105),
        a = n(282),
        s = n(0),
        r = s(i.a, a.a, !1, null, null, null);
    e.a = r.exports
}, function(t, e, n) {
    "use strict";
    var i = n(107),
        a = n(297),
        s = n(0),
        r = s(i.a, a.a, !1, null, null, null);
    e.a = r.exports
}, function(t, e, n) {
    "use strict";
    var i = n(108),
        a = n(278),
        s = n(0),
        r = s(i.a, a.a, !1, null, null, null);
    e.a = r.exports
}, function(t, e, n) {
    "use strict";
    var i = n(109),
        a = n(305),
        s = n(0),
        r = s(i.a, a.a, !1, null, null, null);
    e.a = r.exports
}, function(t, e, n) {
    "use strict";
    var i = n(111),
        a = n(309),
        s = n(0),
        r = s(i.a, a.a, !1, null, null, null);
    e.a = r.exports
}, function(t, e, n) {
    "use strict";

    function injectStyle(t) {
        n(243)
    }
    var i = n(112),
        a = n(300),
        s = n(0),
        r = injectStyle,
        o = s(i.a, a.a, !1, r, null, null);
    e.a = o.exports
}, function(t, e, n) {
    "use strict";

    function injectStyle(t) {
        n(240), n(241)
    }
    var i = n(113),
        a = n(277),
        s = n(0),
        r = injectStyle,
        o = s(i.a, a.a, !1, r, null, null);
    e.a = o.exports
}, function(t, e, n) {
    "use strict";

    function injectStyle(t) {
        n(245)
    }
    var i = n(79),
        a = n(308),
        s = n(0),
        r = injectStyle,
        o = s(i.a, a.a, !1, r, null, null);
    e.a = o.exports
}, function(t, e, n) {
    "use strict";
    var i = function() {
            var t = this,
                e = t.$createElement,
                n = t._self._c || e;
            return n("div", {
                staticClass: "v_mapAAA"
            }, [t.isMobile() ? [n("div", {
                directives: [{
                    name: "bg",
                    rawName: "v-bg",
                    value: {
                        folder: t.article.data.id,
                        name: "infography_" + t.content.id + "_01"
                    },
                    expression: "{ folder: article.data.id, name: 'infography_' + content.id + '_01' }"
                }]
            }, [n("div", {
                staticClass: "v_sideText"
            }, [n("h4", {
                domProps: {
                    innerHTML: t._s(t.content.sideTitle)
                }
            }), t._v(" "), n("span", {
                domProps: {
                    innerHTML: t._s(t.content.sideText)
                }
            })]), t._v(" "), t._l(["guatemala", "colombia", "brazil"], function(e) {
                return [n("div", {
                    class: ["v_countriesMap", "v_" + e]
                }, [n("h4", {
                    domProps: {
                        innerHTML: t._s(t.content[e])
                    }
                }), t._v(" "), n("span", {
                    domProps: {
                        innerHTML: t._s(t.content[e + "_since"])
                    }
                }), t._v(" "), n("span", {
                    domProps: {
                        innerHTML: t._s(t.content[e + "_farms"])
                    }
                })])]
            }), t._v(" "), n("div", {
                staticClass: "v_countriesBottom"
            }, [t._l(["c1", "c2", "c3"], function(e) {
                return [n("div", {
                    class: ["v_countriesItem", "v_" + e]
                }, [n("h4", {
                    domProps: {
                        innerHTML: t._s(t.content[e])
                    }
                }), t._v(" "), n("span", {
                    domProps: {
                        innerHTML: t._s(t.content[e + "_coffee"])
                    }
                })])]
            })], 2)], 2), t._v(" "), n("div", {
                directives: [{
                    name: "bg",
                    rawName: "v-bg",
                    value: {
                        folder: t.article.data.id,
                        name: "infography_" + t.content.id + "_02"
                    },
                    expression: "{ folder: article.data.id, name: 'infography_' + content.id + '_02' }"
                }]
            }, [t._l(["ethiopia"], function(e) {
                return [n("div", {
                    class: ["v_countriesMap", "v_" + e]
                }, [n("h4", {
                    domProps: {
                        innerHTML: t._s(t.content[e])
                    }
                }), t._v(" "), n("span", {
                    domProps: {
                        innerHTML: t._s(t.content[e + "_since"])
                    }
                }), t._v(" "), n("span", {
                    domProps: {
                        innerHTML: t._s(t.content[e + "_farms"])
                    }
                })])]
            }), t._v(" "), n("div", {
                staticClass: "v_countriesBottom"
            }, [t._l(["c5"], function(e) {
                return [n("div", {
                    class: ["v_countriesItem", "v_" + e]
                }, [n("h4", {
                    domProps: {
                        innerHTML: t._s(t.content[e])
                    }
                }), t._v(" "), n("span", {
                    domProps: {
                        innerHTML: t._s(t.content[e + "_coffee"])
                    }
                })])]
            })], 2)], 2), t._v(" "), n("div", {
                directives: [{
                    name: "bg",
                    rawName: "v-bg",
                    value: {
                        folder: t.article.data.id,
                        name: "infography_" + t.content.id + "_03"
                    },
                    expression: "{ folder: article.data.id, name: 'infography_' + content.id + '_03' }"
                }]
            }, [t._l(["india"], function(e) {
                return [n("div", {
                    class: ["v_countriesMap", "v_" + e]
                }, [n("h4", {
                    domProps: {
                        innerHTML: t._s(t.content[e])
                    }
                }), t._v(" "), n("span", {
                    domProps: {
                        innerHTML: t._s(t.content[e + "_since"])
                    }
                }), t._v(" "), n("span", {
                    domProps: {
                        innerHTML: t._s(t.content[e + "_farms"])
                    }
                })])]
            }), t._v(" "), n("div", {
                staticClass: "v_countriesBottom"
            }, [t._l(["c4"], function(e) {
                return [n("div", {
                    class: ["v_countriesItem", "v_" + e]
                }, [n("h4", {
                    domProps: {
                        innerHTML: t._s(t.content[e])
                    }
                }), t._v(" "), n("span", {
                    domProps: {
                        innerHTML: t._s(t.content[e + "_coffee"])
                    }
                })])]
            })], 2)], 2)] : [n("div", {
                directives: [{
                    name: "bg",
                    rawName: "v-bg",
                    value: {
                        folder: t.article.data.id,
                        name: "infography_" + t.content.id
                    },
                    expression: "{ folder: article.data.id, name: 'infography_' + content.id }"
                }]
            }), t._v(" "), t._l(["guatemala", "colombia", "brazil", "ethiopia", "india"], function(e) {
                return [n("div", {
                    class: ["v_countriesMap", "v_" + e]
                }, [n("h4", {
                    domProps: {
                        innerHTML: t._s(t.content[e])
                    }
                }), t._v(" "), n("span", {
                    domProps: {
                        innerHTML: t._s(t.content[e + "_since"])
                    }
                }), t._v(" "), n("span", {
                    domProps: {
                        innerHTML: t._s(t.content[e + "_farms"])
                    }
                })])]
            }), t._v(" "), n("div", {
                staticClass: "v_countriesBottom"
            }, [t._l(["c1", "c2", "c3", "c4", "c5"], function(e) {
                return [n("div", {
                    class: ["v_countriesItem", "v_" + e]
                }, [n("h4", {
                    domProps: {
                        innerHTML: t._s(t.content[e])
                    }
                }), t._v(" "), n("span", {
                    domProps: {
                        innerHTML: t._s(t.content[e + "_coffee"])
                    }
                })])]
            })], 2), t._v(" "), n("div", {
                staticClass: "v_sideText"
            }, [n("h4", {
                domProps: {
                    innerHTML: t._s(t.content.sideTitle)
                }
            }), t._v(" "), n("span", {
                domProps: {
                    innerHTML: t._s(t.content.sideText)
                }
            })])]], 2)
        },
        a = [],
        s = {
            render: i,
            staticRenderFns: a
        };
    e.a = s
}, function(t, e, n) {
    "use strict";
    var i = function() {
            var t = this,
                e = t.$createElement,
                n = t._self._c || e;
            return n("section", {
                staticClass: "v_tagsPage"
            }, [n("div", {
                staticClass: "v_sectionRestrict"
            }, [n("div", {
                staticClass: "v_sectionContent"
            }, [n("h2", {
                domProps: {
                    innerHTML: t._s(t.$json.ui.tag + ": <strong>" + t.tags.label + "</strong>")
                }
            }), t._v(" "), t._l(t.tags.articles, function(e) {
                return n("article", [n("figure", [n("router-link", {
                    attrs: {
                        to: {
                            name: "article",
                            params: {
                                category: e.category.localRoute,
                                article: e.data.localRoute
                            }
                        }
                    }
                }, [n("div", {
                    directives: [{
                        name: "bg",
                        rawName: "v-bg",
                        value: {
                            folder: e.data.id,
                            name: "thumbnail"
                        },
                        expression: "{ folder: article.data.id, name: 'thumbnail' }"
                    }]
                })])], 1), t._v(" "), n("div", {
                    staticClass: "v_text"
                }, [n("h3", {
                    domProps: {
                        innerHTML: t._s(e.data.title)
                    }
                }), t._v(" "), n("div", {
                    staticClass: "l_txt"
                }, [n("p", {
                    domProps: {
                        innerHTML: t._s(e.data.description ? e.data.description : e.data.contents[0].content)
                    }
                })]), t._v(" "), n("router-link", {
                    attrs: {
                        to: {
                            name: "article",
                            params: {
                                category: e.category.localRoute,
                                article: e.data.localRoute
                            }
                        }
                    }
                }, [n("span", {
                    domProps: {
                        innerHTML: t._s(t.$json.ui.read)
                    }
                })])], 1)])
            })], 2)])])
        },
        a = [],
        s = {
            render: i,
            staticRenderFns: a
        };
    e.a = s
}, function(t, e, n) {
    "use strict";
    var i = function() {
            var t = this,
                e = t.$createElement,
                n = t._self._c || e;
            return n("div", {
                staticClass: "v_swiper v_swiperFade"
            }, [n("swiper", {
                staticClass: "v_slides",
                attrs: {
                    options: t.swiperOption
                }
            }, [t._l(t.content.slides, function(e) {
                return n("slide", {
                    key: e.id,
                    attrs: {
                        tabindex: "-1"
                    }
                }, [n("div", {
                    directives: [{
                        name: "bg",
                        rawName: "v-bg",
                        value: {
                            folder: t.article.data.id,
                            name: "slide_" + e.id
                        },
                        expression: "{ folder: article.data.id, name: 'slide_' + slide.id }"
                    }],
                    attrs: {
                        "aria-hidden": "true"
                    }
                }), t._v(" "), n("div", [n("h3", {
                    attrs: {
                        "aria-hidden": "false"
                    },
                    domProps: {
                        innerHTML: t._s(e.title)
                    }
                }), t._v(" "), n("p", {
                    domProps: {
                        innerHTML: t._s(t.$root.parsedContent(e.content))
                    }
                }), t._v(" "), e.sideBlock ? n("aside", {
                    staticClass: "v_side_block"
                }, [e.sideBlock.title ? n("strong", {
                    domProps: {
                        innerHTML: t._s(e.sideBlock.title)
                    }
                }) : t._e(), t._v(" "), e.sideBlock.subtitle ? n("small", {
                    domProps: {
                        innerHTML: t._s(e.sideBlock.subtitle)
                    }
                }) : t._e(), t._v(" "), e.sideBlock.content ? n("p", {
                    domProps: {
                        innerHTML: t._s(t.$root.parsedContent(e.sideBlock.content))
                    }
                }) : t._e()]) : t._e()])])
            }), t._v(" "), n("div", {
                staticClass: "swiper-button-prev",
                attrs: {
                    slot: "button-prev",
                    "aria-hidden": "true"
                },
                slot: "button-prev"
            }), t._v(" "), n("div", {
                staticClass: "swiper-button-next",
                attrs: {
                    slot: "button-next",
                    "aria-hidden": "true"
                },
                slot: "button-next"
            }), t._v(" "), n("div", {
                staticClass: "swiper-pagination",
                attrs: {
                    slot: "pagination",
                    "aria-hidden": "true"
                },
                slot: "pagination"
            })], 2), t._v(" "), n("div", {
                staticClass: "v_follow",
                attrs: {
                    "aria-hidden": "true"
                }
            }, [n("p", {
                domProps: {
                    innerHTML: t._s(t.content.follow)
                }
            })])], 1)
        },
        a = [],
        s = {
            render: i,
            staticRenderFns: a
        };
    e.a = s
}, function(t, e, n) {
    "use strict";
    var i = function() {
            var t = this,
                e = t.$createElement,
                n = t._self._c || e;
            return n("nav", {
                staticClass: "v_navigation",
                class: {
                    v_opened: t.mobileMenuOpened
                }
            }, [n("div", {
                staticClass: "v_sectionRestrict"
            }, [n("div", {
                staticClass: "v_home",
                on: {
                    click: function(e) {
                        t.mobileMenuOpened = !1
                    }
                }
            }, [n("router-link", {
                attrs: {
                    to: {
                        name: "home"
                    }
                },
                domProps: {
                    innerHTML: t._s(t.$json.home.toggleTitle)
                }
            })], 1), t._v(" "), n("button", {
                staticClass: "v_btnRoundSM v_btnMenu",
                on: {
                    click: function(e) {
                        t.mobileMenuOpened = !t.mobileMenuOpened
                    }
                }
            }, [n("i", {
                staticClass: "fn_angleDown"
            }), t._v(" "), n("span", {
                domProps: {
                    innerHTML: t._s(t.$json.voices.openMenu)
                }
            })]), t._v(" "), n("div", {
                staticClass: "v_menu"
            }, [n("div", {
                staticClass: "v_menuCenter"
            }, [n("ul", t._l(t.categoryArray, function(e) {
                return n("li", {
                    on: {
                        click: function(e) {
                            t.mobileMenuOpened = !t.mobileMenuOpened
                        }
                    }
                }, [n("router-link", {
                    attrs: {
                        to: {
                            name: "category",
                            params: {
                                category: e.localRoute
                            }
                        }
                    },
                    domProps: {
                        innerHTML: t._s(e.title)
                    }
                })], 1)
            }), 0)])])])])
        },
        a = [],
        s = {
            render: i,
            staticRenderFns: a
        };
    e.a = s
}, function(t, e, n) {
    "use strict";
    var i = function() {
            var t = this,
                e = t.$createElement,
                n = t._self._c || e;
            return n("div", {
                staticClass: "v_carbonfootprint"
            }, [n("div", {
                staticClass: "v_section v_sectionFull"
            }, [n("div", {
                staticClass: "v_sectionRestrict"
            }, [n("div", {
                staticClass: "v_sectionContent"
            }, [n("h3", {
                domProps: {
                    innerHTML: t._s(t.content.title)
                }
            })])])]), t._v(" "), n("div", {
                directives: [{
                    name: "bg",
                    rawName: "v-bg",
                    value: {
                        folder: t.article.data.id,
                        name: "infography_" + t.content.id
                    },
                    expression: "{ folder: article.data.id, name: 'infography_' + content.id }"
                }]
            }, [n("p", {
                staticClass: "v_graphicTitle",
                domProps: {
                    innerHTML: t._s(t.content.subtitle)
                }
            }), t._v(" "), n("p", {
                staticClass: "v_graphicTitle",
                domProps: {
                    innerHTML: t._s(t.content.subtitle)
                }
            }), t._v(" "), n("p", {
                staticClass: "v_graphicLegend",
                domProps: {
                    innerHTML: t._s(t.content.source)
                }
            })])])
        },
        a = [],
        s = {
            render: i,
            staticRenderFns: a
        };
    e.a = s
}, function(t, e, n) {
    "use strict";
    var i = function() {
            var t = this,
                e = t.$createElement,
                n = t._self._c || e;
            return t.$json ? n("div", {
                staticClass: "vue g v_CCP"
            }, [n("navigation"), t._v(" "), n("router-view", {
                ref: "main"
            })], 1) : t._e()
        },
        a = [],
        s = {
            render: i,
            staticRenderFns: a
        };
    e.a = s
}, function(t, e, n) {
    "use strict";
    var i = function() {
            var t = this,
                e = t.$createElement,
                n = t._self._c || e;
            return n("aside", {
                staticClass: "v_shares"
            }, [n("h3", {
                staticClass: "v_visually_hidden",
                domProps: {
                    innerHTML: t._s(t.$json.ui.share.title)
                }
            }), t._v(" "), t.$json.ui.share.email ? n("a", {
                staticClass: "v_email",
                attrs: {
                    href: t.email,
                    target: "_blank",
                    "aria-label": "Email"
                },
                on: {
                    click: function(e) {
                        return t.track("Email")
                    }
                }
            }) : t._e(), t._v(" "), t.$json.ui.share.facebook ? n("button", {
                on: {
                    click: t.facebook
                }
            }, [n("span", {
                staticClass: "v_visually_hidden"
            }, [t._v("Facebook")])]) : t._e(), t._v(" "), t.$json.ui.share.pinterest ? n("a", {
                staticClass: "v_pinterest",
                attrs: {
                    href: t.pinterest,
                    target: "_blank",
                    "aria-label": "Pinterest"
                },
                on: {
                    click: function(e) {
                        return t.track("Pinterest")
                    }
                }
            }) : t._e(), t._v(" "), t.$json.ui.share.twitter ? n("a", {
                staticClass: "v_twitter",
                attrs: {
                    href: t.twitter,
                    target: "_blank",
                    "aria-label": "Twitter"
                },
                on: {
                    click: function(e) {
                        return t.track("Twitter")
                    }
                }
            }) : t._e(), t._v(" "), t.$json.ui.share.google ? n("a", {
                staticClass: "v_google",
                attrs: {
                    href: t.google,
                    target: "_blank",
                    "aria-label": "Google Plus"
                },
                on: {
                    click: function(e) {
                        return t.track("Google Plus")
                    }
                }
            }) : t._e(), t._v(" "), t.$json.ui.share.linkedin ? n("a", {
                staticClass: "v_linkedin",
                attrs: {
                    href: t.linkedin,
                    target: "_blank",
                    "aria-label": "Linked In"
                },
                on: {
                    click: function(e) {
                        return t.track("LinkedIn")
                    }
                }
            }) : t._e(), t._v(" "), t.$json.ui.share.weibo ? n("a", {
                staticClass: "v_weibo",
                attrs: {
                    href: t.weibo,
                    target: "_blank"
                },
                on: {
                    click: function(e) {
                        return t.track("Weibo")
                    }
                }
            }, [n("span", {
                staticClass: "v_visually_hidden"
            }, [t._v("Weibo")])]) : t._e(), t._v(" "), t.$json.ui.share.whatsapp && t.isMobile() ? n("a", {
                staticClass: "v_whatsapp",
                attrs: {
                    href: t.whatsapp,
                    target: "_blank",
                    "aria-label": "Whatsapp"
                },
                on: {
                    click: function(e) {
                        return t.track("Whatsapp")
                    }
                }
            }) : t._e()])
        },
        a = [],
        s = {
            render: i,
            staticRenderFns: a
        };
    e.a = s
}, function(t, e, n) {
    "use strict";
    var i = function() {
            var t = this,
                e = t.$createElement,
                n = t._self._c || e;
            return n("div", {
                staticClass: "v_infography v_aluminium"
            }, [n("div", {
                directives: [{
                    name: "bg",
                    rawName: "v-bg",
                    value: {
                        folder: t.article.data.id,
                        name: "infography_" + t.content.id
                    },
                    expression: "{ folder: article.data.id, name: 'infography_' + content.id }"
                }]
            }), t._v(" "), n("div", {
                staticClass: "v_section v_first"
            }, [n("div", {
                staticClass: "v_sectionRestrict"
            }, [n("div", {
                staticClass: "v_sectionContent"
            }, [n("h3", {
                domProps: {
                    innerHTML: t._s(t.content.title)
                }
            }), t._v(" "), n("p", {
                domProps: {
                    innerHTML: t._s(t.content.subtitle)
                }
            })])])]), t._v(" "), n("div", {
                staticClass: "v_section v_sectionFull"
            }, [n("div", {
                staticClass: "v_sectionRestrict"
            }, [n("div", {
                staticClass: "v_sectionContent"
            }, [n("div", {
                directives: [{
                    name: "bg",
                    rawName: "v-bg",
                    value: {
                        folder: t.article.data.id,
                        name: "svg_" + t.content.less95percentSvg,
                        ext: "svg"
                    },
                    expression: "{ folder: article.data.id, name: 'svg_' + content.less95percentSvg, ext: 'svg' }"
                }]
            }), t._v(" "), n("h4", {
                domProps: {
                    innerHTML: t._s(t.content.less95percent)
                }
            }), t._v(" "), n("p", {
                staticClass: "v_big",
                domProps: {
                    innerHTML: t._s(t.$root.parsedContent(t.content.less95percentParagraph))
                }
            })])])]), t._v(" "), n("div", {
                staticClass: "v_section v_sectionDouble"
            }, [n("div", {
                staticClass: "v_sectionRestrict"
            }, [n("div", {
                staticClass: "v_sectionContent"
            }, [n("div", {
                staticClass: "v_cell"
            }, [n("div", {
                directives: [{
                    name: "bg",
                    rawName: "v-bg",
                    value: {
                        folder: t.article.data.id,
                        name: "svg_" + t.content.recycleSvg,
                        ext: "svg"
                    },
                    expression: "{ folder: article.data.id, name: 'svg_' + content.recycleSvg, ext: 'svg' }"
                }]
            }), t._v(" "), n("p", {
                staticClass: "v_big",
                domProps: {
                    innerHTML: t._s(t.$root.parsedContent(t.content.recycle))
                }
            })]), t._v(" "), n("div", {
                staticClass: "v_cell"
            }, [n("div", {
                directives: [{
                    name: "bg",
                    rawName: "v-bg",
                    value: {
                        folder: t.article.data.id,
                        name: "svg_" + t.content.caps86percentSvg,
                        ext: "svg"
                    },
                    expression: "{ folder: article.data.id, name: 'svg_' + content.caps86percentSvg, ext: 'svg' }"
                }]
            }), t._v(" "), n("h4", {
                domProps: {
                    innerHTML: t._s(t.content.caps86percent)
                }
            }), t._v(" "), n("p", {
                staticClass: "v_big",
                domProps: {
                    innerHTML: t._s(t.$root.parsedContent(t.content.caps86percentParagraph))
                }
            })])])])]), t._v(" "), n("div", {
                staticClass: "v_section v_last"
            }, [n("div", {
                staticClass: "v_sectionRestrict"
            }, [n("div", {
                staticClass: "v_sectionContent"
            }, [n("p", {
                staticClass: "v_small",
                domProps: {
                    innerHTML: t._s(t.content.small)
                }
            })])])])])
        },
        a = [],
        s = {
            render: i,
            staticRenderFns: a
        };
    e.a = s
}, function(t, e, n) {
    "use strict";
    var i = function() {
            var t = this,
                e = t.$createElement;
            return (t._self._c || e)("p", {
                class: [t.customClass ? t.customClass : "v_paragraph"],
                domProps: {
                    innerHTML: t._s(t.$root.parsedContent(t.content.content))
                }
            })
        },
        a = [],
        s = {
            render: i,
            staticRenderFns: a
        };
    e.a = s
}, function(t, e, n) {
    "use strict";
    var i = function() {
            var t = this,
                e = t.$createElement,
                n = t._self._c || e;
            return n("div", {
                staticClass: "v_logoList"
            }, t._l(t.content.list, function(e) {
                return n("div", {
                    staticClass: "v_logoCell"
                }, [e.href ? n("a", {
                    attrs: {
                        href: e.href,
                        target: "_blank",
                        "aria-label": e.alt
                    }
                }, [n("div", {
                    directives: [{
                        name: "bg",
                        rawName: "v-bg",
                        value: {
                            folder: t.article.data.id,
                            name: "logo_" + e.id,
                            ext: "png",
                            hasSuffix: !1
                        },
                        expression: "{ folder: article.data.id, name: 'logo_' + item.id, ext: 'png', hasSuffix: false }"
                    }],
                    staticClass: "v_logoImg"
                })]) : n("div", {
                    directives: [{
                        name: "bg",
                        rawName: "v-bg",
                        value: {
                            folder: t.article.data.id,
                            name: "logo_" + e.id,
                            ext: "png",
                            hasSuffix: !1
                        },
                        expression: "{ folder: article.data.id, name: 'logo_' + item.id, ext: 'png', hasSuffix: false }"
                    }],
                    staticClass: "v_logoImg"
                }, [n("div", {
                    staticClass: "v_visually_hidden",
                    domProps: {
                        innerHTML: t._s(e.alt)
                    }
                })])])
            }), 0)
        },
        a = [],
        s = {
            render: i,
            staticRenderFns: a
        };
    e.a = s
}, function(t, e, n) {
    "use strict";
    var i = function() {
            var t = this,
                e = t.$createElement,
                n = t._self._c || e;
            return t.articles.length ? n("aside", {
                staticClass: "v_relatedArticles"
            }, [n("h2", {
                domProps: {
                    innerHTML: t._s(t.$json.ui.relatedArticles)
                }
            }), t._v(" "), n("ul", t._l(t.articles, function(e) {
                return n("li", [n("router-link", {
                    attrs: {
                        to: {
                            name: "article",
                            params: {
                                category: e.category.localRoute,
                                article: e.data.localRoute
                            }
                        }
                    },
                    domProps: {
                        innerHTML: t._s(e.data.title)
                    }
                })], 1)
            }), 0)]) : t._e()
        },
        a = [],
        s = {
            render: i,
            staticRenderFns: a
        };
    e.a = s
}, function(t, e, n) {
    "use strict";
    var i = function() {
            var t = this,
                e = t.$createElement,
                n = t._self._c || e;
            return n("figure", {
                class: ["v_logo", "v_" + t.content.id]
            }, [n("div", {
                staticClass: "v_logoCell",
                attrs: {
                    tabindex: "-1",
                    "aria-hidden": "true"
                }
            }, [t.content.href ? n("a", {
                attrs: {
                    href: t.content.href,
                    target: "_blank"
                }
            }, [n("div", {
                directives: [{
                    name: "bg",
                    rawName: "v-bg",
                    value: {
                        folder: t.article.data.id,
                        name: "logo_" + t.content.id,
                        ext: "png",
                        hasSuffix: !1
                    },
                    expression: "{ folder: article.data.id, name: 'logo_' + content.id, ext: 'png', hasSuffix: false }"
                }],
                staticClass: "v_logoImg"
            })]) : n("div", {
                directives: [{
                    name: "bg",
                    rawName: "v-bg",
                    value: {
                        folder: t.article.data.id,
                        name: "logo_" + t.content.id,
                        ext: "png",
                        hasSuffix: !1
                    },
                    expression: "{ folder: article.data.id, name: 'logo_' + content.id, ext: 'png', hasSuffix: false }"
                }],
                staticClass: "v_logoImg"
            })]), t._v(" "), n("div", {
                staticClass: "v_partnerCell"
            }, [t.content.href ? n("a", {
                attrs: {
                    href: t.content.href,
                    target: "_blank"
                }
            }, [n("h4", {
                domProps: {
                    innerHTML: t._s(t.content.title)
                }
            })]) : n("h4", {
                domProps: {
                    innerHTML: t._s(t.content.title)
                }
            }), t._v(" "), n("p", {
                domProps: {
                    innerHTML: t._s(t.content.content)
                }
            })])])
        },
        a = [],
        s = {
            render: i,
            staticRenderFns: a
        };
    e.a = s
}, function(t, e, n) {
    "use strict";
    var i = function() {
            var t = this,
                e = t.$createElement,
                n = t._self._c || e;
            return n("div", {
                staticClass: "v_section v_listicle_item"
            }, [n("div", {
                directives: [{
                    name: "bg",
                    rawName: "v-bg",
                    value: {
                        folder: t.article.data.id,
                        name: "listicle_" + t.content.id
                    },
                    expression: "{ folder: article.data.id, name: 'listicle_' + content.id }"
                }]
            }), t._v(" "), n("figure", [n("figcaption", [n("div", {
                staticClass: "v_table"
            }, [n("div", {
                staticClass: "v_cell"
            }, [n("span", {
                domProps: {
                    innerHTML: t._s(t.content.number)
                }
            })]), t._v(" "), n("div", {
                staticClass: "v_cell"
            }, [n("h3", {
                domProps: {
                    innerHTML: t._s(t.content.title)
                }
            }), t._v(" "), n("p", {
                domProps: {
                    innerHTML: t._s(t.$root.parsedContent(t.content.content))
                }
            })])])])])])
        },
        a = [],
        s = {
            render: i,
            staticRenderFns: a
        };
    e.a = s
}, function(t, e, n) {
    "use strict";
    var i = function() {
            var t = this,
                e = t.$createElement;
            return (t._self._c || e)("blockquote", {
                staticClass: "v_emphasis",
                domProps: {
                    innerHTML: t._s(t.$root.parsedContent(t.content.content))
                }
            })
        },
        a = [],
        s = {
            render: i,
            staticRenderFns: a
        };
    e.a = s
}, function(t, e, n) {
    "use strict";
    var i = function() {
            var t = this,
                e = t.$createElement,
                n = t._self._c || e;
            return n("article", {
                staticClass: "v_article_card"
            }, [n("router-link", {
                attrs: {
                    to: {
                        name: "article",
                        params: {
                            category: t.article.category.localRoute,
                            article: t.article.data.localRoute
                        }
                    },
                    tabindex: "-1",
                    "aria-label": t.$root.stripTags(t.article.data.title)
                }
            }, [n("div", {
                directives: [{
                    name: "bg",
                    rawName: "v-bg",
                    value: {
                        folder: t.article.data.id,
                        name: (t.isTile, "thumbnail")
                    },
                    expression: "{ folder: article.data.id, name: isTile ? 'thumbnail' : 'thumbnail' }"
                }],
                attrs: {
                    "aria-hidden": "true"
                }
            }), t._v(" "), n("div", {
                staticClass: "v_content",
                attrs: {
                    "aria-hidden": "true"
                }
            }, [n("div", {
                staticClass: "v_table"
            }, [n("div", {
                staticClass: "v_cell"
            }, [n("h4", {
                domProps: {
                    innerHTML: t._s(t.article.data.title)
                }
            }), t._v(" "), n("p", {
                staticClass: "v_category",
                domProps: {
                    innerHTML: t._s(t.article.category.title)
                }
            }), t._v(" "), n("time", {
                domProps: {
                    innerHTML: t._s(t.article.data.date)
                }
            })])])])])], 1)
        },
        a = [],
        s = {
            render: i,
            staticRenderFns: a
        };
    e.a = s
}, function(t, e, n) {
    "use strict";
    var i = function() {
            var t = this,
                e = t.$createElement,
                n = t._self._c || e;
            return n("aside", {
                staticClass: "v_side_block"
            }, [n("strong", {
                domProps: {
                    innerHTML: t._s(t.content.title)
                }
            }), t._v(" "), n("small", {
                domProps: {
                    innerHTML: t._s(t.content.subtitle)
                }
            }), t._v(" "), n("p", {
                domProps: {
                    innerHTML: t._s(t.$root.parsedContent(t.content.content))
                }
            })])
        },
        a = [],
        s = {
            render: i,
            staticRenderFns: a
        };
    e.a = s
}, function(t, e, n) {
    "use strict";
    var i = function() {
            var t = this,
                e = t.$createElement,
                n = t._self._c || e;
            return n("aside", {
                staticClass: "v_partners"
            }, [n("h3", {
                domProps: {
                    innerHTML: t._s(t.content.title)
                }
            }), t._v(" "), n("ul", t._l(t.content.links, function(e) {
                return n("li", [n("a", {
                    attrs: {
                        href: e.href
                    },
                    domProps: {
                        innerHTML: t._s(e.title)
                    }
                })])
            }), 0)])
        },
        a = [],
        s = {
            render: i,
            staticRenderFns: a
        };
    e.a = s
}, function(t, e, n) {
    "use strict";
    var i = function() {
            var t = this,
                e = t.$createElement,
                n = t._self._c || e;
            return n("div", {
                staticClass: "v_iframe"
            }, [n("iframe", {
                attrs: {
                    src: t.content.href,
                    frameBorder: "0",
                    id: "ccp_iframe",
                    marginheight: "0",
                    marginwidth: "0",
                    scrolling: "no"
                }
            })])
        },
        a = [],
        s = {
            render: i,
            staticRenderFns: a
        };
    e.a = s
}, function(t, e, n) {
    "use strict";
    var i = function() {
            var t = this,
                e = t.$createElement,
                n = t._self._c || e;
            return n("figure", {
                staticClass: "v_embed_video",
                class: {
                    v_isPlaying: t.isPlaying
                }
            }, ["youtube" === t.content.type ? [n("div", {
                ref: "video",
                attrs: {
                    "aria-label": "test"
                }
            }), t._v(" "), n("figcaption", {
                attrs: {
                    "aria-hidden": "true",
                    tabindex: "-1"
                }
            }, [n("p", {
                domProps: {
                    innerHTML: t._s(t.content.caption)
                }
            })])] : t._e(), t._v(" "), "youku" === t.content.type ? n("iframe", {
                attrs: {
                    src: "https://player.youku.com/embed/" + t.content.videoId,
                    frameborder: "0",
                    allowfullscreen: "true"
                }
            }) : t._e()], 2)
        },
        a = [],
        s = {
            render: i,
            staticRenderFns: a
        };
    e.a = s
}, function(t, e, n) {
    "use strict";
    var i = function() {
            var t = this,
                e = t.$createElement,
                n = t._self._c || e;
            return n("div", {
                staticClass: "v_media_text",
                class: "v_" + t.content.componentOptions
            }, [n("div", {
                staticClass: "v_clearboth"
            }), t._v(" "), t._l(t.content.contents, function(e, i) {
                return n(e.component, {
                    key: i,
                    tag: "component",
                    attrs: {
                        content: e,
                        article: t.article
                    }
                })
            }), t._v(" "), n("div", {
                staticClass: "v_clearboth"
            })], 2)
        },
        a = [],
        s = {
            render: i,
            staticRenderFns: a
        };
    e.a = s
}, function(t, e, n) {
    "use strict";
    var i = function() {
            var t = this,
                e = t.$createElement,
                n = t._self._c || e;
            return n("div", {
                staticClass: "v_product"
            }, [n("img", {
                attrs: {
                    src: t.$root.$getAssetUrl({
                        folder: t.article.data.id,
                        name: "product_" + t.content.id
                    })
                }
            }), t._v(" "), n("div", [n("h3", {
                domProps: {
                    innerHTML: t._s(t.content.title)
                }
            }), t._v(" "), n("strong", {
                domProps: {
                    innerHTML: t._s(t.content.subtitle)
                }
            }), t._v(" "), t.isFacebookAppInIos ? t._e() : n("div", [n("AddToCart", t._b({
                attrs: {
                    tracking: {
                        list: "content.title",
                        position: 0
                    },
                    translations: t.$json.ui.addToCart,
                    product: t.content,
                    "show-price": ""
                }
            }, "AddToCart", t.content.addToCart, !1))], 1)])])
        },
        a = [],
        s = {
            render: i,
            staticRenderFns: a
        };
    e.a = s
}, function(t, e, n) {
    "use strict";
    var i = function() {
            var t = this,
                e = t.$createElement,
                n = t._self._c || e;
            return n("aside", {
                staticClass: "v_articles"
            }, [n("h2", {
                domProps: {
                    innerHTML: t._s(t.$json.ui.similarArticles)
                }
            }), t._v(" "), n("ul", t._l(t.articles, function(t) {
                return n("li", [n("ArticleCard", {
                    attrs: {
                        article: t,
                        "is-tile": !0
                    }
                })], 1)
            }), 0)])
        },
        a = [],
        s = {
            render: i,
            staticRenderFns: a
        };
    e.a = s
}, function(t, e, n) {
    "use strict";
    var i = function() {
            var t = this,
                e = t.$createElement,
                n = t._self._c || e;
            return n("div", {
                staticClass: "v_gif v_section v_farmer"
            }, [n("div", {
                staticClass: "v_sectionRestrict"
            }, [n("div", {
                staticClass: "v_table"
            }, [n("div", {
                directives: [{
                    name: "bg",
                    rawName: "v-bg",
                    value: {
                        folder: t.article.data.id,
                        name: "farmer_" + t.content.id
                    },
                    expression: "{ folder: article.data.id, name: 'farmer_' + content.id }"
                }]
            }), t._v(" "), n("div", {
                staticClass: "v_cell"
            }, [t.content.farmer ? n("dl", [t._l(["farmer", "agronomist", "farm", "whyNominated"], function(e) {
                return [n("dt", {
                    domProps: {
                        innerHTML: t._s(t.$json.ui[e])
                    }
                }), n("dd", {
                    domProps: {
                        innerHTML: t._s(t.content[e])
                    }
                })]
            })], 2) : t._e(), t._v(" "), t.content.machine ? n("dl", [t._l(["machine", "year", "description"], function(e) {
                return [n("dt", {
                    domProps: {
                        innerHTML: t._s(t.$json.ui[e])
                    }
                }), n("dd", {
                    domProps: {
                        innerHTML: t._s(t.content[e])
                    }
                })]
            })], 2) : t._e()])])])])
        },
        a = [],
        s = {
            render: i,
            staticRenderFns: a
        };
    e.a = s
}, function(t, e, n) {
    "use strict";
    var i = function() {
            var t = this,
                e = t.$createElement,
                n = t._self._c || e;
            return n("article", {
                staticClass: "v_articlePage",
                class: "v_articleId" + t.article.data.id
            }, [n("hero", {
                attrs: {
                    content: t.article.data
                }
            }), t._v(" "), n("div", {
                staticClass: "v_article"
            }, [t._l(t.article.data.contents, function(e, i) {
                return n(e.component, {
                    key: i,
                    tag: "component",
                    attrs: {
                        content: e,
                        article: t.article
                    }
                })
            }), t._v(" "), n("footer", {
                staticClass: "v_footer"
            }, [n("tags", {
                attrs: {
                    tags: t.article.tags
                }
            })], 1), t._v(" "), n("related-articles", {
                attrs: {
                    article: t.article
                }
            }), t._v(" "), n("similar-articles", {
                attrs: {
                    article: t.article
                }
            }), t._v(" "), n("button", {
                staticClass: "v_btnBackToTop",
                attrs: {
                    tabindex: "-1",
                    "aria-hidden": "true"
                },
                on: {
                    click: t.goTop
                }
            }, [n("i", {
                staticClass: "fn_angleUp"
            }), t._v(" "), n("span", {
                domProps: {
                    innerHTML: t._s(t.$json.voices.goTop)
                }
            })])], 2)], 1)
        },
        a = [],
        s = {
            render: i,
            staticRenderFns: a
        };
    e.a = s
}, function(t, e, n) {
    "use strict";
    var i = function() {
            var t = this,
                e = t.$createElement,
                n = t._self._c || e;
            return n("div", {
                staticClass: "v_home"
            }, [n("hero", {
                ref: "hero",
                attrs: {
                    content: t.$json.home
                }
            }), t._v(" "), n("section", {
                staticClass: "v_section v_categories"
            }, [n("ul", t._l(t.categories, function(e) {
                return n("li", [n("router-link", {
                    attrs: {
                        to: {
                            name: "category",
                            params: {
                                category: e.localRoute
                            }
                        },
                        tabindex: "-1",
                        "aria-label": e.title
                    }
                }, [n("div", {
                    directives: [{
                        name: "bg",
                        rawName: "v-bg",
                        value: {
                            folder: e.id,
                            name: "thumbnail"
                        },
                        expression: "{ folder: category.id, name: 'thumbnail' }"
                    }],
                    attrs: {
                        "aria-hidden": "true"
                    }
                }), t._v(" "), n("div", {
                    staticClass: "v_content",
                    attrs: {
                        "aria-hidden": "true"
                    }
                }, [n("h3", {
                    attrs: {
                        id: "category-" + e.id
                    },
                    domProps: {
                        innerHTML: t._s(e.title)
                    }
                }), t._v(" "), n("span", {
                    staticClass: "v_btn v_btnIconRight"
                }, [n("span", {
                    domProps: {
                        innerHTML: t._s(t.$json.ui.explore)
                    }
                }), t._v(" "), n("i", {
                    staticClass: "fn_angleRight"
                })])])])], 1)
            }), 0)]), t._v(" "), t._l(t.categories, function(e) {
                return n("section", {
                    staticClass: "v_section v_articles",
                    class: "v_" + e.id
                }, [n("router-link", {
                    staticClass: "v_categoryMobile",
                    attrs: {
                        to: {
                            name: "category",
                            params: {
                                category: e.localRoute
                            }
                        },
                        "aria-hidden": "true",
                        tabindex: "-1"
                    }
                }, [n("h3", {
                    domProps: {
                        innerHTML: t._s(e.title)
                    }
                }), t._v(" "), n("span", {
                    staticClass: "v_btn v_btnIconRight"
                }, [n("span", {
                    domProps: {
                        innerHTML: t._s(t.$json.ui.explore)
                    }
                }), t._v(" "), n("i", {
                    staticClass: "fn_angleRight"
                })])]), t._v(" "), t.$landing.breakpoints.viewport.width > 767 ? n("div", {
                    staticClass: "v_mobileScroll"
                }, [n("ul", {
                    attrs: {
                        "aria-labelledby": "category-" + e.id
                    }
                }, t._l(e.articles, function(t) {
                    return n("li", [n("ArticleCard", {
                        attrs: {
                            article: t
                        }
                    })], 1)
                }), 0)]) : n("swiper", {
                    staticClass: "v_slides",
                    attrs: {
                        options: t.swiperOption
                    }
                }, t._l(e.articles, function(t) {
                    return n("slide", {
                        key: t.id
                    }, [n("ArticleCard", {
                        attrs: {
                            article: t
                        }
                    })], 1)
                }), 1)], 1)
            })], 2)
        },
        a = [],
        s = {
            render: i,
            staticRenderFns: a
        };
    e.a = s
}, function(t, e, n) {
    "use strict";
    var i = function() {
            var t = this,
                e = t.$createElement,
                n = t._self._c || e;
            return n("div", {
                staticClass: "v_swiper",
                attrs: {
                    id: "v_swiper_id_" + t._uid
                }
            }, [t._t("button-prev"), t._v(" "), n("div", {
                staticClass: "v_swiperOverflow"
            }, [n("div", {
                ref: "container",
                staticClass: "swiper-container"
            }, [t._t("parallax-bg"), t._v(" "), t.isDiv ? n("div", {
                ref: "wrapper",
                staticClass: "swiper-wrapper"
            }, [t._t("default")], 2) : n("ul", {
                ref: "wrapper",
                staticClass: "swiper-wrapper"
            }, [t._t("default")], 2)], 2)]), t._v(" "), t._t("button-next"), t._v(" "), t._t("pagination"), t._v(" "), t._t("scrollbar")], 2)
        },
        a = [],
        s = {
            render: i,
            staticRenderFns: a
        };
    e.a = s
}, function(t, e, n) {
    "use strict";
    var i = function() {
            var t = this,
                e = t.$createElement,
                n = t._self._c || e;
            return n("div", {
                staticClass: "v_gif v_section"
            }, [n("div", {
                staticClass: "v_sectionRestrict"
            }, [n("figure", {
                staticClass: "v_table"
            }, [n("div", {
                directives: [{
                    name: "bg",
                    rawName: "v-bg",
                    value: {
                        folder: t.article.data.id,
                        name: "gif_" + t.content.id,
                        ext: "jpg"
                    },
                    expression: "{ folder: article.data.id, name: 'gif_' + content.id, ext: 'jpg' }"
                }]
            }), t._v(" "), n("figcaption", {
                staticClass: "v_cell"
            }, [n("h3", [n("span", {
                domProps: {
                    innerHTML: t._s(t.content.number)
                }
            }), n("span", {
                domProps: {
                    innerHTML: t._s(t.content.title)
                }
            })]), t._v(" "), n("p", {
                domProps: {
                    innerHTML: t._s(t.content.content)
                }
            }), t._v(" "), t.content.emphasis ? n("blockquote", {
                staticClass: "v_emphasis",
                domProps: {
                    innerHTML: t._s(t.content.emphasis)
                }
            }) : t._e(), t._v(" "), t.content.sideBlock ? n("aside", {
                staticClass: "v_side_block"
            }, [n("strong", {
                domProps: {
                    innerHTML: t._s(t.content.sideBlock.title)
                }
            }), t._v(" "), n("small", {
                domProps: {
                    innerHTML: t._s(t.content.sideBlock.subtitle)
                }
            }), t._v(" "), n("p", {
                domProps: {
                    innerHTML: t._s(t.content.sideBlock.content)
                }
            })]) : t._e()])])])])
        },
        a = [],
        s = {
            render: i,
            staticRenderFns: a
        };
    e.a = s
}, function(t, e, n) {
    "use strict";
    var i = function() {
            var t = this,
                e = t.$createElement,
                n = t._self._c || e;
            return n("figure", {
                class: ["v_image", "v_" + t.content.id, "v_" + (t.content.customClass ? t.content.customClass : "wide") + "Image"]
            }, [n("div", [t.content.customClass && "wide" !== t.content.customClass ? n("img", {
                attrs: {
                    src: t.$root.$getAssetUrl({
                        folder: t.article.data.id,
                        name: (t.content.customClass ? t.content.customClass : "wide") + "_" + t.content.id
                    })
                }
            }) : n("div", {
                directives: [{
                    name: "bg",
                    rawName: "v-bg",
                    value: {
                        folder: t.article.data.id,
                        name: (t.content.customClass ? t.content.customClass : "wide") + "_" + t.content.id
                    },
                    expression: "{ folder: article.data.id, name: (content.customClass ? content.customClass : 'wide') + '_' + content.id }"
                }]
            }, [t.content.points ? n("ol", {
                staticClass: "v_points"
            }, t._l(t.content.points, function(e, i) {
                return n("li", {
                    class: "v_point" + (i + 1),
                    domProps: {
                        innerHTML: t._s(e)
                    }
                })
            }), 0) : t._e()])]), t._v(" "), n("span", {
                staticClass: "v_visually_hidden",
                domProps: {
                    innerHTML: t._s(t.content.alt + " image")
                }
            }), t._v(" "), t.content.caption ? n("figcaption", [n("p", {
                domProps: {
                    innerHTML: t._s(t.content.caption)
                }
            })]) : t._e()])
        },
        a = [],
        s = {
            render: i,
            staticRenderFns: a
        };
    e.a = s
}, function(t, e, n) {
    "use strict";
    var i = function() {
            var t = this,
                e = t.$createElement,
                n = t._self._c || e;
            return n("div", {
                staticClass: "v_infography v_powerOfTrees"
            }, [n("div", {
                directives: [{
                    name: "bg",
                    rawName: "v-bg",
                    value: {
                        folder: t.article.data.id,
                        name: "infography_" + t.content.id
                    },
                    expression: "{ folder: article.data.id, name: 'infography_' + content.id }"
                }]
            }), t._v(" "), n("div", {
                staticClass: "v_section v_first"
            }, [n("div", {
                staticClass: "v_sectionRestrict"
            }, [n("div", {
                staticClass: "v_sectionContent"
            }, [n("h3", {
                domProps: {
                    innerHTML: t._s(t.content.title)
                }
            }), t._v(" "), n("p", {
                domProps: {
                    innerHTML: t._s(t.content.subtitle)
                }
            })])])]), t._v(" "), n("div", {
                staticClass: "v_section v_sectionFull"
            }, [n("div", {
                staticClass: "v_sectionRestrict"
            }, [n("div", {
                staticClass: "v_sectionContent"
            }, [n("div", {
                directives: [{
                    name: "bg",
                    rawName: "v-bg",
                    value: {
                        folder: t.article.data.id,
                        name: "svg_" + t.content.plantProtectorsSvg,
                        ext: "svg"
                    },
                    expression: "{ folder: article.data.id, name: 'svg_' + content.plantProtectorsSvg, ext: 'svg' }"
                }]
            }), t._v(" "), n("h4", {
                domProps: {
                    innerHTML: t._s(t.content.plantProtectors)
                }
            }), t._v(" "), n("p", {
                domProps: {
                    innerHTML: t._s(t.content.plantProtectorsParagraph1)
                }
            }), t._v(" "), n("p", {
                domProps: {
                    innerHTML: t._s(t.content.plantProtectorsParagraph2)
                }
            })])])]), t._v(" "), n("div", {
                staticClass: "v_section v_sectionFull"
            }, [n("div", {
                staticClass: "v_sectionRestrict"
            }, [n("div", {
                staticClass: "v_sectionContent"
            }, [n("div", {
                directives: [{
                    name: "bg",
                    rawName: "v-bg",
                    value: {
                        folder: t.article.data.id,
                        name: "svg_" + t.content.treesAbsorbSvg,
                        ext: "svg"
                    },
                    expression: "{ folder: article.data.id, name: 'svg_' + content.treesAbsorbSvg, ext: 'svg' }"
                }]
            }), t._v(" "), n("h4", {
                domProps: {
                    innerHTML: t._s(t.content.treesAbsorb)
                }
            }), t._v(" "), n("p", {
                domProps: {
                    innerHTML: t._s(t.content.treesAbsorbParagraph)
                }
            })])])]), t._v(" "), n("div", {
                staticClass: "v_section v_last"
            }, [n("div", {
                staticClass: "v_sectionRestrict"
            }, [n("div", {
                staticClass: "v_sectionContent"
            }, [n("h4", {
                domProps: {
                    innerHTML: t._s(t.content.aretreepowerful)
                }
            }), t._v(" "), n("p", {
                staticClass: "h4",
                domProps: {
                    innerHTML: t._s(t.content.yesthey)
                }
            }), t._v(" "), n("div", {
                domProps: {
                    innerHTML: t._s(t.content.advantages)
                }
            })])])])])
        },
        a = [],
        s = {
            render: i,
            staticRenderFns: a
        };
    e.a = s
}, function(t, e, n) {
    "use strict";
    var i = function() {
            var t = this,
                e = t.$createElement,
                n = t._self._c || e;
            return n("div", {
                staticClass: "v_tags"
            }, [n("h3", {
                attrs: {
                    id: "articleTags"
                },
                domProps: {
                    innerHTML: t._s(t.$json.ui.tags)
                }
            }), t._v(" "), n("ul", {
                attrs: {
                    "aria-labelledby": "articleTags"
                }
            }, t._l(t.tags, function(e) {
                return n("li", [n("router-link", {
                    attrs: {
                        to: {
                            name: "tag",
                            params: {
                                tag: e.localRoute
                            }
                        }
                    },
                    domProps: {
                        innerHTML: t._s(e.label)
                    }
                })], 1)
            }), 0)])
        },
        a = [],
        s = {
            render: i,
            staticRenderFns: a
        };
    e.a = s
}, function(t, e, n) {
    "use strict";
    var i = function() {
            var t = this,
                e = t.$createElement,
                n = t._self._c || e;
            return t.$parent.isDiv ? n("div", {
                staticClass: "swiper-slide"
            }, [t._t("default")], 2) : n("li", {
                staticClass: "swiper-slide"
            }, [t._t("default")], 2)
        },
        a = [],
        s = {
            render: i,
            staticRenderFns: a
        };
    e.a = s
}, function(t, e, n) {
    "use strict";
    var i = function() {
            var t = this,
                e = t.$createElement,
                n = t._self._c || e;
            return n("div", {
                staticClass: "v_linkArticle"
            }, [n("ArticleCard", {
                attrs: {
                    article: t.article,
                    "is-tile": !0
                }
            })], 1)
        },
        a = [],
        s = {
            render: i,
            staticRenderFns: a
        };
    e.a = s
}, function(t, e, n) {
    "use strict";
    var i = function() {
            var t = this,
                e = t.$createElement,
                n = t._self._c || e;
            return n("div", {
                staticClass: "g_addToCart",
                class: {
                    g_mini: t.modifier === t.constants.MODIFIER_MINI, g_miniMobile: t.modifier === t.constants.MODIFIER_MINI_MOBILE, g_miniDesktop: t.modifier === t.constants.MODIFIER_MINI_DESKTOP
                }
            }, [t.product.data && t.checkProductPriceExist(t.product.data) ? [t.hasPhantom ? n("Phantom", {
                attrs: {
                    showPrice: t.showPrice,
                    price: t.product.data.displayedPrice,
                    quantity: t.activeQuantity,
                    label: t.btnLabelPhantom
                }
            }) : t._e(), t._v(" "), n("div", {
                staticClass: "g_priceAndButton track-impression-product",
                attrs: {
                    "data-product-item-id": t.product.data.internationalId,
                    "data-product-section": t.tracking.list,
                    "data-product-position": t.tracking.position + 1
                }
            }, [t.showPrice && !t.checkHidePrice() ? n("p", {
                staticClass: "g_productPrice",
                attrs: {
                    "data-disabled": !t.product.data.inStock
                },
                domProps: {
                    textContent: t._s(t.product.data.displayedPrice)
                }
            }) : t._e(), t._v(" "), t.isDesktop && t.translations.useMosaicOne ? n("MosaicATC", {
                attrs: {
                    quantity: t.quantity,
                    product: t.product,
                    labelAdd: t.btnLabelAdd,
                    labelUpdate: t.btnLabelUpdate,
                    step: t.quantityStep,
                    useCustomThirdLine: t.useCustomThirdLine,
                    customThirdLine: t.customThirdLine
                }
            }) : t.translations.useMosaicOne ? t._e() : n("div", {
                staticClass: "g_addToCartCustom"
            }, [t.checkHideForButton() ? t._e() : n("button", {
                ref: "button",
                staticClass: "g_btn g_btnBuy",
                class: {
                    g_quantitySelectorOpened: t.quantitySelectorOpened, g_update: 0 !== t.activeQuantity, g_materialPlay: t.materialPlay
                },
                attrs: {
                    disabled: !t.product.data.inStock
                },
                on: {
                    click: function(e) {
                        return t.addToCart(e)
                    }
                }
            }, [n("i", {
                staticClass: "fn_basket",
                class: {
                    g_quantity: t.activeQuantity
                },
                attrs: {
                    "aria-hidden": "true"
                }
            }, [n("span", {
                domProps: {
                    textContent: t._s(t.activeQuantity)
                }
            })]), t._v(" "), n("span", {
                staticClass: "g_visually_hidden",
                domProps: {
                    innerHTML: t._s(t.voiceAddToCart)
                }
            }), t._v(" "), n("span", {
                staticClass: "g_labelAdd",
                attrs: {
                    "aria-hidden": "true"
                },
                domProps: {
                    textContent: t._s(t.btnLabelAdd)
                }
            }), t._v(" "), n("span", {
                staticClass: "g_labelUpdate",
                attrs: {
                    "aria-hidden": "true"
                },
                domProps: {
                    textContent: t._s(t.btnLabelUpdate)
                }
            }), t._v(" "), n("span", {
                staticClass: "g_labelPhantom",
                attrs: {
                    "aria-hidden": "true"
                },
                domProps: {
                    textContent: t._s(t.btnLabelPhantom)
                }
            }), t._v(" "), n("i", {
                staticClass: "fn_more"
            })]), t._v(" "), n("span", {
                ref: "focusForAddOneToCart",
                attrs: {
                    tabindex: "-1"
                }
            }), t._v(" "), "quantitySelector" === t.type && t.quantities ? n("QuantitySelector", {
                attrs: {
                    step: t.quantityStep,
                    product: t.product.data,
                    quantities: t.quantities,
                    activeQuantity: t.activeQuantity,
                    opened: t.quantitySelectorOpened,
                    voices: t.translations.voices,
                    btnLabelAdd: t.btnLabelAdd,
                    showPriceInQS: t.showPriceInQS
                },
                on: {
                    setQuantity: t.setQuantity,
                    "update:opened": function(e) {
                        return t.quantitySelectorOpened = e
                    }
                }
            }) : t._e()], 1)], 1)] : t._e()], 2)
        },
        a = [],
        s = {
            render: i,
            staticRenderFns: a
        };
    e.a = s
}, function(t, e, n) {
    "use strict";
    var i = function() {
            var t = this,
                e = t.$createElement,
                n = t._self._c || e;
            return n("div", {
                staticClass: "v_categoryPage"
            }, [n("hero", {
                ref: "hero",
                attrs: {
                    content: t.category
                }
            }), t._v(" "), n("section", {
                staticClass: "v_section v_articles",
                class: ["v_" + t.category.id]
            }, [n("ul", {
                class: ["v_items" + t.articles.length]
            }, t._l(t.articles, function(t) {
                return n("li", [n("ArticleCard", {
                    attrs: {
                        article: t
                    }
                })], 1)
            }), 0)])], 1)
        },
        a = [],
        s = {
            render: i,
            staticRenderFns: a
        };
    e.a = s
}, function(t, e, n) {
    "use strict";
    var i = function() {
            var t = this,
                e = t.$createElement,
                n = t._self._c || e;
            return n("header", {
                staticClass: "v_section v_hero"
            }, [n("div", {
                directives: [{
                    name: "bg",
                    rawName: "v-bg",
                    value: {
                        folder: t.content.id,
                        name: "hero"
                    },
                    expression: "{ folder: content.id, name: 'hero' }"
                }],
                staticClass: "v_bg"
            }, [t._m(0)]), t._v(" "), n("div", {
                staticClass: "v_sectionRestrict"
            }, [n("div", {
                staticClass: "v_sectionContent"
            }, [n("h1", {
                domProps: {
                    innerHTML: t._s(t.content.title)
                }
            }), t._v(" "), t.content.subtitle ? n("p", {
                staticClass: "v_headline",
                domProps: {
                    innerHTML: t._s(t.content.subtitle)
                }
            }) : t._e(), t._v(" "), t.content.video.videoId ? [n("button", {
                staticClass: "v_btn v_btnIconRight",
                on: {
                    click: t.play
                }
            }, [n("span", {
                domProps: {
                    innerHTML: t._s(t.$json.ui.watchVideo)
                }
            }), t._v(" "), n("i", {
                staticClass: "fn_play"
            })])] : t._e()], 2)]), t._v(" "), n("div", {
                staticClass: "v_video",
                class: "youku" === t.content.video.type ? "g_videoYoukuContainer" : ""
            }, [n("div", {
                ref: "video",
                attrs: {
                    id: "youku" === t.content.video.type ? "g_youkuContainerId" : ""
                }
            }), t._v(" "), n("button", {
                staticClass: "v_btnRoundM v_btnClose",
                on: {
                    click: t.stop
                }
            }, [n("i", {
                staticClass: "fn_close"
            }), t._v(" "), n("span", {
                domProps: {
                    innerHTML: t._s(t.$json.voices.close)
                }
            })])]), t._v(" "), "home" !== t.content.id ? n("button", {
                staticClass: "v_btnRoundM v_btnScrollTo",
                on: {
                    click: t.goContent
                }
            }, [n("i", {
                staticClass: "fn_angleDownCircle"
            }), t._v(" "), n("span", {
                staticClass: "v_visually_hidden",
                domProps: {
                    innerHTML: t._s(t.$json.voices.goToCategories)
                }
            })]) : t._e(), t._v(" "), n("div", {
                staticClass: "v_articlesAnchor"
            })])
        },
        a = [function() {
            var t = this,
                e = t.$createElement,
                n = t._self._c || e;
            return n("div", {
                staticClass: "v_backgroundVideo",
                attrs: {
                    tabindex: "-1",
                    "aria-hidden": "true"
                }
            }, [n("div")])
        }],
        s = {
            render: i,
            staticRenderFns: a
        };
    e.a = s
}], [148]);