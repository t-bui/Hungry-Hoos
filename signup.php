<!DOCTYPE html>
<html>
    
    <head>
        <link rel="stylesheet" href="main.css">
        <title>Hungry Hoos!</title>
     </head>
  
    <body>
      
      <header>
        
        <h1>Hungry Hoos</h1>
        <h2>Free Food For Frugal Friends</h2>
        
        <ul>
          <li><a onmouseover = "hover(this)" onmouseout = "away(this)" href="home.jsp">Home</a></li>
          <li><a onmouseover = "hover(this)" onmouseout = "away(this)" href="about.html">About Me</a></li>
          <li><a onmouseover = "hover(this)" onmouseout = "away(this)" href="browse.html">Browse</a></li>
          <li><a onmouseover = "hover(this)" onmouseout = "away(this)" href="sign.php">Sign In</a></li>
        </ul>
        
        <script>
          function hover(obj) {
            obj.style.fontWeight = "bold"
          }
          
          function away(obj) {
            obj.style.fontWeight = "normal"
          }
        </script>
        
      </header>
        
      <h3>Sign Up</h3>
        
        
      <footer>
      </footer>
        
    </body>


    <script type="text/javascript">
 /**
      function validateForm() {
        var my_form = document.forms["my_form"];

        //check Name is not empty
        var x = my_form["Name"].value;
        if(x == "") {
          alert("Name field must be filled out!");
          return false;
        }

        //Check email is not empty, contains @ and .edu
        x = my_form["Email"].value
        if(x == "") {
          alert("Email field must be filled out!");
          return false;
        }
        if(!validateEmail(x)) {
          alert("Email must be a valid .edu address!");
        }
    
      }
**/

      function emptyAlert() {
      	alert("At least one field was empty. Please fill out all fields!");
      } 

      function formatAlert() {
      	alert("Please use a valid email address!");
      } 

      function bothAlert() {
      	alert("Please fill out all fields and use a valid email address!");
      } 	
  
/**
      function validateEmail(email) {
        //checks email is of the form:
        //[chars]@[chars].edu
        //from http://stackoverflow.com/questions/26702338/setting-a-form-to-only-allow-edu-email-addresses
       // <!––action="formHandler.php"method="post"––>  goes below in form div

	var x = my_form["Email"].value;	
	
        var regex = /^([\w-]+(?:\.[\w-]+)*)@(virginia+\.)+edu/i;
        return regex.test(x);
      }

**/

    </script>
	
    <div id = "main" class="form" style="display:flex;justify-content:center;align-items:center;">
      <form id = "my_form" action = "<?php $_SERVER['PHP_SELF'] ?>" method = "post">
        Name:
        <br />
        <input type="text" name="Name" class = "inputform" />
        <br />
        <br />
        Email:
        <br />
        <input type="text" name="Email" class = "inputform" />
        <br />
        <br />
        Password:
        <br />
        <input type = "Password" name="pass" class = "inputform" />
        <br />
        <br />
        <input type="submit" value="Submit" />
      </form>
    </div>

    <?php


	function sendMessage($e, $eF) {

	  if ($e && !$eF) {
	    echo '<script>bothAlert()</script>'; 	
	  } 
	  else if (!$eF) {
	    echo '<script>formatAlert()</script>'; 	
	  }
          else if ($e) {
	    echo '<script>emptyAlert()</script>'; 	
	  } 
	  else;


	}

	
	if ($_SERVER['REQUEST_METHOD'] == 'POST') {
 	
	
	
	  if (empty($_POST['Name'])) 
 	    $nEmpty = 1;  
	  if (empty($_POST['Email'])) 
	    $eEmpty = 1;
 	  if (empty($_POST['pass'])) 
	    $pEmpty = 1;

	  if ($nEmpty != NULL || $eEmpty != NULL || $pEmpty != NULL)
	    $empty = true;
 	  
        
	  $e = $_POST['Email'];
          $emailFormat = filter_var($e, FILTER_VALIDATE_EMAIL);
	  
	  sendMessage($empty, $emailFormat);
          

	}

	

	?>

</html>
