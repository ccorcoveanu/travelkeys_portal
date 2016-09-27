{extends file='layouts/layout-main.tpl'}
{block name='content'}
    {include file='_partials/sec_hero.tpl'}
    <article class="section -style-pattern -color-light">
        <a class="button button--next-section -shape-trapezoid" href="#filters"><i class="icon icon__arrow-down-black"></i></a>

        <p class="welcome_premium text-center">
            As a TravelKeys Elite member, you will enjoy a wide range of benefits with each luxury villa rental, designed to maximize your vacation experience with exclusive access and fantastic savings.
        </p>
    </article>
    <article class="full-width section -style-pattern -color-light -glued-top">
        <div class="world_benefits text-center" style="padding-bottom: 460px;">
            <div class="caption">
                <div class="grey-line"></div>
                <img src="http://cdn.travelkeys.com/sites/all/themes/travelkeysv5/images/diamond.png?obbgnm" alt="">
                <div class="grey-line"></div>
            </div>
            <h1>Worldwide Benefits</h1>
            <h2>included in all TravelKeys destinations</h2>
            <div class="all_benefits">
                <div class="benefit_block transition">
                    <div class="benef_img">
                        <img class="" src="http://cdn.travelkeys.com/sites/all/themes/travelkeysv5/images/pr_service.jpg?obbgnm" alt="">
                        <div class="benef_shad"></div>
                    </div>
                    <div class="benef_text">

                        <h1>Complimentary<br>'Welcome Pack'</h1>
                        <div class="detail_prev">
                            <h4>Details</h4>
                            <div class="white_border"></div>
                        </div>
                        <div class="benefit_details toggleout">
                            <p>Arrive at your villa with an essentials starter pack already there, ensuring you don’t have to rush out again immediately after checking in to keep everyone happy.</p>
                            <a href="#get-in-touch--form" class="find_benef">
                                <span class="find_benef_inside">FIND OUT MORE</span>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="benefit_block">
                    <div class="benef_img">
                        <img class="" src="http://cdn.travelkeys.com/sites/all/themes/travelkeysv5/images/pr_cook.jpg?obbgnm" alt="">
                        <div class="benef_shad"></div>
                    </div>
                    <div class="benef_text">
                        <h1>Preferred rates on<br>
                            Activities &amp; Services</h1>
                        <div class="detail_prev">
                            <h4>Details</h4>
                            <div class="white_border"></div>
                        </div>

                        <div class="benefit_details toggleout">
                            <p>
                                Pampering yourself has never been so rewarding! From in-villa chef services to guided boat charters, benefit from exclusive rates on a selection of services and activities setup by your personal concierge.
                            </p>
                            <a href="#get-in-touch--form" class="find_benef">
                                <span class="find_benef_inside">FIND OUT MORE</span>
                            </a>
                        </div>
                    </div>


                </div>
                <div class="benefit_block">
                    <div class="benef_img">
                        <img class="" src="http://cdn.travelkeys.com/sites/all/themes/travelkeysv5/images/pr_protect.jpg?obbgnm" alt="">
                        <div class="benef_shad"></div>
                    </div>
                    <div class="benef_text">
                        <h1>Premier<br>
                            Protection</h1>
                        <div class="detail_prev">
                            <h4>Details</h4>
                            <div class="white_border"></div>
                        </div>
                        <div class="benefit_details toggleout">
                            <p>
                                TravelKeys has partnered with CSA to provide tailored insurance coverage to our Elite members, ensuring your peace of mind. Benefit from special savings with bundled coverage on villas, airfare, pre-planned activities &amp; services on-location.
                            </p>
                            <a href="#get-in-touch--form" class="find_benef">
                                <span class="find_benef_inside">FIND OUT MORE</span>
                            </a>

                        </div>
                    </div>
                </div>
                <div class="benefit_block">
                    <div class="benef_img">
                        <img class="" src="http://cdn.travelkeys.com/sites/all/themes/travelkeysv5/images/pr_travel.jpg?obbgnm" alt="">
                        <div class="benef_shad"></div>
                    </div>
                    <div class="benef_text">
                        <h1>Luxury Travel<br>
                            Subscription</h1>
                        <div class="detail_prev">
                            <h4>Details</h4>
                            <div class="white_border"></div>
                        </div>
                        <div class="benefit_details toggleout">
                            <p>
                                Our guests are passionate about travel and appreciate staying well informed about new, exciting destinations. Remain in the know with a subscription to the best luxury travel publications, such as Conde Naste… on us!
                            </p>
                            <a href="#get-in-touch--form" class="find_benef">
                                <span class="find_benef_inside">FIND OUT MORE</span>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="benefit_block">
                    <div class="benef_img">
                        <img class="" src="http://cdn.travelkeys.com/sites/all/themes/travelkeysv5/images/tr_deposit.jpg?obbgnm" alt="">
                        <div class="benef_shad"></div>
                    </div>
                    <div class="benef_text">
                        <h1>Security Deposit<br>
                            Waiver</h1>
                        <div class="detail_prev text-center">
                            <h4>Details</h4>
                            <div class="white_border"></div>
                        </div>
                        <div class="benefit_details toggleout">
                            <p>You trust TravelKeys and we trust our preferred guests to settle any damages should they happen. This means no security deposits are collected upfront for any of your party’s reservations.</p>
                            <a href="#get-in-touch--form" class="find_benef">
                                <span class="find_benef_inside">FIND OUT MORE</span>
                            </a>
                        </div>
                    </div>

                </div><!-- /.benefit_block -->
            </div><!-- /.all_benefits -->
        </div><!-- /. world_benefits -->

        <div class="container premium_feat_container">
            <div class="featured_premium text-center">
                <p class="welcome_premium text-center">Maximize your experiences abroad with additional member benefits when you travel to any one of our <strong>Elite Destinations!</strong></p>
                <div class="dest_title">
                    <h2>Show me Member Benefits in:
                        <div class="selected_premium">
                            <select name="destinations" id="premium_destinations" class="form-control premium_destinations" default="Country">

                                <option id="st-barts" value="St. Barts">St. Barts</option>
                                <option id="stjohn" value="St. John">St. John</option>
                                <option id="stmartin" value="St. Martin">St. Martin</option>
                                <option id="turkscaicos" value="Turks and Caicos">Turks and Caicos</option>
                                <option id="maui" value="Maui">Maui</option>
                                <option id="cabo-san-lucas" value="Cabo San Lucas">Cabo San Lucas</option>
                            </select>
                    </h2>
                </div>
                <div class="caption">
                    <div class="grey-line"></div>
                    <img src="http://cdn.travelkeys.com/sites/all/themes/travelkeysv5/images/diamond.png?obbgnm" alt="">
                    <div class="grey-line"></div>
                </div>
                <h1>Features <img class="" src="http://cdn.travelkeys.com/sites/all/themes/travelkeysv5/images/and_sign.png?obbgnm" alt=""> Benefits</h1>
                <div class="featured_wrap st-barts" style="display: block;">
                    <h2>included with Luxury Villa rentals in St. Barts</h2>
                    <div class="row">
                        <div class="feat_block">
                            <img class="img-resposive" src="http://cdn.travelkeys.com/sites/all/themes/travelkeysv5/images/pr_rental.jpg?obbgnm" alt="">
                            <h4>VIP Car Rental<br>status</h4>
                            <div class="row">
                                <div class="col-xs-4 col-xs-offset-4">
                                    <div class="caption">
                                        <div class="grey-line"></div>
                                    </div>
                                </div>
                            </div>
                            <p>Premier perks such as the newest cars in class, free upgrades, dock delivery/pickup, and an expedited ‘arrive-sign-drive’means that you don’t waste any time filling out forms during your time in paradise!</p>
                        </div><!-- /.feat_block -->
                        <div class="feat_block">
                            <img class="img-responsive" src="http://cdn.travelkeys.com/sites/all/themes/travelkeysv5/images/float_my_boat.jpg?obbgnm" alt="">
                            <h4>Float<br>my Boat</h4>
                            <div class="row">
                                <div class="col-xs-4 col-xs-offset-4">
                                    <div class="caption">
                                        <div class="grey-line"></div>
                                    </div>
                                </div>
                            </div>
                            <p>
                                Take to the crystal clear waters of the Caribbean and discover the secret beaches of St Barts with an exclusive half-day boat charter including valet parking and a gasoline allowance.
                            </p>
                        </div><!-- /.feat_block -->
                    </div>
                </div>
            </div>
        </div>
    </article>

    <article class="contact_premium text-center" id="get-in-touch--form">
        <h1>Get in touch</h1>
        <h2>Ask us about the Elite Membership program!</h2>
        <div class="container">
            <div class="row">
                <div class="col-md-12 col-sm-12 col-xs-12">
                    <div class="assist_premium_form">
                        <form class="js-validate-form form--letter form--letter-alt filter" method="post" id="mvrm-properties-reserve-property-form" accept-charset="UTF-8" action="http://www.travelkeys.com/vip"><div><input type="hidden" name="type" value="contact">
                                <input type="hidden" name="referrer-url" value="/vip">
                                <input type="hidden" name="client_type" value="Normal">
                                <input type="hidden" name="leadmvrm" value="">
                                <input type="hidden" name="propertyId" value="">
                                <input type="hidden" name="villa_name" value="">
                                <input type="hidden" name="friendly_name" value="">
                                <input type="hidden" name="client_request" value="Contact Form">
                                <input type="hidden" name="title" value="Contact us about">
                                <input type="hidden" name="utm_campaign">
                                <input type="hidden" name="utm_term">
                                <input type="hidden" name="utm_medium">
                                <input type="hidden" name="utm_source">
                                <input type="hidden" name="utm_content">
                                <input type="hidden" name="network">
                                <input type="hidden" name="tktrack">
                                <input type="hidden" name="device">
                                <input type="hidden" name="division" value="www.travelkeys.com">
                                <input type="hidden" name="captcha" value="1">
                                <input type="hidden" name="form_id" value="mvrm_properties_reserve_property_form">
                                <div class="form--letter__wrapper">
                                    <!-- -->

                                    <div class="form--letter__input__container -has-textfield -half-width">
                                        <label class="form--letter__label" for="edit-first-name">First name:  </label>
                                        <input class="form--letter__input form-text required" placeholder="" type="text" id="edit-first-name" name="first_name" value="" size="" maxlength="128" required>
                                    </div>
                                    <div class="form--letter__input__container -has-textfield -half-width">
                                        <label class="form--letter__label" for="edit-last-name">Last name: </label>
                                        <input class="form--letter__input form-text" placeholder="" type="text" id="edit-last-name" name="last_name" value="" size="" maxlength="128" required>
                                    </div>

                                    <div class="form--letter__input__container -has-telfield -half-width">
                                        <label class="form--letter__label" for="edit-phone">Phone: </label>
                                        <input class="form--letter__input form-text form-tel" placeholder="" type="tel" id="edit-phone" name="phone" value="" size="" maxlength="64" required>
                                    </div>
                                    <div class="form--letter__input__container -has-emailfield -half-width">
                                        <label class="form--letter__label" for="edit-email">Email:  </label>
                                        <input class="form--letter__input form-text form-email required h5-email" placeholder="" type="email" id="edit-email" name="email" value="" size="" maxlength="128" required>
                                    </div>



                                </div>

                                <div class="form--letter__input__container -has-textarea">
                                    <label class="form--letter__label" for="edit-description">Your message for us: </label>
                                    <textarea class="form--letter__input js-textarea -anchor-textarea form-textarea" placeholder="" id="edit-description" name="description" cols="" rows="3" style="height: 135px; overflow-y: hidden;"></textarea>
                                </div>


                                <button class="button form--letter__button form-submit" type="submit" id="edit-submit" name="op" value="SEND YOUR REQUEST">SEND YOUR REQUEST</button>
                                <div id="dialog-message" title="Thank You"></div>

                                <script type="text/javascript">
                                    (function ($) {
                                        $(document).ready(function(){
                                            ReservationForm.init({
                                                form: '#mvrm-properties-reserve-property-form',
                                                required: ['first_name', 'email']
                                            });
                                        });
                                    })(jQuery);
                                </script></div></form>                </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12 col-sm-12 col-xs-12">
                    <p>
                        Membership is valid for 12 months from the date of registration. Active memberships are extended for 12 months upon confirmation of a villa rental with TravelKeys. All Benefits are non-transferable and eligible towards new reservations only.  All activities and services offered are subject to availability on location and can be limited depending on season.
                    </p>
                </div>
            </div>
        </div>
    </article>

    <div class="js-tabs-end"></div>
    <!-- End Search Form -->
{/block}