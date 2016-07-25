<?php
namespace App\Services\Redis;

use App\Services;
use App\Services\DataApi;
use App\Services\Redis\Helpers\ResourceParser;

class Sites extends Services\CacheClient
{
    use ResourceParser;

    protected
        $resource
    ;

    public function __construct($settings)
    {
        $this->resource = new DataApi\Sites($settings);
        parent::__construct();
    }

    public function get($id = null)
    {
        $_cache_key = md5(__METHOD__);

        if ( $data = parent::get($_cache_key) ) {
            $data = unserialize($data);

            return $this->parse($data, $id);
        }

        $this->resource->get()->wait();
        parent::set($_cache_key, serialize($data->result));

        if ( $id ) {
            return $this->parse($data->result);
        }

        return $data->result;
    }
}