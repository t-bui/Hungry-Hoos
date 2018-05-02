<?php

$servername = "localhost";
$username = "root";
$password = "";
$database="feedme";

$name = htmlspecialchars($_GET["username"]);

try {
	$conn = new PDO("mysql:host=$servername;dbname=$database", $username, $password);
    // set the PDO error mode to exception
	$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    //$stmt=$conn->prepare("SELECT name,countr from batsman");
	$stmt=$conn->prepare("SELECT eventName,location,description from jake");



	$stmt->execute();
	$d=array();
	foreach ($stmt->fetchAll() as $row) {

    //$d['players'][] = array('name' =>$row['name'], 'country' =>$row['country']);
		$d['players'][] = array('eventName' =>$row['eventName'], 'location' =>$row['location'], 'description' =>$row['description']);
	}

	echo  json_encode($d);
}
catch(PDOException $e)
{
	echo "Connection failed: " . $e->getMessage();
}

//header('Location: http://localhost:8080/hungryHoos2/savedEvents.html?username='.$name_string);
?>