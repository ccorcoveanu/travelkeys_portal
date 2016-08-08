{extends file='layouts/layout-main.tpl'}
{block name='content'}
    {if isset($page.final_destination_page)}
        {include file='_partials/destination.tpl'}
    {/if}
    <div id="filters" class="js-search search -has-filters" {if !isset($page.final_destination_page)}style="margin-top:37px;"{/if}>
        {if isset($page.final_destination_page)}
            <a class="button button--next-section -shape-trapezoid" href="#filters"><i class="icon icon__arrow-down-black"></i></a>
        {/if}
        {block name='sidemap'}
            {include file='_partials/sidemap.tpl'}
        {/block}

        <!-- Featured Properties -->
        <div class="js-search-results section search-results">
            {if $search_items|count > 0}
                {include file='_partials/listing_filters_top.tpl'}
            {/if}

            <div class="container">
                <div class="featured__row__container">
                    <div class="featured__row -two-columns">
                        {include file='_partials/components/property_list.tpl'}
                    </div>
                    {if $search_items|count == 0}
                        <p>No results. Try another search</p>
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