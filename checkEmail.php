<?php
	//connect to db
    //$db = new mysqli('host_name', 'user_name', 'password', 'db_name');
	$db = new mysqli('localhost', 'root', '', 'union');
	if($db->connect_error)
	{
		die ("Could not connect to db: " . $db->connect_error);
	}

	$email = $_POST["Email"];

	//Check user does not already exist
	$query = "Select * from Users where Email='$email'";
    $result = $db->query($query) or die("Invalid insert: " . $db->error);
    $rows = $result->num_rows;
    if($rows != 0) {
    	echo "false";
    }
    else {
    	echo "true";
    }
?>
