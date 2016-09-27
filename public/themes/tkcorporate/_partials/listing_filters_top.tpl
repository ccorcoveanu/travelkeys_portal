<div class="js-filter-aside__container filter-aside__container -fixed {if isset($page.final_destination_page)}-fixed-top{/if}">
    <aside id="search-aside" class="js-filter-aside search-aside filter-aside -hidden -fixed">
        <div class="filter filter--side">
            <form class="form filter__form">
                <div class="filter--side__wrapper -helper-inline -first">
                    <h3 class="filter__subtitle filter--side__subtitle">Trip<span>details</span></h3>
                    <div class="filter--side__wrapper__inner -first">
                        <div class="form__input__container filter__input__container filter--side__input__container -anchor-start-date">
                            <input class="js-datepicker form__input filter__input" name="startdate" type="text" placeholder="Check in" readonly value="{if isset($checkin) && $checkin}{$checkin}{/if}">
                            <i class="icon icon__calendar"></i>
                        </div>
                        <div class="form__input__container filter__input__container filter--side__input__container -anchor-end-date">
                            <input class="js-datepicker form__input filter__input" name="enddate" type="text" placeholder="Check out" readonly value="{if isset($checkout) && $checkout}{$checkout}{/if}">
                            <i class="icon icon__calendar"></i>
                        </div>
                        <div class="form__input__container filter__input__container filter--side__input__container -anchor-counter">
                            <div class="filter__input__name"><span>Guests:</span>
                            </div>
                            <span class="js-counter-button js-counter-minus filter__input__container__handler -anchor-minus">
                                <i class="icon icon__minus"></i>-
                            </span>
                            <select class="js-select2 -has-select2 form__input filter__input" id="guests__filter--item">
                                <option value="Guests" selected>Guests</option>
                                <option value="1" {if isset($guests) && $guests == 1}selected{/if}>1</option>
                                <option value="2" {if isset($guests) && $guests == 2}selected{/if}>2</option>
                                <option value="3" {if isset($guests) && $guests == 3}selected{/if}>3</option>
                                <option value="4" {if isset($guests) && $guests == 4}selected{/if}>4</option>
                                <option value="5" {if isset($guests) && $guests == 5}selected{/if}>5</option>
                            </select>
                            <input type="text" name="guests" class="js-counter filter__input__counter" value="1" readonly>
                            <i class="icon icon__option"></i>
                            <span class="js-counter-button js-counter-plus filter__input__container__handler -anchor-plus"><i class="icon icon__plus"></i>+</span>
                        </div>
                        <div class="form__input__container filter__input__container filter--side__input__container -anchor-counter">
                            <div class="filter__input__name"><span>Bedrooms:</span>
                            </div>
                            <span class="js-counter-button js-counter-minus filter__input__container__handler -anchor-minus">
                                <i class="icon icon__minus"></i>-
                            </span>
                            <select class="js-select2 -has-select2 form__input filter__input" id="bedroom__filter--item">
                                <option value="Bedrooms" selected>Bedrooms</option>
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
                    </div>
                </div>
                <div class="filter--side__wrapper -helper-inline -has-slider">
                    <h3 class="filter__subtitle filter--side__subtitle">Price</h3>
                    <div class="no-slider__container">
                        <div class="js-no-slider no-slider"></div>
                        <div class="no-slider__limit__container">
                            <span class="no-slider__limit -value-min">Min price
                                <em class="js-slider-min no-slider__limit__value">$<span>200</span>
                                </em>
                            </span>
                            <input type="hidden" class="filter__input" id="range-slider__low" name="price_start"  value="0"/>
                            <span class="no-slider__limit -value-max">Max price
                                <em class="js-slider-max no-slider__limit__value">$<span>5000</span>
                                </em>
                            </span>
                            <input type="hidden" class="filter__input" id="range-slider__high" name="price_end"  value="5000"/>
                        </div>
                    </div>
                </div>

                <div class="filter--side__wrapper">
                    <h3 class="filter__subtitle filter--side__subtitle">Group</h3>
                    <div class="filter--side__wrapper__inner">
                        <ul class="js-expandable filter__options -is-expandable">
                            <li class="filter__option">
                                <input class="checkbox filter__input" type="checkbox" id="ck-all" name="ck-all" checked>
                                <label class="filter__option__label" for="ck-all"><span></span>All</label>
                            </li>
                            <li class="filter__option">
                                <input class="checkbox filter__input" type="checkbox" id="ck-sp" name="ck-sp">
                                <label class="filter__option__label" for="ck-sp"><span></span>Specials</label>
                            </li>
                            <li class="filter__option filter__input">
                                <input class="checkbox" type="checkbox" id="ck-fav" name="ck-fav">
                                <label class="filter__option__label" for="ck-fav"><span></span>Favourites</label>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="filter--side__wrapper">
                    <h3 class="filter__subtitle filter--side__subtitle">Amenity</h3>
                    <div class="filter--side__wrapper__inner">
                        <ul class="js-expandable filter__options -is-expandable">
                            <li class="filter__option">
                                <input class="checkbox" type="checkbox" id="ck-beach" name="ck-beach">
                                <label class="filter__option__label" for="ck-beach"><span></span>Beachfront</label>
                            </li>
                            <li class="filter__option">
                                <input class="checkbox" type="checkbox" id="ck-city" name="ck-ski">
                                <label class="filter__option__label" for="ck-city"><span></span>SKI IN/OUT</label>
                            </li>
                        </ul>

                    </div>
                </div>
                <input type="hidden" value="" name="pins" id="map-pins__input" class="filter__input"/>
                <div class="filter--side__wrapper">
                    <h3 class="filter__subtitle filter--side__subtitle">Areas</h3>
                    <div class="filter--side__wrapper__inner -last">
                        <ul class="js-expandable filter__options -is-expandable -rows-2">
                            {foreach name='areas' item=$area from=$areas}
                                <li class="filter__option">
                                    <input class="checkbox ck-area" type="checkbox" id="ck-ac-{$area->id}" name="ck-ac" >
                                    <label class="filter__option__label" for="ck-ac-{$area->id}"><span></span>{$area->name}</label>
                                </li>
                            {/foreach}
                        </ul>
                        <a class="js-button-expand button__expand" data-text-swap="Show less">Show more</a>
                    </div>
                </div>
            </form>
            <div class="filter--side__wrapper -last">
                <div class="filter__button__wrapper">
                    <a class="button -ui-confirm js-close-filters" href="#">Show villas</a>
                    <a class="button -ui-cancel -hover-alt js-close-filters" href="#">Cancel</a>
                </div>
            </div>
        </div>
        <div class="aside__button__wrapper">
            <div class="aside__button__content">
                <a href="#" class="button js-show-filters">Show more filters</a>
                <a href="#" class="button js-close-filters">Show villas</a>
            </div>
        </div>
    </aside>
    <div class="js-section-header section__header -is-accordion">
        <div class="section__header__container">
            <div class="section__header__wrapper -position-left">
                <h2 class="section__header__title"><span>View</span> <span id="total_villas_number" class="visible-mobile total_villas_number">{$total_items|default:0}</span> villas</h2>
                <h3 class="section__header__title--alt"><span class="total_villas_number">{$total_items|default:0}</span></span> villas<span class="title--alt__number"></h3>
                <div class="form__input__container filter__input__container filter__input__container--alt order-villas__select">
                    <select class="js-select2-alt form__input filter__input" name="oreder_by">
                        <option value="name_asc" selected>Villa Name A-Z</option>
                        <option value="name_desc">Villa Name Z-A</option>
                        <option value="price_asc">Price: Low to High</option>
                        <option value="price_desc">Price: High to Low</option>
                        <option value="bedrooms_asc">Bedrooms: Low to High</option>
                        <option value="bedrooms_desc">Bedrooms: High to Low</option>
                    </select>
                    <i class="icon icon__option"></i>
                </div>
            </div>
            <div class="section__header__wrapper -position-right {if isset($page.final_destination_page)}-small{/if}">
                <div class="form__input__container filter__input__container filter__input__container--alt -anchor-counter order-villas__select">
                    <select class="js-select2 js-select2-alt -has-select2 form__input filter__input">
                        <option value="name_asc" selected>Villa Name A-Z</option>
                        <option value="name_desc">Villa Name Z-A</option>
                        <option value="price_asc">Price: Low to High</option>
                        <option value="price_desc">Price: High to Low</option>
                        <option value="bedrooms_asc">Bedrooms: Low to High</option>
                        <option value="bedrooms_desc">Bedrooms: High to Low</option>
                    </select>
                    <i class="icon icon__option"></i>
                </div>
                <div class="js-search-toggle-container search-toggle__container {if !isset($page.final_destination_page)}-fixed-top{/if}">
                    <h3 class="search-toggle__title">Adjust your search results</h3>
                    <a class="js-search-toggle search-toggle -anchor-map -active">Map</a>
                    <a class="js-search-toggle search-toggle -anchor-filters">Filters</a>
                    <a class="js-search-filters search-filters -anchor-expand"><i class="icon icon__filters"></i><span>Open</span>Filters</a>
                    <a class="js-modal-filters search-filters -has-fancybox -anchor-modal" href="#search-aside"><i class="icon icon__filters"></i><span>Open</span>Filters</a>
                </div>
            </div>
        </div>
    </div>
</div>