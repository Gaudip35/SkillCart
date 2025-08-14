
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
	background: url("img/logo1.jpg");
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
		<h1 class="text-center text-danger">Welcome to Our Help Desk!
</h1>

<br>
<h1 class="text-success">How to Reach Us:</h1>
<h3>Email: skillcart.helpdesk@gmail.com</h3>
<h3>Phone: 234 345 654</h3>
	</div>






	<%@include file="footer.jsp"%>
</body>
</html>