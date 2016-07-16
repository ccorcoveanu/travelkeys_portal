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
        $_cacheKey = md5(__METHOD__);

        if ( $data = parent::get($_cacheKey) ) {
            $data = unserialize($data);

            return $this->parse($data, $id);
        }

        $data = \GuzzleHttp\json_decode(
            $this->resource->get()->wait()
        );

        parent::set($_cacheKey, serialize($data->result));

        if ( $id ) {
            return $this->parse($data->result);
        }

        return $data->result;
    }
}