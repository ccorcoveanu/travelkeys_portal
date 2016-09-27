<header class="header">
    <section class="header__top">
        <div class="header__top__wrapper">
            <a class="header__logo" href="{$smarty.const.BASE_URL}" title="TravelKeys">
                <h1 class="header__logo__title">{$location->name} Villas
                    <small class="header__logo__text">by</small>
                    <img class="logo" src="{$smarty.const.TEMPLATE_PATH}/assets/images/logo.svg" alt="TravelKeys">
                </h1>
            </a>
            <div class="js-hamburger hamburger">
                <span class="hamburger__image"></span>
                <span class="js-hamburger-text hamburger__text">Menu</span>
            </div>
        </div>
        <div class="js-nav header__bottom">
            <nav class="header__nav">
                <div class="main-nav__container">
                    <span class="header__nav__description">Explore:</span>
                    <ul class="main-nav">
                        <li class="main-nav__item main-nav__item--cta"><a class="main-nav__item__link" href="{$smarty.const.BASE_URL}/villa-listing/search" title="See all villas">See all villas</a>
                        </li>
                        <li class="main-nav__item"><a class="main-nav__item__link" href="{$smarty.const.BASE_URL}/about-us" title="About us">About us</a>
                        </li>
                        <li class="main-nav__item"><a class="main-nav__item__link" href="{$smarty.const.BASE_URL}/villa-listing/specials" title="Specials">Specials</a>
                        </li>
                        <li class="main-nav__item"><a class="main-nav__item__link" href="{$smarty.const.BASE_URL}/contact-us" title="Contact us">Contact us</a>
                        </li>
                    </ul>
                </div>
                <div class="secondary-nav__container">
                    <span class="header__nav__description">Personalize:</span>
                    <ul class="secondary-nav">
                        <li class="secondary-nav__item"><a class="secondary-nav__item__link" href="{$smarty.const.BASE_URL}/villa-listing/favorites" title="Favourites"><i class="icon icon__heart"></i>My Favourites&nbsp;<span class="favourites-counter" id="favoritesNumber">({if isset($favorites) && $favorites|@count}{$favorites|@count}{else}0{/if})</span></a>
                        </li>
                        <li class="secondary-nav__item">
                            <form class="site-search" method="get" action="/villa-listing/search">
                                <label class="header__nav__description">Search by:</label>
                                <input class="js-site-search site-search__input" type="text" name="q" placeholder="Search by villa name" value="{$query|default:''}" />
                                <button class="button button--search" type="submit"><i class="icon icon__search"></i>
                                </button>
                            </form>
                        </li>
                    </ul>
                </div>
            </nav>
            <ul class="js-contact header__contact">
                <li class="header__contact__item"><small class="header__contact__text">Toll free</small><a class="header__contact__link" href="tel:18778759877" title="Call 1.877.875.9877">1.877.875.9877</a>
                </li>
                <li class="header__contact__item"><small class="header__contact__text">International</small><a class="header__contact__link" href="tel:4048151242" title="Call 404.815.1242">404.815.1242</a>
                </li>
                <li class="header__contact__item"><small class="header__contact__text">United Kingdom</small><a class="header__contact__link" href="tel:08006226815" title="Call 0800.622.6815">0800.622.6815</a>
                </li>
            </ul>
        </div>
    </section>
</header>