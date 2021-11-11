<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String driver = "com.mysql.jdbc.Driver";
String jdbcURL = "jdbc:mysql://localhost:3306/easypaper";
String dbUser = "root";
String dbPassword = "Antiquity@12";
try {
	Class.forName(driver);
} catch (ClassNotFoundException e) {
	e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
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
<link type="text/css" rel="stylesheet" href="style2.css" />
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
		<form action="paper" method="post">
			>
			<fieldset>
				<legend>Add Paper</legend>
				<div class="input-area">
					<label for="paperName">Paper Name:</label>
					<textarea name="paperName" id="paperName" cols="30" rows="1"></textarea>
				</div>
				<div class="input-area">
					<label for="className">Select Class:</label>
					<textarea name="className" id="className" cols="30" rows="1"></textarea>
					<%
					try {
						Class.forName(driver);
						connection = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);
						statement = connection.createStatement();
						String sql = "select cname from add_class";
						resultSet = statement.executeQuery(sql);
					%>
					<select name="className" id="className" required>
						<%
						while (resultSet.next()) {
							String cname = resultSet.getString("cname");
						%>
						<option value="<%=cname%>"><%=cname%></option>
						<%
						}
						%>
					</select>
					<%
					connection.close();
					} catch (Exception e) {
					e.printStackTrace();
					}
					%>
				</div>
				<div class="input-area">
					<label for="Description">Description:</label>
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