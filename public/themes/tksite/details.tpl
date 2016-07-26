{extends file='layouts/layout-main.tpl'}
{block name='content'}
<article class="hero js-hero-section">
    <div class="js-slider slider">
        <div>
            <img src="{$smarty.const.TEMPLATE_PATH}/assets/images/placeholders/carousel-villa1.jpg" alt="Villa Slide">
        </div>
        <div>
            <img src="{$smarty.const.TEMPLATE_PATH}/assets/images/placeholders/carousel-villa1.jpg" alt="Villa Slide">
        </div>
        <div>
            <img src="{$smarty.const.TEMPLATE_PATH}/assets/images/placeholders/carousel-villa1.jpg" alt="Villa Slide">
        </div>
        <div>
            <img src="{$smarty.const.TEMPLATE_PATH}/assets/images/placeholders/carousel-villa1.jpg" alt="Villa Slide">
        </div>
        <div>
            <img src="{$smarty.const.TEMPLATE_PATH}/assets/images/placeholders/carousel-villa1.jpg" alt="Villa Slide">
        </div>
    </div>
    <div class="container">
        <div class="hero__container">
            <div class="hero__wrapper">
                <h2 class="hero__title">{$property->name}</h2>
                <div class="location">
                    <div class="location__item">
                        <i class="icon icon__location"></i>
                        <span class="location__item__text"><span>{$property->city},</span> {$property->state}</span>
                    </div>
                    <div class="location__item">
                        <i class="icon icon__bedrooms"></i>
                        <span class="location__item__text"><span>{$property->bedrooms}</span> Bedrooms</span>
                    </div>
                    <div class="location__item">
                        <i class="icon icon__baths"></i>
                        <span class="location__item__text"><span>{$property->bathrooms}</span> Baths</span>
                    </div>
                </div>
            </div>
            <div id="booking-panel" class="js-booking-container filter__wrapper">
                <div class="js-booking filter filter--booking -orientation-vertical">
                    <div class="js-booking-wrapper filter--booking__wrapper">
                        <h4 class="filter__title filter--booking__title">Plan your next vacation</h4>
                        <form class="form filter__form">
                            <div class="filter--booking__section -anchor-filters">
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
                                        <option value="No. of guests" selected>Guests</option>
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
                            <div class="disclaimer">
                                <span class="disclaimer__title">Best rate guarantee, from:</span>
                                <strong class="disclaimer__number">
                                    <sup class="disclaimer__number__super">$</sup>4,817
                                    <span class="disclaimer__number__text">/night</span>
                                </strong>
                            </div>
                            <div class="disclaimer__picture">
                                <img src="{$smarty.const.TEMPLATE_PATH}/assets/images/svg/no-sprite/no-fees.svg" alt="No booking fees. Ever!">
                            </div>
                            <div class="filter__button__wrapper">
                                <button class="button" type="submit">Book villa</button>
                                <a class="button -color-black" href="#" title="Request info">Request info</a>
                            </div>
                            <div class="disclaimer">
                                <span class="disclaimer__title"> Talk to a specialist(Toll Free)</span>
                                <span>1.877.815.1242</span>
                            </div>
                            <div class="filter--booking__section -anchor-details">
                                <ul class="list">
                                    <li class="list__item">Inspected home</li>
                                    <li class="list__item">Property advice</li>
                                    <li class="list__item">Personal concierge</li>
                                    <li class="list__item">Guest support</li>
                                </ul>
                            </div>
                        </form>
                        <div class="filter__button__wrapper -secondary">
                            <a class="button button--ghost -alt" href="#" title="Add to favourites"><span class="button__text-initial">Add to favourites</span><span class="button__text-alt">Favourite</span></a>
                            <a class="js-modal button button--ghost -alt" href="#email-modal" title="Email this villa"><span class="button__text-initial">Email this villa</span><span class="button__text-alt">Email</span></a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="js-booking-button filter--booking__tap -hidden">
                <a class="js-modal-form filter--booking__tap__button" href="#booking-panel">
                    <h2 class="filter--booking__tap__text">Tap here to plan your next vacation</h2>
                    <i class="icon icon__arrow-down-long"></i>
                </a>
            </div>
            <div class="hero__carousel__wrapper">
                <a href="#" class="hero__carousel__action js-fancybox-action">
                    <i class="icon icon__open"></i>
                </a>
                <div class="js-hero-carousel hero__carousel">
                    <div class="-has-video">
                        <a href="https://www.youtube.com/embed/zgviI8Cm28E?autoplay=true" class="js-fancybox" data-fancybox-type="iframe" title="Click to play: Villa Slide">
                            <img src="{$smarty.const.TEMPLATE_PATH}/assets/images/placeholders/carousel-villa1.jpg" alt="Villa Slide">
                        </a>
                    </div>
                    <div>
                        <a href="assets/images/placeholders/carousel-villa1.jpg" class="js-property-modal" rel="gallery-property01" title="Click to enlarge: Villa Slide">
                            <img src="{$smarty.const.TEMPLATE_PATH}/assets/images/placeholders/carousel-villa1.jpg" alt="Villa Slide">
                        </a>
                    </div>
                    <div>
                        <a href="assets/images/placeholders/carousel-villa1.jpg" class="js-property-modal" rel="gallery-property01" title="Click to enlarge: Villa Slide">
                            <img src="{$smarty.const.TEMPLATE_PATH}/assets/images/placeholders/carousel-villa1.jpg" alt="Villa Slide">
                        </a>
                    </div>
                    <div>
                        <a href="assets/images/placeholders/carousel-villa1.jpg" class="js-property-modal" rel="gallery-property01" title="Click to enlarge: Villa Slide">
                            <img src="{$smarty.const.TEMPLATE_PATH}/assets/images/placeholders/carousel-villa1.jpg" alt="Villa Slide">
                        </a>
                    </div>
                    <div>
                        <a href="assets/images/placeholders/carousel-villa1.jpg" class="js-property-modal" rel="gallery-property01" title="Click to enlarge: Villa Slide">
                            <img src="{$smarty.const.TEMPLATE_PATH}/assets/images/placeholders/carousel-villa1.jpg" alt="Villa Slide">
                        </a>
                    </div>
                    <div>
                        <a href="assets/images/placeholders/carousel-villa1.jpg" class="js-property-modal" rel="gallery-property01" title="Click to enlarge: Villa Slide">
                            <img src="{$smarty.const.TEMPLATE_PATH}/assets/images/placeholders/carousel-villa1.jpg" alt="Villa Slide">
                        </a>
                    </div>
                    <div>
                        <a href="assets/images/placeholders/carousel-villa1.jpg" class="js-property-modal" rel="gallery-property01" title="Click to enlarge: Villa Slide">
                            <img src="{$smarty.const.TEMPLATE_PATH}/assets/images/placeholders/carousel-villa1.jpg" alt="Villa Slide">
                        </a>
                    </div>
                    <div>
                        <a href="assets/images/placeholders/carousel-villa1.jpg" class="js-property-modal" rel="gallery-property01" title="Click to enlarge: Villa Slide">
                            <img src="{$smarty.const.TEMPLATE_PATH}/assets/images/placeholders/carousel-villa1.jpg" alt="Villa Slide">
                        </a>
                    </div>
                    <div>
                        <a href="assets/images/placeholders/carousel-villa1.jpg" class="js-property-modal" rel="gallery-property01" title="Click to enlarge: Villa Slide">
                            <img src="{$smarty.const.TEMPLATE_PATH}/assets/images/placeholders/carousel-villa1.jpg" alt="Villa Slide">
                        </a>
                    </div>
                    <div>
                        <a href="assets/images/placeholders/carousel-villa1.jpg" class="js-property-modal" rel="gallery-property01" title="Click to enlarge: Villa Slide">
                            <img src="{$smarty.const.TEMPLATE_PATH}/assets/images/placeholders/carousel-villa1.jpg" alt="Villa Slide">
                        </a>
                    </div>
                </div>
                <div class="js-hero-carousel-nav hero__carousel__nav">
                    <div class="-has-video -is-current">
                        <a href="#" title="Navigate to: Villa Slide">
                            <img src="{$smarty.const.TEMPLATE_PATH}/assets/images/placeholders/carousel-villa1.jpg" alt="Villa Slide">
                        </a>
                    </div>
                    <div>
                        <a href="#" title="Navigate to: Villa Slide">
                            <img src="{$smarty.const.TEMPLATE_PATH}/assets/images/placeholders/carousel-villa1.jpg" alt="Villa Slide">
                        </a>
                    </div>
                    <div>
                        <a href="#" title="Navigate to: Villa Slide">
                            <img src="{$smarty.const.TEMPLATE_PATH}/assets/images/placeholders/carousel-villa1.jpg" alt="Villa Slide">
                        </a>
                    </div>
                    <div>
                        <a href="#" title="Navigate to: Villa Slide">
                            <img src="{$smarty.const.TEMPLATE_PATH}/assets/images/placeholders/carousel-villa1.jpg" alt="Villa Slide">
                        </a>
                    </div>
                    <div>
                        <a href="#" title="Navigate to: Villa Slide">
                            <img src="{$smarty.const.TEMPLATE_PATH}/assets/images/placeholders/carousel-villa1.jpg" alt="Villa Slide">
                        </a>
                    </div>
                    <div>
                        <a href="#" title="Navigate to: Villa Slide">
                            <img src="{$smarty.const.TEMPLATE_PATH}/assets/images/placeholders/carousel-villa1.jpg" alt="Villa Slide">
                        </a>
                    </div>
                    <div>
                        <a href="#" title="Navigate to: Villa Slide">
                            <img src="{$smarty.const.TEMPLATE_PATH}/assets/images/placeholders/carousel-villa1.jpg" alt="Villa Slide">
                        </a>
                    </div>
                    <div>
                        <a href="#" title="Navigate to: Villa Slide">
                            <img src="{$smarty.const.TEMPLATE_PATH}/assets/images/placeholders/carousel-villa1.jpg" alt="Villa Slide">
                        </a>
                    </div>
                    <div>
                        <a href="#" title="Navigate to: Villa Slide">
                            <img src="{$smarty.const.TEMPLATE_PATH}/assets/images/placeholders/carousel-villa1.jpg" alt="Villa Slide">
                        </a>
                    </div>
                    <div>
                        <a href="#" title="Navigate to: Villa Slide">
                            <img src="{$smarty.const.TEMPLATE_PATH}/assets/images/placeholders/carousel-villa1.jpg" alt="Villa Slide">
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</article>
<!-- End Hero -->

<!-- Availability -->
<article class="section availability -style-pattern js-availability-section">
    <div class="container -position-right">
        <div class="section__container">
            <h2 class="section__title availability__title -color-white">Property Rates</h2>
            <div class="form__input__container form__input__container--short">
                <select class="js-select2 -has-select2 form__input">
                    <option value="No. of guests" selected>$ USD</option>
                    <option value="1">&pound; GBP</option>
                    <option value="2">&euro; EUR</option>
                </select>
                <i class="icon icon__option-simple"></i>
            </div>
            <div class="availability__disclaimer -anchor-top">
                <span class="availability__disclaimer__item">* 13.96% Tax (not included in rates)</span>
                <span class="availability__disclaimer__item">* US $10,000.00 Security Deposit</span>
            </div>
            <div class="availability__table">
                <table>
                    <thead>
                    <tr>
                        <th>
                            Dates
                        </th>
                        <th>
                            Beedrooms
                        </th>
                        <th>
                            Max Guests
                        </th>
                        <th>
                            Min Nights
                        </th>
                        <th>
                            Nightly
                        </th>
                        <th>
                            Weekly
                        </th>
                        <th>
                        </th>
                    </tr>
                    </thead>
                    <tr>
                        <td>
                            Apr 11 - Jun 14, 2015
                        </td>
                        <td>
                            3
                        </td>
                        <td>
                            6
                        </td>
                        <td>
                            7
                        </td>
                        <td>
                            <strong>$ 17,143</strong>
                        </td>
                        <td>
                            <strong>$ 120,001</strong>
                        </td>
                        <td>
                            <a class="button button--ghost -color-aqua -hover-alt" href="#" title="Inquire">Inquire</a>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Apr 11 - Jun 14, 2015
                        </td>
                        <td>
                            4
                        </td>
                        <td>
                            8
                        </td>
                        <td>
                            7
                        </td>
                        <td>
                            <strong>$ 21,143</strong>
                        </td>
                        <td>
                            <strong>$ 150,006</strong>
                        </td>
                        <td>
                            <a class="button button--ghost -color-aqua -hover-alt" href="#" title="Inquire">Inquire</a>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Apr 11 - Jun 14, 2015
                        </td>
                        <td>
                            3
                        </td>
                        <td>
                            6
                        </td>
                        <td>
                            5
                        </td>
                        <td>
                            <strong>$ 10,143</strong>
                        </td>
                        <td>
                            <strong>$ 74,001</strong>
                        </td>
                        <td>
                            <a class="button button--ghost -color-aqua -hover-alt" href="#" title="Inquire">Inquire</a>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Apr 11 - Jun 14, 2015
                        </td>
                        <td>
                            4
                        </td>
                        <td>
                            6
                        </td>
                        <td>
                            5
                        </td>
                        <td>
                            <strong>$ 14,143</strong>
                        </td>
                        <td>
                            <strong>$ 100,001</strong>
                        </td>
                        <td>
                            <a class="button button--ghost -color-aqua -hover-alt" href="#" title="Inquire">Inquire</a>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Apr 11 - Jun 14, 2015
                        </td>
                        <td>
                            3
                        </td>
                        <td>
                            6
                        </td>
                        <td>
                            7
                        </td>
                        <td>
                            <strong>$ 17,143</strong>
                        </td>
                        <td>
                            <strong>$ 120,001</strong>
                        </td>
                        <td>
                            <a class="button button--ghost -color-aqua -hover-alt" href="#" title="Inquire">Inquire</a>
                        </td>
                    </tr>
                </table>
            </div>

            <div class="availability__table-mobile">
                <div class="table-mobile__container">
                    <div class="table-mobile__row">
                        <div class="table-mobile__row">
                            <div class="table-mobile__cell">
                                <span class="table-mobile__key -margin-right">Dates</span>
                                <span class="table-mobile__value">Apr 11 - Jun 14, 2015</span>
                            </div>
                        </div>
                        <div class="table-mobile__row">
                            <div class="table-mobile__cell -anchor-rates">
                                <span class="table-mobile__key">Beedrooms</span>
                                <span class="table-mobile__value">6</span>
                            </div>
                            <div class="table-mobile__cell -anchor-rates">
                                <span class="table-mobile__key">Max guests</span>
                                <span class="table-mobile__value">3</span>
                            </div>
                            <div class="table-mobile__cell -anchor-rates">
                                <span class="table-mobile__key">Min nights</span>
                                <span class="table-mobile__value">6</span>
                            </div>
                        </div>
                    </div>
                    <div class="table-mobile__row">
                        <div class="table-mobile__cell -padding-right">
                            <div class="table-mobile__row">
                                <div class="table-mobile__cell -padding-bottom">
                                    <span class="table-mobile__key">Nightly</span>
                                    <strong class="table-mobile__value -weight-bold">$ 17,143</strong>
                                </div>
                            </div>
                            <div class="table-mobile__row">
                                <div class="table-mobile__cell">
                                    <span class="table-mobile__key">Weekly</span>
                                    <strong class="table-mobile__value -weight-bold">$ 120,001</strong>
                                </div>
                            </div>
                        </div>
                        <div class="table-mobile__cell">
                            <a class="button button--ghost -color-aqua -hover-alt" href="#" title="Inquire">Inquire</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="availability__table-mobile">
                <div class="table-mobile__container">
                    <div class="table-mobile__row">
                        <div class="table-mobile__row">
                            <div class="table-mobile__cell">
                                <span class="table-mobile__key -margin-right">Dates</span>
                                <span class="table-mobile__value">Apr 11 - Jun 14, 2015</span>
                            </div>
                        </div>
                        <div class="table-mobile__row">
                            <div class="table-mobile__cell -anchor-rates">
                                <span class="table-mobile__key">Beedrooms</span>
                                <span class="table-mobile__value">6</span>
                            </div>
                            <div class="table-mobile__cell -anchor-rates">
                                <span class="table-mobile__key">Max guests</span>
                                <span class="table-mobile__value">3</span>
                            </div>
                            <div class="table-mobile__cell -anchor-rates">
                                <span class="table-mobile__key">Min nights</span>
                                <span class="table-mobile__value">6</span>
                            </div>
                        </div>
                    </div>
                    <div class="table-mobile__row">
                        <div class="table-mobile__cell -padding-right">
                            <div class="table-mobile__row">
                                <div class="table-mobile__cell -padding-bottom">
                                    <span class="table-mobile__key">Nightly</span>
                                    <strong class="table-mobile__value -weight-bold">$ 17,143</strong>
                                </div>
                            </div>
                            <div class="table-mobile__row">
                                <div class="table-mobile__cell">
                                    <span class="table-mobile__key">Weekly</span>
                                    <strong class="table-mobile__value -weight-bold">$ 120,001</strong>
                                </div>
                            </div>
                        </div>
                        <div class="table-mobile__cell">
                            <a class="button button--ghost -color-aqua -hover-alt" href="#" title="Inquire">Inquire</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="availability__table-mobile">
                <div class="table-mobile__container">
                    <div class="table-mobile__row">
                        <div class="table-mobile__row">
                            <div class="table-mobile__cell">
                                <span class="table-mobile__key -margin-right">Dates</span>
                                <span class="table-mobile__value">Apr 11 - Jun 14, 2015</span>
                            </div>
                        </div>
                        <div class="table-mobile__row">
                            <div class="table-mobile__cell -anchor-rates">
                                <span class="table-mobile__key">Beedrooms</span>
                                <span class="table-mobile__value">6</span>
                            </div>
                            <div class="table-mobile__cell -anchor-rates">
                                <span class="table-mobile__key">Max guests</span>
                                <span class="table-mobile__value">3</span>
                            </div>
                            <div class="table-mobile__cell -anchor-rates">
                                <span class="table-mobile__key">Min nights</span>
                                <span class="table-mobile__value">6</span>
                            </div>
                        </div>
                    </div>
                    <div class="table-mobile__row">
                        <div class="table-mobile__cell -padding-right">
                            <div class="table-mobile__row">
                                <div class="table-mobile__cell -padding-bottom">
                                    <span class="table-mobile__key">Nightly</span>
                                    <strong class="table-mobile__value -weight-bold">$ 17,143</strong>
                                </div>
                            </div>
                            <div class="table-mobile__row">
                                <div class="table-mobile__cell">
                                    <span class="table-mobile__key">Weekly</span>
                                    <strong class="table-mobile__value -weight-bold">$ 120,001</strong>
                                </div>
                            </div>
                        </div>
                        <div class="table-mobile__cell">
                            <a class="button button--ghost -color-aqua -hover-alt" href="#" title="Inquire">Inquire</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="availability__table-mobile">
                <div class="table-mobile__container">
                    <div class="table-mobile__row">
                        <div class="table-mobile__row">
                            <div class="table-mobile__cell">
                                <span class="table-mobile__key -margin-right">Dates</span>
                                <span class="table-mobile__value">Apr 11 - Jun 14, 2015</span>
                            </div>
                        </div>
                        <div class="table-mobile__row">
                            <div class="table-mobile__cell -anchor-rates">
                                <span class="table-mobile__key">Beedrooms</span>
                                <span class="table-mobile__value">6</span>
                            </div>
                            <div class="table-mobile__cell -anchor-rates">
                                <span class="table-mobile__key">Max guests</span>
                                <span class="table-mobile__value">3</span>
                            </div>
                            <div class="table-mobile__cell -anchor-rates">
                                <span class="table-mobile__key">Min nights</span>
                                <span class="table-mobile__value">6</span>
                            </div>
                        </div>
                    </div>
                    <div class="table-mobile__row">
                        <div class="table-mobile__cell -padding-right">
                            <div class="table-mobile__row">
                                <div class="table-mobile__cell -padding-bottom">
                                    <span class="table-mobile__key">Nightly</span>
                                    <strong class="table-mobile__value -weight-bold">$ 17,143</strong>
                                </div>
                            </div>
                            <div class="table-mobile__row">
                                <div class="table-mobile__cell">
                                    <span class="table-mobile__key">Weekly</span>
                                    <strong class="table-mobile__value -weight-bold">$ 120,001</strong>
                                </div>
                            </div>
                        </div>
                        <div class="table-mobile__cell">
                            <a class="button button--ghost -color-aqua -hover-alt" href="#" title="Inquire">Inquire</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="availability__table-mobile">
                <div class="table-mobile__container">
                    <div class="table-mobile__row">
                        <div class="table-mobile__row">
                            <div class="table-mobile__cell">
                                <span class="table-mobile__key -margin-right">Dates</span>
                                <span class="table-mobile__value">Apr 11 - Jun 14, 2015</span>
                            </div>
                        </div>
                        <div class="table-mobile__row">
                            <div class="table-mobile__cell -anchor-rates">
                                <span class="table-mobile__key">Beedrooms</span>
                                <span class="table-mobile__value">6</span>
                            </div>
                            <div class="table-mobile__cell -anchor-rates">
                                <span class="table-mobile__key">Max guests</span>
                                <span class="table-mobile__value">3</span>
                            </div>
                            <div class="table-mobile__cell -anchor-rates">
                                <span class="table-mobile__key">Min nights</span>
                                <span class="table-mobile__value">6</span>
                            </div>
                        </div>
                    </div>
                    <div class="table-mobile__row">
                        <div class="table-mobile__cell -padding-right">
                            <div class="table-mobile__row">
                                <div class="table-mobile__cell -padding-bottom">
                                    <span class="table-mobile__key">Nightly</span>
                                    <strong class="table-mobile__value -weight-bold">$ 17,143</strong>
                                </div>
                            </div>
                            <div class="table-mobile__row">
                                <div class="table-mobile__cell">
                                    <span class="table-mobile__key">Weekly</span>
                                    <strong class="table-mobile__value -weight-bold">$ 120,001</strong>
                                </div>
                            </div>
                        </div>
                        <div class="table-mobile__cell">
                            <a class="button button--ghost -color-aqua -hover-alt" href="#" title="Inquire">Inquire</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="availability__disclaimer -anchor-bottom">
                <span class="availability__disclaimer__item">* 13.96% Tax (not included in rates)</span>
                <span class="availability__disclaimer__item">* US $10,000.00 Security Deposit</span>
            </div>
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
</article>
<article class="section quality -style-pattern -color-lighter">
    <div class="container -position-right">
        <div class="section__container">
            <h5 class="section__subtitle quality__subtitle">With Travel Keys</h5>
            <h2 class="section__title quality__title">Every vacation includes:</h2>
            <ul class="list quality__list">
                <li class="list__item quality__list__item">Inspected home</li>
                <li class="list__item quality__list__item">Guest support</li>
                <li class="list__item quality__list__item">Property advice</li>
                <li class="list__item quality__list__item">Local expertise</li>
                <li class="list__item quality__list__item">Personal concierge</li>
                <li class="list__item quality__list__item">And more...</li>
            </ul>
        </div>
    </div>
</article>
<!-- End Experience -->
<!-- Featured Properties -->
<article class="section description">
    <div class="container -position-right">
        <div class="section__container">
            <div class="description__wrapper -first">
                <h2 class="section__title description__title">General description</h2>
                <div class="description__expandable">
                    <p>This spectacular 11 acre private estate, as featured on HGTV, is designed to be either a 6 bedroom, 5 bedroom or a 4 bedroom luxury home.</p>
                    <p>Built for privacy, the estate is nestled in the foothills of the West Maui mountains, just minutes from awesome surfing beaches and world famous town of Lahaina.</p>
                    <p>The unique home's 6 bedroom configuration provides over 5,400 sq.ft. of interior living area with, one huge great room on the main floor , plus a large family room and a play room, 3 dining areas, 6.5 interior baths, 3 exterior showers, plus nearly 2,000 sq.ft. of covered lanai.</p>

                    <p>The unique home's 6 bedroom configuration provides over 5,400 sq.ft. of interior living area with, one huge great room on the main floor , plus a large family room and a play room, 3 dining areas, 6.5 interior baths, 3 exterior showers, plus nearly 2,000 sq.ft. of covered lanai.</p>
                    <p>The unique home's 6 bedroom configuration provides over 5,400 sq.ft. of interior living area with, one huge great room on the main floor , plus a large family room and a play room, 3 dining areas, 6.5 interior baths, 3 exterior showers, plus nearly 2,000 sq.ft. of covered lanai.</p>
                </div>
                <a class="js-button-expand button button--ghost -color-aqua" href="#" title="See more details" data-text-swap="See less details">See more details</a>
            </div>
            <div class="description__wrapper  -padding-top">
                <h2 class="section__title description__title">Amenities</h2>
                <ul class="list description__list -rows-two">
                    <li class="list__item description__list__item"><strong class="list__item__em">SqFt (int):</strong> 6200</li>
                    <li class="list__item description__list__item"><strong class="list__item__em">Maid Service:</strong> Yes, 6x/wk</li>
                    <li class="list__item description__list__item"><strong class="list__item__em">Bedding:</strong> 3 Kings, 2 Queens, 2 Doubles, 4 Bunkbeds</li>
                    <li class="list__item description__list__item"><strong class="list__item__em">Staff:</strong> (0)</li>
                    <li class="list__item description__list__item"><strong class="list__item__em">Max Occupancy:</strong> 14</li>
                </ul>
            </div>
            <div class="description__wrapper">
                <h5 class="section__subtitle description__subtitle">Featured:</h5>
                <ul class="list description__list">
                    <li class="list__item description__list__item">Pool - Infinity</li>
                    <li class="list__item description__list__item">Jacuzzi</li>
                    <li class="list__item description__list__item">Internet - WiFi</li>
                    <li class="list__item description__list__item">A/C - Multi Zone</li>
                </ul>
            </div>
            <div class="description__wrapper -anchor-penultimate">
                <h5 class="section__subtitle description__subtitle">Property:</h5>
                <ul class="list description__list">
                    <li class="list__item description__list__item">BBQ</li>
                    <li class="list__item description__list__item">Cable</li>
                    <li class="list__item description__list__item">Ceiling Fans</li>
                    <li class="list__item description__list__item">DVD</li>
                    <li class="list__item description__list__item">Stereo</li>
                    <li class="list__item description__list__item">Telephone</li>
                    <li class="list__item description__list__item">TV</li>
                </ul>
                <a class="button button--ghost -color-aqua" href="#" title="See more amenities">See more amenities</a>
            </div>
            <div class="description__wrapper -hides-for-medium-down">
                <h5 class="section__subtitle description__subtitle">Kitchen:</h5>
                <ul class="list description__list">
                    <li class="list__item description__list__item">Blender</li>
                    <li class="list__item description__list__item">Coffee Maker</li>
                    <li class="list__item description__list__item">Dish Washer</li>
                    <li class="list__item description__list__item">Ice Maker</li>
                    <li class="list__item description__list__item">Microwave</li>
                </ul>
            </div>
            <div class="description__wrapper -hides-for-medium-down">
                <h5 class="section__subtitle description__subtitle">Additional:</h5>
                <ul class="list description__list">
                    <li class="list__item description__list__item">Bar</li>
                    <li class="list__item description__list__item">Wine Cellar</li>
                    <li class="list__item description__list__item">Outdoor Shower</li>
                    <li class="list__item description__list__item">Outdoor Kitchen</li>
                    <li class="list__item description__list__item">Gazebo</li>
                </ul>
            </div>
            <div class="description__wrapper -padding-top -last">
                <h2 class="section__title description__title">Policies</h2>
                <ul class="list description__list -rows-two">
                    <li class="list__item description__list__item"><strong class="list__item__em">Check in Time:</strong> 3:00 PM</li>
                    <li class="list__item description__list__item"><strong class="list__item__em">Handicap Access:</strong> No</li>
                    <li class="list__item description__list__item"><strong class="list__item__em">Check Out Time:</strong> 10:00 AM</li>
                    <li class="list__item description__list__item"><strong class="list__item__em">Children Allowed:</strong> Yes</li>
                    <li class="list__item description__list__item"><strong class="list__item__em">Smoking:</strong> Not allowed</li>
                </ul>
            </div>
        </div>
    </div>
</article>
<article class="section villa-search__section -no-padding">
    <script src="https://maps.googleapis.com/maps/api/js?v=3.exp"></script>
    <div class="map">
        <div class="map__overlay -position-top">
            <div class="container -position-right">
                <div class="section__container">
                    <div class="map__wrapper">
                        <h2 class="section__title description__title">Location:</h2>
                        <ul class="list map__list">
                            <li class="list__item map__list__item"><strong class="list__item__em">Distance to Beach:</strong> 0 min, Flamands</li>
                            <li class="list__item map__list__item"><strong class="list__item__em">Distance to Town:</strong> 10 min, Gustavia</li>
                            <li class="list__item map__list__item"><strong class="list__item__em">Distance to Airport:</strong> 12 min, St. Barts (SBH)</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="map__container js-map-search"></div>
        <div class="map__markers js-map-markers">
            <div class="marker js-marker" data-lat="10.626444584524297" data-lng="-85.68964719772339" data-hidden="false">
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
            <div class="marker js-marker" data-lat="10.626444584524297" data-lng="-85.38964719772339" data-hidden="true">
                <div class="marker__content js-marker-content">
                    <img src="http://cdn.villascaribe.com/6396_hawaii-lahainadream-1_m.jpg" class="marker__image" alt="Coral House">
                    <h3 class="marker__title">
                        <a href="#" title="Coral House" class="marker__favorite">
                            <i class="icon icon__heart"></i><span>Coral House 2</span>
                        </a>
                    </h3>
                    <p class="marker__body">3 Bdr, 3 Bth | Colombier, St. Barts $857 - $10,000</p>
                    <div class="marker__buttons">
                        <a class="button -color-black -size-popup" href="#" title="Find out more">More details</a>
                        <a class="button button--popup-cancel js-cancel" href="javascript:infowindow.close();" title="Cancel">Cancel</a>
                    </div>
                </div>
            </div>
        </div>
        <a class="map__image" href="https://www.google.ro/maps/place/Nikki+Beach/@36.4896242,-4.7753647,17z/data=!3m1!4b1!4m2!3m1!1s0xd72d809aeb69377:0xdacbf4710b5976a1" target="_blank" title="Location">
            <img src="{$smarty.const.TEMPLATE_PATH}/assets/images/placeholders/map.jpg" alt="Location">
        </a>
        <div class="map__overlay -position-bottom">
            <div class="container">
                <div class="map__input">
                    <input id="ck-map" class="checkbox" type="checkbox" name="map" value="map">
                    <label class="filter__option__label js-map-bounds" for="ck-map"><span></span>Show me other villas near by </label>
                </div>
            </div>
        </div>
    </div>
</article>
<!-- End Map -->
<!-- Testimonial -->
<article class="section testimonial">
    <div class="container -position-right">
        <div class="section__container">
            <h5 class="section__subtitle testimonial__subtitle">Reviews</h5>
            <div class="js-testimonial-carousel testimonial__carousel">
                <div class="testimonial__wrapper">
                    <p class="testimonial__review">The service from start to finish exceeded expectation, the attention to detail was outstanding. Nothing could be improved!</p>
                    <h3 class="testimonial__title">Marius Ciuchete Paun</h3>
                    <h6 class="testimonial__place">Vancouver, Canada</h6>
                </div>
                <div class="testimonial__wrapper">
                    <p class="testimonial__review">Our holiday with Travel Keys was first class. The service from start to finish exceeded expectation, the attention to detail was outstanding. Nothing could be improved!</p>
                    <h3 class="testimonial__title">Marius Ciuchete Paun</h3>
                    <h6 class="testimonial__place">Vancouver, Canada</h6>
                </div>
            </div>
        </div>
    </div>
</article>
<!-- End Testimonial -->

<article class="section property__form message -style-pattern js-scroll-stop-point">
    <div class="form__container">
        <h5 class="section__subtitle message__subtitle">Plan your next vacantion:</h5>
        <h2 class="section__title message__title">Flamands Beach Villa</h2>
        <div class="form__intro__container">
            <h4 class="form__intro__subtitle"><span>Before you inquire,</span> here’s what you should expect:</h4>
            <ul class="list quality__list">
                <li class="list__item quality__list__item">Inspected home</li>
                <li class="list__item quality__list__item">Guest support</li>
                <li class="list__item quality__list__item">Property advice</li>
                <li class="list__item quality__list__item">Local expertise</li>
                <li class="list__item quality__list__item">Personal concierge</li>
                <li class="list__item quality__list__item">And more...</li>
            </ul>
        </div>

        <form class="form--letter form--letter-alt filter">
            <ul class="filter__options filter__options--letter">
                <li class="filter__option filter__option--letter -has-label">
                    <label class="form--letter__label">You would like to:</label>
                </li>
                <li class="filter__option filter__option--letter">
                    <input class="checkbox checkbox--alt" type="radio" id="ck-book" name="ck-book">
                    <label class="filter__option__label" for="ck-book"><span></span>Book this villa</label>
                </li>
                <li class="filter__option filter__option--letter">
                    <input class="checkbox checkbox--alt" type="radio" id="ck-inquire" name="ck-book" checked>
                    <label class="filter__option__label" for="ck-inquire"><span></span>Inquire about this villa</label>
                </li>
            </ul>
            <div class="form--letter__wrapper">
                <div class="form--letter__input__container -half-width">
                    <label class="form--letter__label">First name:</label>
                    <input class="form--letter__input" type="text" name="firstname">
                </div>
                <div class="form--letter__input__container -half-width">
                    <label class="form--letter__label">Last name:</label>
                    <input class="form--letter__input" type="text" name="lastname">
                </div>
                <div class="form--letter__input__container -half-width">
                    <label class="form--letter__label">Phone:</label>
                    <input class="form--letter__input" type="tel" name="yourphone">
                </div>
                <div class="form--letter__input__container -half-width">
                    <label class="form--letter__label">Email:</label>
                    <input class="form--letter__input" type="email" name="youremail">
                </div>
                <div class="form--letter__group -half-width">
                    <div class="form--letter__input__container -quarter-width -anchor-datepicker">
                        <label class="form--letter__label">Check in:</label>
                        <input class="js-datepicker -has-datepicker form--letter__input -appearance-alt" type="text" placeholder="" name="aproxcheckin" readonly>
                        <i class="icon icon__calendar"></i>
                    </div>
                    <div class="form--letter__input__container -quarter-width -anchor-datepicker">
                        <label class="form--letter__label">Check out:</label>
                        <input class="js-datepicker -has-datepicker form--letter__input -appearance-alt" type="text" placeholder="" name="aproxcheckout" readonly>
                        <i class="icon icon__calendar"></i>
                    </div>
                </div>
                <div class="form--letter__group -half-width -margin-bottom">
                    <div class="form__input__container filter__input__container form--letter__input__container -anchor-counter -quarter-width">
                        <label class="filter__input__name">Adults:</label>
                                <span class="js-counter-button js-counter-minus filter__input__container__handler -anchor-minus">
                                    <i class="icon icon__minus"></i>-
                                </span>
                        <select class="js-select2 -has-select2 form__input form--letter__input">
                            <option label="Select and option" disabled selected></option>
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
                    <div class="form__input__container filter__input__container form--letter__input__container -anchor-counter -quarter-width">
                        <label class="filter__input__name">Kids:</label>
                                <span class="js-counter-button js-counter-minus filter__input__container__handler -anchor-minus">
                                    <i class="icon icon__minus"></i>-
                                </span>
                        <select class="js-select2 -has-select2 form__input form--letter__input">
                            <option label="Select and option" disabled selected></option>
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
            <div class="form--letter__input__container -has-textarea">
                <label class="form--letter__label">Special requirements, questions, comments:</label>
                <textarea class="js-textarea form--letter__input -anchor-textarea" name="villadescription" rows="3"></textarea>
            </div>
            <button class="button form--letter__button">Send your request</button>
        </form>
    </div>
</article>
<article class="section villas">
    <h5 class="section__subtitle villas__subtitle">Other villas</h5>
    <h2 class="section__title villas__title">You May Also Like</h2>
    <div class="js-villas-carousel villas__carousel villas__carousel">
        <div class="villas__carousel__item">
            <!-- Item -->
            <section class="featured__item">
                <div class="featured__picture__container"><img alt="Redondo Beach Luxury" class="featured__picture" src="{$smarty.const.TEMPLATE_PATH}/assets/images/placeholders/villa6.jpg">
                </div>
                <div class="featured__wrapper">
                    <div class="featured__item__wrapper">
                        <h3 class="featured__item__title">
                            <a href="#" title="Redondo Beach Luxury"><i class="icon icon__heart-featured"></i><span>Redondo Beach Luxury</span></a>
                        </h3>
                        <span class="featured__item__description">Colombier, St. Barts</span>
                    </div>
                    <div class="featured__item__section">
                        <div class="featured__item__facilities">
                            <span>2 Bedrooms</span>
                            <span>2 Baths</span>
                        </div>
                        <div class="featured__item__price">
                            <span class="price__text">From</span>
                            <strong class="price__number"><sup class="price__super">$</sup>4,817/nt</strong>
                        </div>
                    </div>
                    <div class="featured__item__buttons">
                        <div class="featured__item__button">
                            <a class="button -color-black" href="#" title="View villa">View villa</a>
                        </div>
                        <div class="featured__item__button">
                            <a class="js-modal button -color-gray -has-calendar" href="#availability-modal" title="Calendar">Calendar<i class="icon icon__date-square"></i></a>
                        </div>
                    </div>
                </div>
            </section>
            <!-- End Item -->
        </div>
        <div class="villas__carousel__item">
            <!-- Item -->
            <section class="featured__item">
                <div class="featured__picture__container"><img alt="Villa Vitti" class="featured__picture" src="{$smarty.const.TEMPLATE_PATH}/assets/images/placeholders/villa1.jpg">
                </div>
                <div class="featured__wrapper">
                    <div class="featured__item__wrapper">
                        <h3 class="featured__item__title">
                            <a href="#" title="Villa Vitti"><i class="icon icon__heart-featured"></i><span>Villa Vitti</span></a>
                        </h3>
                        <span class="featured__item__description">Colombier, St. Barts</span>
                    </div>
                    <div class="featured__item__section">
                        <div class="featured__item__facilities">
                            <span>2 Bedrooms</span>
                            <span>2 Baths</span>
                        </div>
                        <div class="featured__item__price">
                            <span class="price__text">From</span>
                            <strong class="price__number"><sup class="price__super">$</sup>4,817/nt</strong>
                        </div>
                    </div>
                    <div class="featured__item__buttons">
                        <div class="featured__item__button">
                            <a class="button -color-black" href="#" title="View villa">View villa</a>
                        </div>
                        <div class="featured__item__button">
                            <a class="js-modal button -color-gray -has-calendar" href="#availability-modal" title="Calendar">Calendar<i class="icon icon__date-square"></i></a>
                        </div>
                    </div>
                </div>
            </section>
            <!-- End Item -->
        </div>
        <div class="villas__carousel__item">
            <!-- Item -->
            <section class="featured__item">
                <div class="featured__picture__container"><img alt="La Fleur Sur La Mer" class="featured__picture" src="{$smarty.const.TEMPLATE_PATH}/assets/images/placeholders/villa3.jpg">
                </div>
                <div class="featured__wrapper">
                    <div class="featured__item__wrapper">
                        <h3 class="featured__item__title">
                            <a href="#" title="La Fleur Sur La Mer"><i class="icon icon__heart-featured"></i><span>La Fleur Sur La Mer</span></a>
                        </h3>
                        <span class="featured__item__description">Colombier, St. Barts</span>
                    </div>
                    <div class="featured__item__section">
                        <div class="featured__item__facilities">
                            <span>2 Bedrooms</span>
                            <span>2 Baths</span>
                        </div>
                        <div class="featured__item__price">
                            <span class="price__text">From</span>
                            <strong class="price__number"><sup class="price__super">$</sup>4,817/nt</strong>
                        </div>
                    </div>
                    <div class="featured__item__buttons">
                        <div class="featured__item__button">
                            <a class="button -color-black" href="#" title="View villa">View villa</a>
                        </div>
                        <div class="featured__item__button">
                            <a class="js-modal button -color-gray -has-calendar" href="#availability-modal" title="Calendar">Calendar<i class="icon icon__date-square"></i></a>
                        </div>
                    </div>
                </div>
            </section>
            <!-- End Item -->
        </div>
    </div>
</article>
<div class="newsletter--mobile">
    <div class="newsletter--mobile__wrapper">
        <h3 class="newsletter--mobile__title">Subscribe to our newsletter</h3>
        <form class="newsletter--mobile__form">
            <input class="newsletter--mobile__input" type="email" name="newsletter-email" placeholder="Enter your email address:">
            <button class="button" type="submit"><i class="icon icon__envelope"></i>
            </button>
        </form>
        <div class="footer__social--mobile">
            <h6 class="footer__social--mobile__subtitle">Stay in touch:</h6>
            <ul class="social--mobile__list">
                <li class="social--mobile__list__item"><a href="#" title="Check us on Facebook!"><i class="icon icon__facebook-mobile"></i></a>
                </li>
                <li class="social--mobile__list__item"><a href="#" title="Connect with us on Twitter"><i class="icon icon__twitter-mobile"></i></a>
                </li>
                <li class="social--mobile__list__item"><a href="#" title="See what is new on Instagram!"><i class="icon icon__instagram-mobile"></i></a>
                </li>
                <li class="social--mobile__list__item"><a href="#" title="Connect with us via Google+"><i class="icon icon__google-mobile"></i></a>
                </li>
            </ul>
        </div>
    </div>
</div>
{/block}