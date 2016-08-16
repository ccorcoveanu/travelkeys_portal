<?php
namespace App\Services\Feeds;

use App\Services\Feeds;

class Blog extends Feeds
{
    public function __construct()
    {
        parent::__construct('http://experience.travelkeys.com/rss');

    }

    public function latest($limit)
    {
        $this->build();
        $items = array_slice($this->content->item, 0, $limit, true);

        // TODO: Change this idiotic shit after someone adds the image into the rss feed
        // PS: This is how it works now on live, but implemented in a more idiotic way
        if ( isset($items[0]) ) {
            $items[0]->image = 'http://cdn.travelkeys.com/sites/all/themes/travelkeysv5/images/article_1.jpg?obbgnm';
        }
        if ( isset($items[1]) ) {
            $items[1]->image = 'http://cdn.travelkeys.com/sites/all/themes/travelkeysv5/images/article_2.jpg?obbgnm';
        }
        return $items;
    }
}