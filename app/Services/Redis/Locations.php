<?php
namespace App\Services\Redis;

use App\Services\DataApi;
use App\Services\CacheClient;
use App\Services\Redis\Helpers\ResourceParser;

class Locations extends CacheClient
{
    use ResourceParser;

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
        $_cache_key = md5(__METHOD__);

        if ( $data = parent::get($_cache_key) ) {
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
            parent::set($_cache_key, serialize($data));

            return $id ? $data[$id] : $data;
        }
    }

    public function menu()
    {
        if ( !$this->client ) {
            $data = $this->resource->data(
                $this->resource->menu()
            ); // wait and return if cache not available
            return $this->buildUniqueKeys($data->result);
        }

        $_cache_key = md5(__METHOD__);
        if ( $data = parent::get($_cache_key) ) {
            return unserialize($data);
        }

        $_all_items = $this->get(); // get all from cache
        $_menu_ids = $this->resource->data(
            $this->resource->menu(true)
        ); // Get menu ids - then get the actual items from cached list

        $data = array_map(function ($element) use ($_all_items) {
            return $_all_items[$element->id];
        }, $_menu_ids->result); // Get items that belong in the menu

        $data = $this->_buildCustomMenu($data); // Create parent based tree
        parent::set($_cache_key, serialize($data));

        return $data;
    }



    protected function _buildCustomMenu($menu_items)
    {
        $_headers = [];
        $_header_items = [];
        foreach ( $menu_items as $k => $menu_item ) {
            if ( !$menu_item->parent_id ) {
                $_headers[$menu_item->id] = $menu_item;
            } else {
                $_header_items[$menu_item->parent_id][] = $menu_item;
            }
        }
        foreach ( $_headers as $k => $header ) {
            $_headers[$k]->children = isset($_header_items[$k]) ? $_header_items[$k] : [];
        }
        return $_headers;
    }

}