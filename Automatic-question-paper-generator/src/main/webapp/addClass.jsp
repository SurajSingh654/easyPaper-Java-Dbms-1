<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>TeacherHomePage</title>
<script src="https://kit.fontawesome.com/7780cccd9d.js"></script>
<!-- Google Fonts Link -->
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" />
<link
	href="https://fonts.googleapis.com/css2?family=Merriweather:ital,wght@1,300&display=swap"
	rel="stylesheet" />
<link type="text/css" rel="stylesheet" href="style1.css" />
</head>
<body>
	<header>
		<h3>Easy Paper</h3>
		<ul>
			<li><a href="teacherHomePage.jsp">Home</a></li>
			<li>ContactUs</li>
			<li><a href="logout">Logout</a></li>
		</ul>
	</header>
	<section class="card">

		<form action="class" method="post">
			<fieldset>
				<legend>Add Your Class</legend>
				<div class="input-area">
					<label for="className">Class Name:</label>
					<textarea name="className" id="className" cols="30" rows="1"></textarea>
				</div>
				<div class="input-area">
					<label for="className">Description:</label>
					<textarea name="Description" id="Description" cols="30" rows="8"></textarea>
				</div>
				<div class="button_area">
					<div></div>
					<input type="reset" value="Reset" /> <input type="submit"
						value="Submit" />
					<div></div>
				</div>
			</fieldset>
		</form>
	</section>
	
</body>
</html>