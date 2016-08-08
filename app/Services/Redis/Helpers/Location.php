<?php
namespace App\Services\Redis\Helpers;

trait Location
{
    function locationForView($location)
    {
        $location->temperature  = str_replace('/', '<br/>', $location->temperature);
        $location->attractions  = str_replace(', ', '<br/>', $location->temperature);
        $location->rainfall     = str_replace('/', '<br/>', $location->rainfall);

        return $location;
    }
}