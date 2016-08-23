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

        return $this->customOrder($_headers);
    }

    function customOrder($menu, $order = [])
    {
        if ( !$order ) $order = [
            'Caribbean', 'Hawaii', 'Mexico', 'Central America', 'United States', 'Europe', 'Asia', 'Canada', 'Oceana',
            'Africa'
        ];

        $return_array = [];
        foreach ($order as $k => $menu_head) {
            foreach ( $menu as $ki => $menu_item ) {
                if ( strtolower($menu_head) === strtolower($menu_item->name) ) {
                    $return_array[] = $menu_item;
                    unset($menu[$ki]);
                    continue;
                }
            }
        }
        return $return_array;
    }
}