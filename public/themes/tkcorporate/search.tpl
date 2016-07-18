{extends file='layouts/layout-main.tpl'}
{block name='content'}
    {if isset($page.final_destination_page)}
        {include file='_partials/destination.tpl'}
    {/if}
    <div id="filters" class="js-search search -has-filters" style="margin-top:37px;">
        {if isset($page.final_destination_page)}
            <a class="button button--next-section -shape-trapezoid" href="#filters"><i class="icon icon__arrow-down-black"></i></a>
        {/if}
        {block name='sidemap'}
            {include file='_partials/sidemap.tpl'}
        {/block}

        <!-- Featured Properties -->
        <div class="js-search-results section search-results">
            {include file='_partials/listing_filters_top.tpl'}
            <div class="container">
                <div class="featured__row__container -has-separator">
                    <div class="featured__row -two-columns">
                        <!-- Item -->
                        <section class="featured__item -is-special">
                            <div class="featured__picture__container"><img alt="Coral House" class="featured__picture" src="{$smarty.const.TEMPLATE_PATH}/assets/images/placeholders/villa4.jpg">
                            </div>
                            <div class="featured__wrapper">
                                <div class="featured__item__wrapper">
                                    <h3 class="featured__item__title">
                                        <a href="#" title="Coral House"><i class="icon icon__heart-featured"></i><span>Coral House</span></a>
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
                        <!-- Item -->
                        <section class="featured__item -is-special">
                            <div class="featured__picture__container"><img alt="Coral House" class="featured__picture" src="{$smarty.const.TEMPLATE_PATH}/assets/images/placeholders/villa4.jpg">
                            </div>
                            <div class="featured__wrapper">
                                <div class="featured__item__wrapper">
                                    <h3 class="featured__item__title">
                                        <a href="#" title="Coral House"><i class="icon icon__heart-featured"></i><span>Coral House</span></a>
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
                        <!-- Item -->
                        <section class="featured__item -is-special">
                            <div class="featured__picture__container"><img alt="Coral House" class="featured__picture" src="{$smarty.const.TEMPLATE_PATH}/assets/images/placeholders/villa4.jpg">
                            </div>
                            <div class="featured__wrapper">
                                <div class="featured__item__wrapper">
                                    <h3 class="featured__item__title">
                                        <a href="#" title="Coral House"><i class="icon icon__heart-featured"></i><span>Coral House</span></a>
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
                        <!-- Item -->
                        <section class="featured__item -is-special">
                            <div class="featured__picture__container"><img alt="Coral House" class="featured__picture" src="{$smarty.const.TEMPLATE_PATH}/assets/images/placeholders/villa4.jpg">
                            </div>
                            <div class="featured__wrapper">
                                <div class="featured__item__wrapper">
                                    <h3 class="featured__item__title">
                                        <a href="#" title="Coral House"><i class="icon icon__heart-featured"></i><span>Coral House</span></a>
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
                    <a class="button featured__row__button" href="#" title="View all specials">View all specials</a>
                </div>
                <div class="featured__row__container">
                    <div class="featured__row -two-columns">
                        <!-- Item -->
                        <section class="featured__item">
                            <div class="featured__picture__container"><img alt="Coral House" class="featured__picture" src="{$smarty.const.TEMPLATE_PATH}/assets/images/placeholders/villa4.jpg">
                            </div>
                            <div class="featured__wrapper">
                                <div class="featured__item__wrapper">
                                    <h3 class="featured__item__title">
                                        <a href="#" title="Coral House"><i class="icon icon__heart-featured"></i><span>Coral House</span></a>
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
                        <!-- Item -->
                        <section class="featured__item">
                            <div class="featured__picture__container"><img alt="Coral House" class="featured__picture" src="{$smarty.const.TEMPLATE_PATH}/assets/images/placeholders/villa4.jpg">
                            </div>
                            <div class="featured__wrapper">
                                <div class="featured__item__wrapper">
                                    <h3 class="featured__item__title">
                                        <a href="#" title="Coral House"><i class="icon icon__heart-featured"></i><span>Coral House</span></a>
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
                        <!-- Item -->
                        <section class="featured__item">
                            <div class="featured__picture__container"><img alt="Coral House" class="featured__picture" src="{$smarty.const.TEMPLATE_PATH}/assets/images/placeholders/villa4.jpg">
                            </div>
                            <div class="featured__wrapper">
                                <div class="featured__item__wrapper">
                                    <h3 class="featured__item__title">
                                        <a href="#" title="Coral House"><i class="icon icon__heart-featured"></i><span>Coral House</span></a>
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
                        <!-- Item -->
                        <section class="featured__item">
                            <div class="featured__picture__container"><img alt="Coral House" class="featured__picture" src="{$smarty.const.TEMPLATE_PATH}/assets/images/placeholders/villa4.jpg">
                            </div>
                            <div class="featured__wrapper">
                                <div class="featured__item__wrapper">
                                    <h3 class="featured__item__title">
                                        <a href="#" title="Coral House"><i class="icon icon__heart-featured"></i><span>Coral House</span></a>
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
                        <!-- Item -->
                        <section class="featured__item">
                            <div class="featured__picture__container"><img alt="Coral House" class="featured__picture" src="{$smarty.const.TEMPLATE_PATH}/assets/images/placeholders/villa4.jpg">
                            </div>
                            <div class="featured__wrapper">
                                <div class="featured__item__wrapper">
                                    <h3 class="featured__item__title">
                                        <a href="#" title="Coral House"><i class="icon icon__heart-featured"></i><span>Coral House</span></a>
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
                        <!-- Item -->
                        <section class="featured__item">
                            <div class="featured__picture__container"><img alt="Coral House" class="featured__picture" src="{$smarty.const.TEMPLATE_PATH}/assets/images/placeholders/villa4.jpg">
                            </div>
                            <div class="featured__wrapper">
                                <div class="featured__item__wrapper">
                                    <h3 class="featured__item__title">
                                        <a href="#" title="Coral House"><i class="icon icon__heart-featured"></i><span>Coral House</span></a>
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
                <div class="load-more">
                    <a class="button button--load-more" href="#" title="Load more results">
                        <span class="animate load-dot load-dot--one"></span>
                        <span class="animate load-dot load-dot--two"></span>
                        <span class="animate load-dot load-dot--three"></span> Load more villas
                    </a>
                </div>
            </div>
        </div>
        <!-- End Featured Properties -->
    </div>
{/block}