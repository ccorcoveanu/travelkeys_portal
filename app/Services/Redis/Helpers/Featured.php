<?php
namespace App\Services\Redis\Helpers;

trait Featured
{
    function formatFeatured($data)
    {
        return array_map(function ($item) {
            $item->properties_count = 0;
            return $item;
        }, $data);
    }
}