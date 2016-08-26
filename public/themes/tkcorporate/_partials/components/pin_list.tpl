{block name='map_results'}
    {foreach name='map_results_loop' item=$map_item from=$map_items}
        {include file='_partials/list_items/map_pin_item_property.tpl'}
    {/foreach}
{/block}