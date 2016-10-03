<div class="js-marker" data-hidden="false" data-lat="{$map_item->latitude}" data-lng="{$map_item->longitude}">
    <div class="marker__content js-marker-content">
        {if $map_item->image|strlen}
            <img class="marker__image" src="{$smarty.const.CDN}/{$map_item->image_m}" alt="{$map_item->name}"/>
        {else}
            <img class="marker__image" src="http://cdn.villascaribe.com/6396_hawaii-lahainadream-1_m.jpg" alt="{$map_item->name}"/>
        {/if}
        <h3 class="marker__title">
            <a href="{$smarty.const.PROTOCOL}{$map_item->subdomain}.{$smarty.const.SERVER_NAME}/villa-listing/{$map_item->slug|default:''}" title="{$map_item->name}" class="marker__favorite" data-id="{$map_item->id}">
                <i data-id="{$map_item->id}" class="toggle__favorite icon icon__heart{if $map_item->is_favorite}-full{/if}"></i><span>{$map_item->name}</span>
            </a>
        </h3>
        <p class="marker__body">{$map_item->bedrooms} Bdr, {$map_item->bathrooms} Bth | {$map_item->state}{if $map_item->state|strlen}, {/if}{$map_item->city|default:$map_item->name} ${$map_item->min_rate} - ${$map_item->max_price|default:0}</p>
        <div class="marker__buttons">
            <a class="button -color-black -size-popup" href="{$smarty.const.PROTOCOL}{$map_item->subdomain}.{$smarty.const.SERVER_NAME}/villa-listing/{$map_item->slug|default:''}" title="Find out more">More details</a>
            <a class="button button--popup-cancel" href="javascript:infowindow.close();" title="Cancel">Cancel</a>
        </div>
    </div>
</div>