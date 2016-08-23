<li class="mega-sub__item mega-sub__item--header">{$header->name}</li>
{foreach name='submenu_items' item=header_subitem from=$header->children}
    <li class="mega-sub__item a-arrow-fade-in"><a href="{$smarty.const.PROTOCOL}{$header_subitem->subdomain}.{$smarty.const.MAIN_SITE_STRIP}" class="mega-nav__link">{$header_subitem->name}</a><span class="mega-sub__item__new">{$header_subitem->new_properties|default:0} New</span></li>
{/foreach}
<li>
    <a class="js-button-expand button__expand" data-text-swap="Close">Explore</a>
</li>