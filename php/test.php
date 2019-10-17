<?php

$array = array();

$array[0] = "Plats 1";
$array[1] = "Plats 2";

echo "<pre>" .print_r($array, 1) . "</pre>";

$array = ["Plats 1", "Plats 2", "Plats 3"];

echo "<pre>" .print_r($array, 1) . "</pre>";

foreach ($array as $key => $value) {
    echo "key: " . $key;
    echo "value: " . $value;
    echo "<br>";
}
?>