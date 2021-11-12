<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ContactUs Page</title>
<script src="https://kit.fontawesome.com/7780cccd9d.js"></script>
<!-- Google Fonts Link -->
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" />
<link
	href="https://fonts.googleapis.com/css2?family=Merriweather:ital,wght@1,300&display=swap"
	rel="stylesheet" />
<link type="text/css" rel="stylesheet" href="contactUs.css" />
</head>
<body>
	<header>
		<h3>Easy Paper</h3>
		<ul>
			<li><a class="links" href="teacherHomePage.jsp">Home</a></li>
			<li><a class="links" href="logout">Logout</a></li>
		</ul>
	</header>
	<section class="card">
		<form>
			<fieldset>
				<legend>Contact Us</legend>
				<table class="table-content">
					<tbody>
						<tr>
							<td><i class="fas fa-phone-alt"></i></td>
							<td>8780373011</td>
						</tr>
						<tr>
							<td><i class="fas fa-envelope-open-text"></i></td>
							<td>surajsinghj654@gmail.com</td>
						</tr>
						<tr>
							<td><i class="far fa-address-card"></i></td>
							<td>20, Savitri Nagar,Kanpur</td>
						</tr>
						<tr>
							<td><i class="fas fa-comments"></i></td>
							<td><textarea autofocus name="feed" cols="50" rows="5"
									placeholder="Give your feedback.....">
                  Your feedback...
                  </textarea></td>
						</tr>
					</tbody>
				</table>
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