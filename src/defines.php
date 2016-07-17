<?php
// Check protocol by accessed port
$_protocol = isset($_SERVER['SERVER_PORT']) && $_SERVER['SERVER_PORT'] === 443 ? 'https://' : 'http://';
// Server name on vagrant machine is localhost, just use  for local dev
$_server_name = $_SERVER['SERVER_NAME'] === 'localhost' ? $_SERVER['SERVER_ADDR'] : $_SERVER['SERVER_NAME'];

define('BASE_URL', $_protocol . $_server_name);
define('TEMPLATE_PATH', BASE_URL . '/themes/' . getenv('APP_TEMPLATE'));