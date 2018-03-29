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

	$sql = "INSERT INTO Users2 (Name, Password, Email)
	VALUES ('John', 'Doe', 'john@example.com')";

	if ($db->query($sql) === TRUE) {
    echo "New record created successfully";
	} else {
    	echo "Error: " . $sql . "<br>" . $db->error;
	}


 	$name = (isset($_GET["Name"]) ? $_GET["Name"] : '');
	$pass = (isset($_GET["Pass"]) ? $_GET["Pass"] : '');
	$email = (isset($_GET["Email"]) ? $_GET["Email"] : '');



	//Check user does not already exist
	$query = "Select * from Users2 where Email='$email'";
    $result = $db->query($query) or die("Invalid: " . $db->error);
    $rows = $result->num_rows;
    if($rows == 0) {
    	//create row with data
    	//$query = "insert into Users2 values ('$name', '$pass', '$email')";
    	$sql = "INSERT INTO Users2 (Name, Password, Email)
		VALUES ('$name', '$pass', '$email')";

		if ($db->query($sql) === TRUE) {
    		echo "New record created successfully";
		} else {
    		echo "Error: " . $sql . "<br>" . $db->error;
		}

    	//$db->query($sql) or die("Invalid insert: " . $db->error);

    	
    }
    else {
    	echo "Name exists";
    }

    //set session variable
    $_SESSION['good'] = "good";

    //go back
    //header("Location: browse.html");
?>
</body>
</html>

