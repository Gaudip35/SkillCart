<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>SQL Programming Details</title>
    <%@include file="all_css.jsp"%>
    <style>
        .review-item {
            background-color: #f9f9f9;
            padding: 15px;
            margin: 10px 0;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }
        .course-section {
            background-color: #f0f8ff;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            padding: 20px;
        }
        .course-title {
            color: #0078d7;
            font-weight: bold;
        }
        .course-description {
            color: #333;
            text-align: justify;
        }
        .btn-primary {
            background-color: #0078d7;
            border-color: #0056b3;
        }
        .btn-danger {
            background-color: #ff5c5c;
            border-color: #e53935;
        }
    </style>
</head>
<body style="background-color: #f0f1f2;">

    <%@include file="navbar.jsp"%>

    <div class="container p-3">
        <div class="row">
            <!-- Left: Course Info & Reviews -->
            <div class="col-md-6 text-center p-5 border">
                <img src="img/SQL.jpg" style="height: 100px; width: 100px" alt="SQL Course">
                <br><br>
                <h4>Course Name: SQL Programming</h4>
                <h4>Course Holder: Prasad Sir</h4>
                <p><b>500+ Reviews</b></p>

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
                                <b>Emily White:</b> "Worth every penny! I learned so much about SQL."
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Right: Course Description & Purchase -->
            <div class="col-md-6 text-center course-section">
                <h2 class="course-title">SQL Programming</h2>
                <h5 class="course-description">
                    SQL (Structured Query Language) is a standard programming language used to manage and interact with relational databases, 
                    allowing you to store, retrieve, manipulate, and manage data within them.
                </h5>
                <br>
                <a href="payment.jsp" class="btn btn-primary"><i class="fas fa-cart-plus"></i> Add Cart</a>
                <a href="#" class="btn btn-danger"><i class="fa-solid fa-indian-rupee-sign"></i> 299</a>
            </div>
        </div>
    </div>

</body>
</html>
