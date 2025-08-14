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

@WebServlet("/EditCourseServlet")
public class EditCourseServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String title = request.getParameter("title");
        String description = request.getParameter("description");
        int price = Integer.parseInt(request.getParameter("price"));
        String link = request.getParameter("link");

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/prerna", "root", "root");

            String query = "UPDATE courses SET title = ?, description = ?, price = ?, link = ? WHERE id = ?";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, title);
            ps.setString(2, description);
            ps.setInt(3, price);
            ps.setString(4, link);
            ps.setInt(5, id);
            ps.executeUpdate();

            ps.close();
            con.close();

            response.sendRedirect("manage_courses.jsp?success=Course Updated Successfully");
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("manage_courses.jsp?error=Failed to Update Course");
        }
    }
}
