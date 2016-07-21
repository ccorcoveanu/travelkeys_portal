/*
Main Javascript file
Author: Graffino (http://www.graffino.com)
*/
// Linting exceptions
/* global google, wNumb, MarkerClusterer, clearMarkers, ClusterIcon */

// Global Vars
var $html                   = $('html');
var $body                   = $('body');
var $textarea               = $('.js-textarea');
var windowInnerWidth        = Math.max(document.documentElement.clientWidth, window.innerWidth || 0);
var windowInnerHeight       = Math.max(document.documentElement.clientHeight, window.innerHeight || 0);
var $matchHeight            = $('.js-match-height');

// Scroll
var lastScrollTop           = 0;
var poolingDelay            = 250;
var scrollEvent             = false;
var $scrollStopPoint        = $('.js-scroll-stop-point');
var scrollStopClass         = '-is-bottom';
var thisScrollPosition       = 0;

// Plugin: Slick
var $carousel               = $('.js-slider');
var $testimonialCarousel    = $('.js-testimonial-carousel');
var $calendarsCarousel      = $('.js-calendars-carousel');
var $villasCarousel         = $('.js-villas-carousel');
var $heroCarousel           = $('.js-hero-carousel');
var $teamCarousel           = $('.js-team-carousel');
var $teamCarouselNav        = $('.js-team-carousel-nav');
var $heroCarouselNav        = $('.js-hero-carousel-nav');

// Filter
var $datepicker             = $('.js-datepicker');
var $counter                = $('.js-counter');
var $counterButton          = $('.js-counter-button');
var $closeFilters           = $('.js-close-filters');
var $calendar               = $('.js-calendar');

// Navigation
var $nav                    = $('.js-nav');
var $header                 = $('.js-header');
var $hamburger              = $('.js-hamburger');
var $hamburgerText          = $('.js-hamburger-text');
var $siteSearch             = $('.js-site-search');
var $contact                = $('.js-contact');
var $megaNav                = $('.js-mega-nav');
var $megaNavButton          = $('.js-mega-nav-button');

// Plugin: NoUiSlider
var $rangeSlider            = $('.js-no-slider');
var $rangeSliderMin         = $('.js-slider-min span');
var $rangeSliderMax         = $('.js-slider-max span');

// Service: Map
var $mapSearch              = $('.js-map-search');
var $mapBounds              = $('.js-map-bounds');
var $mapMarkers             = $('.js-map-markers');
var map                     = null;
var currentMarker           = null;
var markerIcon              = 'themes/tkcorporate/assets/images/svg/icon-pin-black.svg';
var markerIconHover         = 'themes/tkcorporate/assets/images/svg/icon-pin-yellow.svg';

// Search Page
var $filterAside            = $('.js-filter-aside');
var $filterAsideWrapper     = $('.js-filter-aside__container');
var $filterAsideContainer   = $('.js-search');
var $searchToggle           = $('.js-search-toggle');
var $searchToggleContainer  = $('.js-search-toggle-container');
var $filtersToggle          = $('.js-search-filters');
var $filtersButton          = $('.js-show-filters');
var $mapAside               = $('.js-map-aside');
var $sectionHeader          = $('.js-section-header');
var $resultsContainer       = $('.js-search-results');

// Property Page
var $bookingPanel           = $('.js-booking');
var $bookingButton          = $('.js-booking-button');
var $bookingContainer       = $('.js-booking-container');
var $availabilitySection    = $('.js-availability-section');
var $heroSection            = $('.js-hero-section');

// Tabs
var $tab                    = $('.js-tab');
var $tabButton              = $('.js-tab-button');
var $openTabs               = $('.js-tabs-open');
var $tabsTitle              = $('.js-tabs-title');
var $tabsWrapper            = $('.js-tabs-wrapper');
var $tabsContainer          = $('.js-tabs-container');
var $tabsSection            = $('.js-tabs-section');
var $openTabsContainer      = $('.js-tabs-open-container');
var $tabsStart              = $('.js-tabs-start');
var $tabsEnd                = $('.js-tabs-end');

// Plugin: Select2
var $select2                = $('select.js-select2');
var $select2Alt             = $('select.js-select2-alt');

// Searchbar
var $dates                  = $('.js-dates');
var $datesButton            = $('.js-dates-button');
var $datesContainer         = $('.js-dates-container');
var $datesCheckin           = $('.js-dates-checkin');
var $datesCheckout          = $('.js-dates-checkout');
var $searchbarLocation      = $('.js-searchbar-location');
var $searchbar              = $('.js-searchbar');
var $searchbarPeriod        = $('.js-searchbar-period');

// Expand Buttons
var $expandableButton       = $('.js-button-expand');
// Const
var FILTERS_HEIGHT          = $filterAside.outerHeight();
var TABS_HEIGHT             = $tabsContainer.outerHeight();

// Map
var map;
var infowindow              = null;

// Custom elements
var $arrowLeft              = '<button type = "button" data-role = "none" class = "slick-prev icon icon__nav-left-lighter">Prev</button>',
    $arrowRight             = '<button type = "button" data-role = "none" class = "slick-next icon icon__nav-right-lighter">Next</button>',

    $arrowLeftAlt           = '<button type = "button" data-role = "none" class = "slick-prev icon icon__nav-left">Prev</button>',
    $arrowRightAlt          = '<button type = "button" data-role = "none" class = "slick-next icon icon__nav-right">Next</button>',

    $arrowLeftMedium        = '<button type = "button" data-role = "none" class = "slick-prev icon icon__nav-left-medium">Prev</button>',
    $arrowRightMedium       = '<button type = "button" data-role = "none" class = "slick-next icon icon__nav-right-medium">Next</button>',

    $arrowLeftSmall         = '<button type = "button" data-role = "none" class = "slick-prev icon icon__nav-left-small">Prev</button>',
    $arrowRightSmall        = '<button type = "button" data-role = "none" class = "slick-next icon icon__nav-right-small">Next</button>',

    $arrowLeftWhite         = '<button type = "button" data-role = "none" class = "slick-prev icon icon__nav-left-white js-slick-prev">Prev</button>',
    $arrowRightWhite        = '<button type = "button" data-role = "none" class = "slick-next icon icon__nav-right-white js-slick-next">Next</button>';

// TravelKeys JS
var travelkeys = {

    init: function() {

        // Links actions
        travelkeys.linksHandler();

        // Browser Detect
        // Plugin: https://github.com/gabceb/jquery-browser-plugin
        travelkeys.detectBrowser();

        // Plugin: Slick
        travelkeys.slick();

        // Plugin: Datepicker
        travelkeys.datepicker();

        // Input incrementer
        travelkeys.inputIncrementer();

        // Menu toggle
        travelkeys.nav();

        // Placeholder
        travelkeys.placeholder();

        // Plugin: Select2
        travelkeys.select2();

        // Plugin: FancyBox
        travelkeys.fancybox();

        // Searchbar actions
        travelkeys.searchBar();

        // Scroll events
        travelkeys.scrollHandler();

        // Smooth Target Scrolling
        travelkeys.targetScrolling();

        // Resize events
        travelkeys.resizeHandler();

        // Menu visibility
        travelkeys.menuVisibility();

        // Service: Google maps
        travelkeys.googleMap();

        // Plugin: UI Slider
        travelkeys.rangeSlider();

        // Search page actions
        travelkeys.searchPanel();

        // Sticky filters actions
        travelkeys.stickyFilters();

        // Sticky booking panel actions
        travelkeys.stickyBookingPanel();

        // Sticky map actions
        travelkeys.stickyMap();

        // Auto-extending textareas
        travelkeys.textarea();

        // Expandable sections
        travelkeys.expandable();

        // Plugin: matchHeight
        travelkeys.matchHeight();

        // Tabs
        travelkeys.tabs();

        // Sticky Tabs
        travelkeys.stickyTabs();
    },

    // Links handler
    linksHandler: function() {

        // Initialize Module
        function __init () {

            // Open in new window links with rel=external code
            $('a[rel="external"]').attr('target','_blank');
            // Prevent default action on # (hash) links
            $('a[href="#"]').on('click', function(e) { e.preventDefault(); });
        }

        // Initialize Module
        return __init();
    },

    // Browser Detect
    // Plugin: https://github.com/gabceb/jquery-browser-plugin
    detectBrowser: function() {
        // Initialize function
        function __init() {
            if ($.browser.msie) {
                $html.addClass('browser-ie');
            }
            if ($.browser.msedge) {
                $html.addClass('browser-edge');
            }
            if ($.browser.mozilla) {
                $html.addClass('browser-moz');
            }
            if ($.browser.chrome) {
                $html.addClass('browser-chrome');
            }
            if ($.browser.safari) {
                $html.addClass('browser-safari');
            }
            if ($.browser.ipad || $.browser.ipod || $.browser.iphone) {
                $html.addClass('browser-ios');
            }
            if ($.browser.desktop) {
                $html.addClass('browser-desktop');
            }
            if ($.browser.mobile) {
                $html.addClass('browser-mobile');
            }
            if ($.browser.win) {
                $html.addClass('browser-windows');
            }
            if ($.browser.mac) {
                $html.addClass('browser-mac');
            }
        }
        // Initialize module
        return __init();
    },

    // matchHeight
    // Plugin: https://github.com/liabru/jquery-match-height
    matchHeight: function() {
        // Initialize Module

        function __init() {
            if ($matchHeight.length > 0) {
                $matchHeight.matchHeight();
            }
        }

        // Initialize Module
        return __init();
    },

    // Smooth Target Scrolling
    targetScrolling: function () {
        // Initialize Module
        function __init() {
            $('a[href*=#]:not([href=#]):not([class*=modal]):not([class*=fancybox])').click(function() {
                if (location.pathname.replace(/^\//,'') === this.pathname.replace(/^\//,'') || location.hostname === this.hostname) {

                    var target = $(this.hash);
                    target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
                       if (target.length) {
                         $('html,body').animate({
                             scrollTop: target.offset().top
                        }, 1000);
                        return false;
                    }
                }
            });
        }

        // Initialize Module
        return __init();
    },

    // Plugin: Slick
    slick: function() {
        // Check http://kenwheeler.github.io/slick/
        // Initialize Module
        function __init() {

            if ($carousel.length > 0) {
                $carousel.slick({
                    dots          : true,
                    arrows        : false,
                    speed         : 800,
                    infinite      : true,
                    autoplay      : true,
                    autoplaySpeed : 5000,
                    responsive    : [
                        {
                            breakpoint : 3000,
                            settings   : {
                                    slidesToShow  : 1,
                                    centerMode    : true,
                                    centerPadding : '400px'
                            }
                        },
                        {
                            breakpoint : 2400,
                            settings   : {
                                    slidesToShow  : 1,
                                    centerMode    : true,
                                    centerPadding : '250px'
                            }
                        },
                        {
                            breakpoint : 1680,
                            settings   : {
                                    centerMode    : true,
                                    centerPadding : '100px'
                            }
                        },
                        {
                            breakpoint : 1440,
                            settings   : {
                                    centerMode : false
                            }
                        },
                        {
                            breakpoint : 960,
                            settings   : {
                                    slidesToShow  : 1,
                                    centerMode    : true,
                                    centerPadding : '80px'
                            }
                        },
                        {
                            breakpoint : 670,
                            settings   : {
                                    centerMode : false
                            }
                        }
                    ]
                });
            }

            if ($testimonialCarousel.length > 0) {
                $testimonialCarousel.slick({
                    dots          : false,
                    arrows        : true,
                    infinite      : true,
                    autoplay      : true,
                    autoplaySpeed : 5000,
                    speed		  : 500,
				    fade		  : true,
				    cssEase		  : 'linear',
                    prevArrow     : $arrowLeft,
                    nextArrow     : $arrowRight,
                    responsive    : [
                        {
                            breakpoint : 960,
                            settings   : {
                                prevArrow : $arrowLeftSmall,
                                nextArrow : $arrowRightSmall
                            }
                        }
                    ]
                });
            }

            if ($calendarsCarousel.length > 0) {
                $calendarsCarousel.slick({
                    dots           : false,
                    slidesToShow   : 3,
                    slidesToScroll : 1,
                    speed          : 800,
                    infinite       : false,
                    arrows         : true,
                    prevArrow      : $arrowLeftAlt,
                    nextArrow      : $arrowRightAlt,
                    responsive     : [
                        {
                            breakpoint : 960,
                            settings   : {
                                slidesToShow : 2,
                                prevArrow    : $arrowLeftSmall,
                                nextArrow    : $arrowRightSmall
                            }
                        },
                        {
                            breakpoint : 670,
                            settings   : {
                                slidesToShow : 1,
                                prevArrow    : $arrowLeftSmall,
                                nextArrow    : $arrowRightSmall
                            }
                        }
                    ]
                });
            }

            if ($villasCarousel.length > 0) {
                $villasCarousel.slick({
                    dots           : false,
                    arrows         : false,
                    slidesToShow   : 3,
                    slidesToScroll : 1,
                    speed          : 800,
                    infinite       : false,
                    responsive     : [
                        {
                            breakpoint : 960,
                            settings   : {
                                dots         : true,
                                slidesToShow : 2
                            }
                        },
                        {
                            breakpoint : 670,
                            settings   : {
                                dots         : true,
                                slidesToShow : 1
                            }
                        }
                    ]
                });
            }

            // Hero carousel
            $heroCarousel.slick({
                dots           : false,
                arrows         : true,
                slidesToShow   : 1,
                speed          : 800,
                infinite       : false,
                adaptiveHeight : true,
                draggable      : false
            });

            // Hero carousel nav
            $heroCarouselNav.slick({
                dots           : false,
                arrows         : true,
                prevArrow      : $arrowLeftWhite,
                nextArrow      : $arrowRightWhite,
                slidesToShow   : 7,
                slidesToScroll : 1,
                speed          : 800,
                infinite       : false,
                focusOnSelect  : true,
                draggable      : false
            });

            $teamCarousel.slick({
                dots           : true,
                arrows         : true,
                prevArrow      : $arrowLeftMedium,
                nextArrow      : $arrowRightMedium,
                appendDots     : $teamCarouselNav,
                appendArrows   : $teamCarouselNav,
                slidesToShow   : 3,
                slidesToScroll : 3,
                speed          : 800,
                infinite       : false,
                draggable      : true,
                responsive     : [
                    {
                        breakpoint : 670,
                        settings   : {
                            slidesToShow   : 1,
                            slidesToScroll : 1
                        }
                    }
                ]
            });

            // Populate the next slide variable
            var heroNextSlide;
            $heroCarousel.on('beforeChange', function(event, slick, currentSlide, nextSlide){
                heroNextSlide = nextSlide;
            });

            // Got to selected hero slide on nav click
            $('.js-hero-carousel-nav .slick-slide').on('click', function() {
                var heroGoToSlide = $(this).data('slick-index');
                $(this).addClass('-is-current').siblings().removeClass('-is-current');

                $heroCarousel.slick('slickGoTo', heroGoToSlide);
            });

            $('.js-hero-carousel .slick-prev').on('click', function() {
				$heroCarouselNav.slick('slickPrev');

				$('.js-hero-carousel-nav .slick-slide[data-slick-index="'+ heroNextSlide +'"]').addClass('-is-current').siblings().removeClass('-is-current');
			});

			$('.js-hero-carousel .slick-next').on('click', function() {
				$heroCarouselNav.slick('slickNext');

				$('.js-hero-carousel-nav .slick-slide[data-slick-index="'+ heroNextSlide +'"]').addClass('-is-current').siblings().removeClass('-is-current');
			});

            // Go to next hero slide on next click
            $('.js-slick-next').on('click', function(){
                // Move hero to next slide
                $heroCarousel.slick('slickNext');
                // Set active item on nav
                $('.js-hero-carousel-nav .slick-slide[data-slick-index="'+ heroNextSlide +'"]').addClass('-is-current').siblings().removeClass('-is-current');
            });

            // Go to previous hero slide on next click
            $('.js-slick-prev').on('click', function(){
                // Move to previous sldie
                $heroCarousel.slick('slickPrev');
                // Set active item on nav
                $('.js-hero-carousel-nav .slick-slide[data-slick-index="'+ heroNextSlide +'"]').addClass('-is-current').siblings().removeClass('-is-current');
            });
        }

        // Initialize Module
        return __init();
    },

    // Plugin: Datepicker
    datepicker: function(action) {
        // Check http://api.jqueryui.com/datepicker/

        // Initialize Module
        function __init() {
            // Set to false if not defined
            action = action || false;

            if (!action) {
                // Init select2
                datepickerInit();
            } else if (action === 'keep') {
                // If we have action set, call datepickerKeep
                return datepickerKeep();
            } else if (action === 'isopen') {
                // If we have action set, call datepickerIsOpen
                return datepickerIsOpen();
            }
        }

        // Keep datepicker on scroll
        function datepickerIsOpen() {
            if ($.datepicker._datepickerShowing) {
                return true;
            } else {
                return false;
            }
        }
        // Keep datepicker on scroll
        function datepickerKeep() {
            if ($.datepicker._datepickerShowing) {
                var datepicker = $.datepicker._curInst;
                var datepickerInput = datepicker.input;
                var datepickerDiv = datepicker.dpDiv;
                datepickerDiv.position({
                    my : 'left top',
                    of : datepickerInput,
                    at : 'left bottom'
                });
            }
        }

        // Initialize datepicker
        function datepickerInit() {
            if ($datepicker.length > 0) {
                $datepicker.datepicker({
                    e                      : 30,
                    format                 : 'mm/dd/yyyy',
                    startDate              : '-3d',
                    minDate                : 0,
                    showOtherMonths        : true,
                    navigationAsDateFormat : true,
                    nextText               : '',
                    prevText               : '',
                    dayNamesMin            : [ 'Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat' ]
                });
            }

            if ($dates.length > 0) {
                $dates.datepicker({
                    e                      : 30,
                    format                 : 'dd.mm.yy',
                    startDate              : '-3d',
                    minDate                : 0,
                    showOtherMonths        : true,
                    navigationAsDateFormat : true,
                    nextText               : '',
                    prevText               : '',
                    dayNamesMin            : [ 'Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat' ],
                    numberOfMonths         : 2,
                    beforeShowDay: function(date) {
                        var date1 = $.datepicker.parseDate($.datepicker._defaults.dateFormat,
                        $datesCheckin.val());
                        var date2 = $.datepicker.parseDate($.datepicker._defaults.dateFormat, $datesCheckout.val());
                        return [true, date1 && ((date.getTime() === date1.getTime()) || (date2 && date >= date1 && date <= date2)) ? 'ui-selected-range' : ''];
                    },

                    onSelect: function(dateText) {
                        var date1 = $.datepicker.parseDate($.datepicker._defaults.dateFormat, $datesCheckin.val());
                        var date2 = $.datepicker.parseDate($.datepicker._defaults.dateFormat, $datesCheckout.val());
                        var selectedDate = $.datepicker.parseDate($.datepicker._defaults.dateFormat, dateText);

                        if (!date1 || date2) {
                            $datesCheckin.val(dateText);
                            $datesCheckout.val('');
                            $(this).datepicker();
                        } else if( selectedDate < date1 ) {
                            $datesCheckout.val($datesCheckin.val());
                            $datesCheckin.val(dateText);
                            $(this).datepicker();
                        } else {
                            $datesCheckout.val(dateText);
                            $(this).datepicker();
                        }

                        $searchbarPeriod.text($datesCheckin.val() + ' - ' + $datesCheckout.val());
                    }
                });
            }

            var currMonth = new Date().getMonth();
            var currYear = new Date().getFullYear();

            var date1 = new Date(currYear, currMonth ,5);
            var date2 = new Date(currYear, currMonth, 15);

            if ($calendar.length > 0) {
                $calendar.datepicker({
                    e                      : 30,
                    format                 : 'mm/dd/yyyy',
                    startDate              : '-3d',
                    minDate                : 0,
                    navigationAsDateFormat : false,
                    dayNamesMin            : [ 'Su', 'Mo', 'Tu', 'We', 'Th', 'Fr', 'Sa' ],
                    showOtherMonths        : true,
                    beforeShow             : function () {
                        $(document).scrolTo(0, 0);
                    },
                    // Returns an array of disabled entries
                    beforeShowDay          : function (date) {
                        if (date >= date1 && date <= date2) {
                            return [false, 'ui-unavailable', ''];
                        }
                        return [true, '', ''];
                    }
                });
            }
        }

        // Initialize Module
        return __init();
    },

    // Plugin: Fancybox
    fancybox: function() {
        // Initialize Module
        function __init() {
            if ($('.-has-fancybox').length > 0 || $('.js-fancybox').length > 0) {

                $('.js-modal').fancybox({
                        openEffect      : 'elastic',
                        closeEffect     : 'elastic',
                        closeClick      : false,
                        margin          : [60, 10, 20, 10],
                        padding         : 0,
                        showCloseButton : true,
                        autoDimensions  : true,
                        helpers         : {
                            title   : null,
                            overlay : {
                                closeClick : true,
                                locked     : true,
                                css        : {
                                    'background' : 'rgba(0, 0, 0, 0.9)'
                                }
                            }
                        }
                });

                $('.js-modal-form').fancybox({
                        closeClick      : false,
                        margin          : 0,
                        padding         : 0,
                        centerOnScroll  : true,
                        showCloseButton : true,
                        autoDimensions  : true,
                        beforeLoad      : function() {
                            $('body').addClass('fancybox-close--alt');
                             return thisScrollPosition = $(window).scrollTop();
                        },
                        afterLoad       : function() {
                            $('body').css('position', 'fixed');
                        },
                        afterClose      : function() {
                            $('body').removeClass('fancybox-close--alt');
                            if ($bookingContainer.length > 0) {
                                $bookingContainer.css('display', 'block');
                            }
                            $('body').css('position', '');
                            $(window).scrollTop(thisScrollPosition);
                        },
                        helpers         : {
                            title   : null,
                            overlay : {
                                closeClick : true,
                                locked     : true,
                                css        : {
                                    'background' : 'rgba(0, 0, 0, 0.95)'
                                }
                            }
                        }
                });

                $('.js-modal-filters').fancybox({
                        closeClick      : false,
                        margin          : 0,
                        padding         : 0,
                        centerOnScroll  : true,
                        autoCenter      : true,
                        showCloseButton : true,
                        autoDimensions  : true,
                        autoScale       : true,
                        beforeLoad      : function() {
                            $('body').addClass('fancybox-close--alt');
                            return thisScrollPosition = $(window).scrollTop();
                        },
                        afterLoad       : function() {
                            $('body').css('position', 'fixed');
                            $('.fancybox-outer').addClass('search-results');
                            if (windowInnerWidth > 960) {
                                $.fancybox.close();
                            }
                        },
                        afterClose      : function() {
                            $('body').removeClass('fancybox-close--alt');
                            $('body').css('position', '');
                            $(window).scrollTop(thisScrollPosition);
                        },
                        helpers         : {
                            title   : null,
                            overlay : {
                                closeClick : true,
                                locked     : true,
                                css        : {
                                    'background' : 'rgba(0, 0, 0, 0.95)'
                                }
                            }
                        }
                });

                $('.js-close-fancybox').on('click', function() {
                    $.fancybox.close();
                });

                $('.js-modal-info').fancybox({
                        closeClick      : false,
                        margin          : 0,
                        padding         : 0,
                        centerOnScroll  : true,
                        showCloseButton : false,
                        autoCenter      : true,
                        autoDimensions  : false,
                        beforeLoad      : function() {
                            return thisScrollPosition = $(window).scrollTop();
                        },
                        afterLoad       : function() {
                            $('body').css('position', 'fixed');
                        },
                        afterClose      : function() {
                            $('body').css('position', '');
                            $(window).scrollTop(thisScrollPosition);
                        },
                        helpers         : {
                            title   : null,
                            overlay : {
                                closeClick : false,
                                locked     : false,
                                css        : {
                                    'background' : 'rgba(0, 0, 0, 0.9)'
                                }
                            }
                        }
                });
                $('.js-property-modal').fancybox({
					openEffect			:	'elastic',
					closeEffect			:	'elastic',
					closeClick			:	true,
					autoSize				:	true,
					fitToView				:	true,
					padding					:	0,
					showNavArrows			:   true,
					arrows					:	true,
					helpers					:	{
													title	:	null,
													overlay	:	{
														closeClick	:	true,
														locked		:	true,
														css			:	{
																			'background' : 'rgba(0, 0, 0, 0.9)'
														}
													}
												},
					beforeLoad			: function() {
						$('body').addClass('property-gallery');
					},

					afterShow: function(){
                        $("iframe[src*='youtube']").parent().parent().next().addClass('youtube-close');
						$(".hero__wrapper").clone().appendTo(".fancybox-wrap");
                    }
				});

                $('.js-fancybox').fancybox({
                    openEffect  : 'elastic',
                    closeEffect : 'elastic',
                    closeClick  : true,
                    autoSize    : true,
                    fitToView   : true,
                    padding     : 0,
                    arrows      : false,
                    helpers     : {
                        title   : null,
                        overlay : {
                            closeClick : true,
                            locked     : true,
                            css        : {
                                'background' : 'rgba(0, 0, 0, 0.9)'
                            }
                        }
                    },
                    afterShow: function(){
                        $("iframe[src*='youtube']").parent().parent().next().addClass('youtube-close');
                    }
                });
            }
        }
        // Initialize Module
        return __init();
    },

    // Input incrementer
    inputIncrementer: function() {

        // Initialize Module
        function __init() {
            if ($counter.length > 0) {
                // On click checks for either '+' or '-'
                $counterButton.on('click', function() {
                    var $button = $(this);
                    // Queries the input it belongs to
                    var value = $button.parent().find('input').val();
                    var oldValue = parseFloat(value) || 1;
                    var newValue;

                    // If has '+' increments by 1
                    if ($button.text() === '+') {
                        newValue = parseFloat(oldValue) + 1;
                    } else {
                        // Prevents to go below 0
                        // Decrements by 1
                        if (oldValue > 0) {
                            newValue = parseFloat(oldValue) - 1;
                        } else {
                            newValue = 0;
                        }
                    }
                    // Updates the new value on click
                    $button.parent().find('input').val(newValue);
                });
            }
        }

        return __init();
    },

    // Menu toggle
    nav: function() {

        // Initialize Module
        function __init() {
            if ($hamburger.length > 0) {
                $hamburger.on('click', function() {
                    $hamburger.toggleClass('-state-active');

                    var text = $hamburgerText.text();
                    $hamburgerText.text(text === 'Menu' ? 'Close' : 'Menu');

                    $nav.toggleClass('-state-visible');
                    $body.toggleClass('-overlay');
                });
            }

            if ($megaNavButton.length > 0) {
                $megaNavButton.on('click', function() {
                    $megaNavButton.toggleClass('-state-active');
                    $megaNav.toggleClass('-state-active');
                    $header.toggleClass('-has-mega');
                });
            }
        }

        // Initialize Module
        return __init();
    },

    // Placeholer
    placeholder: function() {

        // Initialize Module
        function __init() {

            if ($siteSearch.length > 0) {
                // Set alternate placeholder texts
                var initial = 'Search by villa name';
                var changed = 'Villa name';

                // Updates placeholder for desktop
                if (windowInnerWidth > 960) {
                    $siteSearch.attr('placeholder', initial);
                }
                else {
                    $siteSearch.attr('placeholder', changed);
                }

                // Updates placeholder for mobile
                $(window).resize(function() {
                    if (windowInnerWidth < 960) {
                        $siteSearch.attr('placeholder', changed);
                    } else if (windowInnerWidth > 960) {
                        $siteSearch.attr('placeholder', initial);
                    }
                });
            }
        }

        // Initialize Module
        return __init();
    },

    // Plugin: Select2
    select2: function(action) {
        // Check https://select2.github.io/options.html

        // Initialize Module
        function __init() {
            // Set to false if not defined
            action = action || false;

            if (!action) {
                // Init select2
                select2Init();
            } else if (action === 'hide') {
                // If we have action set, call select2Hide
                return select2Hide();
            }
        }

        // Hide Select2 dropdowns
        function select2Hide() {
            if ($select2.length > 0) {
                $select2.select2('close');
            }
            if ($select2Alt.length > 0) {
                $select2Alt.select2('close');
            }
        }

        // Init Select2
        function select2Init() {
            if ($select2.length > 0) {
                $select2.select2({
                    // Make sure it loads full div width
                    dropdownAutoWidth       : true,
                    minimumResultsForSearch : -1,
                    containerCss            : { 'display' : 'block' }
                });

                $select2Alt.select2({
                    // Make sure it loads full div width
                    dropdownAutoWidth       : true,
                    containerCss            : { 'display' : 'block' },
                    dropdownCssClass        : 'js-select2-dropdown--alt',
                    minimumResultsForSearch : -1
                });
            }
        }

        // Initialize Module
        return __init();
    },

    // Scroll handler
    scrollHandler: function() {

        // Initialize Module
        function __init () {
            // Check for scroll function
            $(window).scroll(function() {
                scrollEvent = true;

                // Clear Timeout
                clearTimeout($.data(this, 'scrollTimer'));

                $.data(this, 'scrollTimer', setTimeout(function() {

                    // Fire after scroll stopped for 250ms
                    scrollStopped();

                }, poolingDelay));

                // Fire instantly (performance issue)
                scrollInstantly();
            });

            // Fire on scroll in 250ms intervals
            setInterval (function() {
                if (scrollEvent) {

                    scrollThrottled();

                    // Reset scroll count
                    scrollEvent = false;
                }
            }, poolingDelay);
        }

        // Fire after scroll stopped for 250ms
        function scrollStopped() {

        }
        // Fire instantly (performance issue)
        function scrollInstantly() {

            // Manage sticky filters
            travelkeys.stickyFilters();

            // Manage sticky booking panel
            travelkeys.stickyBookingPanel();

            // Manage sticky map
            travelkeys.stickyMap();

            // Tabs
            travelkeys.stickyTabs();
        }
        // Fire on scroll in 250ms intervals
        function scrollThrottled() {

            // Manage menu visibility
            travelkeys.menuVisibility();

            // Hide Select2
            travelkeys.select2('hide');

            // Datepicker Keep
            travelkeys.datepicker('keep');
        }

        // Initialize Module
        return __init();
    },

    // Resize handler
    resizeHandler: function () {

        // Initialize Module
        function __init() {
            $(window).on('resize', function() {
                windowInnerWidth  = Math.max(document.documentElement.clientWidth, window.innerWidth || 0);
                windowInnerHeight = Math.max(document.documentElement.clientHeight, window.innerHeight || 0);
                travelkeys.stickyBookingPanel();
            });
        }

        // Initialize Module
        return __init();
    },

    // Sticky Tabs
    stickyTabs: function() {
        // Initialize Module
        function __init() {
            // Closes tabs on scroll
            closeTabs();
            if ($tabsSection.length > 0) {
                var scrollTop     = $(window).scrollTop(),
                    startPadding  = 60,
                    stopPadding   = 120,
                    bottomPadding = 70,
                    mobileStart   = scrollTop,
                    start         = $tabsStart.offset().top - startPadding,
                    stop          = $tabsEnd.position().top - TABS_HEIGHT,
                    stopPoint     = stop - stopPadding,
                    bottom        = stop - start - bottomPadding;

                // If the window is wider than 960px and
                // window top position is greater than container's top
                if (windowInnerWidth > 960 && scrollTop > start) {
                    if (scrollTop >= stopPoint) {
                        $tabsContainer.addClass('-is-bottom').removeClass('-fixed').css('top', bottom);
                    } else {
                        $tabsContainer.removeClass('-is-bottom').addClass('-fixed');
                    }
                } else if (windowInnerWidth < 960 && mobileStart >= scrollTop) {
                    if (scrollTop >= stopPoint) {
                        $tabsContainer.addClass('-is-bottom').removeClass('-fixed');
                    } else {
                        $tabsContainer.removeClass('-is-bottom').addClass('-fixed');
                    }
                } else {
                    $tabsContainer.removeClass('-fixed');
                }
            }
        }

        // Close filters on scroll
        function closeTabs() {
            $tabsWrapper.addClass('-hidden');
            $openTabsContainer.removeClass('-hidden');
        }

        // Initialize Module
        return __init();
    },

    // Tabs
    tabs: function() {
        // Initialize Module
        function __init() {

            if ($tabButton.length > 0) {
                var initialText = $('.quick-nav__item.-is-current').text();
                $tabsTitle.html(initialText);

                $tabButton.on('click', function() {
                    // Saves the current tab id
                    var tab_id = $(this).attr('data-tab');
                    // Saves current's tab button text
                    var text = $(this).text();

                    // Removes current status form previous items
                    $tabButton.parent().removeClass('-is-current');
                    $tab.removeClass('-is-current');

                    // Assigns current class to selected item
                    $(this).parent().addClass('-is-current');
                    $('#'+tab_id).addClass('-is-current');

                    // Updates the mobile navigation title
                    $tabsTitle.html(text);

                    $tabsWrapper.addClass('-hidden');
                    $openTabsContainer.removeClass('-hidden');

                    // Scrolls to the start of section
                    if ($tabsSection.length > 0) {
                        $('html, body').animate({
                            scrollTop: $tabsSection.offset().top - 60
                        }, 500);
                    }
                });
            }

            // Open tabs
            if ($openTabs.length > 0) {
                $openTabs.on('click', function() {
                    $tabsWrapper.removeClass('-hidden');
                    $openTabsContainer.addClass('-hidden');
                });
            }
        }

        // Initialize Module
        return __init();
    },

    // Menu Visibility & Filters
    menuVisibility: function () {

        // Initialize Module
        function __init() {
            var navbarHeight = $contact.outerHeight();
            var delta = 5;

            if ($body.width() > 960) {
                var scrollTop = $(window).scrollTop();

                if (Math.abs(lastScrollTop - scrollTop) <= delta) {
                    return;
                }

                if (scrollTop > lastScrollTop && scrollTop > navbarHeight) {
                    $contact.addClass('-hidden');
                    $body.addClass('is-collapsed');
                    $filterAside.addClass('-top');
                } else {
                    if (scrollTop + $(window).height() < $(document).height()) {
                        $contact.removeClass('-hidden');
                        $body.removeClass('is-collapsed');
                        $filterAside.removeClass('-top');
                    }
                }
                lastScrollTop = scrollTop;
            }
        }

        // Initialize Module
        return __init();
    },

    // Service: Google map
    googleMap: function (action) {
        // Initialize Module
        function __init() {
            // Set to false if not defined
            action = action || false;

            switch (action) {
                case 'centerMap':
                    centerMap(map);
                break;
                case 'clear':
                    clearMarkers(map);
                break;
                default :
                    // If we have $mapSearch in the DOM
                    if ($mapSearch.length > 0) {
                        // Render default map
                        $mapSearch.each(function() {
                            renderMap($(this), false);
                        });
                    }
                    // If we have mapBounds
                    if ($mapBounds.length > 0) {
                        var toggleBounds = true;

                        $mapBounds.on('click', function() {
                            if (toggleBounds) {
                                deleteMarkers(map);
                                configureMapMarkers(map, true);
                                toggleBounds = false;
                            } else {
                                deleteMarkers(map);
                                configureMapMarkers(map, false);
                                toggleBounds = true;
                            }
                        });
                    }
                break;
            }
        }

        // Render map function
        function renderMap($element) {
            // Configure map
            configureMap($element);
            // Configure markers
            configureMapMarkers(map);
            // Configure marker clustering
            clusterMap(map);
            // Center map
            centerMap(map);
        }

        // Configure map
        function configureMap($element) {
            // Map initial settings
            var mapOptions = {
                    allowZoom          : true,
                    scrollwheel        : false,
                    draggable          : true,
                    currencySymbol     : '$',
                    centerOnPin        : false,
                    zoom               : 9,
                    disableDefaultUI   : true,
                    scaleControl       : false,
                    center             : new google.maps.LatLng(0, 0),
                    mapTypeId          : google.maps.MapTypeId.ROADMAP,
                    zoomControl        : true,
                    zoomControlOptions : {
                            style          : google.maps.ZoomControlStyle.SMALL,
                            position       : google.maps.ControlPosition.LEFT_CENTER
                    }
            };
            // Map Styles (colors, disable features)
            var mapStyles = [
                {
                    featureType : 'water',
                    elementType : 'geometry',
                    stylers     : [
                        { visibility : 'simplified' },
                        { color      : '#00a2a7' }
                    ]
                },
                {
                    featureType : 'landscape',
                    elementType : 'geometry',
                    stylers     : [
                        { visibility : 'simplified' },
                        { color      : '#f1ede6' }
                    ]
                },
                {
                    featureType : 'road',
                    elementType : 'geometry.fill',
                    stylers     : [
                        { visibility : 'on' },
                        { color      : '#f7f6f4' }
                    ]
                },
                {
                    featureType : 'water',
                    elementType : 'labels',
                    stylers     : [
                        { visibility : 'off' }
                    ]
                },
                {
                    featureType : 'road',
                    elementType : 'geometry.stroke',
                    stylers     : [
                        { visibility : 'simplified' },
                        { color      : '#dad4c9' }
                    ]
                },
                {
                    featureType : 'administrative.province',
                    elementType : 'geometry',
                    stylers     : [
                        { visibility : 'off' }
                    ]
                },
                {
                    featureType : 'administrative.locality',
                    elementType : 'geometry',
                    stylers     : [
                        { visibility : 'off' }
                    ]
                },
                {
                    featureType : 'administrative',
                    elementType : 'geometry.fill',
                    stylers     : [
                        { visibility : 'off' }
                    ]
                },
                {
                    featureType : 'administrative.country',
                    elementType : 'geometry.stroke',
                    stylers     : [
                        { visibility : 'on' },
                        { color      : '#ffffff' },
                        { weight     : '1.10' }
                    ]
                },
                {
                    featureType : 'administrative.country',
                    elementType : 'labels',
                    stylers     : [
                        { visibility : 'off' }
                    ]
                },
                {
                    featureType : 'administrative.neighborhood',
                    elementType : 'geometry',
                    stylers     : [
                        { visibility: 'off' }
                    ]
                },
                {
                    featureType : 'administrative.land_parcel',
                    elementType : 'geometry',
                    stylers     : [
                        { visibility: 'off' }
                    ]
                },
                {
                    featureType : 'road',
                    elementType : 'labels',
                    stylers     : [
                        { visibility : 'off' }
                    ]
                },
                {
                    featureType : 'poi',
                    elementType : 'labels',
                    stylers     : [
                        { visibility : 'off' }
                    ]
                },
            ];

            // Create map
            map = new google.maps.Map($element[0], mapOptions);

            // Set map styles
            map.set('styles', mapStyles);

            // Reset map on resize
            google.maps.event.addDomListener(window, 'resize', function() {
                // Trigger map repaint
                google.maps.event.trigger(map, 'resize');
                // Trigger map center
                centerMap(map);
            });

            // Disable right click zoom
            google.maps.event.addListener(map, 'rightclick', function() {
                map.set('disableDoubleClickZoom', true);
            });

            // Enable normal zoom
            google.maps.event.addListener(map, 'click', function() {
                map.set('disableDoubleClickZoom', false);
            });
        }

        // Configure map markers
        function configureMapMarkers(map, showHidden) {
            // Check if markers are hidden
            showHidden = showHidden || false;

            // Get Map Markers
            var $markers = $mapMarkers.find('.js-marker');

            // Add a markers reference
            map.markers = [];

            // Add markers
            $markers.each(function(){
                // Check if marker is hidden
                var markerHidden = $(this).data('hidden');

                if (markerHidden === true) {
                    // Check if we display all markers regardless of their state
                    if (showHidden === true) {
                        addMarker($(this), map);
                    }
                } else {
                    addMarker($(this), map);
                }
            });
        }

        // Add map markers function
        function addMarker($marker, map) {
                // Create new marker
                var latlng = new google.maps.LatLng($marker.data('lat'), $marker.data('lng'));
                var marker = new google.maps.Marker({
                        position : latlng,
                        map      : map,
                        icon     : markerIcon
                    });

                // Add to array
                map.markers.push(marker);

                // If marker contains HTML, add it to an infoWindow
                if ($marker.html()) {
                    // Create info window

                    // Show info window when marker is clicked
                    google.maps.event.addListener(marker, 'click', function() {
                        // Close open info windows (if they exist)
                        if (infowindow) { infowindow.close(); }

                        // Reset market icons
                        resetMarkerIcons();

                        // Set hovered map marker
                        marker.setIcon(markerIconHover);

                        // Set current marker
                        currentMarker = marker;

                        // New infowindow with the HTML content from the marker
                        infowindow = new google.maps.InfoWindow({
                            content        : $marker.html(),
                            maxWidth       : 220,
                            disableAutoPan : true,
                            // pixelOffset : new google.maps.Size(0, 20)
                        });
                        // Open info window
                        infowindow.open(map, marker);
                        // Pan to window
                         map.panTo(marker.getPosition());
                         map.panBy(0,-200);
                    });
                    // Set correct icon on hover
                    google.maps.event.addListener(marker, 'mouseover', function() {
                        marker.setIcon(markerIconHover);
                    });
                    // Set correct icon on mouseout
                    google.maps.event.addListener(marker, 'mouseout', function() {
                        if (currentMarker !== marker) {
                            marker.setIcon(markerIcon);
                        }
                    });
            }
        }

        // Delete map markers
        function deleteMarkers(map) {
            for (var i = 0; i < map.markers.length; i++) {
              map.markers[i].setMap(null);
            }
            map.markers.length = 0;
        }

        // Reset markers
        function resetMarkerIcons() {
            for (var i = 0; i < map.markers.length; i++) {
                map.markers[i].setIcon(markerIcon);
            }
        }

        // Marker clustering
        // Doc: https://googlemaps.github.io/js-marker-clusterer/docs/examples.html
        function clusterMap(map) {
            // Extend useStyle and createCss functions to accept background-size and line-height
            ClusterIcon.prototype.useStyle = function() {
                var index                = Math.max(0, this.sums_.index - 1);
                index                    = Math.min(this.styles_.length - 1, index);
                var style                = this.styles_[index];
                this.url_                = style.url;
                this.height_             = style.height;
                this.width_              = style.width;
                this.textColor_          = style.textColor;
                this.anchor_             = style.anchor;
                this.textSize_           = style.textSize;
                this.backgroundPosition_ = style.backgroundPosition;

                // this is the important line
                this.backgroundSize_   = style.backgroundSize;
                this.lineHeight_   = style.lineHeight;
            };

            ClusterIcon.prototype.createCss = function(pos) {
                var style = [];
                    style.push('background-image:url(' + this.url_ + ');');

                var backgroundPosition = this.backgroundPosition_ ? this.backgroundPosition_ : '0 0';
                    style.push('background-position:' + backgroundPosition + ';');

                // These 2 are the important lines
                var backgroundSize = this.backgroundSize_ ? this.backgroundSize_ : 'cover';
                    style.push('background-size:' + backgroundSize + ';');

				var lineHeight = this.lineHeight_ ? this.lineHeight_ : '1';
					style.push('line-height:' + lineHeight + 'px;');


                if (typeof this.anchor_ === 'object') {
                    if (typeof this.anchor_[0] === 'number' && this.anchor_[0] > 0 && this.anchor_[0] < this.height_) {
                        style.push('height:' + (this.height_ - this.anchor_[0]) +
                            'px; padding-top:' + this.anchor_[0] + 'px;');
                    } else {
                        style.push('height:' + this.height_ + 'px; line-height:' + this.height_ +
                            'px;');
                    }
                    if (typeof this.anchor_[1] === 'number' && this.anchor_[1] > 0 && this.anchor_[1] < this.width_) {
                        style.push('width:' + (this.width_ - this.anchor_[1]) +
                            'px; padding-left:' + this.anchor_[1] + 'px;');
                    } else {
                        style.push('width:' + this.width_ + 'px; text-align:center;');
                    }
                } else {
                    style.push('height:' + this.height_ + 'px; line-height:' +
                        this.lineHeight_ + 'px; width:' + this.width_ + 'px; text-align:center;');
                }

                var txtColor = this.textColor_ ? this.textColor_ : 'black';
                var txtSize  = this.textSize_ ? this.textSize_   : 11;

                style.push('cursor:pointer; top:' + pos.y + 'px; left:' +
                    pos.x + 'px; color:' + txtColor + '; position:absolute; font-size:' +
                    txtSize + 'px; font-family:Arial,sans-serif; font-weight:bold');

                return style.join('');
            };

            var mcStyles = [
            {
                    url                : 'themes/tkcorporate/assets/images/svg/icon-cluster-pin-mega.svg',
                    width              : 50,
                    height             : 60,
                    lineHeight         : 50,
                    textSize           : 16,
                    textColor          : '#333333',
                    backgroundSize     : 'cover',
                    backgroundPosition : '0 3px'
                },
				{
                    url                : 'themes/tkcorporate/assets/images/svg/icon-cluster-pin-mega.svg',
                    width              : 50,
                    height             : 60,
					lineHeight		   : 50,
                    textSize           : 16,
                    textColor          : '#333333',
                    backgroundSize     : 'cover',
                    backgroundPosition : '0 3px'
                },
                {
                    url                : 'themes/tkcorporate/assets/images/svg/icon-cluster-pin-mega.svg',
                    width              : 50,
                    height             : 60,
					lineHeight		   : 50,
                    textSize           : 16,
                    textColor          : '#333333',
                    backgroundSize     : 'cover',
                    backgroundPosition : '0 3px'
                }
            ];

            var mcOptions = {
                styles : mcStyles
            };
            var mc;

            mc = new MarkerClusterer(map, map.markers, mcOptions);
        }

        // Center map according to markers
        function centerMap(map) {
            var bounds = new google.maps.LatLngBounds();

            // Loop through all markers and create bounds
            $.each(map.markers, function(i, marker) {
                var latlng = new google.maps.LatLng(marker.position.lat(), marker.position.lng());

                bounds.extend(latlng);
            });

            // Only 1 marker?
            if (map.markers.length === 1) {
                // set center of map
                map.setCenter(bounds.getCenter());
            } else {
                // Fit to bounds
                // Set zoom
                map.setZoom(7);
                // Set to center
                // map.setCenter(bounds.getCenter());
                // Auto center on markers (use the above or the below - not both)
                map.fitBounds(bounds);
            }
        }

        // Initialize Module
        return __init();
    },

    // Plugin: NoUiSlider
    rangeSlider: function() {

        // Initialize Module
        function __init () {
            if ($rangeSlider.length > 0) {

                // Inits a two handle slider
                $rangeSlider.noUiSlider({
                    start: [200, 5000],
                    connect: true,
                    range: {
                        'min': 200,
                        'max': 5000
                    }
                });

                //  Asigns handle values to etiquets
                $rangeSlider.Link('lower').to($rangeSliderMin, null, wNumb({decimals: 0}));
                $rangeSlider.Link('upper').to($rangeSliderMax, null, wNumb({decimals: 0}));
            }
        }

        // Initialize Module
        return __init();
    },

    // Search panel
    searchPanel: function() {
        function __init() {
            // Toggles between filters and map
            if ($searchToggle.length > 0) {
                $searchToggle.on('click', function() {
                    // Toggles '-active' between two buttons
                    $searchToggle.removeClass('-active');
                    $(this).addClass('-active');

                    if ($(this).hasClass('-anchor-filters')) {
                        // Switches between map and filters left side
                        $filterAsideContainer.removeClass('-has-map').addClass('-has-filters');
                        $filterAside.removeClass('-hidden');
                        $mapAside.addClass('-hidden');
                        // Collpases any expanded items on right
                        $resultsContainer.removeClass('-is-accordion');
                        $sectionHeader.removeClass('-is-accordion');

                    } else if ($(this).hasClass('-anchor-map')) {
                        // Switches between map and filters left side
                        $filterAsideContainer.removeClass('-has-filters').addClass('-has-map');
                        $mapAside.removeClass('-hidden');
                        $filterAside.addClass('-hidden');
                        // Expands filters
                        $resultsContainer.addClass('-is-accordion');
                        // Modifies filters header while expanded
                        $sectionHeader.addClass('-is-accordion');
                    }

                    // Trigger map repaint
                    google.maps.event.trigger(map, 'resize');
                    travelkeys.googleMap('centerMap');

                    // Expands filters
                    $filtersToggle.on('click', function() {
                        $filterAside.addClass('-is-opened').addClass('-half');
                        $sectionHeader.addClass('-is-opened');
                    });

                    $filtersButton.on('click', function() {
                        $filterAside.removeClass('-half').addClass('-full');
                    });
                });

                // Close Filters on click
                if ( $closeFilters.length > 0 ) {
                    $closeFilters.on('click', function(e) {
                        closeFilters();
                        e.preventDefault();
                    });
                }
            }
        }

        // Close filters on scroll
        function closeFilters() {
            if (!travelkeys.datepicker('isopen')) {
                $sectionHeader.removeClass('-is-opened');
                $('.js-filter-aside').removeClass('-full');
                $('.js-filter-aside').removeClass('-is-opened');
            }
        }

        // Initialize Module
        return __init();
    },

    // Searchbar actions
    searchBar: function() {

        // Initialize Module
        function __init() {

            if ($searchbar.length > 0) {
                $datesButton.on('click', function() {
                    $datesContainer.toggleClass('-is-open');
                });

                $select2.on("select2-open", function() {
                    $datesContainer.removeClass('-is-open');
                });

                $searchbarLocation.on('change', function() {
                    if ($datesCheckin.val() || $datesCheckout.val()) {
                        return;
                    } else {
                        $datesContainer.addClass('-is-open');
                    }
                });

                $searchbarLocation.autocompleter({
                    asLocal: false,
                    source: '/suggest',
                    minLength: 2,
                    focusOpen: false,
                });

                $searchbar.on('click', function() {
                  $searchbar.addClass('-is-active');
                });

                $(document).on('click', function(event) {
                  if (!$(event.target).closest($searchbar).length) {
                    if ($(event.target).hasClass('ui-corner-all')) {
                      event.stopPropagation();
                    } else {
                      $searchbar.removeClass('-is-active');
                      $datesContainer.removeClass('-is-open');
                    }
                  }
                });
            }
        }

        // Initialize Module
        return __init();
    },

    // Sticky filters
    stickyFilters: function () {
        // Initialize Module
        function __init() {

            // Manage filters on scroll
            scrollFilters();
        }

        // Manage filters position on scroll
        function scrollFilters() {

            if ($filterAside.length > 0) {

                // Calculate stop point via the set stop point
                var stopPointPadding = 100;
                var stopPointLeftOffset = $scrollStopPoint.offset().top - $filterAside.outerHeight() - stopPointPadding;
                var stopPointRightOffset = $scrollStopPoint.offset().top - $sectionHeader.outerHeight() - FILTERS_HEIGHT - stopPointPadding;

                // Fixing left side filters on scroll
                if ($(window).scrollTop() > $filterAsideContainer.offset().top) {
                    $filterAside.removeClass('-fixed-top');
                    $filterAsideWrapper.removeClass('-fixed-top');
                    $searchToggleContainer.addClass('-fixed-top');

                    if ($(window).scrollTop() > stopPointLeftOffset) {
                        $filterAside.addClass('-bottom');
                        $searchToggleContainer.addClass('-hidden');
                    } else {
                        $filterAside.addClass('-fixed');
                        $filterAside.removeClass('-bottom');
                        $searchToggleContainer.removeClass('-hidden');
                    }
                } else {
                    $filterAside.addClass('-fixed-top');
                    $filterAsideWrapper.addClass('-fixed-top');
                    $searchToggleContainer.removeClass('-fixed-top');
                }
                // Hiding right  side filters on scroll
                if ($(window).scrollTop() > stopPointRightOffset) {
                    $sectionHeader.addClass('-hidden');
                    closeFilters();
                } else {
                    $sectionHeader.removeClass('-hidden');
                }

                // Close Filters on click
                if ( $closeFilters.length > 0 ) {
                    $closeFilters.on('click', function(e) {
                        closeFilters();
                        e.preventDefault();
                    });
                }
            }
        }

        // Close filters on scroll
        function closeFilters() {
            if (!travelkeys.datepicker('isopen')) {
                $sectionHeader.removeClass('-is-opened');
                $('.js-filter-aside').removeClass('-full');
                $('.js-filter-aside').removeClass('-is-opened');
            }
        }

        // Initialize Module
        return __init();
    },

    // Sticky booking panel actions
    stickyBookingPanel: function() {
        // Initialize Module
        function __init() {
            // Manage booking panel on scroll
            scrollBookingPanel();
        }

        // Truncate to integer values
        function truncateDecimals(numToTruncate, intDecimalPlaces) {
            var numPower = Math.pow(10, intDecimalPlaces);
            return ~~(numToTruncate * numPower)/numPower;
        }

        // Manage booking panel on scroll
        function scrollBookingPanel () {
            if ($bookingPanel.length > 0) {
                // Body font-size
                var htmlFontSize = $html.css('font-size');

                // Paddings & Panel Height
                var startPointPadding;
                var stopPointPadding;
                var scrollPadding;
                var scrollPaddingMobile;
                var bookingPanelHeight;
                var mobileStopValue;

                switch (htmlFontSize) {
                    case '16px':
                        startPointPadding   = 105;
                        stopPointPadding    = 10;
                        scrollPadding       = 150;
                        scrollPaddingMobile = 300;
                        bookingPanelHeight  = 470;
                    break;
                    case '15px':
                        startPointPadding   = 115;
                        stopPointPadding    = 8;
                        scrollPadding       = 140;
                        scrollPaddingMobile = 300;
                        bookingPanelHeight  = 440;
                    break;
                    case '14px':
                        startPointPadding   = 95;
                        stopPointPadding    = 5;
                        scrollPadding       = 130;
                        scrollPaddingMobile = 300;
                        bookingPanelHeight  = 410;
                    break;
                    case '13px':
                        startPointPadding   = 85;
                        stopPointPadding    = 60;
                        scrollPadding       = 120;
                        scrollPaddingMobile = 300;
                        bookingPanelHeight  = 410;
                    break;
                    case '12px':
                        startPointPadding   = 105;
                        stopPointPadding    = 120;
                        scrollPadding       = 110;
                        scrollPaddingMobile = 300;
                        bookingPanelHeight  = 410;
                    break;
                }

                if ( windowInnerWidth < 960 && windowInnerWidth > 730 ) {
					bookingPanelHeight	= 215;
					mobileStopValue = 400;
				} else if ( windowInnerWidth < 730 ) {
					bookingPanelHeight = 505;
					mobileStopValue = 900;
				} else {
					mobileStopValue = 0;
				}

                // Calculate start point
                var startPointOffset = $bookingContainer.offset().top;
                    startPointOffset = truncateDecimals(startPointOffset,0);

                // Calculate stop point via the set stop point
                var stopPointOffset = $scrollStopPoint.offset().top - bookingPanelHeight;
                    stopPointOffset = truncateDecimals(stopPointOffset,0);

                // Bottom position
                var bottomPosition = stopPointOffset - bookingPanelHeight;
                    bottomPosition = truncateDecimals(bottomPosition,0) + stopPointPadding;

                // Scroll position
                var scrollPosition = $(window).scrollTop();
                    scrollPosition = truncateDecimals(scrollPosition,0);

                // Final values
                var startPoint = startPointOffset;
                var stopPoint = stopPointOffset - bookingPanelHeight + mobileStopValue;

                // Define page checkpoints
                var availabilityCheckpoint = $heroSection.height() + $availabilitySection.height() - $bookingPanel.height()  - 50;

                // Fixing booking panel on scroll

                // If desktop resolution
                if ( windowInnerWidth > 960) {
                    // If modal is open, close it
                    $.fancybox.close();

                    if (scrollPosition > availabilityCheckpoint) {
                        $bookingPanel.addClass('-is-past-availability');
                    } else if (scrollPosition < availabilityCheckpoint) {
                        $bookingPanel.removeClass('-is-past-availability');
                    }

                    if (scrollPosition > stopPoint + stopPointPadding) {
                        $bookingPanel.addClass('-is-bottom');
                        $bookingPanel.css('bottom', -bottomPosition);

                    } else {
                        $bookingPanel.css('bottom','');
                        if (scrollPosition > startPoint - startPointPadding) {
                            $bookingPanel.addClass('-fixed');
                            $bookingPanel.removeClass('-is-bottom');
                        } else {
                            $bookingPanel.removeClass('-fixed');
                            $bookingPanel.removeClass('-is-bottom');
                        }
                    }
                // Mobile resolution
                } else {
                    $bookingPanel.css('bottom','');

                    if (scrollPosition > stopPoint) {
                        $bookingButton.addClass('-hidden');
                        $bookingPanel.addClass('-is-bottom');
                        $bookingPanel.removeClass('-fixed');

                    } else {
                        if (scrollPosition > startPoint + bookingPanelHeight) {
                            $bookingPanel.removeClass('-is-bottom');
                            $bookingPanel.addClass('-fixed');
                            $bookingButton.removeClass('-hidden');

                        } else {
                            $bookingPanel.removeClass('-is-bottom');
                            $bookingPanel.removeClass('-fixed');
                            $bookingButton.addClass('-hidden');
                        }
                    }
                }
            }
        }

        // Initialize Module
        return __init();
    },

    // Sticky map
    stickyMap: function () {
        // Initialize Module
        function __init() {

            if ($mapAside.length > 0) {
                // Calculate stop point
                var stopPointPadding = 100;
                var stopPointOffset = $scrollStopPoint.offset().top - $mapAside.outerHeight() - stopPointPadding;


                if ($(window).scrollTop() > $filterAsideContainer.offset().top) {
                    $mapAside.addClass('-fixed-top');

                    // Fixing left  side filters on scroll
                    if ($(window).scrollTop() >= stopPointOffset) {
                        $mapAside.addClass(scrollStopClass);
                    } else {
                        $mapAside.removeClass(scrollStopClass);
                    }
                } else {
                    $mapAside.removeClass('-fixed-top');
                }
            }
        }

        // Initialize Module
        return __init();
    },

    // Auto-extending textareas
    textarea: function() {

        // Initialize Module
        function __init() {
            if ($textarea.length > 0) {
                $textarea.each(function () {
                    $(this).css({'height':'auto','overflow-y':'hidden'}).height(this.scrollHeight);
                }).on('input', function () {
                    $(this).css({'height':'auto','overflow-y':'hidden'}).height(this.scrollHeight);
                });
            }
        }

        // Initialize Module
        return __init();
    },

    // Expandable sections
    expandable: function() {

        // Initialize Module
        function __init() {

            // Check if we have element
            if ($expandableButton.length > 0) {
                $expandableButton.on('click', function() {
                    var el = $(this);
                    el.toggleClass('-is-expanded');
                    el.siblings().toggleClass('-expanded');
                    el.parent().parent().toggleClass('-is-expanded');

                    if (el.text() === el.data('text-swap')) {
                        el.text(el.data('text-original'));
                    } else {
                        el.data('text-original', el.text());
                        el.text(el.data('text-swap'));
                    }
                });
            }
        }

        // Initialize Module
        return __init();
    }
};

// !Document ready (loaded)
// --------------------------------------------------------------
jQuery(document).ready(function() {

    // Init scripts
    travelkeys.init();

// !---- End Document Ready Function ----
});

// !Document load (in process of loading) function
// --------------------------------------------------------------
jQuery(window).load(function() {

// !---- End Document Load Function ----
});
