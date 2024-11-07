<?php

try {
    $age = -5;
    
    if ($age < 0) {
        throw new Exception("Age cannot be negative!");
    }
    
    echo "Age is: " . $age;
} 
catch (Exception $e) {
    echo "Error: " . $e->getMessage();
}