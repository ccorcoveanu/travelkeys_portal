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
        $auth_password,
        /**
         * Will hold extra default params that will be merged with the calling method's params
         * @var array
         */
        $params = []
    ;

    public function __construct()
    {
        $this->web_client = 'https://www.salesforce.com/servlet/servlet.WebToLead';
    }

    /**
     * Add parameters that are not related to the calling method's params. Such
     * as campaign, return url, etc
     *
     * @param array $params
     * @return $this
     */
    public function params(array $params)
    {
        $this->params = $params;
        return $this;
    }

    protected function call(array $params)
    {
        $toPost = [];
        $defaults = [
            'encoding' => 'UTF-8',
            'sfga' => '00D700000009Dgt',
            'oid' => '00D700000009Dgt'
        ];

        foreach ( $this->salesForceMapping as $readable => $salesforce_key ) {
            if ( isset($params[$readable]) && $params[$readable] ) {
                $toPost[$salesforce_key] = $params[$readable];
                unset($params[$readable]);
                continue;
            } // If we send a parameter in the readable form add it, else add blank
            $toPost[$salesforce_key] = '';
        }

        $toPost = array_merge($defaults, $params, $this->params, $toPost);


        $defaults = array(
            CURLOPT_POST => 1,
            CURLOPT_URL => $this->web_client,
            CURLOPT_FRESH_CONNECT => 1,
            CURLOPT_RETURNTRANSFER => 1,
            CURLOPT_FORBID_REUSE => 1,
            CURLOPT_TIMEOUT => 4,
            CURLOPT_SSL_VERIFYPEER => false,
            CURLOPT_POSTFIELDS => $this->buildQuery($toPost),
        );

        $ch = curl_init();
        curl_setopt_array($ch, $defaults);
        $result = curl_exec($ch);
        curl_close($ch);

        return $result;
    }

    protected function buildQuery($arguments)
    {
        $query = "";

        foreach($arguments as $arg => $val){
            if(is_array($val)) {
                $val = implode(",", $val);
            }
            $val = urldecode($val); //may already have been encoded earlier so decode first
            $val = str_replace(" ", "+", $val);
            $query .= "&$arg=$val";
        }

        return $query;
    }

    /**
     * Constant-like mappings taken from old website
     * @var array
     */
    protected
        $salesForceMapping = [

            "utm_campaign"          => "00N700000028wd7",
            "utm_term"              => "00N700000028wdc",
            "utm_medium"            => "00N700000028wdC",
            "utm_source"            => "00N700000028wdW",
            "utm_content"           => "00N700000028wdb",
            "villa_name"            => "00N700000028a9D",
            "division"              => "00N70000001o59D",
            "client_request"        => "00N70000001o59l",
            "arrival_time"          => "00N70000001o592",
            "departure_time"        => "00N70000001o597",
            "num_adults"            => "00N70000001o5Bn",
            "num_children"          => "00N70000001o5E5",
            "property_location"     => "00N700000028ZCL",
            "property_website"      => "00N700000028ZCM",
            //"location"              => "00N700000025mKb"
        ];
}