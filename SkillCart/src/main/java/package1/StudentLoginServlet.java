package package1;

import java.io.IOException;
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
import javax.servlet.http.HttpSession;

@WebServlet("/StudentLoginServlet")
public class StudentLoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("txtName");
        String password = request.getParameter("txtPwd");

        try {
            // Database Connection
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/prerna", "root", "root");

            // Query to check if name and password match
            String sql = "SELECT id, name, email FROM student_registration WHERE name=? AND password=?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, name);
            ps.setString(2, password);
            
            ResultSet rs = ps.executeQuery();
            
            if (rs.next()) {
                // Successful login
                HttpSession session = request.getSession();
                session.setAttribute("studentID", rs.getInt("id"));  // Storing ID in session
                session.setAttribute("studentName", rs.getString("name"));
                session.setAttribute("studentEmail", rs.getString("email"));
                
                response.sendRedirect("student_dashboard.jsp");
            } else {
                // Failed login - show error message
                request.setAttribute("errorMessage", "Invalid Username or Password!");
                RequestDispatcher rd = request.getRequestDispatcher("student_login.jsp");
                rd.forward(request, response);
            }

            // Closing resources
            rs.close();
            ps.close();
            con.close();

        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
