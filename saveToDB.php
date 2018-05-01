<?php

session_start();

$db = new mysqli('localhost', 'root', '', 'feedme');
if($db->connect_error)
{
	die ("Could not connect to db: " . $db->connect_error);
}

//$userName = $_POST["userName"]
$eventName = $_POST["name"];
$location = $_POST["location"];
$description = $_POST["description"];
$user = $_POST["user"];

//echo $eventName;

echo $user;


$query = "SELECT * FROM `" .$user. "` WHERE `eventName` ='$eventName' ";
//$query = "Select * from" . $user . " WHERE eventName ='$eventName'";
$result = $db->query($query) or die("Invalid: " . $db->error);
$rows = $result->num_rows;
if($rows == 0) {
	//echo $eventName;
	//echo $location;
	//echo $description;
	$insertQuery = "INSERT into " . $user . "(eventName, location, description)
	VALUES ('$eventName', '$location','$description')";
	$db->query($insertQuery) or die ("Invalid: " . $db->error);
} else {
	echo "already exists";
}

header('Location: http://localhost:8080/hungryHoos2/homeLogin.jsp?username='.$name_string);
?>