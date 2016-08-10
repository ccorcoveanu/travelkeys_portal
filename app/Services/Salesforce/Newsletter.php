<?php
namespace App\Services\Salesforce;

use App\Services\Salesforce;

class Newsletter extends Salesforce
{
    public function __construct()
    {
        parent::__construct();
    }

    public function subscribe($email)
    {
        return $this->call([
            'client_request' => 'Newsletter Signup',
            'first_name' => $email,
            'last_name' => $email,
            'company' => $email . ' ' . $email,
            'email' => $email
        ], 'POST');
    }
}