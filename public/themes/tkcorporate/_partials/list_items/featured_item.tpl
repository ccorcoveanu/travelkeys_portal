<div class="destination">
    {if isset($featured_item->image) && $featured_item->image|strlen}
        <img class="destination__image" src="{$featured_item->image}" alt="{$featured_item->name}"/>
    {else}
        <img class="destination__image" src="{$smarty.const.TEMPLATE_PATH}/assets/images/placeholders/destination6.jpg" alt="{$featured_item->name}"/>
    {/if}

    <div class="destination__wrapper">
        <h3 class="section__subtitle destination__name">{$featured_item->name}</h3>
        <a class="destination__button button -color-black" href="{$smarty.const.PROTOCOL}{$featured_item->subdomain}.{$smarty.const.SERVER_NAME}" title="See all properties">{$featured_item->property_count} Properties</a>
    </div>
</div>