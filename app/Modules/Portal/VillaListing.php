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
        return $this->view->render($response, 'search.tpl', [
            'page' => [
                'title' => 'Specials',
                'body_classes' => 'search',
            ],
            'search_items' => [],
            'menu' => $request->getAttribute('menu'),
            'favorites' => $request->getAttribute('favorites'),
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
            'menu' => $request->getAttribute('menu'),
            'favorites' => $favorite_ids,
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

    public function location(Request $request, Response $response, array $args)
    {
        if ( !isset($args['slug']) ) {
            throw new NotFoundException($request, $response);
        }

        $property = $this->properties->search('', 0, 1, [
            'slug' => $args['slug']
        ]);

        echopre($property);die;
    }
}