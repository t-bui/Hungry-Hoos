<?php
session_start();

	//connect to db
    //$db = new mysqli('host_name', 'user_name', 'password', 'db_name');
$db = new mysqli('localhost', 'root', '', 'feedme');

if($db->connect_error)
{
  die ("Could not connect to db: " . $db->connect_error);
}

$email = rtrim(strip_tags($_POST["Email"]));
$pass = rtrim(strip_tags($_POST["pass"]));


//check password
$query = "SELECT * FROM Users2 WHERE Email='" . $email . "' AND Password ='" . $pass . "'";
trim($query);
$query = stripslashes($query);

$result = $db->query($query) or die("Invalid: " . $db->error);
$rows = $result->num_rows;
if($rows == 0) 
{
   header("Location: fail1.php");
   echo "false";
}

else 
{
    //set sessions variable
    $name_query = "SELECT Name FROM Users2 WHERE Email ='$email' AND Password ='$pass' ";
    $name_result = $db->query($name_query) or die("Invalid: " . $db->error);

    while ($row = $name_result->fetch_assoc()) {
        $name_string = $row['Name'];
    }
    $sqlCreate = 'CREATE TABLE `' . $name_string . '` (eventName VARCHAR(30),
    location VARCHAR(50), description VARCHAR(300))';

    if ($db->query($sqlCreate) === TRUE) {
        echo "Table MyGuests created successfully";
    } else {
        echo "Error creating table: " . $db->error;
    }
    $_SESSION['good'] = "good";
    $_SESSION['name'] = $name_result;
    echo "true";
}


    //go back
header('Location: http://localhost:8080/hungryHoos2/homeLogin.jsp?username='.$name_string);
?>