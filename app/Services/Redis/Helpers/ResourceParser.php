<?php
namespace App\Services\Redis\Helpers;

trait ResourceParser
{
    /**
     * Get specific item from array
     * Data must be an array and every item from that arrray
     * must have a property of $id
     *
     * @param $data
     * @param string $id
     * @param mixed $val
     * @return mixed
     */
    function parse($data, $val = null, $id = 'id')
    {
        if ( !is_array($data) ) {
            return null;
        }

        if ( !$id || $val ) {
            return $data;
        } // We want all data back

        foreach ( $data as $k => $v ) {
            if ( (int)$v->{$id} === (int) $val ) {
                return $data[$k];
            }
        }

        return null;
    }

    /**
     * Takes an array of objects and sets each object's unique key as the array key.
     * Useful when you have an array of ids and want to acces the items from the bigger
     * list.
     *
     * @param $data
     * @param string $unique
     * @return array
     */
    function buildUniqueKeys($data, $unique = 'id')
    {
        $_ret = [];
        foreach ( $data as $k => $v ) {
            $_ret[$v->{$unique}] = $v;
        }

        return $_ret;
    }
}