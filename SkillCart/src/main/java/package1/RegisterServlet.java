package package1;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    // Database Connection Method (Instead of using com.util.DBConnection)
    private Connection getConnection() throws Exception {
        String url = "jdbc:mysql://localhost:3306/prerna"; // Replace with your database name
        String user = "root"; // Change if needed
        String password = "root"; // Change if needed
        Class.forName("com.mysql.cj.jdbc.Driver"); // Load MySQL driver
        return DriverManager.getConnection(url, user, password);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Fetch user data from the form
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        HttpSession session = request.getSession(); // Get session to store messages

        try {
            // Establish database connection
            Connection conn = getConnection(); 

            // Insert query
            String sql = "INSERT INTO student_registration (name, email, password) VALUES (?, ?, ?)";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, name);
            stmt.setString(2, email);
            stmt.setString(3, password); // Ideally, hash passwords before storing

            int rowsInserted = stmt.executeUpdate();
            conn.close();

            if (rowsInserted > 0) {
                session.setAttribute("message", "Registration Successful!");
                session.setAttribute("status", "success");
            } else {
                session.setAttribute("message", "Failed to Register. Try Again.");
                session.setAttribute("status", "error");
            }

        } catch (Exception e) {
            session.setAttribute("message", "Error: " + e.getMessage());
            session.setAttribute("status", "error");
        }

        response.sendRedirect("register.jsp"); // Redirect back to the form page
    }
}