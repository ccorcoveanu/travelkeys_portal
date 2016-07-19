<?php
// Set application routes

$app->get('/', 'Home:index');
$app->get('/debug', 'Dummy:route');

// Villas
$app->get('/villa-listing/specials', 'VillaListing:specials');

// Static pages
$app->get('/about-us', 'StaticPages:about');