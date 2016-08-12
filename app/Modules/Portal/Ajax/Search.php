<?php
namespace App\Modules\Portal\Ajax;

use App\Services\Redis\Locations;
use Slim\Views\Smarty;
use Slim\Http\Request;
use Slim\Http\Response;
use App\Services\Redis\Properties;

class Search
{
    protected
        /**
         * @var Smarty
         */
        $view,
        /**
         * @var Properties
         */
        $properties
    ;

    /**
     * Search constructor.
     * @param Properties $properties
     * @param Smarty $view
     * @param Locations $locations
     */
    public function __construct(Properties $properties, Smarty $view, Locations $locations)
    {
        $this->view = $view;
        $this->properties = $properties;
        $this->locations = $locations;
    }

    /**
     * Return partial list of results based on the search query
     *
     * @param Request $request
     * @param Response $response
     * @param array $args
     *
     * @return Object
     */
    public function filter(Request $request, Response $response, array $args)
    {

        $hardcoded_amenities = [
            'ck-beach' => 10,
            'ck-city' => 100
        ];
        $filters = $request->getParam('filters');

        $extra_filters = [];

        $location = null;
        $location_id = null;
        if ( SUBDOMAIN ) {
            $location = $this->locations->bySlug(SUBDOMAIN);
            $extra_filters['location_id'] = $location->id;
        }

        if ( isset($filters['guests']) && (int)$filters['guests'] ) {
            $extra_filters['guests'] = (int)$filters['guests'];
        }

        if ( isset($filters['bedrooms']) && (int)$filters['bedrooms'] ) {
            $extra_filters['bedrooms'] = (int)$filters['bedrooms'];
        }

        if ( isset($filters['reservations']) && ( $filters['reservations']['start'] || $filters['reservations']['end'] ) ) {
            $extra_filters['reservations'] = $filters['reservations'];
        }

        if ( !$filters['group']['all'] || $filters['group']['all'] === 'false' ) {
            if ( $filters['group']['specials'] !== 'false' ) {
                $extra_filters['specials'] = true;
            }
            if ( $filters['group']['favorites'] !== 'false' ) {
                $extra_filters['ids'] = $request->getAttribute('favorites');
            }
        }


        $search_items = $this->properties->search(
            $request->getParam('q', ''),
            $request->getParam('start', ''),
            $request->getParam('limit', ''),
            $extra_filters
        );
        $total_tiems = $search_items['total'];

        // TODO: Should be fixed in API
        $search_items = array_map(function ($item) {
            $parts = explode('.', $item->image);
            $ext = $parts[count($parts) - 1];
            unset($parts[count($parts) - 1]);
            $item->image = implode('.', $parts) . '_l.' . $ext;
            $item->image_m = implode('.', $parts) . '_m.' . $ext;
            return $item;
        }, $search_items['items']);

        $html = $this->view->fetch('_partials/components/property_list.tpl', [
            'search_items' => $search_items,
            'favorites' => $request->getAttribute('favorites'),
        ]);

        return \GuzzleHttp\json_encode(['length' => count($search_items), 'status' => 'ok', 'html' => $html, 'total_items' => $total_tiems]);
    }
}