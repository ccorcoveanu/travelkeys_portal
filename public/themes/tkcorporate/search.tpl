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
                        {block name='search_results'}
                            {foreach name='search_results_loop' item=$search_item from=$search_items}
                                {include file='_partials/list_items/search_page_item.tpl'}
                            {/foreach}
                        {/block}
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
    <article class="section message -style-pattern js-scroll-stop-point">
        {include file='_partials/forms/advice_form.tpl'}
    </article>
    <div class="modal-container">
        <div id="availability-modal" class="modal availability__modal">
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
{/block}