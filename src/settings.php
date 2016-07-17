<?php
return [
    'settings' => [
        'displayErrorDetails' => true, // set to false in production

        // Renderer settings
        'renderer' => [
            'template_path' => __DIR__ . '/../public/themes/' . getenv('APP_TEMPLATE'),
            'template_cache' => __DIR__ . '/../public/themes/' . getenv('APP_TEMPLATE') . '/t_cache',
            'template_compile' => __DIR__ . '/../public/themes/' . getenv('APP_TEMPLATE') . '/t_compile',
        ],

        'api_endpoint' => [
            'url' => getenv('API_ENDPOINT') ? getenv('API_ENDPOINT') : '',
            'username' => getenv('API_ENDPOINT_USER') ? getenv('API_ENDPOINT_USER') : '',
            'password' => getenv('API_ENDPOINT_PASSWORD') ? getenv('API_ENDPOINT_PASSWORD') : '',
        ],

        'cache' => [
            'on' => true
        ],

        // Monolog settings
        'logger' => [
            'name' => 'slim-app',
            'path' => __DIR__ . '/../logs/app.log',
        ],

        'db' => [
            'driver' => 'mysql',
            'host' => 'localhost',
            'database' => '',
            'username' => '',
            'password' => '',
            'charset'   => 'utf8',
            'collation' => 'utf8_unicode_ci',
            'prefix'    => '',
        ]
    ],
];
