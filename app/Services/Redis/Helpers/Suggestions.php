<?php
namespace App\Services\Redis\Helpers;

trait Suggestions
{
    /**
     * Build correct format from location list for search suggestions
     *
     * @param $list
     * @return array
     */
    function formatSuggestion($list) {
        return array_map(function ($item) {
            return [
                'label' => $item->name,
                'value' => $item->name,
            ];
        }, $list);
    }
}