<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Submit Review</title>
    <%@ include file="all_css.jsp" %>
    <style>
        .container {
            max-width: 600px;
            margin: 40px auto;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
            background: #fff;
        }
        h2 {
            margin-bottom: 20px;
        }
        .form-group {
            margin-bottom: 15px;
        }
    </style>
</head>
<body>
    <%@ include file="navbar.jsp" %>

    <div class="container">
        <h2 class="text-center">Submit Your Review</h2>
        <button onclick="window.history.back()" class="btn btn-secondary">Back</button>
        

        <%-- Display success/error message --%>
        <% String message = (String) request.getAttribute("message"); 
            if (message != null) { %>
            <div class="alert alert-info text-center"><%= message %></div>
        <% } %>

        <form action="SubmitReviewServlet" method="post">
            <div class="form-group">
                <label><strong>Username:</strong></label>
                <input type="text" name="username" class="form-control" required>
            </div>

            <div class="form-group">
                <label><strong>Review:</strong></label>
                <textarea name="review" class="form-control" rows="4" required></textarea>
            </div>

            <div class="text-center">
                <button type="submit" class="btn btn-success">Submit Review</button>
            </div>
        </form>
    </div>

    <%@ include file="footer.jsp" %>
</body>
</html>
