<?php
namespace App\Services\Redis;

use App\Services\CacheClient;
use App\Services\DataApi;

class Properties extends CacheClient
{
    protected
        $resource,
        $keyPrefix
    ;

    public function __construct($settings)
    {
        $this->resource = new DataApi\Properties($settings);
        $this->keyPrefix = 'property:';
        parent::__construct();
    }

    /**
     * Search for villas. Best case scenario we only fetch the id's and get the rest from cache.
     *
     * @param string $term
     * @param string $start
     * @param string $limit
     * @param $filters
     * @return array
     */
    public function search($term = '', $start = '', $limit = '', $filters =[])
    {
        if (!$this->client) {
            // Get full service answer
            $search_items = $this->resource->search($term, $start, $limit, $filters, false)->wait();
            return $search_items->result;
        }

        // Get ids to fetch from cache
        $search_items = $this->resource->search($term, $start, $limit, $filters, true)->wait();
        if ( !$search_items->result || !$search_items->result->result ) return [];

        return $this->batch(array_map(function($item) {
            return $item->id;
        }, $search_items->result->result));
    }

    /**
     * Get one property based on id
     *
     * @param $id
     * @return mixed
     */
    public function byId($id)
    {
        if ( !$this->client ) {
            $result = $this->resource->get([$id])->wait();
            return $result->result;
        } // If we don't have the cache available return from api

        $result = $this->get($this->keyPrefix . $id);
        if ( $result ) return unserialize($result); // Return if match found

        $result = $this->resource->get([$id])->wait();
        $this->client->set($this->keyPrefix . $id, serialize($result->result));
        return $result->result;
    }

    public function bySlug($slug)
    {
        if ( !$this->client ) {
            $result = $this->resource->bySlug($slug)->wait();
            if ( is_array($result->result) &&  $result->result ) return $result->result[0];
            return null; // Empty response
        } // If we don't have the cache available return from api

        // TODO: Finish this - as I don't need it yet
    }

    /**
     * Get batch of properties based on id
     *
     * @param array $ids
     * @return array
     */
    public function batch(array $ids)
    {
        if ( !$this->client ) {
            $result = $this->resource->get($ids)->wait();
            return $result->result->result;
        } // If we don't have the cache available return from api

        $result = $this->mget(array_map(function($item) {
            return $this->keyPrefix . $item;
        }, $ids));


        if ( $result ) return array_map(function($item) {
            return unserialize($item);
        }, $result); // Return if match found

        $result = $this->resource->get($ids)->wait();

        $this->client->pipeline(function ($pipe) use ($result) {
            foreach ( $result->result->result as $k => $v ) {
                $pipe->set($this->keyPrefix . $v->id, serialize($v));
            }
        }); // Cache batch if nothing was found

        return $result->result->result;
    }

    /**
     * Get first 6 properties for a location. This should maybe
     * change but there is no featured flag on properties.
     * TODO: Change this after feedback is received
     *
     * @param $location_id
     * @return array
     */
    public function featured($location_id)
    {
        return $this->search('', 0, 6, ['location_id' => $location_id]);
    }

    /**
     * Get special properties for a location. This should
     * change but there is no special flag on properties.
     * TODO: Change this after api implementation
     *
     * @param $location_id
     * @param  $offset
     * @param $limit
     *
     * @return array
     */
    public function specials($location_id, $offset = '', $limit = '')
    {
        return $this->search('', $offset, $limit, ['location_id' => $location_id]);
    }

    // We add different strategy to cache properties since they are a lot
    // And we also need to filter, take ranges, etc
    public function cacheAll()
    {
        $data = $this->resource->get()->wait();

        $this->client->pipeline(function ($pipe) use ($data) {
            foreach ( $data->result->result as $k => $v ) {
                $pipe->set($this->keyPrefix . $v->id, serialize($v));
            }
        });

        return;
    }
}