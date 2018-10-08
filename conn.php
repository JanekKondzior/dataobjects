<?php
$servername = "shoto.ckpy4rd4qu8g.ap-southeast-2.rds.amazonaws.com";
$username = "root";
$password = "xqaVGD9Sz1fsiGbbjkH69ArnO6wJ0dmb";
$db = "shoto";


// Create connection
$conn = new mysqli($servername, $username, $password, $db);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 
echo "Connected successfully";

?>
