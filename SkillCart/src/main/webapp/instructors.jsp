<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ page import="java.util.List, package1.Instructor" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Instructor List</title>
    <%@ include file="all_css.jsp" %>
    <style>
        .container { max-width: 800px; margin-top: 30px; }
        .table { width: 100%; margin-top: 20px; }
        .btn-container { text-align: center; margin-top: 20px; }
    </style>
</head>
<body>
    <%@ include file="navbar.jsp" %>

    <div class="container">
        <h2 class="text-center">Instructor List</h2>

        <div class="btn-container">
            <button onclick="fetchInstructors()" class="btn btn-primary">Display Instructors</button>
        </div>

        <%-- Display Instructor Data --%>
        <%
            List<Instructor> instructors = (List<Instructor>) request.getAttribute("instructors");
            if (instructors != null && !instructors.isEmpty()) {
        %>
            <table class="table table-bordered">
                <thead class="thead-dark">
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                    </tr>
                </thead>
                <tbody>
                    <% for (Instructor instructor : instructors) { %>
                        <tr>
                            <td><%= instructor.getId() %></td>
                            <td><%= instructor.getName() %></td>
                        </tr>
                    <% } %>
                </tbody>
            </table>
        <%
            } else {
        %>
            <p class="text-center">No instructors found.</p>
        <% } %>

        <div class="text-center mt-3">
            <button onclick="window.history.back()" class="btn btn-secondary">Back</button>
        </div>
    </div>

    <script>
        function fetchInstructors() {
            window.location.href = "GetInstructorsServlet"; // Calls Servlet to fetch data
        }
    </script>

    <%@ include file="footer.jsp" %>
</body>
</html>
