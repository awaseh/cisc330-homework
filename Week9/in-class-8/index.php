<?php
require 'models/User.php';
require 'controllers/UserController.php';

use controllers\UserController;

$userController = new UserController();
$userController->index();
?>