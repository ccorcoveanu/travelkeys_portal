<?php
namespace App\Modules\Portal;

use App\Services\Redis\Locations;

class Suggestions
{
    protected
        /**
         * @var Locations
         */
        $location
    ;

    /**
     * Suggestions constructor.
     * @param Locations $location
     */
    public function __construct(Locations $location)
    {
        $this->location = $location;
    }

    /**
     * Suggest route
     *
     * @param $request
     * @param $response
     * @param $args
     * @return mixed
     */
    public function suggest($request, $response, $args)
    {
        return $response
            ->withHeader('Content-type', 'application/json')
            ->withJson(
                $this->location->suggest(
                    $request->getParam('query')
                )
            );
    }
}