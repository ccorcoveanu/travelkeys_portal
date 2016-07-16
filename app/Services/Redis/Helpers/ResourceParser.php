<?php
namespace App\Services\Redis\Helpers;

trait ResourceParser
{
    function parse($data, $id = null)
    {
        if ( !is_array($data) ) {
            return null;
        }

        if ( !$id ) {
            return $data;
        }

        foreach ( $data as $k => $v ) {
            if ( (int)$v->id === (int) $id ) {
                return $data[$k];
            }
        }

        return null;
    }
}