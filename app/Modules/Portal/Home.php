<?php
namespace App\Modules\Portal;

use App\Services;
use App\Services\Redis\Locations;
use App\Services\Redis\Properties;
use Slim\Http\Request;
use Slim\Http\Response;
use Slim\Views\Smarty;

class Home
{
    protected
        /**
         * @var Locations
         */
        $location,
        /**
         * @var Properties
         */
        $properties,
        /**
         * @var Smarty
         */
        $view
    ;
    public function __construct(Locations $location, Properties $properties, Smarty $view)
    {
        $this->location = $location;
        $this->properties = $properties;
        $this->view = $view;
    }

    public function index(Request $request, $response, $args)
    {
        if ( SUBDOMAIN ) return $this->indexSite($request, $response, $args);

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

    public function indexSite(Request $request, $response, $args)
    {
        $search_items = $this->properties->search($request->getParam('q', ''), 0, 20);

        // TODO: Should be fixed in API
        $search_items = array_map(function ($item) {
            $parts = explode('.', $item->image);
            $ext = $parts[count($parts) - 1];
            unset($parts[count($parts) - 1]);
            $item->image = implode('.', $parts) . '_l.' . $ext;
            $item->image_m = implode('.', $parts) . '_m.' . $ext;
            return $item;
        }, $search_items);

        return $this->view->render($response, 'search.tpl', [
            'page' => [
                'title' => 'Search',
                'body_classes' => 'search',
                'final_destination_page' => true,
            ],
            'query' => $request->getParam('q', ''),
            'search_items' => $search_items,
            'menu' => $request->getAttribute('menu'),
            'favorites' => $request->getAttribute('favorites'),
            'load_more' => (bool) $search_items,
            'checkin' => $request->getParam('checkin', ''),
            'checkout' => $request->getParam('checkout', ''),
            'guests' => $request->getParam('guests', ''),
        ]);
    }
}