<?php
namespace App\Services\Redis;

use App\Services\CacheClient;
use App\Services\Feeds\Blog;

class BlogFeed extends CacheClient
{
    protected
        $resource
    ;

    public function __construct(array $settings)
    {
        $this->resource = new Blog();
        parent::__construct($settings);
    }

    public function latest()
    {
        $cacheKey = md5('latest_feeds');

        if ( $data = parent::get($cacheKey) ) {
            return unserialize($data);
        } // Cache match, return

        $items = $this->resource->latest(2);
        parent::set($cacheKey, serialize($items));

        return $items;
    }
}