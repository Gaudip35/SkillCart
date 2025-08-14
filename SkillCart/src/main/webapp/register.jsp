<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>CourseCart: User Registration</title>
    <%@include file="all_css.jsp"%>

    <style>
        body {
            background-color: #f4f4f4;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            flex-direction: column;
        }

        .container {
            background: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
            width: 350px;
            text-align: center;
        }

        h2 {
            color: #333;
            margin-bottom: 20px;
        }

        .message {
            padding: 10px;
            border-radius: 5px;
            margin-bottom: 15px;
            text-align: center;
            font-weight: bold;
        }

        .success { background-color: #d4edda; color: #155724; border: 1px solid #c3e6cb; }
        .error { background-color: #f8d7da; color: #721c24; border: 1px solid #f5c6cb; }

        .form-group {
            text-align: left;
            margin-bottom: 15px;
        }

        label {
            font-weight: bold;
            color: #555;
        }

        input {
            width: 100%;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 5px;
            margin-top: 5px;
            transition: 0.3s;
        }

        input:focus {
            border-color: #007bff;
            outline: none;
        }

        .btn-register {
            background: #007bff;
            color: white;
            border: none;
            padding: 10px;
            width: 100%;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            margin-top: 10px;
            transition: 0.3s;
        }

        .btn-register:hover {
            background: #0056b3;
        }
    </style>
</head>
<body>
    <%@include file="navbar.jsp"%>

    <div class="container">
        <h2>Create Your Account</h2>

        <%-- Display success/error message --%>
        <%
            String message = (String) session.getAttribute("message");
            String status = (String) session.getAttribute("status");
            if (message != null && status != null) {
        %>
            <div class="message <%= status %>">
                <%= message %>
            </div>
        <%
            session.removeAttribute("message");
            session.removeAttribute("status");
            }
        %>

        <form action="RegisterServlet" method="post">
            <div class="form-group">
                <label>Full Name</label>
                <input type="text" name="name" required>
            </div>

            <div class="form-group">
                <label>Email Address</label>
                <input type="email" name="email" required>
            </div>

            <div class="form-group">
                <label>Password</label>
                <input type="password" name="password" required>
            </div>

            <button type="submit" class="btn-register">Register</button>
        </form>
    </div>

    <%@include file="footer.jsp"%>
</body>
</html>
