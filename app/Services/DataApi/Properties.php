<?php
namespace App\Services\DataApi;

use App\Services\DataApi;

/**
 * Class Sites
 * @package App\Services\DataApi
 */
class Properties extends DataApi
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
        $this->resource = 'Properties';
        parent::__construct($settings);
    }

    public function get($ids = null)
    {
        if ( is_int($ids) ) $ids = [$ids];

        $conditions = [];
        if ( $ids ) $conditions[] = [
            'field' => 'id',
            'operator' => 'in',
            'value' => '(' . implode(',', $ids) . ')'
        ];
        return $this->call("{$this->resource}_getPropertiesFilters", [
            'conditions' => $conditions
        ]);
    }
}