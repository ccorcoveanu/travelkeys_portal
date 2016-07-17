<?php
// DIC configuration

$container = $app->getContainer();

// view renderer
$container['view'] = function ($c) {
    $settings = $c->get('settings')['renderer'];
    $view = new \Slim\Views\Smarty($settings['template_path'], [
        'cacheDir' => $settings['template_cache'],
        'compileDir' => $settings['template_compile'],
        //'pluginsDir' => ['path/to/plugins', 'another/path/to/plugins']
    ]);

    // Add Slim specific plugins
    //$smartyPlugins = new \Slim\Views\SmartyPlugins($c['router'], $c['request']->getUri());
    //$view->registerPlugin('function', 'path_for', [$smartyPlugins, 'pathFor']);
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

$container['Home'] = function($container) {
    return new \App\Modules\Portal\Home($container->get('sites'), $container->get('view'));
};