<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ page import="java.util.List, package1.Student" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Student List</title>
    <%@ include file="all_css.jsp" %>
    <style>
        .container {
            max-width: 800px;
            margin-top: 30px;
        }
        .table {
            width: 100%;
            margin-top: 20px;
        }
        .btn-container {
            text-align: center;
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <%@ include file="navbar.jsp" %>

    <div class="container">
        <h2 class="text-center">Student List</h2>
        <button onclick="window.history.back()" class="btn btn-secondary">Back</button>
        

        <div class="btn-container">
            <button onclick="fetchStudents()" class="btn btn-primary">Display Students</button>
        </div>

        <%-- Display Student Data --%>
        <%
            List<Student> students = (List<Student>) request.getAttribute("students");
            if (students != null && !students.isEmpty()) {
        %>
            <table class="table table-bordered">
                <thead class="thead-dark">
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Email</th>
                    </tr>
                </thead>
                <tbody>
                    <% for (Student student : students) { %>
                        <tr>
                            <td><%= student.getId() %></td>
                            <td><%= student.getName() %></td>
                            <td><%= student.getEmail() %></td>
                        </tr>
                    <% } %>
                </tbody>
            </table>
        <%
            } else {
        %>
            <p class="text-center">No students found.</p>
        <% } %>
    </div>

    <script>
        function fetchStudents() {
            window.location.href = "GetStudentsServlet"; // Calls Servlet to fetch data
        }
    </script>

    <%@ include file="footer.jsp" %>
</body>
</html>
