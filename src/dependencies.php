<?php
// DIC configuration

$container = $app->getContainer();

$container['notFoundHandler'] = function ($container) {
    return function ($request, $response) use ($container) {

        $location = null;
        if ( SUBDOMAIN ) $location = $container->get('locations')->bySlug(SUBDOMAIN);

        return $container->get('view')
            ->render($response, '404.tpl', [
                'page' => [
                    'title' => 'Error 404',
                    'body_classes' => 'not-found'
                ],
                'hero_message' => 'It looks like you might have taken a wrong turn. Don’t worry , it happens to the best of us too.',
                'code' => '404',
                'error_message' => 'It looks like the page you were looking for has been moved or no longer exists. Here’s what we recommend:',
                'back_link' => isset($_SERVER['HTTP_REFERER']) && $_SERVER['HTTP_REFERER'] ? $_SERVER['HTTP_REFERER'] : BASE_URL,
                'location' => $location
            ]);
    };
};

$container['errorHandler'] = function ($container) {

    $location = null;
    if ( SUBDOMAIN ) $location = $container->get('locations')->bySlug(SUBDOMAIN);

    return function ($request, $response, $e) use ($container, $location) {

        return $container->get('view')
            ->render($response, '404.tpl', [
                'page' => [
                    'title' => 'Error 503',
                    'body_classes' => 'not-found'
                ],
                'hero_message' => 'It looks like something went wrong. It happens to the best of us too. Please try again later.',
                'code' => '503',
                //'error_message' => 'It looks like the page you are looking has some problems. Come back later, but until then:',
                'error_message' => $e->getMessage(),
                'back_link' => isset($_SERVER['HTTP_REFERER']) && $_SERVER['HTTP_REFERER'] ? $_SERVER['HTTP_REFERER'] : BASE_URL,
                'location' => $location
            ]);
    };
};

// view renderer
$container['view'] = function ($container) {
    $settings = $container->get('settings')['renderer'];
    $view = new \Slim\Views\Smarty($settings['template_path'], [
        'cacheDir' => $settings['template_cache'],
        'compileDir' => $settings['template_compile'],
    ]);

    $view->registerPlugin('modifier', 'count', 'count');

    return $view;
};

// monolog
$container['logger'] = function ($container) {
    $settings = $container->get('settings')['logger'];
    $logger = new Monolog\Logger($settings['name']);
    $logger->pushProcessor(new Monolog\Processor\UidProcessor());
    $logger->pushHandler(new Monolog\Handler\StreamHandler($settings['path'], Monolog\Logger::DEBUG));
    return $logger;
};

$container['cache_client'] = function ($container) {
    return new \App\Services\CacheClient($container->get('settings')['cache']);
};

$container['sites'] = function ($container) {
    return new App\Services\Redis\Sites($container->get('settings')['api_endpoint']);
}; // Register Sites service

$container['locations'] = function ($container) {
    return new App\Services\Redis\Locations($container->get('settings')['api_endpoint']);
}; // Register Locations service

$container['properties'] = function ($container) {
    return new App\Services\Redis\Properties($container->get('settings')['api_endpoint']);
}; // Register Properties service

$container['salesforce_newsletter'] = function ($container) {
    return new App\Services\Salesforce\Newsletter();
};

// Route dependencies - all bellow will handle route classes
$container['Dummy'] = function ($container) {
    return new \App\Modules\Portal\Dummy($container->get('locations'), $container->get('properties'), $container->get('salesforce_newsletter'));
};

$container['Home'] = function ($container) {
    return new \App\Modules\Portal\Home(
        $container->get('locations'),
        $container->get('properties'),
        $container->get('view')
    );
};

$container['Suggestions'] = function ($container) {
    return new \App\Modules\Portal\Suggestions($container->get('locations'));
};

$container['VillaListing'] = function ($container) {
    return new \App\Modules\Portal\VillaListing(
        $container->get('locations'),
        $container->get('properties'),
        $container->get('view')
    );
};

$container['StaticPages'] = function ($container) {
    return new \App\Modules\Portal\StaticPages($container->get('view'), $container->get('locations'));
};

// Ajax calls

$container['SearchAjax'] = function ($container) {
    return new \App\Modules\Portal\Ajax\Search($container->get('properties'), $container->get('view'), $container->get('locations'));
};

// Local api routes

$container['Cache'] = function ($container) {
    return new \App\Modules\Api\Cache(
        $container->get('cache_client'),
        $container->get('locations'),
        $container->get('properties')
    );
};

$container['Forms'] = function ($container) {
    return new \App\Modules\Portal\Forms(
        $container->get('salesforce_newsletter')
    );
};