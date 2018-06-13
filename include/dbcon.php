<?php
// $servername = "sql212.byethost.com";
// $username = "b7_21961034";
// $password = "Geeks2Devs";
// $database = "b7_21961034_kisanyojna";
$servername = "localhost";
$username = "root";
$password = "root";
$database = "kisan";


//creating a new connection object using mysqli
$conn = new mysqli($servername, $username, $password, $database);

//if there is some error connecting to the database
//with die we will stop the further execution by displaying a message causing the error
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
