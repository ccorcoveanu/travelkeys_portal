<?php
// Check protocol by accessed port
$_protocol = isset($_SERVER['SERVER_PORT']) && $_SERVER['SERVER_PORT'] === 443 ? 'https://' : 'http://';
// Server name on vagrant machine is localhost, just use  for local dev
$_server_name = $_SERVER['HTTP_HOST'];



define('BASE_URL', $_protocol . $_server_name);
define('SERVER_NAME', $_server_name);
define('PROTOCOL', $_protocol);
define('CDN', 'http://cdn.villascaribe.com');
define('GOOGLE_API_KEY', getenv('GOOGLE_API_KEY'));

// Check for subdomain
$parts = explode('.', $_server_name);

if ( count($parts) === 3 ) {
    define('SUBDOMAIN', $parts[0]);
    define('MAIN_SITE', $_protocol . $parts[1] . '.' . $parts[2]);
    define('MAIN_SITE_STRIP', $parts[1] . '.' . $parts[2]);
    define('APP_TEMPLATE', 'tksite');
} else {
    define('SUBDOMAIN', '');
    define('APP_TEMPLATE', 'tkcorporate');
}

define('TEMPLATE_PATH', BASE_URL . '/themes/' . APP_TEMPLATE);

// Don't let useless variables float inside global scope
unset($_protocol);
unset($_server_name);
unset($parts);