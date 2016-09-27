<?php
namespace App\Modules\Portal;

use App\Services;
use App\Services\Redis\Locations;
use App\Services\Redis\Properties;
use App\Services\Redis\Helpers\Location;
use Slim\Http\Request;
use Slim\Http\Response;
use Slim\Views\Smarty;

class Home
{
    use Location;

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
        if ( SUBDOMAIN && !EXTERNAL_SITE ) return $this->indexSite($request, $response, $args);
        if ( EXTERNAL_SITE ) return $this->indexExternalLocation($request, $response, $args);

        $featured   = $this->location->featured();
        $mapItems   = $this->location->mapItems();
        $favorites  = $request->getAttribute('favorites');

        return $this->view->render($response, 'home.tpl', [
            'menu' => $request->getAttribute('menu'),
            'map_items' => $mapItems ? array_map(function ($element) use ($favorites) {
                $element->is_favorite = in_array($element->landing_property_id, $favorites);
                return $element;
            }, $mapItems) : [], // Loop over array and add favorites flag
            'page' => [
                'title' => 'Luxury Villa Rentals & Vacation Rentals',
                'body_classes' => 'home'
            ],
            'featured' => array_slice($featured, 0, 6),
            'favorites' => $favorites,
            'feeds' => $request->getAttribute('feeds'),
        ]);
    }

    public function indexExternalLocation(Request $request, $response, $args)
    {
        $location   = $this->location->bySlug(SUBDOMAIN);
        $favorites  = $request->getAttribute('favorites');
        $featured_items = $this->properties->featured($location->id);
        $special_items = $this->properties->featured($location->id);
        $featured   =  array_slice(
            $featured_items['items'], 0, 6
        );

        $specials   = array_slice(
            $special_items['items'], 0, 6
        );
        $mapItems   = $this->location->mapItems();

        // TODO: Should be fixed in API
        $featured = array_map(function ($item) {
            $parts = explode('.', $item->image);
            $ext = $parts[count($parts) - 1];
            unset($parts[count($parts) - 1]);
            $item->image = implode('.', $parts) . '_l.' . $ext;
            $item->image_m = implode('.', $parts) . '_m.' . $ext;
            $item->image_m2 = implode('.', $parts) . '_m2.' . $ext;
            $item->image_s = implode('.', $parts) . '_s.' . $ext;
            return $item;
        }, $featured);

        // TODO: Should be fixed in API
        $specials = array_map(function ($item) {
            $parts = explode('.', $item->image);
            $ext = $parts[count($parts) - 1];
            unset($parts[count($parts) - 1]);
            $item->image = implode('.', $parts) . '_l.' . $ext;
            $item->image_m = implode('.', $parts) . '_m.' . $ext;
            $item->image_m2 = implode('.', $parts) . '_m2.' . $ext;
            $item->image_s = implode('.', $parts) . '_s.' . $ext;
            return $item;
        }, $specials);

        return $this->view->render($response, 'home.tpl', [
            'menu' => $request->getAttribute('menu'),
            'page' => [
                'title' => 'Luxury Villa Rentals & Vacation Rentals',
                'body_classes' => 'home'
            ],
            'location' => $this->locationForView($location),
            'favorites' => $favorites,
            'featured'  => $featured,
            'specials'  => $specials,
            'map_items' => array_map(function ($element) use ($favorites) {
                $element->is_favorite = in_array($element->landing_property_id, $favorites);
                return $element;
            }, $mapItems), // Loop over array and add favorites flag
            'feeds' => $request->getAttribute('feeds'),
        ]);
    }

    public function indexSite(Request $request, Response $response, $args)
    {
        $location       = $this->location->bySlug(SUBDOMAIN);
        if ( !$location ) {
            return $response->withRedirect(MAIN_SITE, 301);
        }
        $favorites      = $request->getAttribute('favorites');
        $search_items   = $this->properties->search('', 0, 20, ['location_id' => $location->id]);
        $total_items    = $search_items['total'];
        $location->descriptionShort = $location->description;
        $location->image = 'http://www.travelkeys.com/sites/default/files/images/panos/pano-' . SUBDOMAIN . '-' . 'travelkeys.com.png';

        if ( strlen($location->descriptionShort) > 150 ) {
            $location->descriptionShort = substr($location->descriptionShort, 0, 147) . '...';
        }

        // TODO: Should be fixed in API
        $search_items = array_map(function ($item) {
            $parts = explode('.', $item->image);
            $ext = $parts[count($parts) - 1];
            unset($parts[count($parts) - 1]);
            $item->image = implode('.', $parts) . '_l.' . $ext;
            $item->image_m = implode('.', $parts) . '_m.' . $ext;
            return $item;
        }, $search_items['items']);

        return $this->view->render($response, 'search.tpl', [
            'menu' => $request->getAttribute('menu'),
            'page' => [
                'title' => 'Luxury Villa Rentals & Vacation Rentals',
                'body_classes' => 'search',
                'final_destination_page' => [
                    'tralala'
                ],
            ],
            'location' => $this->locationForView($location),
            'query' => $request->getParam('q', ''),
            'search_items' => $search_items,
            'total_items' => $total_items,
            'favorites' => $favorites,
            'feeds' => $request->getAttribute('feeds'),

        ]);
    }
}