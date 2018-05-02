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
			<li><a onmouseover="hover(this)" onmouseout="away(this)"
				id="home" href="">Home</a></li>
			<li><a onmouseover="hover(this)" onmouseout="away(this)"
				id="about" href="">About Me</a></li>
			<li><a onmouseover="hover(this)" onmouseout="away(this)"
				id="browse" href="">Browse</a></li>
				<li><a onmouseover="hover(this)" onmouseout="away(this)"
				id="savedEvents" href="">Saved Events</a></li>
			<li><a onmouseover="hover(this)" onmouseout="away(this)"
				href="http://localhost/Feed-Me/logout.php">Log Out</a></li>
		</ul>

		<script>
			function getSearchParams(k) {
				var p = {};
				location.search.replace(/[?&]+([^=&]+)=([^&]*)/gi, function(s,
						k, v) {
					p[k] = v
				})
				return k ? p[k] : p;
			}
			var name = getSearchParams("username");
			
			document.getElementById("home").href = "homeLogin.jsp?username="
					+ name;
			document.getElementById("about").href = "aboutLogin.html?username="
					+ name;
			document.getElementById("browse").href = "browseLogin.html?username="
					+ name;
			document.getElementById("savedEvents").href = "http://localhost/Feed-Me/getData.php?username="
				+ name;
			/*
			document.getElementById("e1").href = "e1L.jsp?username=" + "Jake";
			document.getElementById("e2").href = "e2L.jsp?username=" + "Jake";
			document.getElementById("e3").href = "e3L.jsp?username=" + "Jake";
			document.getElementById("e4").href = "e4L.jsp?username=" + "Jake";
			*/

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
      <h2>Bae-gels</h2>
		<p style="text-align;left" >
		<b>Host</b>: Tiffany Bui <br>
		<b>Location</b>: Rice Hall (Room 130) <br>
		<b>Description</b>: Eat free bagels and find a loved one!
	</p> 
    </div>
  
  </div> </center>
  <br />
  <br />
  
  
  
  <form method="post" action="http://localhost/Feed-Me/saveToDB.php">
		<input type=hidden name="user" id="user" > 
		<input type="hidden" name="name" value="Food Bananza"> 
		<input type="hidden"name="location" value="Rice Hall (Room 130)"> 
		<input type="hidden" name="description" value="Celebrate the end of the year with free pizza and froyo!">"
		<input type="submit" id="addEvent2" title="save to your events" class="button" value="+" style="width: 50px; font-size: 30px"></input>


	</form>
	
	<script>
		function getSearchParams(k) {
			var p = {};
			location.search.replace(/[?&]+([^=&]+)=([^&]*)/gi, function(s, k, v) {
			p[k] = v
			})
			return k ? p[k] : p;
		}
		var name = getSearchParams("username");
		document.getElementById("user").value = name;
	</script>  
	
        
      <footer>
      </footer>
        
    </body>


</html>
