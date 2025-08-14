<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User_Dashboard</title>
    <%@ include file="all_css.jsp"%>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    
    
   <style>
    
    
    .welcome-text {
    color: #007bff; /* Change to any color (blue) */
    font-weight: bold;
}
    
    
    .nav-link i {
    margin-right: 10px;
    
    font-size: 30px;
}
    
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }
        .header {
            background-color: #00008b;
            color: white;
            text-align: center;
            padding: 1rem;
        }
        .sidebar {
            width: 20%;
            height: 100vh;
            position: fixed;
            background-color: #f4f4f4;
            border-right: 1px solid #ddd;
            padding: 1rem;
        }
        .content {
            margin-left: 20%;
            padding: 2rem;
        }
        .menu-item {
            margin: 1rem 0;
        }
        .menu-item a {
            text-decoration: none;
            color: #333;
            font-weight: bold;
        }
    </style>
   
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <style>
        body { background-color: #f8f9fa; }
        .sidebar { width: 250px; height: 100vh; background: #ffffff; padding: 20px; }
        .dashboard-content { margin-left: 260px; padding: 20px; }
    </style>
</head>
<body>
<%@ include file="navbar.jsp"%>
  
   <div class="header">
        <h1> Student Dashboard </h1>
       
       </div>
   
  
    <div class="d-flex">
        <!-- Sidebar -->
        <div class="sidebar shadow">
            <h4 class="welcome-text"> <i class="fa-solid fa-landmark"></i> Menu</h4>
            
            <ul class="nav flex-column">
           				
                <li class="nav-item"  ><a class="nav-link active" href="index.jsp"><i class="fa-solid fa-house"></i>Home</a></li>
                <li class="nav-item" ><a class="nav-link" href="purchase.jsp"> <i class="fa-solid fa-file-video"></i>Courses</a></li>
              <li class="nav-item" ><a class="nav-link" href="view_courses.jsp"> <i class="fa-solid fa-file-video"></i>Buy</a></li>
                <li class="nav-item"><a class="nav-link" href="review_form.jsp"> <i class="fa-solid fa-comments"></i>Reviews</a></li>
          
            </ul>
        </div>

        <!-- Main Dashboard Content -->
        <div class="dashboard-content">
            <h2>Welcome back</h2>
            
            
         
              
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
