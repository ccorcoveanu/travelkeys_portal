<?php
namespace App\Modules\Portal;

use App\Services\Redis\Locations;
use App\Services\Redis\Properties;
use App\Services\Salesforce\Newsletter;

class Dummy
{
    protected
        /**
         * @var Locations
         */
        $locations
    ;
    public function __construct(Locations $locations, Properties $properties, Newsletter $newsletter)
    {
        $this->locations = $locations;
        $this->properties = $properties;
        $this->newsletter = $newsletter;
    }

    public function route($request, $response, $args)
    {
        $r = $this->newsletter->params([
            'retUrl' => 'http://travelkeys.local',
        ])->subscribe('codrut@graffino.com', ['division' => 'www']);

        var_dump($r);die;
    }
}