<?php
namespace App\Modules\Portal;

use App\Services\Redis\Properties;
use Slim\Views\Smarty;
use Slim\Http\Request;
use Slim\Http\Response;
use App\Services\Redis\Locations;
use Slim\Exception\NotFoundException;


class VillaListing
{
    protected
        /**
         * @var Smarty
         */
        $view,
        /**
         * @var Locations
         */
        $locations,
        /**
         * @var Properties
         */
        $properties
    ;
    public function __construct(Locations $locations, Properties $properties, Smarty $view)
    {
        $this->view = $view;
        $this->locations = $locations;
        $this->properties = $properties;
    }

    /**
     * Specials route
     *
     * @param Request $request
     * @param Response $response
     * @param array $args
     * @return \Psr\Http\Message\ResponseInterface
     */
    public function specials(Request $request, Response $response, array $args)
    {
        $location = null;
        $location_id = null;
        if ( SUBDOMAIN ) {
            $location = $this->locations->bySlug(SUBDOMAIN);
            $location_id = $location->id;
        }

        $specials = $this->properties->specials($location_id, 0, 20);

        return $this->view->render($response, 'search.tpl', [
            'page' => [
                'title' => 'Specials',
                'body_classes' => 'search',
            ],
            'search_items' => $specials['items'],
            'total_items' => $specials['total'],
            'menu' => $request->getAttribute('menu'),
            'favorites' => $request->getAttribute('favorites'),
            'location' => $location,
            'feeds' => $request->getAttribute('feeds'),
        ]);
    }

    /**
     * Favorites route
     *
     * @param Request $request
     * @param Response $response
     * @param array $args
     *
     * @return \Psr\Http\Message\ResponseInterface
     */
    public function favorites(Request $request, Response $response, array $args)
    {
        $location = null;
        if ( SUBDOMAIN ) $location = $this->locations->bySlug(SUBDOMAIN);

        $favorite_ids = $request->getAttribute('favorites');
        $favorite_items = $favorite_ids ? $this->properties->batch($favorite_ids) : [];

        // TODO: Should be fixed in API
        $favorite_items = array_map(function ($item) {
            $parts = explode('.', $item->image);
            $ext = $parts[count($parts) - 1];
            unset($parts[count($parts) - 1]);
            $item->image = implode('.', $parts) . '_l.' . $ext;
            $item->image_m = implode('.', $parts) . '_m.' . $ext;
            return $item;
        }, $favorite_items);

        return $this->view->render($response, 'search.tpl', [
            'page' => [
                'title' => 'My Favorites',
                'body_classes' => 'search',
            ],
            'search_items' => $favorite_items,
            'total_items' => count($favorite_items),
            'menu' => $request->getAttribute('menu'),
            'favorites' => $favorite_ids,
            'location' => $location,
            'feeds' => $request->getAttribute('feeds'),
        ]);
    }

    /**
     * @param Request $request
     * @param Response $response
     * @param array $args
     * @return \Psr\Http\Message\ResponseInterface
     */
    public function search(Request $request, Response $response, array $args)
    {
        $location = null;
        $location_id = null;
        $areas = [];
        if ( SUBDOMAIN ) {
            $location = $this->locations->bySlug(SUBDOMAIN);
            $location_id = $location->id;
            $areas = $this->locations->children($location_id);
        }

        $search_items = $this->properties->search($request->getParam('q', ''), 0, 20, ['location_id' => $location_id]);
        $total_items  = $search_items['total'];

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
            'page' => [
                'title' => 'Search',
                'body_classes' => 'search',
            ],
            'query' => $request->getParam('q', ''),
            'search_items' => $search_items,
            'total_items' => $total_items,
            'menu' => $request->getAttribute('menu'),
            'favorites' => $request->getAttribute('favorites'),
            'load_more' => (bool) $search_items,
            'checkin' => $request->getParam('checkin', ''),
            'checkout' => $request->getParam('checkout', ''),
            'guests' => $request->getParam('guests', ''),
            'location' => $location,
            'feeds' => $request->getAttribute('feeds'),
            'areas' => $areas
        ]);
    }

    public function location(Request $request, Response $response, array $args)
    {
        if ( !isset($args['slug']) ) {
            throw new NotFoundException($request, $response);
        }

        $location = null;
        if ( SUBDOMAIN ) $location = $this->locations->bySlug(SUBDOMAIN);

        $property = $this->properties->search('', 0, 1, [
            'slug' => $args['slug']
        ]);

        if ( count($property['items']) ) {
            $property = $property['items'][0];
            $property_details = $this->properties->byIdFresh($property->id);
        } else {
            throw new \Exception('Villa not fount', 404);
        }

        foreach ( $property_details->images as $k => $image ) {
            $parts = explode('.', $image->filename);
            $ext = $parts[count($parts) - 1];
            unset($parts[count($parts) - 1]);
            $property_details->images[$k]->filename_l = implode('.', $parts) . '_l.' . $ext;
            $property_details->images[$k]->filename_s = implode('.', $parts) . '_s.' . $ext;
            $property_details->images[$k]->filename_m = implode('.', $parts) . '_m.' . $ext;
        }

        $property_details->rates = json_decode(json_encode($property_details->rates), true);

        $min_rate = $max_rate = 0;
        foreach ( $property_details->rates as $k => $rate ) {

            // Format dates
            $stime = strtotime($rate['start_date']);
            $etime = strtotime($rate['end_date']);
            $property_details->rates[$k]['formatted_date'] = date('F d', $stime) . ' - ' . date('F d, Y', $etime);

            foreach ( $rate['rates'] as $kr => $rate_single ) {
                // Find min and max rates
                if ( $rate_single['nightly'] < $min_rate || $min_rate === 0 ) $min_rate = $rate_single['nightly'];
                if ( $rate_single['nightly'] > $max_rate ) $max_rate = $rate_single['nightly'];
            }

        }
        $property_details->details->min_rate = $min_rate;
        $property_details->details->max_rate = $max_rate;

        $related = $this->properties->search('', 0, 3, [
            'not_ids' => [$property->id],
            'location_id' => $location->id,
            'order' => 'randomize'
        ]);

        // TODO: Should be fixed in API
        $related = array_map(function ($item) {
            $parts = explode('.', $item->image);
            $ext = $parts[count($parts) - 1];
            unset($parts[count($parts) - 1]);
            $item->image = implode('.', $parts) . '_l.' . $ext;
            $item->image_m = implode('.', $parts) . '_m.' . $ext;
            $item->image_m2 = implode('.', $parts) . '_m2.' . $ext;
            $item->image_s = implode('.', $parts) . '_s.' . $ext;
            return $item;
        }, $related['items']);

        return $this->view->render($response, 'details.tpl', [
            'page' => [
                'title' => $property->location_name,
                'body_classes' => 'property',
            ],

            'menu' => $request->getAttribute('menu'),
            'favorites' => $request->getAttribute('favorites'),
            'property' => $property,
            'property_details' => $property_details,
            'location' => $location,
            'feeds' => $request->getAttribute('feeds'),
            'related' => $related,
        ]);
    }

    function locationGeneralDetails(Request $request, Response $response, array $args)
    {
        $location = null;
        if ( SUBDOMAIN ) $location = $this->locations->bySlug(SUBDOMAIN);
        if ( !$location ) {
            throw new NotFoundException($request, $response);
        }

        return $this->view->render($response, 'location.tpl', [
            'page' => [
                'title' => $location->name,
                'body_classes' => 'destination',
            ],

            'menu' => $request->getAttribute('menu'),
            'favorites' => $request->getAttribute('favorites'),
            'location' => $location,
            'feeds' => $request->getAttribute('feeds'),
        ]);
    }
}