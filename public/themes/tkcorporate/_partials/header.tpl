<header class="js-header header">
    <section class="header__top">
        <div class="header__top__wrapper">
            <a class="header__logo" href="{$smarty.const.MAIN_SITE}" title="TravelKeys">
                <h1 class="header__logo__title">
                    <img class="logo" src="{$smarty.const.TEMPLATE_PATH}/assets/images/logo.svg" alt="TravelKeys">
                    <span class="header__logo__text">Luxury Vacation Villas</span>
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
                        <li class="main-nav__item -state-current"><a class="main-nav__item__link" href="#" title="Home">Home</a>
                        </li>
                        <li class="js-mega-nav-button main-nav__item main-nav__item--cta"><a class="main-nav__item__link" href="#" title="Destination">Destinations</a>
                        </li>
                        <li class="main-nav__item"><a class="main-nav__item__link" href="{$smarty.const.MAIN_SITE}/villa-listing/specials" title="Specials">Specials</a>
                        </li>
                        <li class="main-nav__item"><a class="main-nav__item__link" href="{$smarty.const.MAIN_SITE}/about-us" title="About us">About us</a>
                        </li>
                        <li class="main-nav__item"><a class="main-nav__item__link" href="{$smarty.const.MAIN_SITE}/contact-us" title="Contact us">Contact us</a>
                        </li>
                    </ul>
                </div>
                <div class="secondary-nav__container">
                    <span class="header__nav__description">Personalize:</span>
                    <ul class="secondary-nav">
                        <li class="secondary-nav__item"><a class="secondary-nav__item__link" href="{$smarty.const.MAIN_SITE}/villa-listing/favorites" title="Favourites"
                            ><i class="icon icon__heart"></i>My Favourites&nbsp;<span class="favourites-counter" id="favoritesNumber">({if isset($favorites) && $favorites|@count}{$favorites|@count}{else}0{/if})</span></a>
                        </li>
                        <li class="secondary-nav__item">
                            <form class="site-search" method="get" action="{$smarty.const.MAIN_SITE}/villa-listing/search">
                                <input class="js-site-search site-search__input" type="text" name="q" placeholder="Search by villa name" value="{$query|default:''}">
                                <label class="header__nav__description">Search by:</label>
                                <button class="button button--search" type="submit"><i class="icon icon__search"></i>
                                </button>
                            </form>
                        </li>
                    </ul>
                </div>
                <div class="js-mega-nav mega-nav__container">
                    <div class="mega-nav__buttons">
                        <div class="mega-nav__buttons__wrapper">
                            <a class="js-mega-nav-button mega-nav__button -left" href="#">Back to <span>Main Menu</span></a>
                            <a class="mega-nav__button -right" href="#">View <span>All Villas</span></a>
                        </div>
                    </div>
                    <ul class="mega-nav">
                        {assign 'counter' 0}
                        {assign 'loop_counter' 0}
                        {assign 'loop_length' $menu|count}
                        {foreach name='menu_items' from=$menu item=header }
                            {assign 'length' $header->children|count}
                            {$loop_counter = $loop_counter+1}

                            {if $length > 14}
                                <li class="mega-nav__item">
                                    <ul class="js-mega-sub mega-sub -double">
                                        {include file='_partials/list_items/menu_items.tpl'}
                                    </ul>
                                </li>
                            {else}
                                {if $counter == 0}
                                    <li class="mega-nav__item">
                                {/if}
                                <ul class="js-mega-sub mega-sub">
                                    {include file='_partials/list_items/menu_items.tpl'}
                                </ul>
                                {if $counter == 1 || $loop_counter == $loop_length}
                                    </li>
                                {/if}
                                {if $counter == 0}
                                    {assign 'counter' 1}
                                {else}
                                    {assign 'counter' 0}
                                {/if}
                            {/if}
                        {/foreach}
                    </ul>
                </div>
            </nav>
            <ul class="js-contact header__contact">
                <li class="header__contact__item"><small class="header__contact__text">Toll free</small><a class="header__contact__link" href="tel:18778151242" title="Call 1 877.815.1242">1 877.815.1242</a>
                </li>
                <li class="header__contact__item"><small class="header__contact__text">International</small><a class="header__contact__link" href="tel:4048151242" title="Call 404.815.1242">404.815.1242</a>
                </li>
                <li class="header__contact__item"><small class="header__contact__text">United Kingdom</small><a class="header__contact__link" href="tel:08006226815" title="Call 0800.622.6815">0800.622.6815</a>
                </li>
            </ul>
        </div>
    </section>
</header>
