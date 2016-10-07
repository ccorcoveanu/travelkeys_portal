<?php
namespace App\Services;

use GuzzleHttp;
use App\Services\DataApi\DataApiException;

class DataApi
{
    protected
        /**
         * Web client
         * @var GuzzleHttp\Client
         */
        $web_client,
        /**
         * Mapped resource name
         * @var string
         */
        $resource,
        /**
         * Data api credentials
         * @var string
         */
        $auth_username,
        $auth_password
    ;

    /**
     * DataApi constructor.
     * @param string $settings
     */
    public function __construct($settings)
    {
        $this->web_client = new GuzzleHttp\Client([
            'base_uri' => $settings['url']
        ]);
        $this->auth_username = $settings['username'];
        $this->auth_password = $settings['password'];
    }

    /**
     * Get method for a general resource
     * @param null|int $id
     * @throws DataApiException
     * @return mixed
     */
    public function get($id = null)
    {
        if ( !$this->resource ) {
            throw new DataApiException(
                'You need to set the resource you want to call, or instantiate a DataApi resource class',
                DataApiException::WRONG_PARAMETERS
            );
        }

        if ( !$id ) {
            return $this->call("{$this->resource}_getAll");
        }

        return $this->call("{$this->resource}_getById", ['id' => $id]);
    }

    /**
     * Return the data from the request promise. Wait if necessary
     * @param $resource
     * @return mixed
     */
    public function data($resource)
    {
        return $resource->wait();
    }

    /**
     * Setter/Getter for the resource property
     * @param null|string $resource
     * @return mixed
     * @throws DataApiException
     */
    public function resource($resource = null)
    {
        if ( !$resource ) {
            return $this->resource;
        }

        if ( !is_string($resource) ) {
            throw new DataApiException('resource param needs to be a string', DataApiException::WRONG_PARAMETERS);
        }
    }

    protected function call($method, $params = [], $method_type = 'GET')
    {
        // Add parameters as query_string for the GET method
        $query_string = $method_type === 'GET' ?
            array_merge(['method' => $method], $params) : ['method' => $method];

        return $this->web_client->requestAsync($method_type, '', [
            'auth' => [
                $this->auth_username,
                $this->auth_password
            ],
            'query' => $query_string
        ])->then(
            function (GuzzleHttp\Psr7\Response $res){

                return GuzzleHttp\json_decode(
                    $res->getBody()->getContents()
                );
            },
            function (\Exception $e) {
                throw new DataApiException('Api exception: ' . $e->getMessage(), DataApiException::REMOTE_CLIENT_EXCEPTION);
            }
        );
    }
}