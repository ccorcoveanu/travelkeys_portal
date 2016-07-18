<?php
namespace App\Modules\Portal;

class VillaListing
{
    public function __construct($view)
    {
        $this->view = $view;
    }

    public function specials($request, $response, $args)
    {
        return $this->view->render($response, 'search.tpl', [
            'page' => [
                'title' => 'Specials',
                'body_classes' => 'search'
            ]
        ]);
    }
}