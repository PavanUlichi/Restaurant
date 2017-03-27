
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
	private static final String QUERY1 = "select * from signup where emailid=?";
	private static final String HOME_PAGE = "/RestaurantSamplePhaseOne/index.jsp";
	private static final String SIGNUP_PAGE = "/RestaurantSamplePhaseOne/sign.jsp";
	String userName, emailId, passWord;

    final String USER = "root";
    final String PASS = "toor";
    String strErrMsg = "";
   	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		userName = request.getParameter("username");
		emailId = request.getParameter("emailid");
		passWord = request.getParameter("password");
		 // Database credentials
        Connection conn = null;
        Statement stmt = null;
        ResultSet rs = null;
        
        HttpSession session = request.getSession();
        boolean isValidLogon = false;
        try {
          isValidLogon = authenticateSignup(userName, emailId);
          if(isValidLogon) {
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
                  rs = stmt.executeQuery(sql);
              } catch (Exception e) {
                  e.printStackTrace();
              }
            response.sendRedirect(HOME_PAGE);
            session.setAttribute("emailid", emailId);
          } else {
             strErrMsg = "Email Id already registered. Please login.";
             request.setAttribute("errorMsg", strErrMsg);
             RequestDispatcher rd= request.getRequestDispatcher("signUpLogIn.jsp");
             rd.forward(request, response);
          }
        } catch(Exception e) {
          strErrMsg = "Unable to validate user / password in database";
          request.setAttribute("errorMsg", strErrMsg);
          RequestDispatcher rd= request.getRequestDispatcher("signUpLogIn.jsp");
          rd.forward(request, response);
        }
	}
   	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	
	
	private boolean authenticateSignup(String uname, String email) throws Exception{
		 boolean isValid = true;
		   Connection conn = null;
		   try {
		     conn = getConnection();
		     java.sql.PreparedStatement prepStmt = conn.prepareStatement(QUERY1);
		     prepStmt.setString(1, email);
		     ResultSet rs = prepStmt.executeQuery();
		     if(rs.next()) {
		       System.out.println("User already present");
		       isValid = false; 
		     }
		  } catch(Exception e) {
		    System.out.println("validateLogon: Error while validating password: "+e.getMessage());
		    throw e;
		  }
		  return isValid;
	}

	
	
	private Connection getConnection() throws Exception {
		   Connection conn = null;
		   try {
		     String url = "jdbc:mysql://localhost:3306/customerData";
		     Class.forName("com.mysql.jdbc.Driver");
		     conn = DriverManager.getConnection(url, USER, PASS);
		   } catch (SQLException sqle) {
		      System.out.println("SQLException: Unable to open connection to db: "+sqle.getMessage());
		      throw sqle;
		   } catch(Exception e) {
		      System.out.println("Exception: Unable to open connection to db: "+e.getMessage());
		      throw e;
		   }
		   return conn;
		}
	
	

}
