<?php
namespace models;

class User {
    public function getAllUsers(): array {
        return [
            [
                'id' => 1,
                'name' => 'John Doe'
            ],
            [
                'id' => 2,
                'name' => 'Jane Smith'
            ],
            [
                'id' => 3,
                'name' => 'Bob Johnson'
            ]
        ];
    }
}
?>