{extends file='layouts/layout-main.tpl'}
{block name='content'}
    {include file='_partials/sec_hero.tpl'}
    {include file='_partials/sec_hero_counters.tpl'}
    {include file='_partials/revamping.tpl'}
    <article class="section featured-in -style-pattern -color-light -border-bottom">
        <div class="container">
            {include file='_partials/featured/featured_grey.tpl'}
        </div>
    </article>

    <article class="section dedicated">
        <div class="container">
            <h5 class="section__subtitle deidcated__subtitle">Dedicated</h5>
            <h2 class="section__title dedicated__title">Concierge Team</h2>
            <div class="dedicated__columns">
                <div class="dedicated__column">
                    <p>Our concierge team will help arrange food and beverage prestocking, secure restaurant reservations and even arrange a private car/driver for your vacation.</p>
                    <p><strong>TravelKeys is an experienced source of information for luxury vacation services around the globe.</strong> Our greatest advantage is the unrivaled service and expertise provided by our experienced villa agents and concierges.</p>
                </div>
                <div class="dedicated__column">
                    <p>Our staff provides the best service in the industry; not only matching people to properties, but taking care of all the planning relating to a trip as well.</p>
                    <p>St. John Villas offer numerous advantages over staying at a resort: increased privacy, superior value, and unique property locations.</p>
                    <a class="button button--ghost -color-aqua" href="{$smarty.const.BASE_URL}/concierge-service" title="See more details">More on concierge</a>
                </div>
            </div>
            <div class="boxes">
                <div class="js-match-height box">
                    <div class="box__image__container">
                        <img class="box__image" src="{$smarty.const.TEMPLATE_PATH}/assets/images/placeholders/box1.jpg" alt="Our clients trust Travel Keys with their most special moments">
                    </div>
                    <div class="box__wrapper">
                        <h2 class="box__title">Our clients trust Travel Keys with their most special moments</h2>
                        <p class="box__text">Our quality control team ensures site inspections and strict quality controls for all our villas to ensure flawless villa experiences.</p>
                    </div>
                </div>
                <div class="js-match-height box">
                    <div class="box__image__container">
                        <img class="box__image" src="{$smarty.const.TEMPLATE_PATH}/assets/images/placeholders/box2.jpg" alt="No membership fees or blackout dates">
                    </div>
                    <div class="box__wrapper">
                        <h2 class="box__title">No membership fees or<br/>blackout dates</h2>
                        <p class="box__text">Think you have to pay an initiation fee to enjoy top level service? Think again. At Travel Keys, we offer over 5000 luxury villas all with personalized concierge service and local support without any fees.</p>
                    </div>
                </div>
                <div class="js-match-height box">
                    <div class="box__image__container">
                        <img class="box__image" src="{$smarty.const.TEMPLATE_PATH}/assets/images/placeholders/box10.jpg" alt="No membership fees or blackout dates">
                    </div>
                    <div class="box__wrapper">
                        <h2 class="box__title">No booking fees<br/>Ever.</h2>
                        <p class="box__text">At Travel Keys, we do not charge the consumer booking fees merely for the privilege of reserving your villa rental. Why pay more?</p>
                    </div>
                </div>
            </div>
            <div class="dedicated__action">
                <h2 class="section__title dedicated__title">Do You Need Anything Else?</h2>
                <p>From babysitting services to professional photo shoots for your vacation, <strong>our concierge team can help organize just about anything you require.</strong>
                </p>
                <a class="button button--action" href="{$smarty.const.BASE_URL}/contact-us" title="Tell us about your custom vacation needs">
                    <span class="button__text-initial">Tell us about your custom vacation needs</span>
                    <span class="button__text-alt">Customize your vacation</span>
                </a>
            </div>
        </div>
        <!-- Search Form -->
        <div class="filter -orientation-vertical -border-top">
            <h4 class="filter__title">Find the perfect destination</h4>
            <form class="form filter__form">
                <div class="form__input__container filter__input__container -anchor-start-date">
                    <input class="js-datepicker form__input filter__input" name="startdate" type="text" placeholder="Check in" readonly>
                    <i class="icon icon__calendar"></i>
                </div>
                <div class="form__input__container filter__input__container -anchor-end-date">
                    <input class="js-datepicker form__input filter__input" name="enddate" type="text" placeholder="Check out" readonly>
                    <i class="icon icon__calendar"></i>
                </div>
                <div class="form__input__container filter__input__container -anchor-counter">
                    <div class="filter__input__name"><span>Guests:</span>
                    </div>
                        <span class="js-counter-button js-counter-minus filter__input__container__handler -anchor-minus">
                            <i class="icon icon__minus"></i>-
                        </span>
                    <select class="js-select2 -has-select2 form__input filter__input">
                        <option value="No. of guests" selected>No. of guests</option>
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                    </select>
                    <input type="text" name="guests" class="js-counter filter__input__counter" value="1" readonly>
                    <i class="icon icon__option"></i>
                    <span class="js-counter-button js-counter-plus filter__input__container__handler -anchor-plus"><i class="icon icon__plus"></i>+</span>
                </div>
                <div class="filter__button__wrapper">
                    <button class="button" type="submit">Search</button>
                </div>
            </form>
        </div>
        <!-- End Search Form -->
    </article>
    <article class="section villa-search__section -style-pattern">
        <h5 class="section__subtitle">Considering another location?</h5>
        <h2 class="section__title villa-search__section__title -color-white -has-arrow">We probably have villas there too.</h2>
        <script async src="https://maps.googleapis.com/maps/api/js?v=3.exp&amp&key={$smarty.const.GOOGLE_API_KEY}"></script>
        <div class="map">
            <div class="map__container js-map-search"></div>
            <div class="map__markers js-map-markers">
                <div class="marker js-marker" data-lat="17.902614" data-lng="-62.846945" data-hidden="false">
                    <div class="marker__content js-marker-content">
                        <img src="http://cdn.villascaribe.com/6396_hawaii-lahainadream-1_m.jpg" class="marker__image" alt="Coral House">
                        <h3 class="marker__title">
                            <a href="#" title="Coral House" class="marker__favorite">
                                <i class="icon icon__heart"></i><span>Coral House 1</span>
                            </a>
                        </h3>
                        <p class="marker__body">3 Bdr, 3 Bth | Colombier, St. Barts $857 - $10,000</p>
                        <div class="marker__buttons">
                            <a class="button -color-black -size-popup" href="#" title="Find out more">More details</a>
                            <a class="button button--popup-cancel" href="javascript:infowindow.close();" title="Cancel">Cancel</a>
                        </div>
                    </div>
                </div>
                <div class="marker js-marker" data-lat="17.904739" data-lng="-62.810325" data-hidden="false">
                    <div class="marker__content js-marker-content">
                        <img src="http://cdn.villascaribe.com/6396_hawaii-lahainadream-1_m.jpg" class="marker__image" alt="Coral House">
                        <h3 class="marker__title">
                            <a href="#" title="Coral House" class="marker__favorite">
                                <i class="icon icon__heart"></i><span>Coral House 1</span>
                            </a>
                        </h3>
                        <p class="marker__body">3 Bdr, 3 Bth | Colombier, St. Barts $857 - $10,000</p>
                        <div class="marker__buttons">
                            <a class="button -color-black -size-popup" href="#" title="Find out more">More details</a>
                            <a class="button button--popup-cancel" href="javascript:infowindow.close();" title="Cancel">Cancel</a>
                        </div>
                    </div>
                </div>
                <div class="marker js-marker" data-lat="17.907000" data-lng="-62.819000" data-hidden="false">
                    <div class="marker__content js-marker-content">
                        <img src="http://cdn.villascaribe.com/6396_hawaii-lahainadream-1_m.jpg" class="marker__image" alt="Coral House">
                        <h3 class="marker__title">
                            <a href="#" title="Coral House" class="marker__favorite">
                                <i class="icon icon__heart"></i><span>Coral House 1</span>
                            </a>
                        </h3>
                        <p class="marker__body">3 Bdr, 3 Bth | Colombier, St. Barts $857 - $10,000</p>
                        <div class="marker__buttons">
                            <a class="button -color-black -size-popup" href="#" title="Find out more">More details</a>
                            <a class="button button--popup-cancel" href="javascript:infowindow.close();" title="Cancel">Cancel</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="-position-bottom">
                <div class="container">
                    <a class="button -color-black -hover-alt" href="{$smarty.const.BASE_URL}/villa-listing/search" title="Search our villas by map">Search our villas by map</a>
                </div>
            </div>
        </div>
    </article>
    <article class="section message -style-pattern -border-bottom">
        <div class="form__container">
            <h5 class="section__subtitle message__subtitle">Tell us how</h5>
            <h2 class="section__title message__title">Can we assist you?</h2>
            <p>Wether you have a comment or suggestion about our company or website, please let us know.</p>
            <p>If you are seeking a property rental, please feel free to <a href="#" class="link -color-aqua">browse our collection of villas</a> or simply complete the form below to begin the process.</p>
            {include file="_partials/forms/contact.tpl"}
        </div>
    </article>
{/block}