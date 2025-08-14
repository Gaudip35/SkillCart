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

@WebServlet("/PurchaseServlet")
public class PurchaseServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String title = request.getParameter("title");
        String link = request.getParameter("link");

        try {
            // Database Connection
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/prerna", "root", "root");

            // Insert Data into the new table
            String query = "INSERT INTO purchased_courses (title, link) VALUES (?, ?)";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, title);
            ps.setString(2, link);
            ps.executeUpdate();

            // Close Connection
            ps.close();
            con.close();

            // Set success message in session
            HttpSession session = request.getSession();
            session.setAttribute("successMessage", "Course purchased successfully!");

            // Redirect to purchase.jsp to show all purchased courses
            response.sendRedirect("purchase.jsp");

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
