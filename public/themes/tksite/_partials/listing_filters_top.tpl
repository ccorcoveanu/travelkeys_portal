<div class="js-filter-aside__container filter-aside__container -fixed">
    <aside id="search-aside" class="js-filter-aside search-aside filter-aside">
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
                            <select class="js-select2 -has-select2 form__input filter__input">
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
                            <select class="js-select2 -has-select2 form__input filter__input">
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
                            <span class="no-slider__limit -value-max">Max price
                                <em class="js-slider-max no-slider__limit__value">$<span>5000</span>
                                </em>
                            </span>
                        </div>
                    </div>
                </div>
                <div class="filter--side__wrapper">
                    <h3 class="filter__subtitle filter--side__subtitle">Group</h3>
                    <div class="filter--side__wrapper__inner">
                        <ul class="js-expandable filter__options -is-expandable">
                            <li class="filter__option">
                                <input class="checkbox" type="checkbox" id="ck-all" name="ck-all" checked>
                                <label class="filter__option__label" for="ck-all"><span></span>All</label>
                            </li>
                            <li class="filter__option">
                                <input class="checkbox" type="checkbox" id="ck-sp" name="ck-sp">
                                <label class="filter__option__label" for="ck-sp"><span></span>Specials</label>
                            </li>
                            <li class="filter__option">
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
                                <input class="checkbox" type="checkbox" id="ck-city" name="ck-city">
                                <label class="filter__option__label" for="ck-city"><span></span>City Breaks</label>
                            </li>
                        </ul>

                    </div>
                </div>
                <!--<div class="filter--side__wrapper">
                    <h3 class="filter__subtitle filter--side__subtitle">Areas</h3>
                    <div class="filter--side__wrapper__inner -last">
                        <ul class="js-expandable filter__options -is-expandable -rows-2">
                            <li class="filter__option">
                                <input class="checkbox" type="checkbox" id="ck-ac" name="ck-ac" checked>
                                <label class="filter__option__label" for="ck-ac"><span></span>Anse des Cayes</label>
                            </li>
                            <li class="filter__option">
                                <input class="checkbox" type="checkbox" id="ck-cr" name="ck-cr">
                                <label class="filter__option__label" for="ck-cr"><span></span>Camaruche</label>
                            </li>
                            <li class="filter__option">
                                <input class="checkbox" type="checkbox" id="ck-cl" name="ck-cl">
                                <label class="filter__option__label" for="ck-cl"><span></span>Colombier</label>
                            </li>
                            <li class="filter__option">
                                <input class="checkbox" type="checkbox" id="ck-go" name="ck-go">
                                <label class="filter__option__label" for="ck-go"><span></span>Gouverneur</label>
                            </li>
                            <li class="filter__option">
                                <input class="checkbox" type="checkbox" id="ck-gf" name="ck-gf">
                                <label class="filter__option__label" for="ck-gf"><span></span>Grand Fond</label>
                            </li>
                            <li class="filter__option">
                                <input class="checkbox" type="checkbox" id="ck-al" name="ck-al">
                                <label class="filter__option__label" for="ck-al"><span></span>Anse des Lezards</label>
                            </li>
                            <li class="filter__option">
                                <input class="checkbox" type="checkbox" id="ck-cl5" name="ck-cl5">
                                <label class="filter__option__label" for="ck-cl5"><span></span>Colombier</label>
                            </li>
                            <li class="filter__option">
                                <input class="checkbox" type="checkbox" id="ck-fl" name="ck-fl">
                                <label class="filter__option__label" for="ck-fl"><span></span>Flamands</label>
                            </li>
                            <li class="filter__option">
                                <input class="checkbox" type="checkbox" id="ck-cs" name="ck-cs">
                                <label class="filter__option__label" for="ck-cs"><span></span>Grand cul de Sac</label>
                            </li>
                            <li class="filter__option">
                                <input class="checkbox" type="checkbox" id="ck-cs2" name="ck-cs2">
                                <label class="filter__option__label" for="ck-cs2"><span></span>Grand cul de Sac</label>
                            </li>
                            <li class="filter__option">
                                <input class="checkbox" type="checkbox" id="ck-cl2" name="ck-cl2">
                                <label class="filter__option__label" for="ck-cl2"><span></span>Colombier</label>
                            </li>
                            <li class="filter__option">
                                <input class="checkbox" type="checkbox" id="ck-go2" name="ck-go2">
                                <label class="filter__option__label" for="ck-go2"><span></span>Gouverneur</label>
                            </li>
                            <li class="filter__option">
                                <input class="checkbox" type="checkbox" id="ck-gf2" name="ck-gf2">
                                <label class="filter__option__label" for="ck-gf2"><span></span>Grand Fond</label>
                            </li>
                            <li class="filter__option">
                                <input class="checkbox" type="checkbox" id="ck-al2" name="ck-al2">
                                <label class="filter__option__label" for="ck-al2"><span></span>Anse des Lezards</label>
                            </li>
                            <li class="filter__option">
                                <input class="checkbox" type="checkbox" id="ck-cl6" name="ck-cl6">
                                <label class="filter__option__label" for="ck-cl6"><span></span>Colombier</label>
                            </li>
                            <li class="filter__option">
                                <input class="checkbox" type="checkbox" id="ck-fl2" name="ck-fl2">
                                <label class="filter__option__label" for="ck-fl2"><span></span>Flamands</label>
                            </li>
                            <li class="filter__option">
                                <input class="checkbox" type="checkbox" id="ck-cl3" name="ck-cl3">
                                <label class="filter__option__label" for="ck-cl3"><span></span>Colombier</label>
                            </li>
                            <li class="filter__option">
                                <input class="checkbox" type="checkbox" id="ck-go3" name="ck-go3">
                                <label class="filter__option__label" for="ck-go3"><span></span>Gouverneur</label>
                            </li>
                            <li class="filter__option">
                                <input class="checkbox" type="checkbox" id="ck-gf3" name="ck-gf3">
                                <label class="filter__option__label" for="ck-gf3"><span></span>Grand Fond</label>
                            </li>
                            <li class="filter__option">
                                <input class="checkbox" type="checkbox" id="ck-al3" name="ck-al3">
                                <label class="filter__option__label" for="ck-al3"><span></span>Anse des Lezards</label>
                            </li>
                            <li class="filter__option">
                                <input class="checkbox" type="checkbox" id="ck-cl4" name="ck-cl4">
                                <label class="filter__option__label" for="ck-cl4"><span></span>Colombier</label>
                            </li>
                            <li class="filter__option">
                                <input class="checkbox" type="checkbox" id="ck-fl3" name="ck-fl3">
                                <label class="filter__option__label" for="ck-fl3"><span></span>Flamands</label>
                            </li>
                            <li class="filter__option">
                                <input class="checkbox" type="checkbox" id="ck-al4" name="ck-al4">
                                <label class="filter__option__label" for="ck-al4"><span></span>Anse des Lezards</label>
                            </li>
                            <li class="filter__option">
                                <input class="checkbox" type="checkbox" id="ck-cl7" name="ck-cl7">
                                <label class="filter__option__label" for="ck-cl7"><span></span>Colombier</label>
                            </li>
                            <li class="filter__option">
                                <input class="checkbox" type="checkbox" id="ck-fl4" name="ck-fl4">
                                <label class="filter__option__label" for="ck-fl4"><span></span>Flamands</label>
                            </li>
                        </ul>
                        <a class="js-button-expand button__expand" data-text-swap="Show less">Show more</a>
                    </div>
                </div>-->
            </form>
            <!--<div class="filter--side__wrapper -last">
                <div class="filter__button__wrapper">
                    <a class="button -ui-confirm js-close-filters" href="#">Show villas</a>
                    <a class="button -ui-cancel -hover-alt js-close-filters" href="#">Cancel</a>
                </div>
            </div>-->
        </div>
        <div class="aside__button__wrapper">
            <div class="aside__button__content">
                <a href="#" class="button js-show-filters">Show more filters</a>
                <a href="#" class="button js-close-filters">Show villas</a>
            </div>
        </div>
    </aside>
    <div class="js-section-header section__header">
        <div class="section__header__container">
            <div class="section__header__wrapper -position-left">
                <h2 class="section__header__title"><span>View</span> 407 villas</h2>
                <h3 class="section__header__subtitle">(11 villas unmapped)</h3>
                <h3 class="section__header__title--alt">407 villas<span class="title--alt__number"><span class="title--alt__separator">/</span>11 unmapped</span></h3>
                <div class="form__input__container filter__input__container filter__input__container--alt">
                    <select class="js-select2-alt form__input filter__input">
                        <option value="Guests" selected>Bedrooms: Low to High</option>
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                    </select>
                    <i class="icon icon__option"></i>
                </div>
            </div>
            <div class="section__header__wrapper -position-right">
                <div class="form__input__container filter__input__container filter__input__container--alt -anchor-counter">
                    <select class="js-select2 js-select2-alt -has-select2 form__input filter__input">
                        <option value="Guests" selected>Bedrooms: Low to High</option>
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                    </select>
                    <i class="icon icon__option"></i>
                </div>
                <div class="js-search-toggle-container search-toggle__container">
                    <h3 class="search-toggle__title">Adjust your search results</h3>
                    <a class="js-search-toggle search-toggle -anchor-map">Map</a>
                    <a class="js-search-toggle search-toggle -anchor-filters -active">Filters</a>
                    <a class="js-search-filters search-filters -anchor-expand"><i class="icon icon__filters"></i><span>Open</span>Filters</a>
                    <a class="js-modal-filters search-filters -has-fancybox -anchor-modal" href="#search-aside"><i class="icon icon__filters"></i><span>Open</span>Filters</a>
                </div>
            </div>
        </div>
    </div>
</div>