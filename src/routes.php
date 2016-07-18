<?php
// Set application routes

$app->get('/', 'Home:index');

// Villas
$app->get('/villa-listing/specials', 'VillaListing:specials');

// Static pages
$app->get('/about-us', 'StaticPages:about');