<?php
namespace App\Services\DataApi;

use App\Services\DataApi;

/**
 * Class Locations
 * @package App\Services\DataApi
 */
class Locations extends DataApi
{
    protected
        /**
         * Mapped resource name
         * @var string
         */
        $resource
    ;

    /**
     * Locations constructor.
     * @param string $settings
     */
    public function __construct($settings)
    {
        $this->resource = 'Locations';
        parent::__construct($settings);
    }

    /**
     * Get method for a general resource
     * @param null|int $id
     * @throws DataApiException
     * @return mixed
     */
    public function get($id = null)
    {
        if ( !$id ) {
            return $this->call("{$this->resource}_getAllOptions");
        }

        return $this->call("{$this->resource}_getById", ['id' => $id]);
    }

    /**
     * Get location by subdomain name
     *
     * @param $slug
     * @param $only_id
     * @return \GuzzleHttp\Promise\PromiseInterface
     */
    public function bySlug($slug, $only_id)
    {
        return $this->call(
            "{$this->resource}_getAllOptions", [
                'field' => $only_id ? ['id'] : ['*'],
                'conditions' => [
                    [
                        'field' => 'subdomain',
                        'operator' => '=',
                        'value' => $slug
                    ]
                ]
            ]
        );
    }

    /**
     * Call for menu items. If $only_ids is true, will return only a list of ids.
     * Cool when cache is enabled and we already have a list of all locations.
     *
     * @param bool $only_ids
     * @return \GuzzleHttp\Promise\PromiseInterface
     */
    public function menu($only_ids = false)
    {
        return $this->call(
            "{$this->resource}_getAllOptions", [
                'field' => $only_ids ? ['id'] : ['*'],
                'conditions' => [
                    [
                        'field' => 'active',
                        'operator' => '=',
                        'value' => 1
                    ],
                    [
                        'field' => 'menu_item',
                        'operator' => '=',
                        'value' => 1
                    ],
                ]
            ]
        );
    }

    /**
     * Get a list of suggestions from the api provided a search query
     *
     * @param $search
     * @param bool $only_ids
     * @param int $limit
     * @return \GuzzleHttp\Promise\PromiseInterface
     */
    public function suggest($search, $only_ids = false, $limit = 10)
    {
        return $this->call(
            "{$this->resource}_getAllOptions", [
                'field' => $only_ids ? ['id'] : ['id', 'name'],
                'conditions' => [
                    [
                        'field' => 'active',
                        'operator' => '=',
                        'value' => 1
                    ],
                    [
                        'field' => 'name',
                        'operator' => 'like',
                        'value' => "%$search%"
                    ],
                ],
                //'length' => $limit
            ]
        );
    }

    /**
     * Get featured locations
     *
     * @param bool|false $only_ids
     * @return \GuzzleHttp\Promise\PromiseInterface
     */
    public function featured($only_ids = false)
    {
        return $this->call(
            "{$this->resource}_getAllOptions", [
                'field' => $only_ids ? ['id'] : ['*'],
                'conditions' => [
                    [
                        'field' => 'active',
                        'operator' => '=',
                        'value' => 1
                    ],
                    [
                        'field' => 'featured',
                        'operator' => '=',
                        'value' => 1
                    ],
                ],
                //'length' => $limit
            ]
        );
    }

    public function mapItems()
    {
        return $this->call(
            "{$this->resource}_getMapLocations", []
        );
    }
}