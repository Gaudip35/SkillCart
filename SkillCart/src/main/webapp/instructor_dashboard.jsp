<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Instructor_Dashboard</title>
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
        <h1> Instructor Dashboard </h1>
       
       </div>
   
  
    <div class="d-flex">
        <!-- Sidebar -->
        <div class="sidebar shadow">
            <h4 class="welcome-text"> <i class="fa-solid fa-landmark"></i> Menu</h4>
            
            <ul class="nav flex-column">
           				
                <li class="nav-item"  ><a class="nav-link active" href="index.jsp"><i class="fa-solid fa-house"></i>Home</a></li>
                <li class="nav-item" ><a class="nav-link" href="add_course.jsp"> <i class="fa-solid fa-file-video"></i>Add Course</a></li>
                <li class="nav-item" ><a class="nav-link" href="manage_courses.jsp"> <i class="fa-solid fa-file-video"></i>Edit Course</a></li>
                <li class="nav-item" ><a class="nav-link" href="courses.jsp"> <i class="fa-solid fa-file-video"></i>Courses</a></li>
                <li class="nav-item"><a class="nav-link" href="students.jsp"> <i class="fa-solid fa-id-card"></i>Students</a></li>
            
                <li class="nav-item"><a class="nav-link" href="reviews.jsp"> <i class="fa-solid fa-comments"></i>Reviews</a></li>
          
            </ul>
        </div>

        <!-- Main Dashboard Content -->
        <div class="dashboard-content">
            <h2>Welcome back Instructor</h2>
            
            <p>Here's what's happening with your courses today.</p>
            
            <div class="d-flex justify-content-between gap-3">
    <div class="card p-3 shadow-sm w-25"> <!-- Adjust width -->
        <h5>Total Students</h5>
        <p>1,328 <span class="text-success">↑ 12%</span></p>
    </div>
    <div class="card p-3 shadow-sm w-25">
        <h5>Active Courses</h5>
        <p>24 <span class="text-success">↑ 8%</span></p>
    </div>
    <div class="card p-3 shadow-sm w-25">
        <h5>Completion Rate</h5>
        <p>68% <span class="text-danger">↓ 3%</span></p>
    </div>
    <div class="card p-3 shadow-sm w-25">
        <h5>This Week's Sessions</h5>
        <p>12 <span class="text-muted">Same</span></p>
    </div>
</div>
              
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
