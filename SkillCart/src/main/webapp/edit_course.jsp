<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*, package1.CourseModel" %>
<!DOCTYPE html>
<html>
<head>
    <title>Edit Course</title>
    <%@include file="all_css.jsp"%>
    <style>
        body { font-family: Arial, sans-serif; text-align: center; }
        form { width: 50%; margin: auto; padding: 20px; border: 1px solid #ccc; border-radius: 10px; }
        input, textarea { width: 100%; padding: 8px; margin: 10px 0; border: 1px solid #ccc; border-radius: 5px; }
        button { background-color: #28a745; color: white; padding: 10px 15px; border: none; border-radius: 5px; cursor: pointer; }
    </style>
</head>
<body>
<%@include file="navbar.jsp"%>
<h2>Edit Course</h2>

<%
    int courseId = Integer.parseInt(request.getParameter("id"));
    CourseModel course = null;

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/prerna", "root", "root");

        PreparedStatement ps = con.prepareStatement("SELECT * FROM courses WHERE id = ?");
        ps.setInt(1, courseId);
        ResultSet rs = ps.executeQuery();

        if (rs.next()) {
            course = new CourseModel();
            course.setId(rs.getInt("id"));
            course.setTitle(rs.getString("title"));
            course.setDescription(rs.getString("description"));
            course.setPrice(rs.getInt("price"));
            course.setLink(rs.getString("link"));
        }

        rs.close();
        ps.close();
        con.close();
    } catch (Exception e) {
        e.printStackTrace();
    }

    if (course != null) {
%>
    <form action="EditCourseServlet" method="post">
        <input type="hidden" name="id" value="<%= course.getId() %>">
        <label>Title:</label>
        <input type="text" name="title" value="<%= course.getTitle() %>" required>
        <label>Description:</label>
        <textarea name="description" required><%= course.getDescription() %></textarea>
        <label>Price:</label>
        <input type="number" name="price" value="<%= course.getPrice() %>" required>
        <label>Link:</label>
        <input type="text" name="link" value="<%= course.getLink() %>" required>
        <button type="submit">Update Course</button>
    </form>
<%
    } else {
%>
    <p>Course not found.</p>
<%
    }
%>
<%@include file="footer.jsp"%>
</body>
</html>
