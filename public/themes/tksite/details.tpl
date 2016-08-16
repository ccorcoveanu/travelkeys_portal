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
                    <h2 class="hero__title">{$property->name} Villa</h2>
                    <div class="location">
                        <div class="location__item">
                            <i class="icon icon__location"></i>
                            <span class="location__item__text"><span>{$property->city}{if $property->city|strlen},{/if}</span>{if $property->city|strlen}<br/> {/if}{$property->location_name}</span>
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
                                        <sup class="disclaimer__number__super">$</sup>{$property_details->details->min_rate|default:'TBA'}
                                        <span class="disclaimer__number__text">/night</span>
                                    </strong>
                                </div>
                                <div class="disclaimer__picture">
                                    <img src="{$smarty.const.TEMPLATE_PATH}/assets/images/svg/no-sprite/no-fees.svg" alt="No booking fees. Ever!">
                                </div>
                                <div class="filter__button__wrapper">
                                    <button class="button" type="submit">Book villa</button>
                                    <a class="button -color-black" href="#reserve_property_form" title="Request info">Request info</a>
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
                    <div class="js-hero-carousel hero__carousel -has-fancybox">
                        {foreach name='property_videos' item=$video from=$property_details->videos}
                            <div class="-has-video">
                                <a href="https://www.youtube.com/embed/zgviI8Cm28E?autoplay=true" class="js-fancybox" data-fancybox-type="iframe" title="Click to play: Villa Slide">
                                    <img src="{$smarty.const.TEMPLATE_PATH}/assets/images/placeholders/carousel-villa1.jpg" alt="Villa Slide">
                                </a>
                            </div>
                        {/foreach}
                        {foreach name='property_images' item=$image from=$property_details->images}
                            <div>
                                <a href="{$smarty.const.CDN}/{$image->filename_l}" class="js-property-modal" rel="gallery-property01" title="Click to enlarge: Villa Slide">
                                    <img src="{$smarty.const.CDN}/{$image->filename_l}" alt="Villa Slide">
                                </a>
                            </div>
                        {/foreach}
                    </div>
                    <div class="js-hero-carousel-nav hero__carousel__nav">
                        {foreach name='property_videos' item=$video from=$property_details->videos}
                            <div class="-has-video">
                                <a href="#" title="Navigate to: Villa Slide">
                                    <img src="{$smarty.const.TEMPLATE_PATH}/assets/images/placeholders/carousel-villa1.jpg" alt="Villa Slide">
                                </a>
                            </div>
                        {/foreach}
                        {foreach name='property_images' item=$image from=$property_details->images}
                            <div>
                                <a href="#" title="Navigate to: Villa Slide">
                                    <img src="{$smarty.const.CDN}/{$image->filename_s}" alt="Villa Slide">
                                </a>
                            </div>
                        {/foreach}

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
                        {foreach name='rate_profile' item=$rate_profile from=$property_details->rates}
                            {foreach name='rate_item' item=$rate from=$rate_profile.rates}
                                <tr>
                                    <td>
                                        {$rate_profile.formatted_date}
                                    </td>
                                    <td>
                                        {$rate.bedrooms}
                                    </td>
                                    <td>
                                        {$rate.max_guests}
                                    </td>
                                    <td>
                                        {$rate.min_stay}
                                    </td>
                                    <td>
                                        <strong>$ {$rate.nightly}</strong>
                                    </td>
                                    <td>
                                        <strong>$ {$rate.weekly}</strong>
                                    </td>
                                    <td>
                                        <a class="button button--ghost -color-aqua -hover-alt" href="#reserve_property_form" title="Inquire">Inquire</a>
                                    </td>
                                </tr>
                            {/foreach}
                        {/foreach}
                    </table>
                </div>
                {foreach name='rate_profile' item=$rate_profile from=$property_details->rates}
                    {foreach name='rate_item' item=$rate from=$rate_profile.rates}
                        <div class="availability__table-mobile">
                            <div class="table-mobile__container">
                                <div class="table-mobile__row">
                                    <div class="table-mobile__row">
                                        <div class="table-mobile__cell">
                                            <span class="table-mobile__key -margin-right">Dates</span>
                                            <span class="table-mobile__value">{$rate_profile.formatted_date}</span>
                                        </div>
                                    </div>
                                    <div class="table-mobile__row">
                                        <div class="table-mobile__cell -anchor-rates">
                                            <span class="table-mobile__key">Beedrooms</span>
                                            <span class="table-mobile__value">{$rate.bedrooms}</span>
                                        </div>
                                        <div class="table-mobile__cell -anchor-rates">
                                            <span class="table-mobile__key">Max guests</span>
                                            <span class="table-mobile__value">{$rate.max_guests}</span>
                                        </div>
                                        <div class="table-mobile__cell -anchor-rates">
                                            <span class="table-mobile__key">Min nights</span>
                                            <span class="table-mobile__value">{$rate.min_stay}</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="table-mobile__row">
                                    <div class="table-mobile__cell -padding-right">
                                        <div class="table-mobile__row">
                                            <div class="table-mobile__cell -padding-bottom">
                                                <span class="table-mobile__key">Nightly</span>
                                                <strong class="table-mobile__value -weight-bold">$ {$rate.nightly}</strong>
                                            </div>
                                        </div>
                                        <div class="table-mobile__row">
                                            <div class="table-mobile__cell">
                                                <span class="table-mobile__key">Weekly</span>
                                                <strong class="table-mobile__value -weight-bold">$ {$rate.weekly}</strong>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="table-mobile__cell">
                                        <a class="button button--ghost -color-aqua -hover-alt" href="#reserve_property_form" title="Inquire">Inquire</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    {/foreach}
                {/foreach}

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
                    <div class="description__expandable"><p>{$property_details->details->description}</p></div>
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
                        <li class="list__item description__list__item"><strong class="list__item__em">Check in Time:</strong> {$property_details->policies->check_in}</li>
                        <li class="list__item description__list__item"><strong class="list__item__em">Handicap Access:</strong> {if $property_details->policies->handicap_access == 1}Yes{else}No{/if}</li>
                        <li class="list__item description__list__item"><strong class="list__item__em">Check Out Time:</strong> {$property_details->policies->check_out}</li>
                        <li class="list__item description__list__item"><strong class="list__item__em">Children Allowed:</strong> {if $property_details->policies->children_welcome == 1}Yes{else}No{/if}</li>
                        <li class="list__item description__list__item"><strong class="list__item__em">Smoking:</strong> {if $property_details->policies->smoking_allowed == 1}Allowed{else}Not allowed{/if}</li>
                    </ul>
                </div>
            </div>
        </div>
    </article>
    <article class="section villa-search__section -no-padding">
        <script async src="https://maps.googleapis.com/maps/api/js?v=3.exp&key={$smarty.const.GOOGLE_API_KEY}"></script>
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
                <div class="marker js-marker" data-lat="{$property_details->address->latitude}" data-lng="{$property_details->address->longitude}" data-hidden="false">
                    <div class="marker__content js-marker-content">
                        <img src="{$smarty.const.CDN}/{$property_details->images[0]->filename_m}" class="marker__image" alt="{$property_details->details->name}">
                        <h3 class="marker__title">
                            <a href="javascript:;" title="{$property_details->details->name}" class="marker__favorite">
                                <i class="icon icon__heart"></i><span>{$property_details->details->name}</span>
                            </a>
                        </h3>
                        <p class="marker__body">{$property_details->details->bedrooms} Bdr, {$property_details->details->bathrooms} Bth | {$property_details->address->state}{if $property_details->address->state|strlen}, {/if}{$property_details->address->city|default:$property_details->details->name} ${$property_details->details->min_rate} - ${$property_details->details->max_rate}</p>
                        <div class="marker__buttons">
                            <a class="button -color-black -size-popup" href="#" title="Find out more">More details</a>
                            <a class="button button--popup-cancel" href="javascript:infowindow.close();" title="Cancel">Cancel</a>
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

    <article class="section property__form message -style-pattern js-scroll-stop-point" id="reserve_property_form">
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
    <!-- Modals -->
    <div class="modal-container">
        <div id="email-modal" class="modal">
            <article class="section">
                <h3 class="section__title modal__title">Email your best frietnds about<br> Las Palmas Elrod Oasis</h3>
                <form class="form--letter form--letter-alt filter js-validate-form" method="post">
                    <div class="modal__wrapper">
                        <div class="modal__item">
                            <div class="form--letter__input__container">
                                <label class="form--letter__label">Your Friend's Email:</label>
                                <input class="form--letter__input h5-email" type="email" name="friendemail" required>
                            </div>
                            <div class="form--letter__input__container">
                                <label class="form--letter__label">Your Personal Email:</label>
                                <input class="form--letter__input h5-email" type="email" name="personalemail" required>
                            </div>
                            <div class="form--letter__input__container">
                                <label class="form--letter__label">Subject:</label>
                                <input class="form--letter__input" type="text" name="subject" required>
                            </div>
                        </div>
                        <div class="modal__item">
                            <img class="modal__image" src="{$smarty.const.TEMPLATE_PATH}/assets/images/bg/bg-sent.png" alt="Email your best friends">
                        </div>
                    </div>
                    <div class="form--letter__input__container -has-textarea">
                        <label class="form--letter__label">Write an additional message:</label>
                        <textarea class="js-textarea form--letter__input -anchor-textarea -anchor-textarea-alt" name="additionalmessage" rows="3" required></textarea>
                    </div>
                    <ul class="filter__options filter__options--letter">
                        <li class="filter__option filter__option--letter">
                            <input class="checkbox checkbox--alt" type="checkbox" id="ck-human" name="ck-human">
                            <label class="filter__option__label" for="ck-human"><span></span>I'm a human being, not a robot</label>
                        </li>
                        <li class="filter__option filter__option--letter">
                            <input class="checkbox checkbox--alt" type="checkbox" id="ck-email" name="ck-email" checked>
                            <label class="filter__option__label" for="ck-email"><span></span>Email me a copy of this email</label>
                        </li>
                    </ul>
                    <button class="button form--letter__button">Send your message</button>
                </form>
            </article>
        </div>
    </div>

{/block}