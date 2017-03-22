
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 * Servlet implementation class FeedBack
 */
@WebServlet("/FeedBack")
public class FeedBack extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	      // Actual logic goes here.
		String firstName = request.getParameter("firstname");
		String lastName = request.getParameter("lastname");
		String telNum = (request.getParameter("areacode") + request.getParameter("telnum"));
		String emailId = request.getParameter("emailid");
		boolean ifContact = request.getParameter("approve") != null;
		String contactType = request.getParameter("contacttype");
		String feedBack = request.getParameter("feedback");
		
	      PrintWriter out = response.getWriter();
	     out.println("<h1>" + telNum + "</h1>");
	     out.println("<h1>" + ifContact + "</h1>");
	     out.println("outside try");
	        
	   // Set response content type
			response.setContentType("text/html");  
			
	     // Database credentials
	        final String USER = "root";
	        final String PASS = "toor";
	        Connection conn = null;
	        Statement stmt = null;
	        
	       try {
	        	final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
	            // Register JDBC driver
	            Class.forName(JDBC_DRIVER);
	            // ********************************************************************
		        // JDBC driver name and database URL
		        
		        final String DB_URL = "jdbc:mysql://localhost:3306/customerData";
		        // ***********************************************************************
		        conn = DriverManager.getConnection(DB_URL,  USER, PASS);
	 
	            stmt = conn.createStatement();
	            //  Execute a query
	           // String sql = "INSERT INTO customerData.feedback"
	             //       + "(firstname, lastname)" + "VALUES('" + firstName + "','" + lastName
	               //     + "')";
	           String sql = "INSERT INTO customerData.feedback" 
	               + "(firstname, lastname, phone, emailId, canContact, contactType, feedbackText)" + "VALUES('" + firstName + "','" + lastName + "','" + telNum + "','" + emailId + "', " + ifContact +",'" + contactType + "','" + feedBack + "')";
	            stmt.executeUpdate(sql);
	            ResultSet rs = stmt.executeQuery(sql);
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	}
}
