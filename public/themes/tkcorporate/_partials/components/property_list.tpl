{block name='search_results'}
    {foreach name='search_results_loop' item=$search_item from=$search_items}
        {include file='_partials/list_items/search_page_item.tpl'}
    {/foreach}
{/block}