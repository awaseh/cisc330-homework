<?php
require_once __DIR__ . '/controllers/UserController.php';

$controller = new UserController();
echo 'yo';
if ($_SERVER['REQUEST_METHOD'] === 'GET') {
    $uri = parse_url($_SERVER['REQUEST_URI'], PHP_URL_PATH);
    
    if ($uri === '/users') {
        $controller->getUsersJson();
    } else {
        $controller->getUsersPage();
    }
}