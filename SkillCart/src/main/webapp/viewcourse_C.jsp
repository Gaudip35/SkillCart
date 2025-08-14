<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>C Programming Details</title>
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
            <!-- Left Section (Course Image & Details) -->
            <div class="col-md-6 text-center p-5 border">
                <img src="img/C.png" style="height: 100px; width: 100px;"> <br><br>
                <h4>Course Name: C Programming</h4>
                <h4>Course Holder: Prasad Sir</h4>
                <p><b>500+ Reviews</b></p>

                <!-- Student Reviews Section -->
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
                                <b>Emily White:</b> "Worth every penny! I learned so much about C programming."
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Right Section (Course Description & Price) -->
            <div class="col-md-6 text-center p-5 border">
                <h2>C Programming</h2>
                <h5>
                    C programming course provides fundamental concepts like syntax, data types, 
                    control structures, functions, arrays, pointers, and more. It is essential for 
                    building a strong programming foundation and preparing for advanced topics and languages.
                </h5>
                <br>
                <a href="payment.jsp" class="btn btn-primary">
                    <i class="fas fa-cart-plus"></i> Add to Cart
                </a> 
                <a href="#" class="btn btn-danger">
                    <i class="fa-solid fa-indian-rupee-sign"></i> 299
                </a>
            </div>
        </div>
    </div>

</body>
</html>
