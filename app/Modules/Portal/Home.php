<?php
namespace App\Modules\Portal;

use App\Services;
use App\Services\Redis\Locations;
use Slim\Http\Request;

class Home
{
    protected
        /**
         * @var Locations
         */
        $location,
        $view
    ;
    public function __construct(Locations $location, $view)
    {
        $this->location = $location;
        $this->view = $view;
    }

    public function index(Request $request, $response, $args)
    {
        $featured   = $this->location->featured();
        $mapItems   = $this->location->mapItems();
        $favorites  = $request->getAttribute('favorites');

        return $this->view->render($response, 'home.tpl', [
            'menu' => $request->getAttribute('menu'),
            'map_items' => array_map(function ($element) use ($favorites) {
                $element->is_favorite = in_array($element->landing_property_id, $favorites);
                return $element;
            }, $mapItems), // Loop over array and add favorites flag
            'page' => [
                'title' => 'Luxury Villa Rentals & Vacation Rentals',
                'body_classes' => 'home'
            ],
            'featured' => array_slice($featured, 0, 6),
            'favorites' => $favorites,
        ]);
    }
}