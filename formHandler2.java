package examples.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.text.SimpleDateFormat;  
import java.util.Date;  

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//@WebServlet("/examples.servletFormhandler")
public class servletFormhandler extends HttpServlet 
{	
   // Location of servlet. 
   static String url = "http://labunix03.cs.virginia.edu:8080/up3f/examples.servletFormhandler";   // labunix	
   // static String url = "http://localhost:8080/cs4640s18/examples.servletFormhandler";
   // note: domain="localhost:8080", path="/cs4640s18/", servlet="simpleForm"
   
   // note: this servletFormHandler servlet is in examples.servlet package
   // to deploy, the servlet .class file must be put in examples/servlet/ directories 
   // (labunix03) 
   //    put servletFormhandler.class in /opt/tomcat/webapps/your-username/WEB-INF/classes/examples/servlet/ 
   // (local) 
   //    put servletFormhandler.class in /tomcat/webapps/your-username/WEB-INF/classes/examples/servlet/
   // if you create a servlet and have different file structure, remember to update the paths
	   
   // to access the servlet
   // (local) 
   //    http://localhost:8080/cs4640s18/examples.servletFormhandler
   // (labunix03) 
   //    http://labunix03:8080/up3f/examples.servletFormhandler  
	
   // Important note: labunix does not support servlet annotation and thus using @WebServlet does not work
   // You need to manually do servlet mapping using web.xml file
   
   String msg = "";
   
   public void doGet(HttpServletRequest request, HttpServletResponse response) 
               throws ServletException, IOException 
   {
      response.setContentType("text/html");
      PrintWriter out = response.getWriter();
      
      out.println("<html>");
      out.println("<head>"); 
      out.println("<title>Servlet example</title>");
      out.println("<link rel=stylesheet href='styles/example-style.css' type='text/css'>");
      out.println("</head>");  
      out.println("<body>");
      out.println("  <div>");
      out.println("    <h1>Servlet example</h1>");
    		    	      
      if (msg.length() > 0)
          out.println("<br/>" + "<span class='msg'>" + msg + "</span> <br/><br/>");           
	    	             
      out.println("<form action='" + url + "' method='post' >");
      out.println("      <label>Name: </label>");
      out.println("      <input type='text' id='user' name='username' autofocus /> <br/>");        
      out.println("      <label>Email: </label>");
      out.println("      <input type='text' id='email' name='emailaddr'  /> <br/>");
      out.println("      <span id='email-msg' class='msg'></span>");
      out.println("      <label>Comment: </label>");
      out.println("      <textarea rows='5' cols='40' id='comment' name='comment'></textarea> <br/>");
      out.println("      <span id='comment-msg' class='msg'></span>");
      out.println("      <input type='submit' value='Submit comment' />");
      out.println("    </form>");
      out.println("  </div>");
      out.println("</body>");
      out.println("</html>");
      
      out.close();
      msg = "";
   }
   

   public void doPost(HttpServletRequest request, HttpServletResponse response) 
               throws ServletException, IOException 
   {
      doGet(request, response);

	   
	   
	   
	   
   }

//   
//   private void printHTML(PrintWriter out)
//   {
//      String str_head = 
//         "<html>" +
//         "<head>" + 
//         "  <title>Servlet example</title>" +
//         "  <link rel=stylesheet href='styles/example-style.css' type='text/css'>" +
//         "</head>"; 
//      
//      String str_body = 
//         "<body>" +
//         "  <div>" +
//         "    <h1>Servlet example</h1>";
//	    	      
//         if (msg.length() > 0)
//            str_body = str_body + "<br/>" + "<span class='msg'>" + msg + "</span> <br/><br/>";           
//	    	      
//         str_body += 
//            "    <form action='" + url + "' method='post' onsubmit='return (validateInput())' >" +
//            "      <label>Name: </label>" +
//            "      <input type='text' id='user' name='username' autofocus /> <br/>" +         
//            "      <label>Email: </label>" +
//            "      <input type='text' id='email' name='emailaddr'  /> <br/>" +
//            "      <label>Comment: </label>" +
//            "      <textarea rows='5' cols='40' id='comment' name='comment'></textarea> <br/>" +
//            "      <input type='submit' value='Submit comment' />" +
//            "    </form>" +
//            "  </div>" +
//            "</body>" + 
//            "</html>";     
//         
//      String str_html = str_head + "<br/>" + str_body;
//      out.println(str_html);      
//   }
//   
//   
//   private void printConfirmation(String username, String comment, String email, PrintWriter out)
//   {
//      SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");  
//      Date date = new Date();  
//	   
//      out.println("Thanks for this comment, " + username + "<br/>");
//      out.println("<i>" + comment + "</i> (submitted on " + formatter.format(date) + ") <br/>");
//      out.println("We will reply to " + email  + "<br/>");     
//   }
//
   
}



