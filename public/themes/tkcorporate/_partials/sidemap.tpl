<aside class="js-map-aside map-aside search-aside villa-search__section -hidden">
    <script async src="https://maps.googleapis.com/maps/api/js?v=3.exp&key={$smarty.const.GOOGLE_API_KEY}"></script>
    <div class="map">
        <div class="-position-top">
            <div class="container">
                <div class="map__input">
                    <input id="ck-map" class="checkbox" type="checkbox" name="map" value="map">
                    <label class="filter__option__label js-map-bounds" for="ck-map"><span></span>Use map to filter results</label>
                </div>
            </div>
        </div>
        <div class="map__container js-map-search"></div>
        <div class="map__markers js-map-markers">
            {block name='search_results'}
                {foreach name='search_results_loop' item=$map_item from=$search_items}
                    {include file='_partials/list_items/map_pin_item.tpl'}
                {/foreach}
            {/block}
        </div>
        <div class="-position-bottom">
            <div class="container">
                <a class="button -color-black -hover-aqua" href="#" title="Refresh map">Refresh map</a>
            </div>
        </div>
    </div>
</aside>