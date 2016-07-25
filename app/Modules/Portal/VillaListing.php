<?php
namespace App\Modules\Portal;

use App\Services\Redis\Properties;
use Slim\Views\Smarty;
use Slim\Http\Request;
use Slim\Http\Response;
use App\Services\Redis\Locations;


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
        $favorite_items = $favorite_ids ? $this->properties->get($favorite_ids) : [];

        // TODO: Should be fixed in API
        $favorite_items = array_map(function ($item) {
            $parts = explode('.', $item->image);
            $ext = $parts[count($parts) - 1];
            unset($parts[count($parts) - 1]);
            $item->image = implode('.', $parts) . '_l.' . $ext;
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
}