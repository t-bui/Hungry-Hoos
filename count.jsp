<%!

int count = 0;
String visitMessage = "has not been visited.";

void checkVisit() {
	if (count == 0)
		; 
	else
		visitMessage = "has been visited.";
}

void addCount() {
	count++;
}

%>

<% checkVisit(); addCount(); %>
<html>
<head> <link rel="stylesheet" href="main.css"></head>
<h3>This page <%=visitMessage %></h3>
</html>
