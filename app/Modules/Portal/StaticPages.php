<?php
namespace App\Modules\Portal;

use App\Services\Redis\Locations;
class StaticPages
{
    protected
        /**
         * @var Locations
         */
        $location,
        /**
         * @var Properties
         */
        $properties,
        /**
         * @var Smarty
         */
        $view
    ;

    public function __construct($view, Locations $location)
    {
        $this->view = $view;
        $this->location = $location;
    }

    public function about($request, $response, $args)
    {
        $location = null;
        if ( SUBDOMAIN ) $location = $this->location->bySlug(SUBDOMAIN);
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
            ],
            'menu' => $request->getAttribute('menu'),
            'location' => $location,
            'favorites' => $request->getAttribute('favorites'),
        ]);
    }

    public function contact($request, $response, $args)
    {
        $location = null;
        if ( SUBDOMAIN ) $location = $this->location->bySlug(SUBDOMAIN);
        return $this->view->render($response, 'contact.tpl', [
            'page' => [
                'title' => 'Contact Us',
                'body_classes' => 'contact',
                'hero_sec_title' => 'We would<i class="icon icon__heart-big"></i><br/>to hear from you',
                'hero_sec_description' => 'We are always interested in meeting new people, listening to new ideas and suggestions, so go ahead and:',
                'hero_sec_link' => '<a class="button button--ghost -anchor-hero -has-arrow-down" href="#contact-form" title="Drop us a line">Drop us a line</a>',

            ],
            'menu' => $request->getAttribute('menu'),
            'favorites' => $request->getAttribute('favorites'),
            'location' => $location
        ]);
    }

    public function concierge($request, $response, $args)
    {
        $location = null;
        if ( SUBDOMAIN ) $location = $this->location->bySlug(SUBDOMAIN);
        return $this->view->render($response, 'concierge.tpl', [
            'page' => [
                'title' => 'Concierge Service',
                'body_classes' => 'concierge',
                'hero_sec_title' => 'Our concierge services',
                'hero_sec_image' => 'assets/images/svg/no-sprite/quality-badge-white.svg',
                'hero_sec_description' => 'Every guest is provided a dedicated, complimentary concierge to<br/>ensure a memorable vacation experience.',

            ],
            'menu' => $request->getAttribute('menu'),
            'favorites' => $request->getAttribute('favorites'),
            'location' => $location
        ]);
    }
}