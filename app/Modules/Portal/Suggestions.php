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

    public function suggest($request, $response, $args)
    {
        return $this->location->suggest(
            $request->getParam('query')
        );
    }
}