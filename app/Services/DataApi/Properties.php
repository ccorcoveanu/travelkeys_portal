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

    public function specials($start = '', $limit = '', $filters = [], $only_ids = false)
    {
        return $this->call("{$this->resource}_getPropertiesFilters}", [
            'conditions' => [
                [
                    'field' => 'bedrooms',
                    'operator' => '=',
                    'value' => 5
                ]
            ],
            'reservations' => '',
            'start' => $start,
            'length' => $limit,
            'order' => '',
            'only_ids' => $only_ids,
        ]);
    }

    public function search($term = '', $start = '', $limit = '', $filters = [], $only_ids = false)
    {
        $conditions = [
            [
                'field' => 'name',
                'operator' => 'like',
                'value' => "%$term%"
            ]
        ];

        if ( isset($filters['amenities']) && is_array($filters['amenities']) ) {
            $conditions[] = [
                'field' => 'amenity_id',
                'operator' => 'in',
                'value' => '(' . implode(',', $filters['amenities']) . ')'
            ];
        }

        if ( isset($filters['slug']) && is_array($filters['slug']) ) {
            $conditions[] = [
                'field' => 'slug',
                'operator' => '=',
                'value' => $filters['slug']
            ];
        }

        return $this->call("{$this->resource}_getPropertiesFilters", [
            'conditions' => $conditions,
            'reservations' => isset($filters['reservations']) ? $filters['reservations'] : '',
            //'bedrooms' => isset($filters['bedrooms']) ? $filters['bedrooms'] : '',
            //'guests' => isset($filters['guests']) ? $filters['guests'] : '',
            'start' => $start,
            'length' => $limit,
            'order' => '',
            'only_ids' => $only_ids
        ]);
    }
}