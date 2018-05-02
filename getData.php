<?php
$servername = "localhost";
$username = "root";
$password = "";
$database="feedme";

//$name = htmlspecialchars($_GET["username"]);

try {
    $conn = new PDO("mysql:host=$servername;dbname=$database", $username, $password);
    // set the PDO error mode to exception
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    
    $stmt=$conn->prepare("SELECT eventName,location from jake");
   
    $stmt->execute();
    $d=array();
   foreach ($stmt->fetchAll() as $row) {
     
    $d['players'][] = array('eventName' =>$row['eventName'], 'location' =>$row['location']);
}

   echo  json_encode($d);
    }
catch(PDOException $e)
    {
    echo "Connection failed: " . $e->getMessage();
    }

//sleep(5);
header( "refresh:0;url =http://localhost/Feed-Me/savedEvents.html?username=jake");
//exit;
//header('Location: http://localhost/Feed-Me/savedEvents.html?username='.$name);
?>