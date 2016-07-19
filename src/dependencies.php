<?php
// DIC configuration

$container = $app->getContainer();

// view renderer
$container['view'] = function ($c) {
    $settings = $c->get('settings')['renderer'];
    $view = new \Slim\Views\Smarty($settings['template_path'], [
        'cacheDir' => $settings['template_cache'],
        'compileDir' => $settings['template_compile'],
    ]);

    // Add Slim specific plugins
    $smartyPlugins = new \Slim\Views\SmartyPlugins($c['router'], $c['request']->getUri());

    function isEmpty($param) {
        var_dump($param);die;
        if ( !$param ) return "";
        return $param;

    }

    $view->registerPlugin('modifier', 'is_empty', 'isEmpty');
    //$view->registerPlugin('function', 'base_url', [$smartyPlugins, 'baseUrl']);

    return $view;
};

// monolog
$container['logger'] = function ($c) {
    $settings = $c->get('settings')['logger'];
    $logger = new Monolog\Logger($settings['name']);
    $logger->pushProcessor(new Monolog\Processor\UidProcessor());
    $logger->pushHandler(new Monolog\Handler\StreamHandler($settings['path'], Monolog\Logger::DEBUG));
    return $logger;
};

$container['sites'] = function ($container) {
    return new App\Services\Redis\Sites($container->get('settings')['api_endpoint']);
}; // Register Sites service

$container['locations'] = function ($container) {
    return new App\Services\Redis\Locations($container->get('settings')['api_endpoint']);
}; // Register Locations service


// Route dependencies - all bellow will handle route classes
$container['Dummy'] = function($container) {
    return new \App\Modules\Portal\Dummy($container->get('locations'));
};

$container['Home'] = function($container) {
    return new \App\Modules\Portal\Home($container->get('sites'), $container->get('view'));
};

$container['VillaListing'] = function($container) {
    return new \App\Modules\Portal\VillaListing($container->get('view'));
};

$container['StaticPages'] = function($container) {
    return new \App\Modules\Portal\StaticPages($container->get('view'));
};