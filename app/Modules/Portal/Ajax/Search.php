<?php
namespace App\Modules\Portal\Ajax;

use Slim\Views\Smarty;
use Slim\Http\Request;
use Slim\Http\Response;

class Search
{
    protected
        /**
         * @var Smarty
         */
        $view
    ;

    /**
     * Search constructor.
     * @param Smarty $view
     */
    public function __construct(Smarty $view)
    {
        $this->view = $view;
    }

    /**
     * Return partial list of results based on the search query
     *
     * @param Request $request
     * @param Response $response
     * @param array $args
     */
    public function search(Request $request, Response $response, array $args)
    {

    }
}