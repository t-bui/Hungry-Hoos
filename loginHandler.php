<?php
    session_start();

	//connect to db
    //$db = new mysqli('host_name', 'user_name', 'password', 'db_name');
	$db = new mysqli('localhost', 'root', '', 'union');
	if($db->connect_error)
	{
		die ("Could not connect to db: " . $db->connect_error);
	}

	$email = rtrim(strip_tags($_POST["Email"]));
	$pass = rtrim(strip_tags($_POST["Pass"]));


    //check password
    $query = "SELECT * FROM Users WHERE Email='" . $email . "' AND Password='" . $pass . "'";
    trim($query);
	$query = stripslashes($query);

    $result = $db->query($query) or die("Invalid: " . $db->error);
    $rows = $result->num_rows;
    if($rows == 0) {
    	//header("Location: fail.php");
    	echo "false";
    }
    else {
        //set sessions variable
        $_SESSION['good'] = "good";

    	echo "true";
    }


    //go back
   // header("Location: index.html");
?>