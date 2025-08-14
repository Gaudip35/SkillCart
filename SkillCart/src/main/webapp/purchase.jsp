<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*, java.util.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Purchased Courses</title>
    
    <%@ include file="all_css.jsp" %>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
        }
        .success-message {
            color: green;
            font-size: 18px;
            font-weight: bold;
            margin-bottom: 15px;
        }
        .purchased-courses {
            width: 50%;
            margin: auto;
            border-collapse: collapse;
        }
        .purchased-courses th, .purchased-courses td {
            border: 1px solid #ccc;
            padding: 10px;
            text-align: center;
        }
        .purchased-courses th {
            background-color: #007BFF;
            color: white;
        }
    </style>
</head>
<body>
<%@ include file="navbar.jsp" %>

<h2>Purchased Courses</h2>
<form action="student_dashboard.jsp"><button type="submit" style="background-color:#6c757d;color:white;padding:10px 15px;border:none;border-radius:5px;font-size:16px;cursor:pointer;margin-top:20px;">Back to Dashboard</button></form>


<!-- Display Success Message if Available -->
<%
    String successMessage = (String) session.getAttribute("successMessage");
    if (successMessage != null) {
%>
    <p class="success-message"><%= successMessage %></p>
<%
        session.removeAttribute("successMessage"); // Remove message after displaying
    }
%>

<table class="purchased-courses">
    <tr>
        <th>Title</th>
        <th>Course Link</th>
    </tr>
    <%
        try {
            // Database Connection
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/prerna", "root", "root");

            // Fetch Purchased Courses
            String query = "SELECT title, link FROM purchased_courses";
            PreparedStatement ps = con.prepareStatement(query);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
    %>
                <tr>
                    <td><%= rs.getString("title") %></td>
                    <td><a href="<%= rs.getString("link") %>" target="_blank">View Course</a></td>
                </tr>
    <%
            }
            rs.close();
            ps.close();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    %>
</table>

<%@ include file="footer.jsp" %>
</body>
</html>
