<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Add Course</title>
    <%@include file="all_css.jsp"%>
    <style>
        .container {
            max-width: 500px;
            margin: 30px auto;
            padding: 20px;
            background: #f8f9fa;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        label {
            font-weight: bold;
            margin-top: 10px;
        }
        input, textarea {
            width: 100%;
            padding: 8px;
            margin-top: 5px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        button {
            width: 100%;
            margin-top: 15px;
        }
    </style>
</head>
<body>
    <%@include file="navbar.jsp"%>
     
    

    <div class="container">
        <h2 class="text-center mb-3">Add New Course</h2>


<button onclick="window.history.back()">Back</button>



        <form action="AddCourseServlet" method="post" enctype="multipart/form-data">
            <div class="form-group">
                <label>Title:</label>
                <input type="text" name="title" class="form-control" required>
            </div>

            <div class="form-group">
                <label>Description:</label>
                <textarea name="description" class="form-control" required></textarea>
            </div>

            <div class="form-group">
                <label>Price:</label>
                <input type="number" name="price" class="form-control" required>
            </div>

            <div class="form-group">
                <label>Course Link:</label>
                <input type="text" name="link" class="form-control" required>
            </div>

            <div class="form-group">
                <label>Upload Image:</label>
                <input type="file" name="image" class="form-control-file" accept="image/*" required>
            </div>

            <button type="submit" class="btn btn-primary">Add Course</button>
        </form>
    </div>

    <%@include file="footer.jsp"%>
</body>
</html>
