package package1;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/InstructorLoginServlet")
public class InstructorLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			PrintWriter out=response.getWriter();
			response.setContentType("text/html");
			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("Got driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/prerna", "root","root");
			System.out.println("Got connection");
			
			String n=request.getParameter("txtName");
			String p=request.getParameter("txtPwd");
			System.out.println("getting the data to database");
			
			PreparedStatement ps=con.prepareStatement("select name from instructor_login where name=? and password=?");
			ps.setString(1, n);
			ps.setString(2, p);
			ResultSet rs=ps.executeQuery();
			
			if(rs.next()) {
				RequestDispatcher rd=request.getRequestDispatcher("instructor_dashboard.jsp");
				rd.forward(request, response);
			}else {
				//out.print("<h2>Invalid Credentials : Please Relogin</h2>");
				//out.println("<a href=login.jsp>TRY AGAIN!!</a>");
				RequestDispatcher rd= request.getRequestDispatcher("instructor_login.jsp");
				rd.include(request, response);
			}
			
		} catch (ClassNotFoundException e) {
			System.out.println("prb in driver");
			e.printStackTrace();
		} catch (SQLException e) {
			System.out.println("prb in connection ");
			e.printStackTrace();
		}
	}

}