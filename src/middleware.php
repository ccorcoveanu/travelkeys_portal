<?php
$app->add(function ($request, $response, $next) use ($app) {

    if ( strpos($request->getRequestTarget(), '/api/v') !== false ) {
        return $next($request, $response);
    } // For the api and ajax calls we don't need the menu

    $container              = $app->getContainer();
    $cookies                = $request->getCookieParams();
    $cookies['favorites']   = isset($cookies['favorites']) ? $cookies['favorites'] : '[]';
    $loc                    = new App\Services\Redis\Locations($container->get('settings')['api_endpoint']);
    $blog                   = new App\Services\Redis\BlogFeed($container->get('settings')['cache']);
    $feed                   = $blog->latest();

    try {
        $favorites = @\GuzzleHttp\json_decode($cookies['favorites']); // Don't show warning, let the exception do it's job
    } catch (\Exception $e) {
        $favorites = [];
    } // If someone messes with the cookie :)


    $nextR                  = $request->withAttribute('menu', $loc->menu());
    $nextR                  = $nextR->withAttribute('favorites', $favorites);
    $nextR                  = $nextR->withAttribute('feeds', $feed);

    return $next($nextR, $response);
});