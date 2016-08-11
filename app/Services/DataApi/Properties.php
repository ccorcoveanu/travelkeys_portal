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

    /**
     * General get method (all or by id)
     *
     * @param int|null $ids
     * @return \GuzzleHttp\Promise\PromiseInterface
     */
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

    public function byId($id)
    {
        return $this->call("{$this->resource}_getById", [
            'id' => $id
        ]);
    }

    /**
     * Get special properties
     *
     * @param int|null $location_id
     * @return \GuzzleHttp\Promise\PromiseInterface
     */
    public function specials($location_id = null)
    {
        $conditions = [];
        if ( $location_id ) {
            $conditions[] = [
                'field' => 'properties.location_id',
                'operator' => '=',
                'value' => $location_id
            ];
        }
        return $this->call("{$this->resource}_getSpecials", $conditions);
    }

    /**
     * Search for properties
     *
     * @param string $term
     * @param string $start
     * @param string $limit
     * @param array $filters
     * @param bool $only_ids
     * @return \GuzzleHttp\Promise\PromiseInterface
     */
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

        if ( isset($filters['slug'] ) ) {
            $conditions[] = [
                'field' => 'slug',
                'operator' => '=',
                'value' => $filters['slug']
            ];
        }

        if ( isset($filters['location_id']) ) {
            $conditions[] = [
                'field' => 'location_id',
                'operator' => '=',
                'value' => $filters['location_id']
            ];
        }

        if ( isset($filters['guests']) ) {
            $conditions[] = [
                'field' => 'guests',
                'operator' => '=',
                'value' => $filters['guests']
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

    /**
     * Get property by slug. To be noted that it uses api's
     * _getPropertiesFilters which returns an array. So
     * the property will be return[0]
     *
     * @param $slug
     * @param bool $only_id
     * @return \GuzzleHttp\Promise\PromiseInterface
     */
    public function bySlug($slug, $only_id = false)
    {
        return $this->call(
            "{$this->resource}_getPropertiesFilters", [
                'conditions' => [
                    [
                        'field' => 'slug',
                        'operator' => '=',
                        'value' => $slug
                    ],
                    'start' => 0,
                    'limit' => 1,
                    'order' => '',
                    'only_ids' => $only_id,
                ]
            ]
        );
    }
}