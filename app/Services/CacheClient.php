<?php
namespace App\Services;

use Predis\Client;

class CacheClient
{
    protected
        /**
         * @var Client
         */
        $client
    ;

    /**
     * Instantiate client
     * Ping and check if cache service is on
     *
     * CacheClient constructor.
     *
     * @var array $settings
     */
    public function __construct($settings = ['on' => true])
    {
        if ( !$settings['on'] ) return;

        $this->client = new Client();
        try {
            $this->client->ping();
        } catch (\Exception $e) {
            $this->client = null;
        }
    }

    /**
     * Set a velue into a cache key. Returns false if
     * the client is not instantiated successfully
     *
     * @param $key
     * @param $value
     * @param null $exp
     * @return bool
     */
    public function set($key, $value, $exp = null)
    {
        if (!$this->client) return false;
        if ( !$exp ) {
            $exp = strtotime('+ 1 day');
        }
        return $this->client->set($key, $value, "ex", $exp);
    }

    /**
     * Get value from cache. Returns false if the client
     * is not instantiated successfully
     *
     * @param $key
     * @return mixed
     */
    public function get($key)
    {
        if ( !$this->client ) return false;
        return $this->client->get($key);
    }

    /**
     * Get multiple values from cache. Returns false
     * if the client is not instatiated successfully
     *
     * @param array $keys
     * @return array|bool
     */
    public function mget(array $keys)
    {
        if ( !$this->client ) return false;
        return $this->client->mget($keys);
    }

    /**
     * Delete a value from cache. Returns false if the client
     * is not instantiated successfully
     *
     * @param $key
     * @return mixed
     */
    public function delete($key)
    {
        if ( !$this->client ) return false;
        return $this->client->del($key);
    }

    public function execute(array $args, &$error = null)
    {
        return $this->client->executeRaw($args, $error);
    }
}