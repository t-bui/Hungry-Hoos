package mypackage;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/EventServlet")
public class EventServlet extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

		// we do not set content type, headers, cookies etc.
		// resp.setContentType("text/html"); // while redirecting as
		// it would most likely result in an IllegalStateException

		// "/" is relative to the context root (your web-app name)
		// RequestDispatcher view =
		// request.getRequestDispatcher("/WebContent/browse.html");
		// don't add your web-app name to the path
		// String eventName = request.getParameter("eventName");
		// view.forward(request, response);
		HttpSession ses = request.getSession(true);

		response.setContentType("text/html");

		PrintWriter out = response.getWriter();

		String title = "Session Information Servlet";

		String heading;

		String creatorName;

		int count = 0;

		if (ses.isNew())

		{
			creatorName = request.getParameter("creatorName");
			heading = "Thanks for creating your first event! " + creatorName;
			ses.setAttribute("creatorName", creatorName);
			count = 1;

		}

		else

		{
			creatorName = (String) ses.getAttribute("creatorName");
			count = (int) ses.getAttribute("accessCount");
			count += 1;
			heading = "Thanks for creating another event(" + count + ")" + creatorName;

		}

		ses.setAttribute("accessCount", count);

		// Set the response message's MIME type
		response.setContentType("text/html; charset=UTF-8");
		// Allocate a output writer to write the response message into the network
		// socket
		// PrintWriter out = response.getWriter();

		// Write the response message, in an HTML page
		try {
			out.println("<!DOCTYPE html>");
			out.println("<html><head>");
			// <link rel="stylesheet" href="main.css">
			// <title>Hungry Hoos!</title>
			// </head>

			out.println("<meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>");
			out.println("<link rel = 'stylesheet' href = 'main.css' >");
			out.println("<title>Hungry Hoos</title></head>");
			out.println("<body><h1>Hungry Hoos</h1> <h2>Free Food For Frugal Friends</h2>");
			out.println("<ul>");
			out.println("<li><a onmouseover = 'hover(this)' onmouseout = 'away(this)' href='home.html'>Home</a></li>");
			out.println(
					"<li><a onmouseover = 'hover(this)' onmouseout = 'away(this)' href='about.html'>About Me</a></li>");
			out.println(
					"<li><a onmouseover = 'hover(this)' onmouseout = 'away(this)' href='browse.html'>Browse</a></li>");
			out.println(
					"<li><a onmouseover = 'hover(this)' onmouseout = 'away(this)' href='sign.html'>Sign In</a></li>");
			out.println("</ul>");

			out.println("<script>");
			out.println("function hover(obj) {");
			out.println("obj.style.fontWeight = 'bold' }");
			out.println("function away(obj) { ");
			out.println("obj.style.fontWeight = 'normal'}");
			out.println("</script>");

			out.println("<h2> " + heading + " </h2>");
			//out.println("<div id = 'main' class = 'centered'>");
			//out.println("<div id = 'main'  style='display:flex;justify-content:center;align-items:center;color:EAF2F8'>");
			//out.println("<div id = 'main' class='eventContent'>");
			// Retrieve the value of the query parameter "username" (from text field)
			out.println("<div id ='main' class = 'response' >");
			String eventName = request.getParameter("eventName");
			// Get null if the parameter is missing from query string.
			// Get empty string or string of white spaces if user did not fill in
			if (eventName == null || (eventName = htmlFilter(eventName.trim())).length() == 0) {
				out.println("<p>Event Name: MISSING</p>");
			} else {
				out.println("<p>Event Name: " + eventName + "</p>");
			}

			// Retrieve the value of the query parameter "password" (from password field)
			String Location = request.getParameter("Location");
			if (Location == null || (Location = htmlFilter(Location.trim())).length() == 0) {
				out.println("<p>Location: MISSING</p>");
			} else {
				out.println("<p>Location: " + Location + "</p>");
			}

			// Retrieve the value of the query parameter "gender" (from radio button)
			String description = request.getParameter("eventDescription");
			// Get null if the parameter is missing from query string.
			if (description == null) {
				out.println("<p>Description: MISSING</p>");
			} else {
				out.println("<p>Description: " + description + "</p>");
			}

			/*
			 * String file = request.getParameter("file-upload"); if (file == null) {
			 * out.println("<p>Photo: Missing</p>"); } else { out.println(""); }
			 */

			out.println("<h2> Want to post it? </h2>");
			out.println("<br />");
			out.println("<br />");
			out.println("<form name='confirm' action= 'browse.html' >");
			out.println("<input type='submit' value='Confirm' />");
			out.println("</form>");
			out.println("</div>");
			//out.println("</div>");
			//out.println("</div>");
			//out.println("</div>");

			out.println("<footer>");
			out.println("</footer>");

		} finally {
			out.close(); // Always close the output writer
		}

	}

	// Redirect POST request to GET request.
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		doGet(request, response);
	}

	// Filter the string for special HTML characters to prevent
	// command injection attack
	private static String htmlFilter(String message) {
		if (message == null)
			return null;
		int len = message.length();
		StringBuffer result = new StringBuffer(len + 20);
		char aChar;

		for (int i = 0; i < len; ++i) {
			aChar = message.charAt(i);
			switch (aChar) {
			case '<':
				result.append("&lt;");
				break;
			case '>':
				result.append("&gt;");
				break;
			case '&':
				result.append("&amp;");
				break;
			case '"':
				result.append("&quot;");
				break;
			default:
				result.append(aChar);
			}
		}
		return (result.toString());
	}

}
