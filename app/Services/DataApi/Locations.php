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
}