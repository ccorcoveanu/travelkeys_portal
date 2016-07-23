<?php
namespace App\Modules\Api;

use Slim\Http\Request;
use Slim\Http\Response;
use App\Services\CacheClient;
use App\Services\Redis\Locations;

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
        $locations
    ;

    public function __construct(CacheClient $client, Locations $locations)
    {
        $this->client = $client;
        $this->locations = $locations;
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
        $this->locations->get();
        $this->locations->menu();
        $this->locations->mapItems();
        $this->locations->featured();
    }
}