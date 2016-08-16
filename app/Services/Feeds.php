<?php
namespace App\Services;

class Feeds
{
    protected
        $xml_url,
        $content
    ;

    public function __construct($url)
    {
        $this->xml_url = $url;
    }

    protected function build()
    {
        $document = json_decode(json_encode(simplexml_load_file($this->xml_url)));
        $this->content = $document->channel;
    }
}