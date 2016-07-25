{extends file='layouts/layout-main.tpl'}
{block name='content'}
    {include file='_partials/sec_hero.tpl'}
    <article class="section -style-pattern">
        <div class="container">
            <div class="section__container">
                <h5 class="section__subtitle message__subtitle">Upon arrival</h5>
                <h2 class="section__title message__title -color-white">Your Personal Concierge, 24/7</h2>
                <p>Your personal concierge is ready to assist with all of the details of your stay, large or small, <strong class="-color-white">to ensure you enjoy a flawless travel experience.</strong>
                </p>
            </div>
        </div>
        <div class="location">
            <a class="location__item" href="#box-rentals" title="Car Rentals">
                <i class="icon icon__rentals"></i>
                <span class="location__item__text">Car Rentals</span>
            </a>
            <a class="location__item" href="#box-greet" title="Meet & Greet">
                <i class="icon icon__greet"></i>
                <span class="location__item__text">Meet & Greet</span>
            </a>
            <a class="location__item" href="#box-stocking" title="Pre-Stocking">
                <i class="icon icon__stocking"></i>
                <span class="location__item__text">Pre-Stocking</span>
            </a>
            <a class="location__item" href="#box-chef" title="Cooking">
                <i class="icon icon__cooking"></i>
                <span class="location__item__text">Cooking</span>
            </a>
            <a class="location__item" href="#box-tours" title="Activities">
                <i class="icon icon__activities"></i>
                <span class="location__item__text">Activities</span>
            </a>
            <a class="location__item" href="#box-events" title="Events">
                <i class="icon icon__events"></i>
                <span class="location__item__text">Events</span>
            </a>
            <a class="location__item" href="#box-spa" title="Spa Services">
                <i class="icon icon__spa"></i>
                <span class="location__item__text">Spa Services</span>
            </a>
        </div>
    </article>
    <article class="section dedicated">
        <div class="container">
            <h5 class="section__subtitle deidcated__subtitle">We make sure</h5>
            <h2 class="section__title dedicated__title">You’ll get the most out of your vacation</h2>
            <div class="dedicated__columns">
                <div class="dedicated__column">
                    <p>Our concierge team will help arrange food and beverage prestocking, secure restaurant reservations and even arrange a private car / driver for your vacation. </p>
                    <p>We will provide the best service in the industry; not only matching people to properties, but taking care of all the planning relating to a trip as well.</p>
                </div>
                <div class="dedicated__column">
                    <p><strong>TravelKeys is an experienced source of information for luxury vacation services around the globe.</strong>
                    </p>
                    <p>Our greatest advantage is the unrivaled service and expertise provided by our experienced villa agents and concierges.</p>
                </div>
            </div>
            <div class="boxes">
                <div id="box-rentals" class="js-match-height -has-badge box">
                    <div class="box__image__container">
                        <img class="box__image" src="{$smarty.const.TEMPLATE_PATH}/assets/images/placeholders/box3.jpg" alt="Our clients trust Travel Keys with their most special moments">
                    </div>
                    <div class="box__wrapper">
                        <h2 class="box__title">Car Rentals</h2>
                        <p class="box__text"><strong>Do you want the best car rental rates available? Of course you do!</strong>
                        </p>
                        <p class="box__text">With over 20 years of experience, our concierge team is ready to secure any one of a wide range of vehicles for your party, at rates you won't find anywhere else! We offer the best selection of reliable vehicles, luxury vehicles, scooters, boats and more!</p>
                    </div>
                </div>
                <div id="box-greet" class="js-match-height box">
                    <div class="box__image__container">
                        <img class="box__image" src="{$smarty.const.TEMPLATE_PATH}/assets/images/placeholders/box4.jpg" alt="Meet and Greet">
                    </div>
                    <div class="box__wrapper">
                        <h2 class="box__title">Meet and Greet</h2>
                        <p class="box__text"><strong>First time traveling to this destination? Unsure how you'll find your vacation rental once you arrive?</strong>
                        </p>
                        <p class="box__text">Our concierge team will work with your party to coordinate all arrival details well in advance of your arrival. Although the process may vary from one home to the next, our concierges will ensure the planning process is alway smooth and efficient. </p>
                        <p class="box__text"><strong>All of our guests will be given a tour of their property, shown the ins and outs, and provided with important local and emergency contact numbers upon arrival.</strong>
                        </p>
                    </div>
                </div>
                <div id="box-stocking" class="js-match-height box">
                    <div class="box__image__container">
                        <img class="box__image" src="{$smarty.const.TEMPLATE_PATH}/assets/images/placeholders/box5.jpg" alt="Villa Pre-Stocking">
                    </div>
                    <div class="box__wrapper">
                        <h2 class="box__title">Villa Pre-Stocking</h2>
                        <p class="box__text"><strong>After a long day of travel, the last thing you probably want to do is go grocery shopping.</strong>
                        </p>
                        <p class="box__text">Don't worry! Our concierge team can have your home stocked with all provisions you require, before you even get there! Imagine walking into your villa after a long day of travel and enjoying that first ice-cold beverage. Working with our concierge team will ensure that you are ready to start your vacation from the moment you arrive.</p>
                    </div>
                </div>
                <div id="box-chef" class="js-match-height box">
                    <div class="box__image__container">
                        <img class="box__image" src="{$smarty.const.TEMPLATE_PATH}/assets/images/placeholders/box6.jpg" alt="Chef / Cooking Services">
                    </div>
                    <div class="box__wrapper">
                        <h2 class="box__title">Chef / Cooking Services</h2>
                        <p class="box__text"><strong>Some properties feature a chef as part of the staff. </strong>
                        </p>
                        <p class="box__text">Not at your vacation rental? Still want to experince in-house fine dining? Let our concierge team coordinate all your dining details for you.</p>
                        <p class="box__text">From coordinating food prestocking packages, to securing chef servies, catering companies and more, our team's extensive destination knowledge will ensure that your party will only experience the most professional providers available.</p>
                    </div>
                </div>
                <div id="box-tours" class="js-match-height box">
                    <div class="box__image__container">
                        <img class="box__image" src="{$smarty.const.TEMPLATE_PATH}/assets/images/placeholders/box7.jpg" alt="Tours and Activities">
                    </div>
                    <div class="box__wrapper">
                        <h2 class="box__title">Tours and Activities</h2>
                        <p class="box__text"><strong>We believe in creating custom-tailored vacation experiences.</strong>
                        </p>
                        <p class="box__text">While many guests will simply want to relax poolside at their luxury property, we recognize that enjoying a number of local experiences can be an important part of the 'villa experience.</p>
                        <p class="box__text">Our concierge team will coordinate a number of activities with our network of reliable local providers, so you can simply focus on enjoying your vacation. Fishing charters, golf outings, rainforst tours and more.</p>
                        <p class="box__text"><strong>What memories do you want to create this trip? Let us help!</strong>
                        </p>
                    </div>
                </div>
                <div id="box-events" class="js-match-height box">
                    <div class="box__image__container">
                        <img class="box__image" src="{$smarty.const.TEMPLATE_PATH}/assets/images/placeholders/box8.jpg" alt="Special Events">
                    </div>
                    <div class="box__wrapper">
                        <h2 class="box__title">Special Events</h2>
                        <p class="box__text"><strong>Celebrating this trip? Want to create an amazing experience to match the significance of the event?</strong>
                        </p>
                        <p class="box__text">Our concierge team is here to assist you. Whether you need a to hire a band or create a festive atmosphere at your property, our concierge team will work with you to ensure a memorable experience.</p>
                        <p class="box__text">From wedding coordinators to caterers and party planners, we work with a number of local providers to ensure that whatever your party wants, you have!</p>
                    </div>
                </div>
                <div id="box-spa" class="js-match-height box">
                    <div class="box__image__container">
                        <img class="box__image" src="{$smarty.const.TEMPLATE_PATH}/assets/images/placeholders/box9.jpg" alt="Spa Services">
                    </div>
                    <div class="box__wrapper">
                        <h2 class="box__title">Spa Services</h2>
                        <p class="box__text"><strong>Who wants a massage? Think you'll have to leave your villa to enjoy such pampering?</strong>
                        </p>
                        <p class="box__text">Think again! Many of our villas feature access to moblie spa providers, so the relaxation can literally come to you. Want to make it a spa-day outing instead?</p>
                        <p class="box__text">Our concierge team can also provide your party access to some of the finest spas available. Don't you deserve it?</p>
                    </div>
                </div>

            </div>
        </div>
    </article>
    <article class="section message -border-bottom -style-pattern">
        <div class="form__container">
            <h5 class="section__subtitle message__subtitle">anything we’ve missed?</h5>
            <h2 class="section__title message__title">Tell us how we can make your vacation perfect!</h2>
            <p>From babysitting services to professional photo shoots for your vacation,<br> <b>our concierge team can help organize just about anything you require.</b></p>
            {include file='_partials/forms/contact.tpl'}
        </div>
    </article>

{/block}