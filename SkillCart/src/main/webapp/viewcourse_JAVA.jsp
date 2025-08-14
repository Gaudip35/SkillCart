<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>JAVA Programming Details</title>
    <%@include file="all_css.jsp"%>
    <style>
        .review-item {
            background-color: #f9f9f9; /* Light gray background */
            padding: 15px;
            margin: 10px 0;
            border-radius: 5px; /* Rounded corners */
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1); /* Subtle shadow for depth */
        }
        .text-center {
            text-align: center; /* Ensures content is centrally aligned */
        }
    </style>
</head>
<body style="background-color: #f0f1f2;">

    <%@include file="navbar.jsp"%>

    <div class="container p-3">
        <div class="row">
            <!-- Left Section (Course Image & Reviews) -->
            <div class="col-md-6 text-center p-5 border">
                <img src="img/JAVA.jpg" style="height: 100px; width: 100px" alt="JAVA Course">
                <br><br>
                <h4><b>Course Name:</b> JAVA Programming</h4>
                <h4><b>Course Holder:</b> Prasad Sir</h4>
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
                                <b>Emily White:</b> "Worth every penny! I learned so much about JAVA."
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Right Section (Course Description & Pricing) -->
            <div class="col-md-6 text-center p-5 border">
                <h2>JAVA Programming</h2>
                <h5>
                    Java is a versatile, object-oriented programming language known for its platform independence, 
                    allowing code to "write once, run anywhere" on various systems. It's widely used for developing 
                    applications, enterprise software, and smartphone operating systems.
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
