/*! 2021-20-05 14:30  */
var CartManager = function(a, b, c, d) {
    "use strict";
    var e = function(a) {
            return {
                getCart: function() {
                    return a.cart
                },
                getDetailedCart: function() {
                    return a.detailedCart
                },
                getOrganizedCart: function() {
                    return a.organizedCart
                }
            }
        },
        f = !1,
        g = new Queue.Listener,
        h = [],
        i = {},
        j = {};

    function k() {
        d.location.reload()
    }

    function l(a) {
        return a.cartRead.then(function(a) {
            log("cartRead:", a), h = a.cart, j = a.organizedCart
        }, function(a) {
            log("cartRead error", a)
        }), a.addedProduct.then(function(a) {
            log("addedProduct:", a), i = a
        }, function(a) {
            log("addedProduct error", a)
        }), Promise.all([a.addedProduct, a.cartRead]).then(function() {
            log("successful cartUpdate"), f = !1, t()
        })
    }

    function m(b, c, d, e, g) {
        var i = {};
        return f = !0, c = parseInt(c, 10), e = parseFloat(e), d && (i.promotionCode = d), isNaN(e) || (i.amount = e), h.map(function(a) {
            if (isNaN(e)) {
                if (a.legacyId === b && a.quantity === c) return Promise.resolve()
            } else if (e === a.unitPrice && a.legacyId === b && a.quantity === c) return Promise.resolve()
        }), g ? a.callbacks.cartUpdate(b, c, i).then(k) : a.callbacks.cartUpdate(b, c, i).then(l)
    }

    function n(b, c, d) {
        return f = !0, c = parseInt(c, 10), d = parseFloat(d), a.callbacks.giftCardUpdate(b, c, d).then(l)
    }

    function o(b, c, d) {
        var e = {};
        return f = !0, c && (e.promotionCode = c), d && (e.amount = d), a.callbacks.cartRemoveItem(b, e).then(k)
    }

    function p(b) {
        return f = !0, a.callbacks.cartRemoveNextOrderItem(b).then(k)
    }

    function q(b, c) {
        return f = !0, a.callbacks.addSubscription(b, c).then(function(a) {
            return l(a), a.subscription
        })
    }

    function r(b, c) {
        return f = !0, a.callbacks.updateSubscription(b, c).then(function(a) {
            return l(a), a.subscription
        })
    }

    function s() {
        return f = !0, a.callbacks.removeSubscription().then(l)
    }

    function t() {
        g.update(new e({
            cart: cartTools.createCartByIdCopy(h),
            organizedCart: j,
            detailedCart: dataArrange.copyObject(h)
        })), b(function() {
            b(c).trigger("cartUpdated")
        })
    }

    function u() {
        a.callbacks.cartForceRead().then(function(a) {
            log("cartRead (forceRefresh):", a), h = a.cart, j = a.organizedCart, isEmpty(h) || t()
        })
    }

    function v() {
        a.callbacks.cartRead().then(function(a) {
            log("cartRead (normal):", a), h = a.cart, j = a.organizedCart, t()
        })
    }

    function w() {
        return a.callbacks.cartSessionClear()
    }

    function x() {
        return a.callbacks.cartSessionClear().then(function() {
            return a.callbacks.customerSessionClear()
        })
    }
    b(c).on("forceCartUpdate", function() {
        u()
    }).on("click", "#confirm-reset-cart", function() {
        a.callbacks.cartServerReset().then(function(a) {
            log("cartRead (after reset):", a), h = a.cart, j = a.organizedCart, i = Promise.resolve(null), t(), b(".cart-info-trigger").focus(), b(c).trigger("cartReset")
        })
    }).on("click", ".clear-session-cart", function() {
        log("clearing cart"), w()
    }).on("click", ".clear-session-customer-cart", function() {
        log("clearing cart and customer info"), x()
    }).on("click", "#ta-registration-member-yes", function() {
        b("#ta-continue-bottom").addClass("set-session-force-login")
    }).on("click", "#ta-registration-member-no", function() {
        b("#ta-continue-bottom").removeClass("set-session-force-login")
    }), b("#checkout-confirmation").length || b(".checkout-order-confirmation").length ? x().then(function() {
        return a.callbacks.customerSessionSetForceLogin()
    }).then(function() {
        v(), a.callbacks.customerRead(!0)
    }) : b("#main").not(".checkout").length && b(function() {
        v()
    });

    function y() {
        return a.callbacks.getNotification()
    }
    return {
        getCartContent: function() {
            return cartTools.createCartByIdCopy(h)
        },
        getDetailedCart: function() {
            return dataArrange.copyObject(h)
        },
        getAddedProduct: function() {
            return i
        },
        addListener: function(a) {
            g.add(a)
        },
        updateItem: m,
        removeItem: o,
        removeNextOrderItem: p,
        forceCartUpdate: u,
        addSubscription: q,
        updateSubscription: r,
        removeSubscription: s,
        getNotification: y,
        updateGiftCard: n
    }
}(config, $, document, window);