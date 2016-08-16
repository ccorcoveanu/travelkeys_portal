<?php
namespace App\Services\DataApi\Helpers;

trait Filters {
    function order($filter) {

        switch ( $filter ) {

            case 'name_asc':
                return [
                    'field' => 'name',
                    'direction' => 'ASC'
                ];

            case 'name_desc':
                return [
                    'field' => 'name',
                    'direction' => 'DESC'
                ];

            case 'price_asc':
                return [
                    'field' => 'min_rate',
                    'direction' => 'ASC'
                ];

            case 'price_desc':
                return [
                    'field' => 'min_rate',
                    'direction' => 'DESC'
                ];

            case 'bedrooms_asc':
                return [
                    'field' => 'bedrooms',
                    'direction' => 'ASC'
                ];

            case 'bedrooms_desc':
                return [
                    'field' => 'bedrooms',
                    'direction' => 'DESC'
                ];

            default: return [
                'field' => 'name',
                'direction' => 'ASC'
            ];
        }
    }
}