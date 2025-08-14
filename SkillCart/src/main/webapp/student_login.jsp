<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <title>Student Login</title>
    <%@include file="all_css.jsp"%>

    <style>
        /* Page background */
        body {
            background-color: #f4f4f4;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            flex-direction: column;
        }

        /* Login container */
        .login-container {
            width: 350px;
            background: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2);
            text-align: center;
        }

        /* Input fields */
        .form-group {
            margin-bottom: 15px;
            text-align: left;
        }

        .form-group label {
            font-weight: bold;
        }

        .form-group input {
            width: 100%;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        /* Buttons */
        .btn-login, .btn-reset {
            width: 100%;
            padding: 10px;
            margin-top: 10px;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
        }

        .btn-login {
            background-color: #28a745;
            color: white;
        }

        .btn-login:hover {
            background-color: #218838;
        }

        .btn-reset {
            background-color: #dc3545;
            color: white;
        }

        .btn-reset:hover {
            background-color: #c82333;
        }

        /* Error message */
        .error-message {
            color: #721c24;
            background: #f8d7da;
            padding: 10px;
            border: 1px solid #f5c6cb;
            border-radius: 5px;
            text-align: center;
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
    <%@include file="navbar.jsp"%>

    <div class="login-container">
        <h3>Student Login</h3>
        <hr>

        <%-- Display error message if present --%>
        <% String errorMessage = (String) request.getAttribute("errorMessage"); %>
        <% if (errorMessage != null) { %>
            <div class="error-message"><%= errorMessage %></div>
        <% } %>

        <form action="StudentLoginServlet" method="post">
            <div class="form-group">
                <label>Enter Name</label>
                <input type="text" name="txtName" required>
            </div>

            <div class="form-group">
                <label>Enter Password</label>
                <input type="password" name="txtPwd" required>
            </div>

            <button type="submit" class="btn-login">Login</button>
            <button type="reset" class="btn-reset">Reset</button>
        </form>
    </div>

    <%@include file="footer.jsp"%>
</body>
</html>
