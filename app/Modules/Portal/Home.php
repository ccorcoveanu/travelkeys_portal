<?php
namespace App\Modules\Portal;

class Home
{
    public function __construct($sites)
    {
        $this->sites = $sites;
    }

    public function index($request, $response, $args)
    {
        try {
            $time = microtime(true);
            $data = $this->sites->get();
            $data = $this->sites->data($data);
        } catch (Exception $e) {
            echo '<pre>';
            print_r($e);
            echo '</pre>';
        }

        echo '<pre>';
        print_r(microtime(true) - $time);
        echo '</pre>';
    }
}