<section class="featured__item {if isset($featured_item->special) && $featured_item->special}-is-special{/if}">
    <div class="featured__picture__container">
        {if $featured_item->image|strlen}
            <img height="217" class="featured__picture" src="{$smarty.const.CDN}/{$featured_item->image_m2}" alt="{$featured_item->name}"/>
        {else}
            <img class="featured__picture" src="{$smarty.const.TEMPLATE_PATH}/assets/images/placeholders/villa6.jpg" alt="{$featured_item->name}"/>
        {/if}
    </div>
    <div class="featured__wrapper">
        <div class="featured__item__wrapper">
            <h3 class="featured__item__title">
                <a href="{$smarty.const.BASE_URL}/villa-listing/{$featured_item->slug}" title="{$featured_item->name}"><i
                            data-id="{$featured_item->id}"
                            class="icon toggle__favorite icon__heart-featured{if $featured_item->id|in_array:$favorites}-full{/if}"></i><span>{$featured_item->name}</span></a>
            </h3>
            <span class="featured__item__description">{$featured_item->state}{if $featured_item->state|strlen}, {/if}{$featured_item->city|default:$featured_item->name}</span>
        </div>
        <div class="featured__item__section">
            <div class="featured__item__facilities">
                <span>{$featured_item->bedrooms} Bedrooms</span>
                <span>{$featured_item->bathrooms} Baths</span>
            </div>
            <div class="featured__item__price">
                <span class="price__text">From</span>
                <strong class="price__number"><sup class="price__super">$</sup>{$featured_item->min_price|default:'TBA'}/nt</strong>
            </div>
        </div>
        <div class="featured__item__buttons">
            <div class="featured__item__button">
                <a class="button -color-black" href="{$smarty.const.BASE_URL}/villa-listing/{$featured_item->slug}" title="View villa">View villa</a>
            </div>
            <div class="featured__item__button">
                <a data-prop_id="{$featured_item->id}" class="js-modal button -color-gray -has-calendar" href="#availability-modal" title="Calendar">Calendar<i class="icon icon__date-square"></i></a>
            </div>
        </div>
    </div>
</section>