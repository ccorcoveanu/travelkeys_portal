<section class="featured__item {if $search_item->special}-is-special{/if}">
    <div class="featured__picture__container">
        {if $search_item->image|strlen}
            <img class="featured__picture" src="{$smarty.const.CDN}/{$search_item->image}" alt="{$search_item->name}"/>
        {else}
            <img class="featured__picture" src="{$smarty.const.TEMPLATE_PATH}/assets/images/placeholders/villa4.jpg" alt="{$search_item->name}"/>
        {/if}
    </div>
    <div class="featured__wrapper">
        <div class="featured__item__wrapper">
            <h3 class="featured__item__title">
                <a href="{$smarty.const.PROTOCOL}{$search_item->subdomain}.{$smarty.const.MAIN_SITE_STRIP}/villa-listing/{$search_item->slug|default:''}" title="{$search_item->name}"><i
                            data-id="{$search_item->id}"
                            class="icon toggle__favorite icon__heart-featured{if $search_item->id|in_array:$favorites}-full{/if}"></i><span>{$search_item->name}</span></a>
            </h3>
            <span class="featured__item__description">{$search_item->state}{if $search_item->state|strlen}, {/if}{$search_item->city|default:$search_item->name}</span>
        </div>
        <div class="featured__item__section">
            <div class="featured__item__facilities">
                <span>{$search_item->bedrooms} Bedrooms</span>
                <span>{$search_item->bathrooms} Baths</span>
            </div>
            <div class="featured__item__price">
                <span class="price__text">From</span>
                <strong class="price__number"><sup class="price__super">$</sup>{$search_item->min_price|default:'TBA'}/nt</strong>
            </div>
        </div>
        <div class="featured__item__buttons">
            <div class="featured__item__button">
                <a class="button -color-black" href="{$smarty.const.PROTOCOL}{$search_item->subdomain}.{$smarty.const.MAIN_SITE_STRIP}/villa-listing/{$search_item->slug|default:''}" title="View villa">View villa</a>
            </div>
            <div class="featured__item__button">
                <a data-calendarlink="http://manage.myvacationrentalmanager.com/villa/calendar/the-lahaina-dream/2016/07?width=760&height=650&iframe=1&showTitle=1&showKey=1" class="js-modal button -color-gray -has-calendar" href="#availability-modal" title="Calendar">Calendar<i class="icon icon__date-square"></i></a>
            </div>
        </div>
    </div>
</section>