

<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>CourseCart: index page</title>
<%@include file="all_css.jsp"%>
<style type="text/css">
.back-img {
	background: url("img/JOIN COURSE.jpg");
	height: 60vh;
	width: 100%;
	background-size: cover;
	background-repeat: no-repeat;
}

.crd-ho:hover {
	background-color: #8d6e63;
}
</style>


</head>
<body style="background-color: #e0e0e0;">
	<%@include file="navbar.jsp"%>
	<div class="container-fluid back-img">
		<h1 class="text-center text-danger">Online Course Platform</h1>
	</div>




	<!-- Start Recent course -->


	<div class="container">
		<h3 class="text-center">Recent Courses</h3>
		<div class="row">
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="img/C.png"
							style="width: 170px; height: 200px;"img-thumblin">
						<p>C Programming</p>
						<p>Prasad Sir</p>
						<div class="row">
						 <a href="viewcourse_C.jsp"
								class="btn btn-success btn-ml-1">View Details</a>
								 <a href="" class="btn btn-danger btn-ml-1"><i class="fa-solid fa-indian-rupee-sign"></i>299</a>
						</div>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="img/ANGULAR.jpg"
							style="width: 170px; height: 200px;"img-thumblin">
						<p>Angular Programming</p>
						<p>Prasad Sir</p>
						<div class="row">
							 <a href="viewcourse_Angular.jsp"
								class="btn btn-success btn-ml-1">View Details</a> <a href=""
								class="btn btn-danger btn-ml-1"><i class="fa-solid fa-indian-rupee-sign"></i>299</a>
						</div>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="img/DSA.jpg"
							style="width: 170px; height: 200px;"img-thumblin">
						<p>DSA Programming</p>
						<p>Prasad Sir</p>
						<div class="row">
							 <a href="viewcourse_DSA.jsp"
								class="btn btn-success btn-ml-1">View Details</a> <a href=""
								class="btn btn-danger btn-ml-1"><i class="fa-solid fa-indian-rupee-sign"></i>299</a>
						</div>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="img/JAVA.jpg"
							style="width: 170px; height: 200px;"img-thumblin">
						<p>JAVA Programming</p>
						<p>Prasad Sir</p>
						<div class="row">
							 <a href="viewcourse_JAVA.jsp"
								class="btn btn-success btn-ml-1">View Details</a> <a href=""
								class="btn btn-danger btn-ml-1"><i class="fa-solid fa-indian-rupee-sign"></i>299</a>
						</div>
					</div>
				</div>
			</div>

		</div>
		

	</div>


	<!-- End Recent course -->

	<hr>

	<!-- Start New course -->


	<div class="container">
		<h3 class="text-center">New Courses</h3>
		<div class="row">
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="img/JS.jpg"
							style="width: 170px; height: 200px;"img-thumblin">
						<p>JavaScript Programming</p>
						<p>Prasad Sir</p>
						<div class="row">
							 <a href="viewcourse_JS.jsp"
								class="btn btn-success btn-ml-1">View Details</a> <a href=""
								class="btn btn-danger btn-ml-1"><i class="fa-solid fa-indian-rupee-sign"></i>299</a>
						</div>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="img/MONGO.png"
							style="width: 170px; height: 200px;"img-thumblin">
						<p>MongoDB Programming</p>
						<p>Prasad Sir</p>
						<div class="row">
							 <a href="viewcourse_MangoDB.jsp"
								class="btn btn-success btn-ml-1">View Details</a> <a href=""
								class="btn btn-danger btn-ml-1"><i class="fa-solid fa-indian-rupee-sign"></i>299</a>
						</div>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="img/C.png"
							style="width: 170px; height: 200px;"img-thumblin">
						<p>C Programming</p>
						<p>Prasad Sir</p>
						<div class="row">
							 <a href="viewcourse_C.jsp"
								class="btn btn-success btn-ml-1">View Details</a> <a href=""
								class="btn btn-danger btn-ml-1"><i class="fa-solid fa-indian-rupee-sign"></i>299</a>
						</div>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="img/PHP.jpg"
							style="width: 170px; height: 200px;"img-thumblin">
						<p>PHP Programming</p>
						<p>Prasad Sir</p>
						<div class="row">
							<a href="viewcourse_PHP.jsp"
								class="btn btn-success btn-ml-1">View Details</a> <a href=""
								class="btn btn-danger btn-ml-1"><i class="fa-solid fa-indian-rupee-sign"></i>299</a>
						</div>
					</div>
				</div>
			</div>

		</div>
		

	</div>


	<!-- End New course -->
	<hr>
	<!-- Start Old course -->


	<div class="container">
		<h3 class="text-center">Old Courses</h3>
		<div class="row">
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="img/PHP.jpg"
							style="width: 170px; height: 200px;"img-thumblin">
						<p>PHP Programming</p>
						<p>Prasad Sir</p>
						<div class="row ">
							<a href="viewcourse_PHP.jsp"
								class="btn btn-success btn-ml-1">View Details</a> <a href=""
								class="btn btn-danger btn-ml-1"><i class="fa-solid fa-indian-rupee-sign"></i>299</a>
						</div>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="img/SQL.jpg"
							style="width: 170px; height: 200px;"img-thumblin">
						<p>SQL Programming</p>
						<p>Prasad Sir</p>
						<div class="row">
							 <a href="viewcourse_SQL.jsp"
								class="btn btn-success btn-ml-1">View Details</a> <a href=""
								class="btn btn-danger btn-ml-1"><i class="fa-solid fa-indian-rupee-sign"></i>299</a>
						</div>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="img/ANGULAR.jpg"
							style="width: 170px; height: 200px;"img-thumblin">
						<p>Angular Programming</p>
						<p>Prasad Sir</p>
						<div class="row">
							 <a href="viewcourse_Angular.jsp"
								class="btn btn-success btn-ml-1">View Details</a> <a href=""
								class="btn btn-danger btn-ml-1"><i class="fa-solid fa-indian-rupee-sign"></i>299</a>
						</div>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="img/JAVA.jpg"
							style="width: 170px; height: 200px;"img-thumblin">
						<p>JAVA Programming</p>
						<p>Prasad Sir</p>
						<div class="row">
							 <a href="viewcourse_JAVA.jsp"
								class="btn btn-success btn-ml-1">View Details</a> <a href=""
								class="btn btn-danger btn-ml-1"><i class="fa-solid fa-indian-rupee-sign"></i>299</a>
						</div>
					</div>
				</div>
			</div>

		</div>
	

	</div>


	<!-- End Old course -->



	<%@include file="footer.jsp"%>
</body>
</html>