 <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
	</head>


  
  <hr />

  <jsp:useBean id="events" class="mypackage.SaveName" scope="session"> </jsp:useBean>
  
  <jsp:setProperty name="events" property="name" value='<%= request.getParameter("name") %>' />

    
  <p>  
    Saved event,    
    <font color="blue"><i><jsp:getProperty name="events" property="name"  /></i></font>
    
  </p>
      



 <footer>
 </footer>

</body>
</html>

 