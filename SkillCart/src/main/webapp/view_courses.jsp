<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List, package1.CourseModel" %>
<!DOCTYPE html>
<html>
<head>
    <title>Available Courses</title>
    <%@include file="all_css.jsp"%>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
            text-align: center;
        }

        h2 {
            margin-bottom: 20px;
        }

        .button-container {
            margin-bottom: 20px;
        }

        .show-all-button {
            background-color: #007BFF;
            color: white;
            padding: 12px 20px;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
        }

        .show-all-button:hover {
            background-color: #0056b3;
        }

        .course-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 20px;
            padding: 20px;
        }

        .course-card {
            background: #fff;
            border: 1px solid #ccc;
            border-radius: 10px;
            padding: 15px;
            width: 250px;
            text-align: center;
            box-shadow: 2px 2px 10px rgba(0, 0, 0, 0.1);
        }

        .course-card img {
            width: 100%;
            height: 150px;
            border-radius: 10px;
        }

        .course-card h3 {
            font-size: 18px;
            margin: 10px 0;
        }

        .course-card p {
            font-size: 16px;
            font-weight: bold;
            color: #28a745;
        }

        .buy-button {
            background-color: #28a745;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 5px;
            font-size: 14px;
            cursor: pointer;
        }

        .buy-button:hover {
            background-color: #218838;
        }
    </style>
</head>
<body>
<%@include file="navbar.jsp"%>
<h2>Available Courses</h2>

<!-- Button to Fetch All Courses -->
<div class="button-container">
    <form action="FetchCoursesServlet" method="get">
        <button type="submit" class="show-all-button">Show All Courses</button>
    </form>
</div>

<!-- Course Cards -->
<div class="course-container">
    <%
        List<CourseModel> courses = (List<CourseModel>) request.getAttribute("courses");
        if (courses != null && !courses.isEmpty()) {
            for (CourseModel course : courses) {
    %>
        <div class="course-card">
            <img src="data:image/jpeg;base64,<%= course.getImage() %>" alt="Course Image">
            <h3><%= course.getTitle() %></h3>
            <p>Price: $<%= course.getPrice() %></p>
            <form action="PurchaseServlet" method="post">
                <input type="hidden" name="title" value="<%= course.getTitle() %>">
                <input type="hidden" name="link" value="<%= course.getLink() %>">
                <button type="submit" class="buy-button">BUY</button>
            </form>
        </div>
    <%
            }
        } else {
    %>
        <p>No courses available.</p>
    <%
        }
    %>
    
     <%@ include file="footer.jsp" %>
</div>

</body>
</html>
