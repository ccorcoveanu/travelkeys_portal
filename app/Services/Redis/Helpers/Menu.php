<?php
namespace App\Services\Redis\Helpers;

trait Menu
{
    /**
     * Build menu hierarchy
     * @param $menu_items
     * @return array
     */
    function buildCustomMenu($menu_items)
    {
        $_headers = [];
        $_header_items = [];
        foreach ( $menu_items as $k => $menu_item ) {
            if ( !$menu_item->parent_id ) {
                $_headers[$menu_item->id] = $menu_item;
            } else {
                $_header_items[$menu_item->parent_id][] = $menu_item;
            }
        }
        foreach ( $_headers as $k => $header ) {
            $_headers[$k]->children = isset($_header_items[$k]) ? $_header_items[$k] : [];
        }
        return $_headers;
    }
}