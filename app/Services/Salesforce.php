<?php
namespace App\Services;

use GuzzleHttp;
use App\Services\Salesforce\SalesforceException;

class Salesforce
{
    protected
        /**
         * Web client
         * @var GuzzleHttp\Client
         */
        $web_client,
        /**
         * Mapped resource name
         * @var string
         */
        $resource,
        /**
         * Data api credentials
         * @var string
         */
        $auth_username,
        $auth_password
    ;

    public function __construct($settings)
    {
        $this->web_client = new GuzzleHttp\Client([
            'base_uri' => $settings['url']
        ]);
    }
}