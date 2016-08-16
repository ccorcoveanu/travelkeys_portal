{extends file='layouts/layout-main.tpl'}
{block name='content'}
    <article class="hero hero--secondary">
        <div class="container">
            <div class="hero__container hero--secondary__container">
                <h1 class="hero__title hero--secondary__title">OUR specialists are on the ground to assist you</h1>
                <i class="icon icon__hands hero--secondary__icon"></i>
                <h2 class="hero__subtitle hero--secondary__subtitle">In over 75 destinations worldwide.</h2>
            </div>
        </div>
    </article>
    <!-- End Hero -->
    <article class="js-tabs-section js-tabs-start section information -style-pattern -color-light">
        {include file="_partials/navigation/quicknav.tpl"}
        <div class="container -position-right">
            <div class="information__header -no-margin-bottom">
                <h5 class="section__subtitle information__subtitle">Meet Our</h5>
                <h2 class="section__title information__title">Featured Specialists</h2>
                <p>One of the unique strengths of Travel Keys is our international network of villa and concierge specialists. Locally-based agents ensure that our guests are provided with the highest levels of service and expertise across our many global destinations.</p>
                <p>Our team of specialists travel the world to guarantee you find not only the best villa, but also the best vacation experience in a given destination.</p>
                <p><strong>Our experts are located in many of our Top Destinations throughout the world and remain ready to assist.</strong></p>
            </div>
        </div>
    </article>
    <article class="section information -style-pattern">
        <div class="container -position-right">
            <div class="information__header">
                <h5 class="section__subtitle information__subtitle">Introducing</h5>
                <h2 class="section__title information__title -color-white">Our Executive Team</h2>
            </div>
            <div class="team">
                <div class="container">
                    <article class="team__member">
                        <div class="team__member__avatar__container">
                            <img class="team__member__avatar" src="{$smarty.const.TEMPLATE_PATH}/assets/images/placeholders/avatar1.jpg" alt="Bobby Gibson | Chief Executive Officer">
                        </div>
                        <div class="team__member__text">
                            <h2 class="team__member__name">Bobby Gibson</h2>
                            <h3 class="team__member__title">Chief Executive Officer</h3>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                            <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. </p>
                        </div>
                    </article>
                    <article class="team__member">
                        <div class="team__member__avatar__container">
                            <img class="team__member__avatar" src="{$smarty.const.TEMPLATE_PATH}/assets/images/placeholders/avatar2.jpg" alt="Bryan Leblang | Chief Operating Officer">
                        </div>
                        <div class="team__member__text">
                            <h2 class="team__member__name">Bryan Leblang</h2>
                            <h3 class="team__member__title">Chief Operating Officer</h3>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                            <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. </p>
                        </div>
                    </article>
                    <article class="team__member">
                        <div class="team__member__avatar__container">
                            <img class="team__member__avatar" src="{$smarty.const.TEMPLATE_PATH}/assets/images/placeholders/avatar3.jpg" alt="Nicolas Meakins | Chief Intelligence Officer">
                        </div>
                        <div class="team__member__text">
                            <h2 class="team__member__name">Nicolas Meakins</h2>
                            <h3 class="team__member__title">Chief  Intelligence Officer</h3>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                        </div>
                    </article>
                    <div class="information__header">
                        <h5 class="section__subtitle information__subtitle">Meet Our</h5>
                        <h2 class="section__title information__title -color-white">Featured Villa Specialists</h2>
                    </div>
                    <div class="team__carousel__container">
                        <div class="js-team-carousel team team__carousel">
                            <article class="team__member team__member--alt">
                                <div class="team__member__avatar__container__outter">
                                    <div class="team__member__avatar__container__hex">
                                        <div class="team__member__avatar__container">
                                            <img class="team__member__avatar" src="{$smarty.const.TEMPLATE_PATH}/assets/images/placeholders/avatar4.jpg" alt="Miriam Dela Cruz | Playa Del Carmen">
                                        </div>
                                    </div>
                                </div>
                                <div class="team__member__text">
                                    <h2 class="team__member__name">Miriam Dela Cruz</h2>
                                    <h3 class="team__member__title">Concierge,<br> Playa Del Carmen</h3>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                                </div>
                            </article>
                            <article class="team__member team__member--alt">
                                <div class="team__member__avatar__container__outter">
                                    <div class="team__member__avatar__container__hex">
                                        <div class="team__member__avatar__container">
                                            <img class="team__member__avatar" src="{$smarty.const.TEMPLATE_PATH}/assets/images/placeholders/avatar5.jpg" alt="Giorgio Pascuale | Tuscany Italy">
                                        </div>
                                    </div>
                                </div>
                                <div class="team__member__text">
                                    <h2 class="team__member__name">Giorgio Pascuale</h2>
                                    <h3 class="team__member__title">Travel,<br> Tuscany Italy</h3>
                                    <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                                </div>
                            </article>
                            <article class="team__member team__member--alt">
                                <div class="team__member__avatar__container__outter">
                                    <div class="team__member__avatar__container__hex">
                                        <div class="team__member__avatar__container">
                                            <img class="team__member__avatar" src="{$smarty.const.TEMPLATE_PATH}/assets/images/placeholders/avatar6.jpg" alt="John Patrick | Hawaii">
                                        </div>
                                    </div>
                                </div>
                                <div class="team__member__text">
                                    <h2 class="team__member__name">John Patrick</h2>
                                    <h3 class="team__member__title">Travel,<br> Hawaii</h3>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex.</p>
                                </div>
                            </article>
                            <article class="team__member team__member--alt">
                                <div class="team__member__avatar__container__outter">
                                    <div class="team__member__avatar__container__hex">
                                        <div class="team__member__avatar__container">
                                            <img class="team__member__avatar" src="{$smarty.const.TEMPLATE_PATH}/assets/images/placeholders/avatar4.jpg" alt="Miriam Dela Cruz | Playa Del Carmen">
                                        </div>
                                    </div>
                                </div>
                                <div class="team__member__text">
                                    <h2 class="team__member__name">Miriam Dela Cruz</h2>
                                    <h3 class="team__member__title">Concierge,<br> Playa Del Carmen</h3>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                                </div>
                            </article>
                            <article class="team__member team__member--alt">
                                <div class="team__member__avatar__container__outter">
                                    <div class="team__member__avatar__container__hex">
                                        <div class="team__member__avatar__container">
                                            <img class="team__member__avatar" src="{$smarty.const.TEMPLATE_PATH}/assets/images/placeholders/avatar5.jpg" alt="Giorgio Pascuale | Tuscany Italy">
                                        </div>
                                    </div>
                                </div>
                                <div class="team__member__text">
                                    <h2 class="team__member__name">Giorgio Pascuale</h2>
                                    <h3 class="team__member__title">Travel,<br> Tuscany Italy</h3>
                                    <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                                </div>
                            </article>
                            <article class="team__member team__member--alt">
                                <div class="team__member__avatar__container__outter">
                                    <div class="team__member__avatar__container__hex">
                                        <div class="team__member__avatar__container">
                                            <img class="team__member__avatar" src="{$smarty.const.TEMPLATE_PATH}/assets/images/placeholders/avatar6.jpg" alt="John Patrick | Hawaii">
                                        </div>
                                    </div>
                                </div>
                                <div class="team__member__text">
                                    <h2 class="team__member__name">John Patrick</h2>
                                    <h3 class="team__member__title">Travel,<br> Hawaii</h3>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex.</p>
                                </div>
                            </article>
                            <article class="team__member team__member--alt">
                                <div class="team__member__avatar__container__outter">
                                    <div class="team__member__avatar__container__hex">
                                        <div class="team__member__avatar__container">
                                            <img class="team__member__avatar" src="{$smarty.const.TEMPLATE_PATH}/assets/images/placeholders/avatar4.jpg" alt="Miriam Dela Cruz | Playa Del Carmen">
                                        </div>
                                    </div>
                                </div>
                                <div class="team__member__text">
                                    <h2 class="team__member__name">Miriam Dela Cruz</h2>
                                    <h3 class="team__member__title">Concierge,<br> Playa Del Carmen</h3>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                                </div>
                            </article>
                            <article class="team__member team__member--alt">
                                <div class="team__member__avatar__container__outter">
                                    <div class="team__member__avatar__container__hex">
                                        <div class="team__member__avatar__container">
                                            <img class="team__member__avatar" src="{$smarty.const.TEMPLATE_PATH}/assets/images/placeholders/avatar5.jpg" alt="Giorgio Pascuale | Tuscany Italy">
                                        </div>
                                    </div>
                                </div>
                                <div class="team__member__text">
                                    <h2 class="team__member__name">Giorgio Pascuale</h2>
                                    <h3 class="team__member__title">Travel,<br> Tuscany Italy</h3>
                                    <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                                </div>
                            </article>
                            <article class="team__member team__member--alt">
                                <div class="team__member__avatar__container__outter">
                                    <div class="team__member__avatar__container__hex">
                                        <div class="team__member__avatar__container">
                                            <img class="team__member__avatar" src="{$smarty.const.TEMPLATE_PATH}/assets/images/placeholders/avatar6.jpg" alt="John Patrick | Hawaii">
                                        </div>
                                    </div>
                                </div>
                                <div class="team__member__text">
                                    <h2 class="team__member__name">John Patrick</h2>
                                    <h3 class="team__member__title">Travel,<br> Hawaii</h3>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex.</p>
                                </div>
                            </article>
                            <article class="team__member team__member--alt">
                                <div class="team__member__avatar__container__outter">
                                    <div class="team__member__avatar__container__hex">
                                        <div class="team__member__avatar__container">
                                            <img class="team__member__avatar" src="{$smarty.const.TEMPLATE_PATH}/assets/images/placeholders/avatar4.jpg" alt="Miriam Dela Cruz | Playa Del Carmen">
                                        </div>
                                    </div>
                                </div>
                                <div class="team__member__text">
                                    <h2 class="team__member__name">Miriam Dela Cruz</h2>
                                    <h3 class="team__member__title">Concierge,<br> Playa Del Carmen</h3>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                                </div>
                            </article>
                            <article class="team__member team__member--alt">
                                <div class="team__member__avatar__container__outter">
                                    <div class="team__member__avatar__container__hex">
                                        <div class="team__member__avatar__container">
                                            <img class="team__member__avatar" src="{$smarty.const.TEMPLATE_PATH}/assets/images/placeholders/avatar5.jpg" alt="Giorgio Pascuale | Tuscany Italy">
                                        </div>
                                    </div>
                                </div>
                                <div class="team__member__text">
                                    <h2 class="team__member__name">Giorgio Pascuale</h2>
                                    <h3 class="team__member__title">Travel,<br> Tuscany Italy</h3>
                                    <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                                </div>
                            </article>
                            <article class="team__member team__member--alt">
                                <div class="team__member__avatar__container__outter">
                                    <div class="team__member__avatar__container__hex">
                                        <div class="team__member__avatar__container">
                                            <img class="team__member__avatar" src="{$smarty.const.TEMPLATE_PATH}/assets/images/placeholders/avatar6.jpg" alt="John Patrick | Hawaii">
                                        </div>
                                    </div>
                                </div>
                                <div class="team__member__text">
                                    <h2 class="team__member__name">John Patrick</h2>
                                    <h3 class="team__member__title">Travel,<br> Hawaii</h3>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex.</p>
                                </div>
                            </article>
                            <article class="team__member team__member--alt">
                                <div class="team__member__avatar__container__outter">
                                    <div class="team__member__avatar__container__hex">
                                        <div class="team__member__avatar__container">
                                            <img class="team__member__avatar" src="{$smarty.const.TEMPLATE_PATH}/assets/images/placeholders/avatar4.jpg" alt="Miriam Dela Cruz | Playa Del Carmen">
                                        </div>
                                    </div>
                                </div>
                                <div class="team__member__text">
                                    <h2 class="team__member__name">Miriam Dela Cruz</h2>
                                    <h3 class="team__member__title">Concierge,<br> Playa Del Carmen</h3>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                                </div>
                            </article>
                            <article class="team__member team__member--alt">
                                <div class="team__member__avatar__container__outter">
                                    <div class="team__member__avatar__container__hex">
                                        <div class="team__member__avatar__container">
                                            <img class="team__member__avatar" src="{$smarty.const.TEMPLATE_PATH}/assets/images/placeholders/avatar5.jpg" alt="Giorgio Pascuale | Tuscany Italy">
                                        </div>
                                    </div>
                                </div>
                                <div class="team__member__text">
                                    <h2 class="team__member__name">Giorgio Pascuale</h2>
                                    <h3 class="team__member__title">Travel,<br> Tuscany Italy</h3>
                                    <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                                </div>
                            </article>
                            <article class="team__member team__member--alt">
                                <div class="team__member__avatar__container__outter">
                                    <div class="team__member__avatar__container__hex">
                                        <div class="team__member__avatar__container">
                                            <img class="team__member__avatar" src="{$smarty.const.TEMPLATE_PATH}/assets/images/placeholders/avatar6.jpg" alt="John Patrick | Hawaii">
                                        </div>
                                    </div>
                                </div>
                                <div class="team__member__text">
                                    <h2 class="team__member__name">John Patrick</h2>
                                    <h3 class="team__member__title">Travel,<br> Hawaii</h3>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex.</p>
                                </div>
                            </article>

                        </div>
                        <div class="js-team-carousel-nav team__carousel__nav"></div>
                    </div>
                </div>
            </div>
        </div>
    </article>
    <article class="js-tabs-end section information -background-globe">
        <div class="container -position-right">
            <h2 class="information__title information__title--big">A global mindset with a luxurious perspective.</h2>
            <div class="infromation__columns">
                <h3 class="information__columns__title">Where do we go from here?</h3>
                <div class="information__columns__row">
                    <div class="information__column">
                        <p>Vacation rentals have changed dramatically since Travel Keys was first established in 1991. We were founded with the belief that consumers need an objective resource to ensure they were experiencing the best private villa rentals, not just the homes most easily found.</p>
                        <p>As villa rental listing websites continue to grow, thousands of homes with no structured set of standards are flooding the marketplace making it difficult for consumers to know what is quality and what is not.</p>
                        <p>With such confusion, Travel Keys focuses on objectivity and delivering the best possible villa for a guest’s needs is more important than ever! We deliver inspected homes with personal concierge service at a time when many companies just want to you book online.</p>
                    </div>
                    <div class="information__column">
                        <p>Travel Keys is different. We provide not just a villa marketplace, but a truly authentic local experience.</p>
                        <p>While many vacation rental companies operate a generic call center (often located thousands of miles from your intended destination), Travel Keys has built a global network of locally-based villa and concierge specialists to ensure we provide the value and expertise you expect from your luxury vacation.</p>
                        <p>We’re committed to providing guests access to our highly skilled and experienced team of travel professionals. Our villa inspection program features an exacting set of standards for inclusion, with the majority of villas not accepted.</p>
                    </div>
                </div>
                <img class="information__columns__image -show-for-small-down" src="{$smarty.const.TEMPLATE_PATH}/assets/images/svg/no-sprite/globe.svg" title="A global mindset with a luxurious perspective.">
                <p class="information__columns__text">
                    All of our agents travel the world inspecting our portfolio, with certain staff spread out
                    through our various regions, providing exceptional local service.
                    <span class="information__columns__text__span">This is truly the  <b>Travel Keys Difference"</b></span>
                </p>
            </div>
            <div class="information__next">
                <span class="information__next__span">What's next:</span>
                <a class="button -color-black" href="/about-careers" title="Careers">Careers</a>
            </div>
        </div>
    </article>
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
    <!-- End Search Form -->
{/block}