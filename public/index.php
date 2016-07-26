<?php
if (PHP_SAPI == 'cli-server') {
    // To help the built-in PHP dev server, check if the request was actually for
    // something which should probably be served as a static file
    $file = __DIR__ . $_SERVER['REQUEST_URI'];
    if (is_file($file)) {
        return false;
    }
}

require __DIR__ . '/../vendor/autoload.php';
// Start session
session_start();

// set env variables
$dotenv = new Dotenv\Dotenv(__DIR__ . '/../');
$dotenv->load();
$env = getenv('APP_ENV');
if ( $env === 'local' ) {
    require __DIR__ . '/../src/debug.php';
}

// Register constants needed in the application
require __DIR__ . '/../src/defines.php';

// Instantiate the app

$settings = require __DIR__ . '/../src/settings.php';
$env_settings = require __DIR__ . '/../src/settings.' . $env . '.php';
$configuration = Zend\Stdlib\ArrayUtils::merge($settings, $env_settings);

$app = new \Slim\App($configuration);

// Set up dependencies
require __DIR__ . '/../src/dependencies.php';

// Register middleware
require __DIR__ . '/../src/middleware.php';

// Register routes
require __DIR__ . '/../src/routes.php';

// Run app
$app->run();
