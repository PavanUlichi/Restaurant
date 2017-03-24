
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
	        
		    if(countRows(conn, "signup", userName)){
            stmt = conn.createStatement();
           String sql = "INSERT INTO customerData.signup" 
               + "(username, emailid, password)" + "VALUES('" + userName + "','" + emailId + "','" + passWord + "')";
            stmt.executeUpdate(sql);
            ResultSet rs = stmt.executeQuery(sql);
		    }
		    else{
		    	 PrintWriter out = response.getWriter();
		     out.println("<h1>" + "already exists" + "</h1>");
		    }
		    	
        } catch (Exception e) {
            e.printStackTrace();
        }
	}
   	
   	
   	public static boolean countRows(Connection conn, String tableName, String username) throws SQLException {
   	    // select the number of rows in the table
   	    Statement stmt = null;
   	    ResultSet rs = null;
   	    int rowCount = -1;
   	    try {
   	      stmt = conn.createStatement();
   	      rs = stmt.executeQuery("SELECT COUNT(*) FROM " + tableName + " WHERE username='" + username +"'");
   	      // get the number of rows from the result set
   	      rs.next();
   	      rowCount = rs.getInt(1);
   	    } finally {
   	      rs.close();
   	      stmt.close();
   	    }
   	    if(rowCount == 0)
   	    	return true;
   	    else
   	    	return false;
   	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
