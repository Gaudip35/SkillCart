<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>PHP Programming Details</title>
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
            background-color: #f9f9f9;
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
            background-color: #ffffff;
            padding: 10px;
            border-radius: 5px;
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
                <img src="img/PHP.jpg" style="height: 100px; width: 100px" alt="PHP Course">
                <br><br>
                <h4>Course Name: PHP Programming</h4>
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
                                <b>Emily White:</b> "Worth every penny! I learned so much about PHP."
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Right: Course Description & Purchase -->
            <div class="col-md-6 text-center course-section">
                <h2 class="course-title">PHP Programming</h2>
                <div class="course-description">
                    <h4 style="color: #0078d7;">What is PHP?</h4>
                    <p>
                        PHP is an acronym for "PHP: Hypertext Preprocessor." It is a widely-used, open source scripting language. PHP scripts are executed on the server, and the language is free to download and use. PHP powers major platforms like WordPress, large social networks, and is beginner-friendly for server-side scripting.
                    </p>
                    <h4 style="color: #0078d7;">Why PHP?</h4>
                    <p>
                        PHP runs on multiple platforms (Windows, Linux, Unix, Mac OS X, etc.) and supports most web servers (Apache, IIS, etc.). It works with many databases and is free from the official PHP site: <a href="https://www.php.net" target="_blank">www.php.net</a>. PHP is easy to learn and highly efficient on servers.
                    </p>
                </div>
                <br>
                <a href="payment.jsp" class="btn btn-primary"><i class="fas fa-cart-plus"></i> Add Cart</a>
                <a href="#" class="btn btn-danger"><i class="fa-solid fa-indian-rupee-sign"></i> 2999</a>
            </div>

        </div>
    </div>

</body>
</html>
