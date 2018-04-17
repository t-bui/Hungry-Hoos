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
          <li><a onmouseover = "hover(this)" onmouseout = "away(this)" href="sign.html">Sign In</a></li>
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
      <h2>Food Bananza</h2>
		<p style="text-align;left" >
		<b>Host</b>: Tiffany Bui <br>
		<b>Location</b>: Rice Hall (Room 130) <br>
		<b>Description</b>: Celebrate the end of the year with free pizza and froyo!
	</p> 
    </div>
  
  </div> </center>
  <br />
  <br />
  
  
  
  <form method="post" action="nameSession.jsp">
  	<input type ="hidden" name="name" value="food bonanza">
  	<input type="submit" id="addEvent" title="save to your events" class ="button" value ="+" style="width:50px;font-size:30px"></input>

  	
  </form>
  
	
        
      <footer>
      </footer>
        
    </body>


</html>
