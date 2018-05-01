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
          <li><a onmouseover = "hover(this)" onmouseout = "away(this)" href="http://localhost/Feed-Me/sign.php">Sign In</a></li>
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

<%@include file="count.jsp" %>
   
    
 <center> <div id = "main" class="eventSquare" style="display:flex;justify-content:center;align-items:center;">
    <div id = "main" class="eventContent">
      <h2>Froyzen</h2>
		<p style="text-align;left" >
		<b>Host</b>: Erin Alleva <br>
		<b>Location</b>: Gilmer Hall (Lobby) <br>
		<b>Description</b>: Get some delicious frozen yogurt! Toppings included. 
	</p> 
    </div>
  
  </div> </center>
  <br />
  <br />
  
  
  
  <form method="post" action="nameSession.jsp">
  	<input type ="hidden" name="name" value="Froyzen">
  	<input type="submit" id="addEvent" title="save to your events" class ="button" value ="+" style="width:50px;font-size:30px"></input>

  	
  </form>
  
	
        
      <footer>
      </footer>
        
    </body>


</html>
