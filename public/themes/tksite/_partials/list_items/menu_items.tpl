<li class="mega-sub__item mega-sub__item--header">{$header->name}</li>
{foreach name='submenu_items' item=header_subitem from=$header->children}
    <li class="mega-sub__item a-arrow-fade-in"><a href="#" class="mega-nav__link">{$header_subitem->name}</a></li>
{/foreach}