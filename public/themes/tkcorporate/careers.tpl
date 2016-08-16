{extends file='layouts/layout-main.tpl'}
{block name='content'}
    <article class="hero hero--secondary">
        <div class="container">
            <div class="hero__container hero--secondary__container">
                <h1 class="hero__title hero--secondary__title">We are devoted to vacations</h1>
                <h2 class="hero__subtitle hero--secondary__subtitle">And we have been doing so for the last 25 years.</h2>
            </div>
        </div>
    </article>
    <article class="section featured-in -style-pattern">
        <div class="container">
            <h5 class="section__subtitle concierge__subtitle -color-white">Featured in</h5>
            <ul class="concierge__featured">
                <li class="concierge__featured__item">
                    <a href="#" title="TravelKeys in Conde Nast"><img alt="Conde Nats" src="{$smarty.const.TEMPLATE_PATH}/assets/images/featured/featured-conde.png">
                    </a>
                </li>
                <li class="concierge__featured__item">
                    <a href="#" title="TravelKeys in Caribbean"><img alt="Caribbean" src="{$smarty.const.TEMPLATE_PATH}/assets/images/featured/featured-caribbean.png">
                    </a>
                </li>
                <li class="concierge__featured__item">
                    <a href="#" title="TravelKeys in Islands"><img alt="Islands" src="{$smarty.const.TEMPLATE_PATH}/assets/images/featured/featured-islands.png">
                    </a>
                </li>
                <li class="concierge__featured__item">
                    <a href="#" title="TravelKeys in Robb Report"><img alt="Robb Report" src="{$smarty.const.TEMPLATE_PATH}/assets/images/featured/featured-robb.png">
                    </a>
                </li>
                <li class="concierge__featured__item">
                    <a href="#" title="TravelKeys in Travel+ Leisure"><img alt="Travel+ Leisure" src="{$smarty.const.TEMPLATE_PATH}/assets/images/featured/featured-leisure.png">
                    </a>
                </li>
            </ul>
        </div>
    </article>
    <!-- End Hero -->
    <article class="js-tabs-section js-tabs-start section information -style-pattern -color-light">
        {include file="_partials/navigation/quicknav.tpl"}
        <div class="container -position-right">
            <div class="information__header -no-margin-bottom">
                <h5 class="section__subtitle information__subtitle">We Create New Ways To</h5>
                <h2 class="section__title information__title">Get Inspired And Think Big, With Purpose.</h2>
                <p>We invent. We tinker. We share snippets of our life experiences with each other because it helps influence the way we think and the way we work.</p>
                <p>We raise the bar and we constantly challenge ourselves to create the best vacation experience for our existing and future customers.</p>
                <p><strong>At around 95 people, we are small enough to solve big problems. Care to join us?</strong></p>
            </div>
        </div>
    </article>
    <article class="section information -background-gray">
        <div class="container -position-right">
            <div class="information__header -align-left">
                <h5 class="section__subtitle information__subtitle">Work at Travel Keys</h5>
                <h2 class="section__title information__title">Apply for a job opportunity.</h2>
                <p><strong>Choose one of the available positions below and apply.</strong></p>
                <p>If none of the listings below match your expertise, please send us your resume at <span class="-color-aqua">jobs@travelkeys&lt;dot&gt;com</span> followed by a letter of recommendation, and we’ll make sure you’ll get your chance as soon as your skills will meet our job requirements.</p>
            </div>
            <div class="information__items">
                <div class="information__item">
                    <i class="icon icon__badge-pie"></i>
                    <h6 class="information__item__subtitle">Marketing</h6>
                    <h3 class="information__item__title">Affiliate Account Manager</h3>
                    <p>You will will be responsable of direct response advertising, meticulous attention to detail and strong analytical and problem solving skills.</p>
                    <a class="button button--ghost -color-aqua" href="mailto:info@travelkeys.com">Apply</a>
                </div>
                <div class="information__item">
                    <i class="icon icon__badge-pie"></i>
                    <h6 class="information__item__subtitle">Marketing</h6>
                    <h3 class="information__item__title">SEM Specialist</h3>
                    <p>As a Search Engine Marketing passionate, you will manage high-yield and highly-profitable search campaigns.</p>
                    <a class="button button--ghost -color-aqua" href="mailto:info@travelkeys.com">Apply</a>
                </div>
                <div class="information__item">
                    <i class="icon icon__badge-suitcase"></i>
                    <h6 class="information__item__subtitle">Portfolio Development</h6>
                    <h3 class="information__item__title">Listing Development Coordinator</h3>
                    <p>As a Listing Development Coordinator, you will be responsible for developing accurate and informative listing details for new inventory.</p>
                    <a class="button button--ghost -color-aqua" href="mailto:info@travelkeys.com">Apply</a>
                </div>
                <div class="information__item">
                    <i class="icon icon__badge-pie"></i>
                    <h6 class="information__item__subtitle">Sales</h6>
                    <h3 class="information__item__title">Villa Specialist - Training Manager</h3>
                    <p>As a training manager, you will analyze performance and service level in conjunction with the department managers, determining the best course of development and delivery for training.</p>
                    <a class="button button--ghost -color-aqua" href="mailto:info@travelkeys.com">Apply</a>
                </div>
                <div class="information__item">
                    <i class="icon icon__badge-tools"></i>
                    <h6 class="information__item__subtitle">Product Engineering</h6>
                    <h3 class="information__item__title">Front-End Developer</h3>
                    <p>You’re responsible for the front-end development of interactive projects and collaborating with a very skilled and passionate team of designers.</p>
                    <a class="button button--ghost -color-aqua" href="mailto:info@travelkeys.com">Apply</a>
                </div>
            </div>
            <div class="information__next">
                <span class="information__next__span">What's next:</span>
                <a class="button -color-black" href="/contact-us" title="Contact Us">Contact us</a>
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