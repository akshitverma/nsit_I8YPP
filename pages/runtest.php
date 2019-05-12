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

$list = explode(',', $percent);
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

$dbname = "nsit";
$conn = @mysqli_connect($servername,$username,"",$dbname);
if(!$conn)
{
   die("Connection failed: " . mysqli_connect_error());
}




if($counter < $duration){
$check = rand(1,100);
//$check = 4;
echo $check;
//echo $counter;

if($page_variants == 3){

if($check < $list[1])
{ 
include("dummy1.html");
}
else if (($check > $list[1]) && ($check <$list[2]))
{include ("dummy2.html");
}
else
{include("dummy3.html");
}
}

else if($page_variants == 4){

if($check < 25)
{ include( "dummy1.html");
}
else if (($check > 25) && ($check < 50))
{include ("dummy2.html");
}
else if(($check > 50) && ($check < 75))
{include ("dummy3.html");
}
else
{ include ("dummy4.html");

}
}


else if($page_variants == 2){

if($check < $list[1])
{ include( "dummy1.html");
  $sql="update abtest set hits=hits+1 where variant='dummy1'";
  
if ($conn->query($sql) === TRUE) 
{
   echo 'success';
} 
else 
{
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$sql="update abtest set conversion=((success/hits)*100) where variant = 'dummy1'";
if ($conn->query($sql) === TRUE) 
{
   echo 'success';
} 
else 
{
    echo "Error: " . $sql . "<br>" . $conn->error;
}



}
else
{ include ("dummy2.html");
   $sql="update abtest set hits=hits+1 where variant='dummy2'";
if ($conn->query($sql) === TRUE) 
{
   echo 'success';
} 
else 
{
    echo "Error: " . $sql . "<br>" . $conn->error;
}

}

$sql="update abtest set conversion=((success/hits)*100) where variant = 'dummy2'";
if ($conn->query($sql) === TRUE) 
{
   echo 'success';
} 
else 
{
    echo "Error: " . $sql . "<br>" . $conn->error;
}



}

$counter++ ; 




} //duration check

else
{



}

?>
</p>
</body>
</html>