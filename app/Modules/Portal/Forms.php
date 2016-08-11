<?php
namespace App\Modules\Portal;

use Slim\Http\Request;
use Slim\Http\Response;
use App\Services\Salesforce\Newsletter;

class Forms
{
    protected
        /**
         * @var Newsletter
         */
        $newsletter
    ;
    public function __construct(Newsletter $newsletter)
    {
        $this->newsletter = $newsletter;
    }

    public function newsletter(Request $request, Response $response, array $args)
    {
        if ( !$request->getParam('newsletter') ) {
            throw new \Exception('Wrong parameters', 402);
        }
        $this->newsletter->params([
            'retUrl' => BASE_URL,
            'division' => 'www.travelkeys.com'
        ])->subscribe(
            $request->getParam('newsletter')
        );

        return $response->withRedirect('/thank-you');
    }

    public function contact(Request $request, Response $response, array $args)
    {
        $this->checkContactParams($request);
        $this->newsletter->params([
            'retUrl' => BASE_URL,
            'division' => 'www.travelkeys.com'
        ])->contact([
            'first_name' => $request->getParam('first_name'),
            'last_name' => $request->getParam('last_name'),
            'phone' => $request->getParam('phone'),
            'email' => $request->getParam('email'),
            'what' => $request->getParam('what'),
            'message' => $request->getParam('message'),
        ]);

        return $response->withRedirect('/thank-you');
    }

    protected function checkContactParams($request)
    {
        if ( !$request->getParam('first_name') ) {
            throw new \Exception('Wrong parameters', 402);
        }
        if ( !$request->getParam('last_name') ) {
            throw new \Exception('Wrong parameters', 402);
        }
        if ( !$request->getParam('email') ) {
            throw new \Exception('Wrong parameters', 402);
        }
        if ( !$request->getParam('message') ) {
            throw new \Exception('Wrong parameters', 402);
        }
    }
}