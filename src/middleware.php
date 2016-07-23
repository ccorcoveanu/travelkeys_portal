<?php
$app->add(function ($request, $response, $next) use ($app) {

    // TODO: Refactor this. Add menu to routes that need it, don't remove where it is not necessary
    if ( strpos($request->getRequestTarget(), '/api/v') !== false ) {
        return $next($request, $response);
    } // For the api we don't need the menu

    $container  = $app->getContainer();
    $loc        = new App\Services\Redis\Locations($container->get('settings')['api_endpoint']);

    return $next(
        $request->withAttribute('menu', $loc->menu()),
        $response
    );
});