<?php
namespace App\Modules\Portal;

use App\Services;

class Home
{
    public function __construct($location, $view)
    {
        $this->location = $location;
        $this->view = $view;
    }

    public function index($request, $response, $args)
    {
        $featured = $this->location->featured();
        return $this->view->render($response, 'home.tpl', [
            'menu' => $request->getAttribute('menu'),
            'page' => [
                'title' => 'Luxury Villa Rentals & Vacation Rentals',
                'body_classes' => 'home'
            ],
            'featured' => array_slice($featured, 0, 6)
        ]);
    }
}