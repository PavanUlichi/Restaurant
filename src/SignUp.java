
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
 * Servlet implementation class SignUp
 */
@WebServlet("/SignUp")
public class SignUp extends HttpServlet {
	private static final long serialVersionUID = 1L;
   	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userName = request.getParameter("username");
		String emailId = request.getParameter("emailid");
		String passWord = request.getParameter("password");
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
           String sql = "INSERT INTO customerData.signup" 
               + "(username, emailid, password)" + "VALUES('" + userName + "','" + emailId + "','" + passWord + "')";
            stmt.executeUpdate(sql);
            ResultSet rs = stmt.executeQuery(sql);
        } catch (Exception e) {
            e.printStackTrace();
        }
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
