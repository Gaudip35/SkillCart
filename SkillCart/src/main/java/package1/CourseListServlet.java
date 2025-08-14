package package1;

import java.io.IOException;
import java.io.InputStream;
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

@WebServlet("/CourseListServlet")
public class CourseListServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<CourseData> courseList = new ArrayList<>();

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/prerna", "root", "root");

            String query = "SELECT id, title, description, price, link, image FROM courses";
            PreparedStatement ps = con.prepareStatement(query);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                CourseData course = new CourseData();
                course.setId(rs.getInt("id"));
                course.setTitle(rs.getString("title"));
                course.setDescription(rs.getString("description"));
                course.setPrice(rs.getInt("price"));
                course.setLink(rs.getString("link"));

                // Convert Blob image to Base64 String
                InputStream inputStream = rs.getBinaryStream("image");
                if (inputStream != null) {
                    byte[] imageBytes = inputStream.readAllBytes();
                    String base64Image = java.util.Base64.getEncoder().encodeToString(imageBytes);
                    course.setImage(base64Image);
                }

                courseList.add(course);
            }

            ps.close();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        request.setAttribute("courses", courseList);
        request.getRequestDispatcher("manage_courses.jsp").forward(request, response);
    }
}
