
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String QUERY1 = "select * from signup where emailid=? and password=?";
	private static final String HOME_PAGE = "/RestaurantSamplePhaseOne/index.jsp";
	private static final String LOGIN_PAGE = "/RestaurantSamplePhaseOne/login.jsp";
	String emailId, passWord;
	final String USER = "root";
	final String PASS = "toor";

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		emailId = request.getParameter("emailid");
		passWord = request.getParameter("password");
		// Database credentials
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		String strErrMsg = null;

		HttpSession session = request.getSession();
		boolean isValidLogon = false;
		try {
			isValidLogon = authenticateLogin(emailId, passWord);
			if (isValidLogon) {
				session.setAttribute("emailid", emailId);
			} else {
				strErrMsg = "Invalid credentials. Please login again.";
			}
		} catch (Exception e) {
			strErrMsg = "Unable to validate user / password in database";
		}

		if (isValidLogon) {
			response.sendRedirect(HOME_PAGE);
		} else {
			session.setAttribute("errorMsg", strErrMsg);
			response.sendRedirect(LOGIN_PAGE);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

	private boolean authenticateLogin(String email, String pass) throws Exception {
		boolean isValid = false;
		Connection conn = null;
		try {
			conn = getConnection();
			java.sql.PreparedStatement prepStmt = conn.prepareStatement(QUERY1);
			prepStmt.setString(1, email);
			prepStmt.setString(2, pass);
			ResultSet rs = prepStmt.executeQuery();
			if (rs.next()) {
				System.out.println("User is present in db");
				isValid = true;
			}
		} catch (Exception e) {
			System.out.println("validateLogon: Error while validating password: " + e.getMessage());
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
			System.out.println("SQLException: Unable to open connection to db: " + sqle.getMessage());
			throw sqle;
		} catch (Exception e) {
			System.out.println("Exception: Unable to open connection to db: " + e.getMessage());
			throw e;
		}
		return conn;
	}
}
