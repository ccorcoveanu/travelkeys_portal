<?php
namespace App\Modules\Api;

use Slim\Http\Request;
use Slim\Http\Response;
use App\Services\CacheClient;
use App\Services\Redis\Locations;
use App\Services\Redis\Properties;

class Cache
{
    protected
        /**
         * @var CacheClient
         */
        $client,
        /**
         * @var Locations
         */
        $locations,
        /**
         * @var Properties
         */
        $properties
    ;

    public function __construct(CacheClient $client, Locations $locations, Properties $properties)
    {
        $this->client = $client;
        $this->locations = $locations;
        $this->properties = $properties;
    }

    /**
     * Clear all items from cache
     *
     * @param Request $request
     * @param Response $response
     * @param $args
     * @return Response
     */
    public function clear(Request $request, Response $response, $args)
    {
        $error = '';
        $result = $this->client->execute(['FLUSHALL'], $error);

        $serverReply = $error ? '{response: "' . $error . '"}' : '{response: "' . $result . '"}';

        return $response
            ->withHeader('Content-type', 'application/json')
            ->withJson($serverReply);
    }

    /**
     * Populate cache
     *
     * @param Request $request
     * @param Response $response
     * @param $args
     * @return Response
     */
    public function populate(Request $request, Response $response, $args)
    {
        try {
            $this->cache();

            return $response
                ->withHeader('Content-type', 'application/json')
                ->withJson('{response: "OK"}');

        } catch (\Exception $e) {
            return $response
                ->withHeader('Content-type', 'application/json')
                ->withJson('{response: "OK"}');
        }
    }

    /**
     * Clear cache then populate it back with fresh data
     *
     * @param Request $request
     * @param Response $response
     * @param $args
     * @return Response
     */
    public function reset(Request $request, Response $response, $args)
    {
        $error = '';
        $result = $this->client->execute(['FLUSHALL'], $error);

        $serverReply = $error ? '{response: "' . $error . '"}' : '{response: "' . $result . '"}';

        try {
            $this->cache();

            return $response
                ->withHeader('Content-type', 'application/json')
                ->withJson($serverReply);

        } catch (\Exception $e) {
            return $response
                ->withHeader('Content-type', 'application/json')
                ->withJson('{response: "OK"}');
        }
    }

    /**
     * Call all needed to cache methods
     * Add here call whenever a method that caches something is added
     */
    protected function cache()
    {
        // Cache location items
        $this->locations->get(); // All
        $this->locations->menu(); // Menu
        $this->locations->mapItems(); // Map
        $this->locations->featured(); // Featured

        // Cache properties
        $this->properties->cacheAll(); // All
    }
}