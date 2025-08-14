package package1;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/SubmitReviewServlet")
public class SubmitReviewServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String review = request.getParameter("review");
        String message = "";

        try {
            Connection con = DBConnection.getConnection();
            PreparedStatement ps = con.prepareStatement("INSERT INTO reviewtable (username, review) VALUES (?, ?)");
            ps.setString(1, username);
            ps.setString(2, review);
            int result = ps.executeUpdate();
            ps.close();
            con.close();

            if (result > 0) {
                message = "Review submitted successfully!";
            } else {
                message = "Failed to submit review!";
            }
        } catch (Exception e) {
            e.printStackTrace();
            message = "Error occurred while submitting the review!";
        }

        // Send message back to the JSP page
        request.setAttribute("message", message);
        request.getRequestDispatcher("review_form.jsp").forward(request, response);
    }
}
