<?php
$person = [
    "name" => "John",
    "age" => 25,
    "city" => "Toronto"
];

foreach($person as $key => $value) {
    echo "The $key is $value \n";
}

function calculateAge(string $birthYear, int $currentYear = 2024): int {
    return $currentYear - (int)$birthYear;
}

$personAge = calculateAge("1990"); 
echo "\nPerson's age using default year: $personAge\n";

$personAge2 = calculateAge("1990", 2024);
echo "Person's age using specified year: $personAge2\n";
?>
?>