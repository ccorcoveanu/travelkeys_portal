<?php
namespace App\Modules\Portal;

use App\Services;

class Home
{
    public function __construct($sites)
    {
        $this->sites = $sites;
    }

    public function index($request, $response, $args)
    {
        $data = $this->sites->get(2);
        echo '<pre>';
        print_r($data);
        echo '</pre>';
    }
}