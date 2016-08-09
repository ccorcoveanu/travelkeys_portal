<?php
namespace App\Services\Redis;

use App\Services\DataApi;
use App\Services\CacheClient;
use App\Services\Redis\Helpers\Featured;
use App\Services\Redis\Helpers\ResourceParser;
use App\Services\Redis\Helpers\Menu;
use App\Services\Redis\Helpers\Suggestions;

class Locations extends CacheClient
{
    use ResourceParser;
    use Menu;
    use Suggestions;
    use Featured;

    protected
        /**
         * @var DataApi\Locations
         */
        $resource
    ;

    /**
     * Locations constructor.
     * @param array $settings
     */
    public function __construct($settings)
    {
        $this->resource = new DataApi\Locations($settings);
        parent::__construct();
    }

    /**
     * Get locations from cache or api and parse result
     * in more accesible format
     *
     * @param int|null $id
     * @return array|mixed
     * @throws DataApi\DataApiException
     */
    public function get($id = null)
    {
        $cacheKey = md5(__METHOD__);

        if ( $data = parent::get($cacheKey) ) {
            $data = unserialize($data);

            return $id ? $data[$id] : $data;
        } // Cache match, return

        // If cache disabled - get actual request
        // If cache is on it is more efficient to get all items
        // once; for next requests just extract the id from the list
        if ( !$this->client ) {
            $data = $this->resource->get($id)->wait();

            return $id ? $data->result : $this->buildUniqueKeys($data->result);
        } else {
            $data = $this->resource->get()->wait();
            $data = $this->buildUniqueKeys($data->result);
            parent::set($cacheKey, serialize($data));

            return $id ? $data[$id] : $data;
        }
    }

    /**
     * Build menu array
     * @return array|mixed
     */
    public function menu()
    {
        if ( !$this->client ) {
            $data = $this->resource->data(
                $this->resource->menu()
            ); // wait and return if cache not available
            return $this->buildUniqueKeys($data->result);
        }

        $cacheKey = md5(__METHOD__);
        if ( $data = parent::get($cacheKey) ) {
            return unserialize($data);
        }

        $allItems = $this->get(); // get all from cache
        $menuIds = $this->resource->data(
            $this->resource->menu(true)
        ); // Get menu ids - then get the actual items from cached list

        $data = array_map(function ($element) use ($allItems) {
            return $allItems[$element->id];
        }, $menuIds->result); // Get items that belong in the menu

        $data = $this->buildCustomMenu($data); // Create parent based tree
        parent::set($cacheKey, serialize($data));

        return $data;
    }

    /**
     * Suggest locations based on a search criteria
     *
     * @param $search
     * @return array
     */
    public function suggest($search)
    {
        if ( !$this->client ) {
            $data = $this->resource->data(
                $this->resource->suggest($search)
            ); // wait and return if cache not available
            return $this->formatSuggestion($data->result);
        }

        $allItems = $this->get();
        $searchIds = $this->resource->data(
            $this->resource->suggest($search, true)
        ); // wait and return if cache not available

        $data = array_map(function ($element) use ($allItems) {
            return $allItems[$element->id];
        }, $searchIds->result); // Get items that belong in the menu

        return $this->formatSuggestion($data);
    }

    /**
     * Get featured locations
     *
     * @return array|mixed
     */
    public function featured()
    {
        if ( !$this->client ) {
            $data = $this->resource->data(
                $this->resource->featured()
            ); // wait and return if cache not available
            return $data->result;
        }

        $cacheKey = md5(__METHOD__);
        if ( $data = parent::get($cacheKey) ) {
            return unserialize($data);
        }

        $allItems = $this->get(); // get all from cache
        $menuIds = $this->resource->data(
            $this->resource->featured(true)
        ); // Get menu ids - then get the actual items from cached list

        $data = array_map(function ($element) use ($allItems) {
            return $allItems[$element->id];
        }, $menuIds->result); // Get items that belong in the featured list

        parent::set($cacheKey, serialize($data));

        return $data;
    }

    /**
     * Get locations to be shown on the map
     *
     * @return array
     */
    public function mapItems()
    {
        $cacheKey = md5(__METHOD__);
        if ( $data = parent::get($cacheKey) ) {
            return unserialize($data);
        }

        $data = $this->resource->data(
            $this->resource->mapItems()
        ); // wait and return if cache not available

        parent::set($cacheKey, serialize($data->result));

        return $data->result;
    }

    /**
     * Get location by subdomain name
     *
     * @param $slug
     * @return mixed|null
     */
    public function bySlug($slug)
    {
        if ( !$this->client ) {
            $location = $this->resource->bySlug($slug)->wait();
            if ( is_array($location->result) &&  $location->result ) return $location->result[0];
            return null; // Empty response
        } // If we don't have the cache available return from api

        $all = $this->get();
        foreach ( $all as $k => $location ) {
            if ( $location->subdomain === $slug ) return $location;
        }

        return null;
    }
}