<?php
namespace App\Services\Salesforce;
use Exception;

class SalesforceException extends Exception
{
    /**
     * Map error codes for this custom exception
     */
    const
        WRONG_PARAMETERS = 402,
        REMOTE_CLIENT_EXCEPTION = 403,
        UNEXPECTED = 500
    ;
}