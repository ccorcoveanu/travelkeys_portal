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
    <article class="js-tabs-section js-tabs-start section information -background-gray">
        {include file='_partials/navigation/quicknav.tpl'}
        <div class="container -position-right">
            <div class="information__header -margin-bottom">
                <h5 class="section__subtitle information__subtitle">A Rich Tradition</h5>
                <h2 class="section__title information__title">Over 25 years of experience</h2>
                <img class="information__badge" src="{$smarty.const.TEMPLATE_PATH}/assets/images/svg/no-sprite/quality-badge-black.svg" alt="Over 25 yeats of tradition"/>
                <p>Travel Keys is an elite travel broker representing an enticing collection o 5000 personally inspected luxury villas throughout more than 75 destinations throughout the Caribbean, Mexico, Hawaii, Europe, Asia, Africa and the United States.</p>
                <p><strong>Our expertise has been noted in the following publications: Conde Nast, Travel and Leisure, Islands, Caribbean Travel & Life and Robb Report.</strong></p>
            </div>
            <div class="information__items -margin-bottom">
                <div class="information__item">
                    <i class="icon icon__badge-house"></i>
                    <h6 class="information__item__subtitle">More than 5000</h6>
                    <h3 class="information__item__title">Hand-Picked Luxury Villas</h3>
                    <p>Our personally inspected luxury villa rentals represent the best selection of luxury vacation homes in any of our featured markets.</p>
                    <p>We are dedicated to providing personalized service and professional vacation planning.</p>
                </div>
                <div class="information__item">
                    <i class="icon icon__badge-bell"></i>
                    <h6 class="information__item__subtitle">Your Personal</h6>
                    <h3 class="information__item__title">Dedicated Concierge Service</h3>
                    <p>We feature personally inspected and professionally curated luxury house rentals.</p>
                    <p>Our agents have first hand experience with our inventory and are ready to assist you in planning your luxury villa vacation.</p>
                </div>
                <div class="information__item">
                    <i class="icon icon__badge-money"></i>
                    <h6 class="information__item__subtitle">The Best Rates</h6>
                    <h3 class="information__item__title">Low rate guarantee</h3>
                    <p>Our contracts with property owners ensure you always receive the lowest possible rate available for your luxury vacation rental.</p>
                </div>
                <div class="information__item">
                    <i class="icon icon__badge-video"></i>
                    <h6 class="information__item__subtitle">Even More</h6>
                    <h3 class="information__item__title">Virtual tours and HD movies</h3>
                    <p>Many of our listings online include high definition virtual tours of our listings so that you can better acquaint yourself with your private vacation home.</p>
                </div>
            </div>
            <div class="information__next">
                <span class="information__next__span">What's next:</span>
                <a class="button -color-black" href="/about-members" title="Featured Specialists">Featured Specialists</a>
            </div>
        </div>
    </article>

    <!-- Donno if they should be here -->
    <!-- Search Form -->
    <div class="filter -orientation-vertical -border-top">
        <h4 class="filter__title">Find the perfect destination</h4>
        <form class="form filter__form">
            <div class="form__input__container filter__input__container -anchor-destination">
                <input class="form__input filter__input" name="destination" type="text" placeholder="Destination">
                <i class="icon icon__globe"></i>
            </div>
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
    <div class="js-tabs-end"></div>
    <!-- End Search Form -->
{/block}