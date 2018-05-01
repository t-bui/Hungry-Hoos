<!DOCTYPE html>
<html>
<?php
	//end session variables
	session_start();
	session_unset($_SESSION['good']);
	session_destroy();
	
	//go back to home
	header("Location: http://localhost:8080/hungryHoos2/home.jsp");
?>
</html>