/**
 */
;
(function($, undefined) {
    'use strict';

    var PLUGIN_NAME = 'a11y-tabpanel';

    $.fn.extend({
        a11yTabPanel: function a11yTabPanel() {
            return $(this).each(function() {
                var $this = $(this);
                if (!$this.data(PLUGIN_NAME)) {
                    $this.data(PLUGIN_NAME, new TabPanel($this));
                }
            });
        } // a11yTabPanel
    });
    $.extend($.fn.a11yTabPanel, {
        PLUGIN_NAME: PLUGIN_NAME,
        version: '0.1.1'
    });

    function _p(name) {
        return '.' + PLUGIN_NAME + ('undefined' === typeof name ? '' : '-' + name);
    };

    function _ucfirst(string) {
        return string[0].toUpperCase() + string.slice(1);
    };

    /**
     * Keycodes needed for the component.
     */
    function KeyCodes() {
        this.tab = 9;
        this.enter = 13;
        this.esc = 27;

        this.space = 32;
        this.pageup = 33;
        this.pagedown = 34;
        this.end = 35;
        this.home = 36;

        this.left = 37;
        this.up = 38;
        this.right = 39;
        this.down = 40;
    }; // KeyCodes

    function TabPanel($el) {
        this.$panel = $el;
        this.$tabs = this.$panel.find(_p('tab'));
        if (!this.$tabs.length)
            return this;

        this.keys = new KeyCodes();
        this.$panels = this.$panel.find(_p('panel'));
        this.$activeTab = this.$tabs.filter('[aria-selected="true"]');
        this.bindHandlers();
        this.init();
    }; // TabPanel

    $.extend(TabPanel.prototype, {
        init: function init() {
            var $activeTab = this.$tabs.filter('[aria-selected="true"]');
            if (!$activeTab.length) {
                $activeTab = this.$tabs.first();
            }
            this.$panels.attr('aria-hidden', 'true');
            if ($('html').hasClass('close-intro')) {
                $('#' + $activeTab.attr('aria-controls')).attr('aria-hidden', 'false');
            }
        }, // init()

        switchTabs: function switchTabs($current, $new) {
            var
                $currentPanel = $('#' + $current.attr('aria-controls')),
                $newPanel = $('#' + $new.attr('aria-controls')),
                cbArgs = [$new, $newPanel, $current, $currentPanel];

            this.$panel.trigger('preSwitch.a11yTabPanel', cbArgs);
            $current
                .removeClass(_p('active').slice(1))
                .attr({
                    'tabindex': '-1',
                    'aria-selected': 'false'
                });
            $currentPanel
                .attr('aria-hidden', 'true');
            $newPanel
                .attr('aria-hidden', 'false');
            $new
                .attr({
                    'tabindex': '1',
                    'aria-selected': 'true'
                });

            this.$activeTab = $new.focus();
            this.$panel.trigger('postSwitch.a11yTabPanel', cbArgs);
        }, // switchTabs()

        bindHandlers: function bindHandlers() {
            var that = this,
                tabsSelector = _p('tab'),
                panelsSelector = _p('panel');

            // Bind handlers for the tabs.
            $.each(['keydown', 'keypress', 'mousedown', 'focus', 'blur'], function(i, v) {
                that.$panel.on(v, tabsSelector, function(e) {
                    return that['handleTab' + _ucfirst(v)]($(this), e);
                });
            });

            // Bind handlers for the panels.
            $.each(['keydown', 'keypress'], function(i, v) {
                that.$panel.on(v, panelsSelector, function(e) {
                    return that['handlePanel' + _ucfirst(v)]($(this), e);
                });
            });
        }, // bindHandlers()

        handleTabKeydown: function handleTabKeydown($tab, e) {
            if (e.altKey) return true;

            switch (e.keyCode) {
                case this.keys.left:
                case this.keys.up:
                    if (!e.ctrlKey) {
                        var curIdx = this.$tabs.index($tab),
                            $newTab;
                        if (0 === curIdx) {
                            $newTab = this.$tabs.last();
                        } else {
                            $newTab = this.$tabs.eq(curIdx - 1);
                        }
                        this.switchTabs($tab, $newTab);
                    }

                    e.stopPropagation();
                    return false;

                case this.keys.right:
                case this.keys.down:
                    var curIdx = this.$tabs.index($tab),
                        $newTab;
                    if (curIdx === this.$tabs.length - 1) {
                        $newTab = this.$tabs.first();
                    } else {
                        $newTab = this.$tabs.eq(curIdx + 1);
                    }
                    this.switchTabs($tab, $newTab);

                    e.stopPropagation();
                    return false;

                case this.keys.home:
                case this.keys.end:
                    this.switchTabs($tab, this.$tabs[this.keys.home === e.keyCode ? 'first' : 'last']());
                    e.stopPropagation();
                    return false;
            }
        }, // handleTabKeydown()

        handleTabKeypress: function handleTabKeypress($tab, e) {
            if (e.altKey) return true;

            switch (e.keyCode) {
                case this.keys.pageup:
                case this.keys.pagedown:
                    if (!e.ctrlKey) return true;

                case this.keys.enter:
                case this.keys.space:
                case this.keys.left:
                case this.keys.up:
                case this.keys.right:
                case this.keys.down:
                case this.keys.home:
                case this.keys.end:
                    e.stopPropagation();
                    return false;
            }

            return true;
        }, // handleTabKeypress()

        handleTabMousedown: function handleTabMousedown($tab, e) {
            this.switchTabs(this.$activeTab, $tab);

            return true;
        }, // handleTabMousedown()

        handleTabFocus: function handleTabFocus($tab, e) {
            $tab.addClass(_p('active').slice(1));
            this.$panel.trigger('tabFocus.a11yTabPanel', [$tab, this.$tabs, this.$panel]);

            return true;
        }, // handleTabFocusin()

        handleTabBlur: function handleTabBlur($tab, e) {
            $tab.removeClass(_p('active').slice(1));
            this.$panel.trigger('tabBlur.a11yTabPanel', [$tab, this.$tabs, this.$panel]);

            return true;
        }, // handleTabBlur()

        handlePanelKeydown: function handlePanelKeydown($panel, e) {
            if (e.altKey) return true;

            switch (e.keyCode) {
                case this.keys.left:
                case this.keys.up:
                    if (!e.ctrlKey) return true;

                    // Move focus to the tab.
                    $('#' + $panel.attr('aria-labelledby')).focus();
                    e.stopPropagation();
                    return false;

                case this.keys.pageup:
                    if (!e.ctrlKey) return true;

                    var $tab = this.$tabs.filter('[aria-selected="true"]'),
                        curIdx = this.$tabs.index($tab);

                    this.switchTabs(
                        $tab,
                        curIdx ? this.$tabs.eq(curNdx - 1) : this.$tabs.last()
                    );
                    e.preventDefault();
                    e.stopPropagation();
                    return false;

                case this.keys.pagedown:
                    if (!e.ctrlKey) return true;

                    var $tab = $('#' + $panel.attr('aria-labelledby')),
                        curIdx = this.$tabs.index($tab);

                    this.switchTabs(
                        $tab,
                        curIdx === this.$tabs.length - 1 ? this.$tabs.first() : this.$tabs.eq(curIdx + 1)
                    );
                    e.preventDefault();
                    e.stopPropagation();
                    return false;

                case this.keys.esc:
                    e.stopPropagation();
                    return false;
            }

            return true;
        }, // handlePanelKeydown()

        handlePanelKeypress: function handlePanelKeypress($panel, e) {
            if (e.altKey) return true;

            var stop = false;
            stop |= (e.ctrlKey && (e.keyCode == this.keys.pageup || e.keyCode == this.keys.pagedown));
            stop |= (this.keys.esc === e.keyCode);
            if (stop) {
                e.stopPropagation();
                e.preventDefault();

                return false;
            }

            return true;
        } // handlePanelKeypress()
    });

})(jQuery);