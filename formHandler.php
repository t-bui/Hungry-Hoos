<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>

<?php
	session_start();

	//connect to db
    //$db = new mysqli('host_name', 'user_name', 'password', 'db_name');
	$db = new mysqli('localhost', 'root', '', 'feedme');
	if($db->connect_error)
	{
		die ("Could not connect to db: " . $db->connect_error);
	}

	$name = $_POST["Name"];
	$pass = $_POST["Pass"];
	$email = $_POST["Email"];


	//Check user does not already exist
	$query = "Select * from users where Email='$email'";
    $result = $db->query($query) or die("Invalid: " . $db->error);
    $rows = $result->num_rows;
    if($rows == 0) {
    	//create row with data
    	$query = "insert into users values ('$name', '$pass', '$email')";
    	$db->query($query) or die("Invalid insert: " . $db->error);

    	
    }
    else {
    	echo "Name exists";
    }
    


    //set session variable
    $_SESSION['good'] = "good";

    //go back
    header("Location: http://localhost:8080/hungryHoos2/browseLogin.html?username=" . $name);
?>
</body>
</html>
