<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ page import="java.util.List, package1.Review" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>All Reviews</title>
    <%@ include file="all_css.jsp" %>
    <style>
        .container {
            max-width: 800px;
            margin-top: 30px;
            padding: 20px;
            background: #f8f9fa;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
        .table-container {
            display: none; /* Hide table initially */
            margin-top: 20px;
        }
        .table {
            width: 100%;
            border-collapse: collapse;
        }
        .table th, .table td {
            border: 1px solid #ddd;
            padding: 10px;
            text-align: left;
        }
        .table th {
            background: #007bff;
            color: white;
        }
        .btn-container {
            margin-bottom: 20px;
        }
        .back-btn {
            margin-top: 10px;
        }
    </style>
</head>
<body>
    <%@ include file="navbar.jsp" %>

    <div class="container">
        <h2 class="text-center mb-4">User Reviews</h2>

        <div class="btn-container">
            <button onclick="fetchReviews()" class="btn btn-primary">Show Reviews</button>
        </div>

        <%-- Fetch and display reviews in a table --%>
        <div class="table-container" id="reviewTableContainer">
            <table class="table">
                <thead>
                    <tr>
                        <th>Username</th>
                        <th>Review</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        List<Review> reviews = (List<Review>) request.getAttribute("reviews");
                        if (reviews != null && !reviews.isEmpty()) {
                            for (Review review : reviews) {
                    %>
                        <tr>
                            <td><%= review.getUsername() %></td>
                            <td><%= review.getReviewText() %></td>
                        </tr>
                    <%
                            }
                        } else {
                    %>
                        <tr>
                            <td colspan="2" class="text-center">No reviews available.</td>
                        </tr>
                    <% } %>
                </tbody>
            </table>
        </div>

      <button onclick="window.history.back()" class="btn btn-secondary">Back</button>
      
    </div>

    <%@ include file="footer.jsp" %>

    <script>
        function fetchReviews() {
            window.location.href = "GetReviewsServlet"; // Fetch reviews from servlet
        }

        window.onload = function() {
            // Show table only if reviews are available
            var reviewTableContainer = document.getElementById("reviewTableContainer");
            if (reviewTableContainer.getElementsByTagName("tbody")[0].children.length > 1) {
                reviewTableContainer.style.display = "block";
            }
        };
    </script>
</body>
</html>
