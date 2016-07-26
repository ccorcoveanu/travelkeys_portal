<?php
// Set application routes

$app->get('/', 'Home:index');
$app->get('/suggest', 'Suggestions:suggest');

$app->get('/debug', 'Dummy:route');

// Villas
$app->get('/villa-listing/specials', 'VillaListing:specials');
$app->get('/villa-listing/favorites', 'VillaListing:favorites');
$app->get('/villa-listing/search', 'VillaListing:search');

// Static pages
$app->get('/about-us', 'StaticPages:about');
$app->get('/contact-us', 'StaticPages:contact');
$app->get('/concierge-service', 'StaticPages:concierge');

// Ajax calls
$app->get('/ajax/filter', 'SearchAjax:filter');

// Api
$app->get('/api/v1/cache/clear', 'Cache:clear');
$app->get('/api/v1/cache/reset', 'Cache:reset');
$app->get('/api/v1/cache/populate', 'Cache:populate');