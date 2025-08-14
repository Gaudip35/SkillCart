<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ page import="java.io.*, java.sql.*, javax.servlet.*, javax.servlet.http.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Payment Page</title>
<%@include file="all_css.jsp"%>
</head>
<body>
	<%@include file="navbar.jsp"%>
	<br>
	<%
    String message = "";

    if (request.getMethod().equalsIgnoreCase("POST")) {
        // File upload handling
        String fileName = request.getParameter("fileName");
        String filePath = application.getRealPath("/") + "uploads" + File.separator + fileName;

        if (fileName.endsWith(".jpg")) {
            // Save the file
            Part filePart = request.getPart("file");
            InputStream fileContent = filePart.getInputStream();

            File uploadedFile = new File(filePath);
            uploadedFile.getParentFile().mkdirs();
            FileOutputStream fos = new FileOutputStream(uploadedFile);
            byte[] buffer = new byte[1024];
            int bytesRead;
            while ((bytesRead = fileContent.read(buffer)) != -1) {
                fos.write(buffer, 0, bytesRead);
            }
            fos.close();

            // Store file info in the database
            Connection conn = null;
            PreparedStatement pstmt = null;
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/projectdb","root","root");
              
                String sql = "INSERT INTO file_uploads (file_name, file_path) VALUES (?, ?)";
                pstmt = conn.prepareStatement(sql);
                pstmt.setString(1, fileName);
                pstmt.setString(2, filePath);
                pstmt.executeUpdate();

                message = "File uploaded and saved successfully!";
            } catch (Exception e) {
                message = "Error saving file to database: " + e.getMessage();
            } finally {
                if (pstmt != null) pstmt.close();
                if (conn != null) conn.close();
            }
        } else {
            message = "Please upload JPG file only!";
        }
    }
%>
	
<div class="container p-3">
		<div class="row">
			<div class="col-md-6 text-center p-5 border">
				<img src="img/Scanner.jpeg" style="height: 350px; width: 350px">
				<br>




			</div>
			<div class="col-md-6 text-center p-5 border">
				<a href="#" style="background-color: #dcdcdc;">
					<h3>Scan and Pay Rs. 299 and upload the receipt to enroll in
						this course</h3>
				</a> <br> <br>
				 
    
    <h1>Upload File</h1>
    <br>
    <script>
        function checkFileUploaded() {
            const fileInput = document.getElementById("fileInput");
            const message = document.getElementById("message");
            
            if (fileInput.files.length > 0) {
                location.href = 'process.jsp';
            } else {
                message.textContent = "Please upload a file.";
            }
        }
    </script>
    <form method="post" enctype="multipart/form-data">
        <input type="file" name="file" accept=".jpg" required />
       
        <button type="button" onclick="location.href='user_dashboard.jsp'">Upload</button>
    <p id="message" style="color: red;"></p>
    </form>
    <p><%= message %></p>
				 

</body>
</html>