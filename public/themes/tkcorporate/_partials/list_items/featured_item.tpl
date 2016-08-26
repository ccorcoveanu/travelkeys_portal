<div class="destination">
        <img class="destination__image" src="{$smarty.const.CDN}/loc_{$featured_item->id}_loc_{$featured_item->id}_{$featured_item->subdomain}.jpg" alt="{$featured_item->name}"/>
    <div class="destination__wrapper">
        <h3 class="section__subtitle destination__name">{$featured_item->name}</h3>
        <a class="destination__button button -color-black" href="{$smarty.const.PROTOCOL}{$featured_item->subdomain}.{$smarty.const.SERVER_NAME}" title="See all properties">{$featured_item->property_count} Properties</a>
    </div>
</div>