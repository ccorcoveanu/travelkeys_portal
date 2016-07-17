<?php
/*$app->add(function ($request, $response, $next) {

    // Check protocol by accessed port
    $_protocol = isset($_SERVER['SERVER_PORT']) && $_SERVER['SERVER_PORT'] === 443 ? 'https://' : 'http://';
    // Server name on vagrant machine is localhost, just use / for local dev
    $_server_name = $_SERVER['SERVER_NAME'] === 'localhost' ? '' : $_SERVER['SERVER_NAME'];

    define('baseUrl', $_protocol . $_server_name);

    $response = $next($request, $response);
    return $response;
});*/