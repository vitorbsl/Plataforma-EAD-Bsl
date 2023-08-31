<?php

$host = "localhost";
$user = "root";
$pass = "";
$bd = "escola_ead";

$mysqli = new mysqli($host, $user, $pass, $bd);

/*check connection */

if ($mysqli->connect_error) {
    echo "Connection failed: ". $mysqli->connect_error;
    exit();
}
