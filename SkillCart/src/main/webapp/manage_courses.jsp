<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List, package1.CourseData" %>
<!DOCTYPE html>
<html>
<head>
    <title>Manage Courses</title>
    <%@include file="all_css.jsp"%>
    <style>
        body { font-family: Arial, sans-serif; text-align: center; }
        table { width: 80%; margin: auto; border-collapse: collapse; }
        th, td { border: 1px solid #ccc; padding: 10px; text-align: left; }
        th { background-color: #007BFF; color: white; }
        .edit-btn, .delete-btn {
            padding: 8px 12px; border: none; border-radius: 5px; cursor: pointer; font-size: 14px;
        }
        .edit-btn { background-color: #ffc107; color: black; }
        .delete-btn { background-color: #dc3545; color: white; }
    </style>
</head>
<body>
<%@include file="navbar.jsp"%>

<h2>Manage Courses</h2>

<!-- Button to Load Courses -->
<form action="CourseListServlet" method="post" style="margin-bottom: 20px;">
    <button type="submit" style="padding:10px 20px; background-color:#007BFF; color:white; border:none; border-radius:5px; font-size:16px; cursor:pointer;">
        Load Courses
    </button>
</form>

<table>
    <tr>
        <th>Title</th>
        <th>Description</th>
        <th>Price</th>
        <th>Link</th>
        <th>Image</th>
        <th>Actions</th>
    </tr>
    <%
        List<CourseData> courses = (List<CourseData>) request.getAttribute("courses");
        if (courses != null && !courses.isEmpty()) {
            for (CourseData course : courses) {
    %>
    <tr>
        <td><%= course.getTitle() %></td>
        <td><%= course.getDescription() %></td>
        <td>$<%= course.getPrice() %></td>
        <td><a href="<%= course.getLink() %>" target="_blank">View</a></td>
        <td><img src="data:image/jpeg;base64,<%= course.getImage() %>" width="50"></td>
        <td>
            <form action="edit_course.jsp" method="get" style="display:inline;">
                <input type="hidden" name="id" value="<%= course.getId() %>">
                <button type="submit" class="edit-btn">Edit</button>
            </form>
            <form action="DeleteCourseServlet" method="post" style="display:inline;" onsubmit="return confirm('Are you sure you want to delete this course?');">
                <input type="hidden" name="id" value="<%= course.getId() %>">
                <button type="submit" class="delete-btn">Delete</button>
            </form>
        </td>
    </tr>
    <%
            }
        } else {
    %>
    <tr><td colspan="6">No courses available.</td></tr>
    <%
        }
    %>
</table>
<%@include file="footer.jsp"%>
</body>
</html>
