<div class="container-fluid" style="height:10px; background-color:#303f9f;"></div>

<div class="container-fluid p-3 bg-light">
    <div class="row">
        <div class="col-md-3 text-success">
            <h3><i class="fa-brands fa-discourse"></i> CourseCart</h3>
        </div>

        <div class="col-md-9 text-right">
            <a href="register.jsp" class="btn btn-primary text-white">
                <i class="fa-solid fa-user-plus"></i> Register
            </a>

            <div class="dropdown d-inline">
                <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" 
                    data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Login
                </button>
                <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                    <a class="dropdown-item" href="admin_login.jsp"><i class="fa-solid fa-user-tie"></i> Admin</a>
                    <a class="dropdown-item" href="instructor_login.jsp"><i class="fa-solid fa-chalkboard-user"></i> Instructor</a>
                    <a class="dropdown-item" href="student_login.jsp"><i class="fa-solid fa-arrow-right-to-bracket"></i> Student</a>
                </div>
            </div>
        </div>
    </div>
</div>

<nav class="navbar navbar-expand-lg navbar-dark bg-custom">
    <a class="navbar-brand" href="#"><i class="fa-solid fa-house"></i></a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" 
        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="index.jsp">Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item active">
                <a class="nav-link" href="all_courses.jsp">
                    <i class="fa-solid fa-desktop"></i> All Courses
                </a>
            </li>
            <li class="nav-item active">
                <a class="nav-link" href="contact_support.jsp">
                    <i class="fa-solid fa-headset"></i> Contact Us
                </a>
            </li>
        </ul>
    </div>
</nav>
