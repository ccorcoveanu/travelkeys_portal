<?php
// Set application routes

$app->get('/', 'Home:index');
$app->get('/suggest', 'Suggestions:suggest');

$app->get('/debug', 'Dummy:route');

// Villas
$app->get('/villa-listing/specials', 'VillaListing:specials');
$app->get('/villa-listing/favorites', 'VillaListing:favorites');
$app->get('/villa-listing/search', 'VillaListing:search');

$app->get('/villa-listing/{slug}', 'VillaListing:location');

// Static pages
$app->get('/about-us', 'StaticPages:about');
$app->get('/about-members', 'StaticPages:members');
$app->get('/about-careers', 'StaticPages:careers');
$app->get('/contact-us', 'StaticPages:contact');
$app->get('/concierge-service', 'StaticPages:concierge');
$app->get('/thank-you', 'StaticPages:thanks');

// Ajax calls
$app->get('/ajax/filter', 'SearchAjax:filter');

// Form submissions
$app->post('/form/newsletter', 'Forms:newsletter');
$app->post('/form/contact', 'Forms:contact');

// Api
$app->get('/api/v1/cache/clear', 'Cache:clear');
$app->get('/api/v1/cache/reset', 'Cache:reset');
$app->get('/api/v1/cache/populate', 'Cache:populate');