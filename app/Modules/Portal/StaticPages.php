<?php
namespace App\Modules\Portal;

class StaticPages
{
    public function __construct($view)
    {
        $this->view = $view;
    }

    public function about($request, $response, $args)
    {
        return $this->view->render($response, 'about.tpl', [
            'page' => [
                'title' => 'About Us',
                'body_classes' => 'about about-info',
                'hero_sec_title' => 'We are devoted to vacations',
                'hero_sec_description' => 'And we have been doing so for the last 25 years.',
                'villas_number' => '5,000+',
                'villas_text' => 'Luxury<br/>Villas',
                'destinations_number' => '75+',
                'destinations_text' => 'Fabulous<br/>Destinations',
                'years_number' => '25',
                'years_text' => 'Years of Creating<br/>Experiences',
            ]
        ]);
    }
}