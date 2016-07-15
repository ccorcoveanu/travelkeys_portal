<?php
namespace App\Services\DataApi;
use Exception;

class DataApiException extends Exception
{
    /**
     * Map error codes for this custom exception
     */
    const
        WRONG_PARAMETERS = 402,
        REMOTE_CLIENT_EXCEPTION = 403
    ;
}