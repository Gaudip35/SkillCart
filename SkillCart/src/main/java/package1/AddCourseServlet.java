package package1;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet("/AddCourseServlet")
@MultipartConfig(maxFileSize = 16177215)  // 16MB Max File Size
public class AddCourseServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String title = request.getParameter("title");
        String description = request.getParameter("description");
        int price = Integer.parseInt(request.getParameter("price"));
        String link = request.getParameter("link");
        Part imagePart = request.getPart("image");

        String message = "Problem in adding course!"; // Default error message

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/prerna", "root", "root");

            String query = "INSERT INTO courses (title, description, price, link, image) VALUES (?, ?, ?, ?, ?)";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, title);
            ps.setString(2, description);
            ps.setInt(3, price);
            ps.setString(4, link);

            InputStream inputStream = imagePart.getInputStream();
            ps.setBlob(5, inputStream);

            int row = ps.executeUpdate();
            if (row > 0) {
                message = "Course added successfully!";
            }

            ps.close();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
            message = "Error: " + e.getMessage();
        }

        request.setAttribute("message", message);
        request.getRequestDispatcher("add_course.jsp").forward(request, response);
    }
}
