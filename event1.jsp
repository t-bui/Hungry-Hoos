<!DOCTYPE html>
<html>
    
    <head>
        <link rel="stylesheet" href="main.css">
        <title>Hungry Hoos!</title>
     </head>
  
    <body>
      
      <header>
        
        <h1>Hungry Hoos</h1>
        <h2>Free Food For Frugal Friends</h2>am
        
        <ul>
          <li><a onmouseover = "hover(this)" onmouseout = "away(this)" href="home.html">Home</a></li>
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

 <jsp:useBean id="pageCounter" class="visitBean" scope="page" />
<jsp:setProperty name="pageCounter" property="counter" value="0" /> 
 <p>
    This page has been visited (page scope)
    <font color="green"><i>
      <jsp:getProperty name="pageCounter" property="counter" />
    </i></font>
    times   
  </p>	
        
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
	
        
      <footer>
      </footer>
        
    </body>


</html>