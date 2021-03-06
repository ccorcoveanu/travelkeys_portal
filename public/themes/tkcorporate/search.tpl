{extends file='layouts/layout-main.tpl'}
{block name='content'}
    {if isset($page.final_destination_page)}
        {include file='_partials/destination.tpl'}
    {/if}
    <div id="filters" class="js-search search -has-filters" >
        {if isset($page.final_destination_page)}
            <a class="button button--next-section -shape-trapezoid" href="#filters"><i class="icon icon__arrow-down-black"></i></a>
        {/if}
        {block name='sidemap'}
            {include file='_partials/sidemap.tpl'}
        {/block}

        <!-- Featured Properties -->
        <div class="js-search-results section search-results -is-accordion">
            {if $search_items|count > 0}
                {include file='_partials/listing_filters_top.tpl'}
            {/if}

            <div class="container">
                <div class="load-more" id="load-more__display" style="display: none">
                    <a class="button button--load-more" href="#" title="Load more results">
                        <span class="animate load-dot load-dot--one"></span>
                        <span class="animate load-dot load-dot--two"></span>
                        <span class="animate load-dot load-dot--three"></span> Load more villas
                    </a>
                </div>
                <div class="featured__row__container search-results__container">
                    <div class="featured__row -two-columns">
                        {include file='_partials/components/property_list.tpl'}
                    </div>
                    {if $search_items|count == 0}
                        <div class="no-results">
                            Sorry, no results<br/><br/>
                            Please try a
                            <a class="button__secondary" href="/villa-listing/search?q=">new search</a>
                        </div>
                    {/if}
                </div>
                {if isset($load_more) && $load_more}
                    {include file='_partials/components/load_more_button.tpl'}
                {/if}
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
                <div class="calendars__carousel">
                    <div class="js-calendar-modal calendar"></div>
                </div>
            </div>
        </div>
    </div>
{/block}