{extends file='layouts/layout-main.tpl'}
{block name='content'}
    <!-- Hero: Slider | Calendar & Title -->
    <article class="hero">
        <div class="hero__container">
            <div class="container">
                <h2 class="hero__title">Luxury Vacations Redefined</h2>
                <h4 class="filter__caption -hides-for-medium-down">Find the perfect villa for your vacation in {$location->name}:</h4>
                <div class="js-searchbar searchbar -hides-for-medium-down">
                    <div class="searchbar__wrapper">
                        <form class="searchbar__form" action="/villa-listing/search" method="get">
                            <button class="js-searchbar-button button -no-border searchbar__button" type="submit" name="seaerchbarSubmit">Search</button>
                            <div class="searchbar__controls">
                                <a class="js-dates-button searchbar__dates-button" href="#">Choose your dates</a>
                                <div class="searchbar__people js-searchbar-guests">
                                    <select class="js-select2" data-placeholder="Number of guests" name="guests">
                                        <option label="Number of guests"></option>
                                        <option value="1">1</option>
                                        <option value="2">2</option>
                                        <option value="3">3</option>
                                        <option value="4">4</option>
                                        <option value="5">5</option>
                                    </select>
                                </div>
                            </div>
                            <div class="js-dates-container searchbar__dates">
                                <div class="dates__wrapper">
                                    <div class="dates__group">
                                        <label class="dates__label">Check in</label>
                                        <input class="js-dates-checkin dates__input" type="text" name="checkin" value="" placeholder="- - - - - -" readonly>
                                    </div>
                                    <div class="dates__group">
                                        <label class="dates__label">Check out</label>
                                        <input class="js-dates-checkout dates__input" type="text" name="checkout" value="" placeholder="- - - - - -" readonly>
                                    </div>
                                </div>
                                <div class="js-dates">
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                <h6 class="hero__spacer -hides-for-medium-down">or simply</h6>
                <a class="button button--ghost -anchor-hero" href="{$smarty.const.BASE_URL}/villa-listing/search" title="See all {$location->property_count|default:0} villas in St. Barts">See all {$location->property_count|default:0} villas in {$location->name}</a>
            </div>
        </div>
        <div class="filter -orientation-vertical -hidden-md-up">
            <div class="container">
                <h4 class="filter__title">Find the perfect destination</h4>
                <form class="form filter__form" action="/villa-listing/search" method="get">
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
        </div>
    </article>
    <!-- End Hero -->
    <!-- Experience -->
    <article class="section featured-in -style-pattern">
        <div class="container">
            <div class="promises__container">
                <div class="promises__item">
                    <span class="promises__item__subtitle">Your personal</span>
                    <h3 class="promises__item__title">Dedicated Concierge</h3>
                    <i class="promises__item__icon icon icon__badge-bell"></i>
                    <p class="promises__item__text">We know what it takes to make a home yours. When you come to stay, <strong>our local team prepares the villa with care.</strong></p>
                </div>
                <div class="promises__item -hidden-md">
                    <span class="promises__item__subtitle">A very</span>
                    <h3 class="promises__item__title">Warm Welcome</h3>
                    <i class="promises__item__icon icon icon__badge-keys"></i>
                    <p class="promises__item__text">When you arrive, we're there to meet you, introduce you to the staff and to show you around the villa. <strong>We're available 24/7.</strong></p>
                </div>
                <div class="promises__item">
                    <span class="promises__item__subtitle">We succeeded</span>
                    <h3 class="promises__item__title">For over 25 years</h3>
                    <i class="promises__item__icon icon icon__badge-25"></i>
                    <p class="promises__item__text">We designed a service for stays in the finest homes. <strong>And we call it handmade hospitality.</strong></p>
                </div>
            </div>

            <div class="concierge__featured__wrapper">
                {include file='_partials/featured/featured_white.tpl'}
            </div>
        </div>
    </article>
    <!-- Featured Properties -->
    <article class="section featured">
        <div class="container">
            <h5 class="section__subtitle featured__subtitle -color-white">In the spotlight</h5>
            <h2 class="section__title featured__title -color-white">Luxury villas in {$location->name}</h2>
        </div>
        <div class="featured__row__container -has-separator">
            <div class="js-villas-carousel villas__carousel featured__row">
                {foreach name='special_items' item=featured_item from=$specials}
                    {include file='_partials/list_items/featured_item.tpl'}
                {/foreach}
            </div>
            <a class="button -size-wide featured__row__button" href="{$smarty.const.BASE_URL}/villa-listing/specials" title="View all specials">View all specials</a>
        </div>
        <div class="container">
            <div class="featured__row__container -has-separator">
                <div class="featured__row -three-columns">
                    {foreach name='featured_items' item=featured_item from=$featured}
                        {include file='_partials/list_items/featured_item.tpl'}
                    {/foreach}
                </div>
                <a class="button -size-wide featured__row__button" href="{$smarty.const.BASE_URL}/villa-listing/search" title="View all our villas">View all our villas</a>
            </div>
            <!-- Testimonial -->
            <section class="section testimonial">
                <p class="testimonial__review">Our holiday with Travel Keys was first class. The service from start to finish exceeded expectation, the attention to detail was outstanding. Nothing could be improved!</p>
                <h3 class="testimonial__title">Marius Ciuchete Paun</h3>
                <h6 class="testimonial__place">Montreal, Canada</h6>
            </section>
        </div>
    </article>
    <!-- End Featured Properties -->
    <!-- Map -->
    <article class="section villa-search__section -style-pattern">
        <h2 class="section__title villa-search__section__title -color-white -has-arrow">Where to next?</h2>

        <script async src="https://maps.googleapis.com/maps/api/js?v=3.exp&amp&key={$smarty.const.GOOGLE_API_KEY}"></script>
        <div class="map">
            <div class="map__container js-map-search"></div>
            <div class="map__markers js-map-markers">
                {foreach name='map_marker_list' item=map_item from=$map_items}
                    {include file='_partials/list_items/map_pin_item.tpl'}
                {/foreach}
            </div>
            <div class="concierge section__container">
                <h5 class="section__subtitle concierge__subtitle">Concierge</h5>
                <h2 class="section__title concierge__title -color-white">Over 25 Years of Delighted Guests</h2>
                <p>Your dedicated concierge is ready to assist your party with all of the details of your stay, large or small, to ensure you enjoy a flawless travel experience.</p>
                <ul class="concierge__list">
                    <li class="concierge__list__item">Car rentals</li>
                    <li class="concierge__list__item">Villa pre-stocking</li>
                    <li class="concierge__list__item">Tours & activities</li>
                    <li class="concierge__list__item">Spa services</li>
                    <li class="concierge__list__item">Meet and greet</li>
                    <li class="concierge__list__item">Chef / Cooking</li>
                    <li class="concierge__list__item">Special events</li>
                    <li class="concierge__list__item">Miscellaneous</li>
                </ul>
                <p class="concierge__reminder">Every guest is assigned a complimentary concierge to ensure a memorable vacation experience.</p>
                <a class="button -hover-alt concierge__button" href="{$smarty.const.BASE_URL}/concierge-service" title="View concierge services">View concierge services</a>
            </div>
        </div>
    </article>
    <!-- Experience -->
    <article class="section experience search__experience -background-gray">
        <div class="container">
            <div class="section__container">
                <h5 class="section__subtitle experience__subtitle">Learn more about our</h5>
                <h2 class="section__title experience__title">{$location->name} Unique Experience</h2>
                <p>Luxury Villa Rentals & Vacation Rentals For over 25 years, Travel Keys has been recognized by travel experts and critics around the world including Travel + Leisure Magazine, Conde Nast Traveler and many others for helping our clients plan the perfect luxury villa vacation. Travel Keys represents more than 5000 villa rentals throughout more than 75 vacation destinations world-wide including the following breathtaking villa regions: Caribbean, United States, Hawaii, Mexico, Europe and Asia.</p>
                <p><strong class="experience__strong">Our luxurious villas represent a relaxing and luxurious paradise.</strong>{$location->description|default:''}</p>

            </div>
            <div class="location">
                <div class="location__item">
                    <i class="icon icon__airplane-black"></i>
                    <span class="location__item__text">{$location->suggested_airport}</span>
                </div>
                <div class="location__item">
                    <i class="icon icon__temperature-black"></i>
                    <span class="location__item__text">{$location->temperature}</span>
                </div>
                <div class="location__item">
                    <i class="icon icon__rain-black"></i>
                    <span class="location__item__text">{$location->rainfall}</span>
                </div>
                <div class="location__item">
                    <i class="icon icon__attractions-black"></i>
                    <span class="location__item__text">{$location->attractions}</span>
                </div>
            </div>
            <ul class="experience__list">
                <li class="experience__list__item">
                    <img alt="Airport information" src="{$smarty.const.TEMPLATE_PATH}/assets/images/placeholders/exp-airplane.jpg"><a class="button button--ghost" href="#" title="Airport information">Airport information</a>
                </li>
                <li class="experience__list__item">
                    <img alt="Enjoy the nightlife" src="{$smarty.const.TEMPLATE_PATH}/assets/images/placeholders/exp-nightlife.jpg"><a class="button button--ghost" href="#" title="Enjoy the nightlife">Enjoy the nightlife</a>
                </li>
                <li class="experience__list__item">
                    <img alt="Rent a car" src="{$smarty.const.TEMPLATE_PATH}/assets/images/placeholders/exp-car.jpg"><a class="button button--ghost" href="#" title="Rent a car">Rent a car</a>
                </li>
                <li class="experience__list__item">
                    <img alt="Sail in a yacht" src="{$smarty.const.TEMPLATE_PATH}/assets/images/placeholders/exp-yacht.jpg"><a class="button button--ghost" href="#" title="Sail in a yacht">Sail in a yacht</a>
                </li>
            </ul>
            <a class="js-modal-info button -color-black -has-fancybox" href="{$smarty.const.BASE_URL}/location" title="Learn more about {$location->name}">Learn more about {$location->name}</a>
        </div>
    </article>
    <!-- End Experience -->
    <div class="modal-container">
        <div id="availability-modal" class="modal availability__modal">
            <div class="availability__calendars">
                <h2 class="section__title availability__title">Availability</h2>
                <div class="js-calendars-carousel calendars__carousel">
                    <div class="js-calendar calendar"></div>
                    <div class="js-calendar calendar"></div>
                    <div class="js-calendar calendar"></div>
                    <div class="js-calendar calendar"></div>
                    <div class="js-calendar calendar"></div>
                </div>
            </div>
        </div>
    </div>
{/block}