<footer class="footer">
    <div class="container">
        <div class="footer__header">
            <h5 class="section__subtitle footer__subtitle -color-white">We're here for you</h5>
            <h2 class="section__title footer__title -color-white">Non-Stop</h2>
        </div>
        <div class="footer__container">
            <div class="footer__social">
                <h6 class="footer__section__title">Link with us via your social networks:</h6>
                <ul class="footer__social__list">
                    <li class="footer__social__list__item"><a target="_blank" href="https://www.facebook.com/Travelkeys" title="Check us on Facebook!"><i class="icon icon__facebook"></i></a>
                    </li>
                    <li class="footer__social__list__item"><a target="_blank" href="https://twitter.com/travelkeys" title="Connect with us on Twitter"><i class="icon icon__twitter"></i></a>
                    </li>
                    <li class="footer__social__list__item"><a target="_blank" href="https://www.instagram.com/travelkeys" title="See what is new on Instagram!"><i class="icon icon__instagram"></i></a>
                    </li>
                    <li class="footer__social__list__item"><a target="_blank" href="https://plus.google.com/+Travelkeys" title="Connect with us via Google+"><i class="icon icon__google"></i></a>
                    </li>
                </ul>
            </div>
            <div class="footer__contact">
                <h6 class="footer__section__title">We are happy to assist you with your luxury villa rental experience:</h6>
                <div class="footer__contact__item -first">
                    <a class="footer__contact__item__link" href="tel:18778759877" title="Call 1.877.875.9877">1.877.875.9877</a>
                    <span class="footer__contact__item__text">Toll Free</span>
                </div>
                <div class="footer__contact__item">
                    <span class="footer__contact__item__text">International</span>
                    <a class="footer__contact__item__link" href="tel:14048151242" title="Call 1.404.815.1242">1.404.815.1242</a>
                </div>
            </div>
            <div class="footer__message">
                <h6 class="footer__section__title">We love your feedback and are constantly looking to improve your experience:</h6>
                <a class="footer__message__link" href="tel:4048151242" title="Call 404.815.1242">404.815.1242</a>
                <a class="button -hover-alt button--ghost" href="{$smarty.const.BASE_URL}/contact-us" title="Or leave a message">Or leave a message<i class="icon icon__arrow-right"></i></a>
            </div>
        </div>
        <div class="section blog">
            <h5 class="section__subtitle -color-white">Dont' miss our</h5>
            <h2 class="section__title -color-white">Travel Inspiration</h2>
            <div class="blog__wrapper">
                <div class="blog__item">
                    <a class="blog__link" href="{$feeds[0]->link}" title="{$feeds[0]->title}" target="_blank">
                        <h3 class="blog__title">{$feeds[0]->title}</h3>
                        <div class="blog__image">
                            <img src="{$feeds[0]->image}" alt="{$feeds[0]->title}">
                        </div>
                    </a>
                </div>
                <div class="blog__item">
                    <a class="blog__link" href="{$feeds[1]->link}" title="{$feeds[1]->title}" target="_blank">
                        <h3 class="blog__title">{$feeds[1]->title}</h3>
                        <div class="blog__image">
                            <img src="{$feeds[1]->image}" alt="{$feeds[1]->title}">
                        </div>
                    </a>
                </div>
            </div>
        </div>
        <div class="newsletter">
            <h3 class="newsletter__title">Subscribe to our newsletter</h3>
            <form class="newsletter__form js-validate-form" method="post" action="/form/newsletter">
                <input class="newsletter__input h5-email" type="email" name="newsletter" placeholder="Your email address:" />
                <button class="button -hover-alt -color-white" type="submit">Subscribe</button>
            </form>
        </div>
    </div>
    <div class="footer__nav">
        <a href="#" title="TravelKeys"><img class="footer__logo" src="{$smarty.const.TEMPLATE_PATH}/assets/images/svg/no-sprite/logo-footer.svg" alt="TravelKeys">
        </a>
        <div class="footer__badge">
            <a href="#" title="Top Travel Specialist"><img src="{$smarty.const.TEMPLATE_PATH}/assets/images/featured/featured-specialist.png" alt="Top Travel Specialist">
            </a>
        </div>
        <ul class="footer__site-map">
            <li class="footer__site-map__item"><a href="{$smarty.const.BASE_URL}/terms-of-use" title="Terms of use">Terms of use</a>
            </li>
            <li class="footer__site-map__item"><a href="{$smarty.const.BASE_URL}/privacy-policy" title="Privacy Policy">Privacy Policy</a>
            </li>
            <li class="footer__site-map__item"><a href="#" title="Sitemap">Sitemap</a>
            </li>
            <li class="footer__site-map__item"><a href="{$smarty.const.BASE_URL}/concierge-service" title="Concierge service">Concierge service</a>
            </li>
            <li class="footer__site-map__item"><a href="{$smarty.const.BASE_URL}/travel-agents" title="Travel agents">Travel agents</a>
            </li>
        </ul>
        <p class="footer__copy">&copy; Copyright 2015 Travel Keys All rights reserved.</p>
    </div>
</footer>