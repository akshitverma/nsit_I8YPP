<html>
<body>
<p>
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
$url = $_POST['url'];
$duration = $_POST['duration'];
$page_variants = $_POST['variant_no'];
$variant_url = $_POST['variant_url'];
$percent = $_POST['percent'];
$counter = 0;
$sql="insert into testcases (url, duration, page_variants, percentage) values('$url', $duration, $page_variants, '$percent')";
if ($conn->query($sql) === TRUE) 
{
   echo "A/B Testing Started!";
} 
else 
{
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
?>
</body>
</html>