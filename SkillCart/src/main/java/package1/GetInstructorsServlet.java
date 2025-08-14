package package1;
import package1.Instructor;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/GetInstructorsServlet")
public class GetInstructorsServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Instructor> instructorList = new ArrayList<>();
        
        // Database credentials
        String url = "jdbc:mysql://localhost:3306/prerna";
        String user = "root";
        String password = "root";

        try {
            // Load JDBC Driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Establish connection
            Connection con = DriverManager.getConnection(url, user, password);
            String sql = "SELECT id, name FROM instructor_login";
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            // Fetch data
            while (rs.next()) {
                Instructor instructor = new Instructor();
                instructor.setId(rs.getInt("id"));
                instructor.setName(rs.getString("name"));
                instructorList.add(instructor);
            }

            // Close resources
            rs.close();
            ps.close();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        // Send data to JSP
        request.setAttribute("instructors", instructorList);
        request.getRequestDispatcher("instructors.jsp").forward(request, response);
    }
}
