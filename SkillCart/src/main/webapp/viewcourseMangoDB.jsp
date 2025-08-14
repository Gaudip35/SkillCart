<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>MongoDB Programming Details</title>
    <%@include file="all_css.jsp"%>
    <style>
        .review-item {
            background-color: #f0f1f2;
            padding: 10px;
            margin: 10px 0;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }
        .course-box {
            background-color: #e8f5e9;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            padding: 20px;
        }
        .course-description {
            text-align: justify;
            background-color: #f1f8e9;
            padding: 10px;
            border-radius: 5px;
        }
        .course-title {
            color: #4caf50;
            font-weight: bold;
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

            <!-- Left Column: Course Info & Reviews -->
            <div class="col-md-6 text-center p-5 border">
                <img src="img/MONGO.png" style="height: 100px; width: 100px" alt="MongoDB Course">
                <br><br>
                <h4>Course Name: MongoDB Programming</h4>
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
                                <b>Emily White:</b> "Worth every penny! I learned so much about MongoDB."
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Right Column: Description & Price -->
            <div class="col-md-6 text-center course-box">
                <h2 class="course-title">MongoDB Programming</h2>
                <br>
                <div class="course-description">
                    MongoDB, a popular NoSQL database, supports a wide array of programming languages including 
                    <b style="color: #1a73e8;">C, C++, C#, Go, Java, JavaScript, Node.js, Python, Ruby, Rust</b>, and more. It allows developers 
                    to interact with the database using their preferred languages, making it highly adaptable and developer-friendly.
                </div>
                <br>
                <a href="payment.jsp" class="btn btn-primary"><i class="fas fa-cart-plus"></i> Add Cart</a>
                <a href="#" class="btn btn-danger"><i class="fa-solid fa-indian-rupee-sign"></i> 299</a>
            </div>

        </div>
    </div>

</body>
</html>
