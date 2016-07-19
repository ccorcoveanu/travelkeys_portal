<?php
namespace App\Modules\Portal;

class Dummy
{
    public function __construct($locations)
    {
        $this->locations = $locations;
    }

    public function route($request, $response, $args)
    {
        echopre($request->getAttribute('menu'));die;
        $locations = $this->locations->menu();

        echopre($locations);die;
    }
}