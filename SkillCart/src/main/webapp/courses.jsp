<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List, package1.Course" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>All Courses</title>
    <%@ include file="all_css.jsp" %>
    <style>
        .container {
            max-width: 900px;
            margin-top: 30px;
        }
        .btn-container {
            display: flex;
            justify-content: space-between;
            margin-bottom: 15px;
        }
        .card {
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .card img {
            max-height: 200px;
            object-fit: cover;
        }
    </style>
</head>
<body>
    <%@ include file="navbar.jsp" %>

    <div class="container">
        <h2 class="text-center mb-4">All Courses</h2>
        
        <div class="btn-container">
            <button onclick="fetchCourses()" class="btn btn-primary">Show Courses</button>
            <button onclick="goBack()" class="btn btn-secondary">Back</button>
        </div>

        <div class="row" id="courseContainer">
            <% 
                List<Course> courses = (List<Course>) request.getAttribute("courses");
                if (courses != null && !courses.isEmpty()) {
                    for (Course course : courses) { 
            %>
                <div class="col-md-4">
                    <div class="card mb-3">
                        <img src="data:image/jpeg;base64,<%= course.getImage() %>" class="card-img-top" alt="Course Image">
                        <div class="card-body">
                            <h5 class="card-title"><%= course.getTitle() %></h5>
                            <p class="card-text"><%= course.getDescription() %></p>
                            <p class="card-text"><strong>Price:</strong> $<%= course.getPrice() %></p>
                            <a href="<%= course.getLink() %>" class="btn btn-success">View Course</a>
                        </div>
                    </div>
                </div>
            <% 
                    }
                } else { 
            %>
                <div class="col-12 text-center">
                    <p>No courses available.</p>
                </div>
            <% } %>
        </div>
    </div>

    <script>
        function fetchCourses() {
            window.location.href = "GetCoursesServlet"; // Calls Servlet to fetch data
        }

        function goBack() {
            window.history.back(); // Goes back to the previous page
        }
    </script>

    <%@ include file="footer.jsp" %>
</body>
</html> 