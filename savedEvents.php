<?php

header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
header('Content-Type: application/json');

session_start();

if(!isset($_SESSION['good']))
{
	header("Location: notallowed.php");
}


$conn = new mysqli('localhost', 'root', '', 'feedme');

$name = htmlspecialchars($_GET["username"]);
$result = $conn->query("SELECT eventName, location, description FROM $name");

$outp = "";
while($rs = $result->fetch_array(MYSQLI_ASSOC)) {
	if ($outp != "") {$outp .= ",";}
	$outp .= '{"eventName":"'  . $rs["eventName"] . '",';
	$outp .= '"location":"'   . $rs["location"]        . '",';
	$outp .= '"description":"'. $rs["description"]     . '"}';
}
$outp ='{"records":['.$outp.']}';
$conn->close();

echo($outp);

header('Location: http://localhost/Feed-Me/savedEvents.html?username=' . $name);
?>