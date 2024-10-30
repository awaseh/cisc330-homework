<?php
require_once __DIR__ . '/../models/UserModel.php';

class UserController {
    private $userModel;
    
    public function __construct() {
        $this->userModel = new UserModel();
    }
    
    public function getUsersJson() {
        header('Content-Type: application/json');
        $users = $this->userModel->getAllUsers();
        echo json_encode($users);
    }
    
    public function getUsersPage() {
        include __DIR__ . '/../views/users.html';
    }
}