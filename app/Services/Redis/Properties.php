<?php
namespace App\Services\Redis;

use App\Services\CacheClient;
use App\Services\DataApi;

class Properties extends CacheClient
{
    protected
        $resource
    ;

    public function __construct($settings)
    {
        $this->resource = new DataApi\Properties($settings);
        parent::__construct();
    }

    public function get($ids = null)
    {
        $data = $this->resource->get($ids)->wait();
        return $data->result;
    }
}