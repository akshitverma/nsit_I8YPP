<?php
session_start();
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "nsit";
//$select_db = mysql_select_db('nsit');

// Create connection
$conn = @mysqli_connect($servername, $username, "", $dbname);
// Check connection
if (!$conn) 
{
    die("Connection failed: " . mysqli_connect_error());
} 
$sqlq="Select variant, conversion from abtest where max(conversion)";
if ($conn->query($sqlq) === TRUE) 
{
   echo 'A/B Test completed !';
   
} 
else 
{
    echo "Error: " . $sql . "<br>" . $conn->error;
}


?>