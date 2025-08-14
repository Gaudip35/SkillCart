

<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>CourseCart: All Courses</title>
<%@include file="all_css.jsp"%>
<style type="text/css">

.crd-ho:hover {
	background-color: #8d6e63;
}
</style>


</head>
<body style="background-color: #e0e0e0;">
	<%@include file="navbar.jsp"%>
	<button onclick="history.back()" style="position: fixed; top: 20px; right: 20px; background-color: #007bff; color: white; border: none; padding: 10px 20px; border-radius: 5px; cursor: pointer; font-size: 16px;">Back</button>
		<h1 class="text-center text-danger">All Courses</h1>
	




	<!-- Start Recent course -->


	<div class="container">
	
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
								class="btn btn-success btn-ml-1">View Details</a> 
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
								class="btn btn-success btn-ml-1">View Details</a> 
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
								class="btn btn-success btn-ml-1">View Details</a> 
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
								class="btn btn-success btn-ml-1">View Details</a> 
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
								class="btn btn-success btn-ml-1">View Details</a> 
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
								class="btn btn-success btn-ml-1">View Details</a> 
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
								class="btn btn-success btn-ml-1">View Details</a> 
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
								class="btn btn-success btn-ml-1">View Details</a>
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
								class="btn btn-success btn-ml-1">View Details</a> 
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
								class="btn btn-success btn-ml-1">View Details</a> 
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
								class="btn btn-success btn-ml-1">View Details</a> 
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