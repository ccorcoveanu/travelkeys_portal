<?php
namespace App\Services\DataApi;

use App\Services\DataApi;

/**
 * Class Sites
 * @package App\Services\DataApi
 */
class Sites extends DataApi
{
    protected
        /**
         * Mapped resource name
         * @var string
         */
        $resource
    ;

    /**
     * Sites constructor.
     * @param string $settings
     */
    public function __construct($settings)
    {
        $this->resource = 'Sites';
        parent::__construct($settings);
    }


}