<?php
namespace App\Modules\Portal\Ajax;

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
     */
    public function __construct(Properties $properties, Smarty $view)
    {
        $this->view = $view;
        $this->properties = $properties;
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
        $search_items = $this->properties->search(
            $request->getParam('q', ''),
            $request->getParam('start', ''),
            $request->getParam('limit', ''),
            []
        );

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
            'search_items' => $search_items
        ]);

        return \GuzzleHttp\json_encode(['length' => count($search_items), 'status' => 'ok', 'html' => $html]);
    }
}