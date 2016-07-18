<?php
namespace App\Modules\Portal;

use App\Services;

class Home
{
    public function __construct($sites, $view)
    {
        $this->sites = $sites;
        $this->view = $view;
    }

    public function index($request, $response, $args)
    {
        return $this->view->render($response, 'home.tpl', [
            'page' => [
                'title' => 'Luxury Villa Rentals & Vacation Rentals',
                'body_classes' => 'home'
            ]
        ]);
    }
}