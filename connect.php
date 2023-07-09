<?php
$servername = "localhost";
$username = "root";
$password = "";
$database = "servizio";

$conn = new mysqli($servername,$username,$password,$database);

if($conn->connect_error){
    die("connectiod failed :" . $conn->connect_error);
}
return $conn;
?>