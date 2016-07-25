<?php
namespace App\Modules\Portal;

use App\Services\Redis\Locations;
use App\Services\Redis\Properties;

class Dummy
{
    protected
        /**
         * @var Locations
         */
        $locations
    ;
    public function __construct(Locations $locations, Properties $properties)
    {
        $this->locations = $locations;
        $this->properties = $properties;
    }

    public function route($request, $response, $args)
    {
        echopre(
            $this->properties->search('hawaii', '', '', [])
        );die;
    }
}