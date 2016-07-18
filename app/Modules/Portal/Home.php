<?php
namespace App\Modules\Portal;

use App\Services;

class Home
{
    public function __construct($sites, $view)
    {
        $this->sites = $sites;
        $this->view = $view;
    }

    public function index($request, $response, $args)
    {
        $data = $this->sites->get();
        echopre($data);die;
        return $this->view->render($response, 'index.tpl', []);
    }
}