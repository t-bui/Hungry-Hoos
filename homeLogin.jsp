
<?php
	session_start();

	if(!isset($_SESSION['good']))
	{
		header("Location: home.jsp");
	}
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<link rel="stylesheet" href="main.css">
<title>Hungry Hoos!</title>
</head>

<body onload="getParam()">

	<header>

	<h1>Hungry Hoos</h1>
	<h2>Free Food For Frugal Friends</h2>
	<%
		String nameString = request.getParameter("username");
	%> <!--
        <ul>
          <li><a onmouseover = "hover(this)" onmouseout = "away(this)" href="homeLogin.jsp?username="+ nameString>Home</a></li>
          <li><a onmouseover = "hover(this)" onmouseout = "away(this)" href="aboutLogin.html?username="+nameString>About Me</a></li>
          <li><a onmouseover = "hover(this)" onmouseout = "away(this)" href="browseLogin.html?username="+nameString>Browse</a></li>
          <li><a onmouseover = "hover(this)" onmouseout = "away(this)" href="http://localhost/Feed-Me/logout.php">Log Out</a></li>
        </ul> -->

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
			location.search.replace(/[?&]+([^=&]+)=([^&]*)/gi,
					function(s, k, v) {
						p[k] = v
					})
			return k ? p[k] : p;
		}
		var name = getSearchParams("username");

		document.getElementById("home").href = "homeLogin.jsp?username=" + name;
		document.getElementById("about").href = "aboutLogin.html?username=" + name;
		document.getElementById("browse").href = "browseLogin.html?username=" + name;
		document.getElementById("savedEvents").href = "http://localhost/Feed-Me/getData.php?username="
			+ name;

		function hover(obj) {

			obj.style.fontWeight = "bold"
		}

		function away(obj) {
			obj.style.fontWeight = "normal"
		}
	</script> </header>

	<div id="image">
		<img
			src="http://ghk.h-cdn.co/assets/17/50/980x490/landscape-1513015699-red-green-grapes.jpg"
			alt="uva">
	</div>

	<br>

	<jsp:useBean id="events" class="mypackage.SaveName" scope="session">
	</jsp:useBean>


	<div id="happening">
		<h2>What's happening now?</h2>
		<p>
			Recently saved event, <font color="blue"><i><jsp:getProperty
						name="events" property="name" /></i></font>

		</p>

	</div>

	<footer> </footer>

</body>


</html>