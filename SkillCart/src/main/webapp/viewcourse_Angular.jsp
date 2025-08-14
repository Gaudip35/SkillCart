<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Angular Programming Details</title>
    <%@include file="all_css.jsp"%>
    <style>
        body {
            background-color: #f0f1f2;
        }
        .review-item {
            background-color: #f9f9f9; /* Light gray background */
            padding: 15px;
            margin: 10px 0;
            border-radius: 5px; /* Rounded corners */
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1); /* Subtle shadow for depth */
        }
    </style>
</head>
<body>

    <%@include file="navbar.jsp"%>

    <div class="container p-3">
        <div class="row">
            <!-- Left Section (Image & Course Details) -->
            <div class="col-md-6 text-center p-5 border">
                <img src="img/ANGULAR.jpg" style="height: 100px; width: 100px;"> <br><br>
                <h4>Course Name: Angular Programming</h4>
                <h4>Course Holder: Prasad Sir</h4>
                <p><b>500+ Reviews</b></p>

                <!-- Student Reviews -->
                <div class="row">
                    <div class="col-md-12 mt-5">
                        <h3>Student Reviews:</h3>
                        <div class="review-list">
                            <div class="review-item">
                                <b>John Doe:</b> "This course was amazing! Highly recommend for beginners."
                            </div>
                            <div class="review-item">
                                <b>Jane Smith:</b> "The instructor explains everything so clearly."
                            </div>
                            <div class="review-item">
                                <b>Emily White:</b> "Worth every penny! I learned so much about Angular Programming."
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Right Section (Course Description & Price) -->
            <div class="col-md-6 text-center p-5 border">
                <h2>Angular Programming</h2>
                <h5>
                    Angular Programming is a TypeScript-based, open-source framework maintained by Google. 
                    It is used for building complex, single-page web applications, offering features like 
                    component-based architecture, data binding, and dependency injection to streamline development.
                </h5>
                <br>
                <a href="#" class="btn btn-danger">
                    <i class="fa-solid fa-indian-rupee-sign"></i> 299
                </a>
            </div>
        </div>
    </div>

</body>
</html>
