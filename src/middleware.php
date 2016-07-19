<?php
$app->add(function ($request, $response, $next) use ($app) {
    $container = $app->getContainer();
    $loc = new App\Services\Redis\Locations($container->get('settings')['api_endpoint']);
    $menu = $loc->menu();
    $nextReq = $request->withAttribute('menu', $menu);
    return $next($nextReq, $response);
});