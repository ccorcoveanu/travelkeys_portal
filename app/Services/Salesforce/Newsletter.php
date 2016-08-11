<?php
namespace App\Services\Salesforce;

use App\Services\Salesforce;

class Newsletter extends Salesforce
{
    public function __construct()
    {
        parent::__construct();
    }

    public function subscribe($email, $extra_params = [])
    {
        return $this->call(array_merge([
            'client_request' => 'Newsletter Signup',
            'first_name' => $email,
            'last_name' => $email,
            'company' => $email . ' ' . $email,
            'email' => $email
        ], $extra_params), 'POST');
    }

    public function contact($params)
    {
        if ( !(isset($params['subject']) && isset($params['what'])) ) {
            if ( !isset($params['subject']) && isset($params['what'])) {
                $params['subject'] = $params['what'];
            }
            if ( isset($params['subject']) && !isset($params['what'])) {
                $params['what'] = $params['subject'];
            }
        }

        return $this->call([
            'client_request' => 'Contact Form',
            'first_name' => $params['first_name'],
            'last_name' => $params['last_name'],
            'phone' => $params['phone'],
            'email' => $params['email'],
            'message' => (isset($params['what']) ? "Subject: {$params['what']}" : "")
                . "\nCategory: " . (isset($params['subject']) ? $params['subject'] : "")
                . "\nMessage: {$params['message']}",

            'division' => 'www.travelskey.com',
            'subject' => $params['subject'],
            'name' => $params['first_name'] . ' ' . $params['last_name'],
            'description' => (isset($params['what']) ? "Subject: {$params['what']}" : "")
                . "\nCategory: " . (isset($params['subject']) ? $params['subject'] : "")
                . "\nMessage: {$params['message']}",
            'company' => $params['first_name'] . ' ' . $params['last_name'],
            //'location' => SUBDOMAIN ? ucfirst(SUBDOMAIN) : null
        ]);
    }
}