<?php
// Set application routes

$app->get('/', 'Home:index');
$app->get('/suggest', 'Suggestions:suggest');

$app->get('/debug', 'Dummy:route');

// Villas
$app->get('/villa-listing/specials', 'VillaListing:specials');
$app->get('/villa-listing/favorites', 'VillaListing:favorites');

// Static pages
$app->get('/about-us', 'StaticPages:about');
$app->get('/contact-us', 'StaticPages:contact');

// Ajax calls
$app->get('/ajax', 'SearchAjax:search');

// Api
$app->get('/api/v1/cache/clear', 'Cache:clear');
$app->get('/api/v1/cache/reset', 'Cache:reset');
$app->get('/api/v1/cache/populate', 'Cache:populate');