 <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
    
      <div id = "image" >
        <img src="http://ghk.h-cdn.co/assets/17/50/980x490/landscape-1513015699-red-green-grapes.jpg" alt = "uva">
      </div>
    
      <br>
      
        <jsp:useBean id="events" class="mypackage.SaveName" scope="session"> </jsp:useBean>
  
  		
      <div id = "happening">
        <h2>
          What's happening now?
        </h2>
     		<p>  
    		Recently saved event,
    		    
    			<font color="blue"><i><jsp:getProperty name="events" property="name"  /></i></font>
    
  			</p>
      
      </div>
              
      <footer>
      </footer>
        
    </body>


</html>