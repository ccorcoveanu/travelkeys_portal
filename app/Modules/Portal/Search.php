<?php
namespace App\Modules\Portal;

use App\Services\Redis\Locations;

class Search
{
    protected
        /**
         * @var Locations
         */
        $locations
    ;
    public function __construct(Locations $locations)
    {
        $this->locations = $locations;
    }

    public function search()
    {

    }
}