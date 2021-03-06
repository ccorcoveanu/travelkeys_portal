{extends file='layouts/layout-main.tpl'}
{block name='content'}
    <!-- Hero: Slider | Calendar & Title -->
    <article class="hero">
        <div class="hero__container">
            <div class="container">
                <h2 class="hero__title">Luxury Villa Experiences</h2>
                <div class="section facts">
                    <div class="container">
                        <div class="location">
                            <div class="location__item">
                                <span class="location__item__number">5,000+</span>
                                <span class="location__item__text">Luxury<br/>Villas</span>
                            </div>
                            <div class="location__item">
                                <span class="location__item__number">90+</span>
                                <span class="location__item__text">Fabulous<br/>Destinations</span>
                            </div>
                            <div class="location__item">
                                <span class="location__item__number">25</span>
                                <span class="location__item__text">Years of Creating<br/>Memories</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="js-searchbar searchbar -hides-for-medium-down">
                    <div class="searchbar__wrapper">
                        <form class="searchbar__form" action="/villa-listing/search" method="get">
                            <input class="js-searchbar-location searchbar__input" type="text" name="q" value="" placeholder="Where to next?">
                            <button class="js-searchbar-button button -no-border searchbar__button" type="submit">Search</button>
                            <div class="searchbar__controls">
                                <a class="js-dates-button searchbar__dates-button" href="#"></a>
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
                        <span class="js-searchbar-period searchbar__period js-dates-button"></span>
                    </div>
                </div>
                <h4 class="hero__undertitle -hides-for-medium-down">Top Destinations: <a href="{$smarty.const.PROTOCOL}turks-and-caicos.{$smarty.const.SERVER_NAME}" title="Turks and Caicos">Turks and Caicos</a>, <a href="{$smarty.const.PROTOCOL}maui.{$smarty.const.SERVER_NAME}" title="Maui">Maui</a>, <a href="{$smarty.const.PROTOCOL}deer-valley-resort.{$smarty.const.SERVER_NAME}" title="Deer Valley Resort">Deer Valley Resort</a>, <a href="{$smarty.const.PROTOCOL}california.{$smarty.const.SERVER_NAME}" title="California">California</a></h4>
            </div>
        </div>
        <div class="filter__wrapper">
            <div class="filter -orientation-vertical">
                <h4 class="filter__title">Find the perfect destination</h4>
                <form class="form filter__form"  action="/villa-listing/search" method="get">
                    <div class="form__input__container filter__input__container -anchor-destination">
                        <input class="form__input filter__input js-searchbar-location" name="destination" type="text" placeholder="Destination">
                        <i class="icon icon__globe"></i>
                    </div>
                    <div class="form__input__container filter__input__container -anchor-start-date">
                        <input class="js-datepicker form__input filter__input js-mobile-checkin-calendar" name="startdate" type="text" placeholder="Check in" readonly>
                        <i class="icon icon__calendar"></i>
                    </div>
                    <div class="form__input__container filter__input__container -anchor-end-date">
                        <input class="js-datepicker form__input filter__input js-mobile-checkout-calendar" name="enddate" type="text" placeholder="Check out" readonly>
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
    <article class="section featured-in -style-pattern">
        <div class="container">
            <div class="promises__container">
                <div class="promises__item">
                    <span class="promises__item__subtitle">5000+ PROPERTIES</span>
                    <h3 class="promises__item__title">Curated Villa Collection</h3>
                    <i class="promises__item__icon icon icon__badge-house"></i>
                    <p class="promises__item__text">We select only the best homes in top vacation destinations. Our local team inspects ensures a quality experience.</p>
                </div>
                <div class="promises__item">
                    <span class="promises__item__subtitle">ALWAYS HERE FOR YOU</span>
                    <h3 class="promises__item__title">24/7 Concierge Service</h3>
                    <i class="promises__item__icon icon icon__badge-bell"></i>
                    <p class="promises__item__text">Your dedicated concierge knows how to make a vacation special. Hotel services in the privacy of your own villa.</p>
                </div>
                <div class="promises__item -hidden-md">
                    <span class="promises__item__subtitle">COMFORT ABROAD</span>
                    <h3 class="promises__item__title">A Very Warm Welcome</h3>
                    <i class="promises__item__icon icon icon__badge-keys"></i>
                    <p class="promises__item__text">Feel at ease. When you arrive, we’re there to meet you, introduce you to the staff and show you around the villa.</p>
                </div>
                <div class="promises__item">
                    <span class="promises__item__subtitle">ALWAYS THE BEST</span>
                    <h3 class="promises__item__title -no-wrap">No Fees or<br/>Subscriptions</h3>
                    <i class="promises__item__icon icon icon__badge-fees"></i>
                    <p class="promises__item__text">We are dedicated to guests. While other sites push booking fees, Travel Keys guarantees a <strong>best-rate guarantee with no fees.</strong></p>
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
            <h2 class="section__title featured__title -color-white"><span class="-hidden-md">Our Featured</span> Destinations</h2>
            <div class="destinations-grid">
                {foreach name='featured_items' item=featured_item from=$featured}
                    {include file='_partials/list_items/featured_item.tpl'}
                {/foreach}
            </div>
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

        </div>
    </article>
    <!-- End Map -->
    <article class="section promises -style-pattern">
        <div class="container">
            <h5 class="section__subtitle promises__subtitle">We stand for</h5>
            <h2 class="section__title promises__title -color-white">Hospitality in the finest villas</h2>
            <div class="section__container">
                <div class="promises-grid">
                    <div class="promise__row">
                        <div class="promise__group">
                            <div class="promise -small">
                                <img class="promise__image" src="{$smarty.const.TEMPLATE_PATH}/assets/images/placeholders/promise1.jpg" alt="Car Rentals"/>
                                <div class="promise__wrapper">
                                    <i class="promise__icon icon icon__auto"></i>
                                    <a class="promise__button button -color-black" href="{$smarty.const.BASE_URL}/concierge-service#box-rentals" title="Car Rentals">Car Rentals</a>
                                </div>
                            </div>
                            <div class="promise -small">
                                <img class="promise__image" src="{$smarty.const.TEMPLATE_PATH}/assets/images/placeholders/promise3.jpg" alt="Spa Services"/>
                                <div class="promise__wrapper">
                                    <i class="promise__icon icon icon__lotus"></i>
                                    <a class="promise__button button -color-black" href="{$smarty.const.BASE_URL}/concierge-service#box-spa" title="Spa Services">Spa Services</a>
                                </div>
                            </div>
                        </div>
                        <div class="promise -large">
                            <img class="promise__image" src="{$smarty.const.TEMPLATE_PATH}/assets/images/placeholders/promise2.jpg" alt="Tours and Activities"/>
                            <div class="promise__wrapper">
                                <i class="promise__icon icon icon__rackets"></i>
                                <a class="promise__button button -color-black" href="{$smarty.const.BASE_URL}/concierge-service#box-tours" title="Tours and Activities">Tours and Activities</a>
                            </div>
                        </div>
                    </div>
                    <div class="promise__row">
                        <div class="promise -large">
                            <img class="promise__image" src="{$smarty.const.TEMPLATE_PATH}/assets/images/placeholders/promise4.jpg" alt="Chef Services"/>
                            <div class="promise__wrapper">
                                <i class="promise__icon icon icon__rackets"></i>
                                <a class="promise__button button -color-black" href="{$smarty.const.BASE_URL}/concierge-service#box-chef" title="Chef Services">Chef Services</a>
                            </div>
                        </div>
                        <div class="promise__group">
                            <div class="promise -small">
                                <img class="promise__image" src="{$smarty.const.TEMPLATE_PATH}/assets/images/placeholders/promise5.jpg" alt="Villa Pre-Stocking"/>
                                <div class="promise__wrapper">
                                    <i class="promise__icon icon icon__bucket"></i>
                                    <a class="promise__button button -color-black" href="{$smarty.const.BASE_URL}/concierge-service#box-stocking" title="Villa Pre-Stocking">Villa Pre-Stocking</a>
                                </div>
                            </div>
                            <div class="promise -small">
                                <img class="promise__image" src="{$smarty.const.TEMPLATE_PATH}/assets/images/placeholders/promise6.jpg" alt="Special Events"/>
                                <div class="promise__wrapper">
                                    <i class="promise__icon icon icon__tickets"></i>
                                    <a class="promise__button button -color-black" href="{$smarty.const.BASE_URL}/concierge-service#box-events" title="Special Events">Special Events</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="promise__row">
                        <div class="promise -small promise--description">
                            <div class="promise__wrapper">
                                <h3 class="promise__title">Anything we missed?</h3>
                                <p class="promise__text">We’d love to know how we can make your next vacation even more fun!</p>
                                <a class="promise__button button -color-black -hover-aqua" href="{$smarty.const.BASE_URL}/contact-us" title="Get in touch">Get in Touch</a>
                            </div>
                        </div>
                        <div class="promise -small">
                            <img class="promise__image" src="{$smarty.const.TEMPLATE_PATH}/assets/images/placeholders/promise7.jpg" alt="Meet and Greet"/>
                            <div class="promise__wrapper">
                                <i class="promise__icon icon icon__hands"></i>
                                <a class="promise__button button -color-black" href="{$smarty.const.BASE_URL}/concierge-service#box-greet" title="Meet and Greet">Meet and Greet</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="promises__additional">
                    <h2 class="section__title promises__title -color-white">Every guest is assigned a complimentary concierge to ensure a memorable vacation experience.</h2>
                    <p>From gourmet chef services to unforgettable fishing charters, our concierge team can help organize just about anything you require. Your dedicated concierge is ready to assist your party with all of the details of your stay, large or small, to ensure you enjoy a flawless travel experience.</p>
                    <a class="button -hover-alt -shadow-black" href="{$smarty.const.BASE_URL}/concierge-service" title="View Concierge Services">View Concierge Services</a>
                </div>
            </div>
        </div>
    </article>
    <article class="section articles">
        <div class="container">
            <div class="section__container">
                <h2 class="section__title articles__title">We recently wrote about...</h2>
                <div class="articles__container">
                    <div class="articles__item">
                        <a class="articles__link" href="{$feeds[0]->link}" title="{$feeds[0]->title}" target="_blank">
                            <img class="articles__image" src="{$feeds[0]->image}" alt="{$feeds[0]->title}"/>
                            <h4 class="articles__name">{$feeds[0]->title}</h4>
                        </a>
                    </div>
                    <div class="articles__item">
                        <a class="articles__link" href="{$feeds[1]->link}" title="{$feeds[1]->title}" target="_blank">
                            <img class="articles__image" src="{$feeds[1]->image}" alt="{$feeds[1]->title}"/>
                            <h4 class="articles__name">{$feeds[1]->title}</h4>
                        </a>
                    </div>
                </div>
                <p class="articles__text">Want to read more about planning your vacation, luxury resorts or travel guides on our locations?</p>
                <a class="button -color-black -size-wide" href="http://experience.travelkeys.com" title="Read our blog" target="_blank">Read our blog</a>
            </div>
        </div>
    </article>
    <article class="section world">
        <div class="container">
            <h2 class="section__title world__title -color-white"><i>5000+</i> villas <br> <i>75</i> vacation destinations</h2>
            <h5 class="world__subtitle">Tap on your next detstination:</h5>
            <ul class="world__items">
                {foreach name='menu_items' from=$menu item=header }
                    {if $header->children|count}
                        <li class="world__item -{$header->subdomain}">
                            <a class="world__link" href="{$smarty.const.PROTOCOL}{$header->subdomain}.{$smarty.const.SERVER_NAME}" title="{$header->name}">
                                <h6 class="world__item__title">{$header->name}</h6>
                            </a>
                        </li>
                    {/if}
                {/foreach}

            </ul>
        </div>
    </article>
{/block}