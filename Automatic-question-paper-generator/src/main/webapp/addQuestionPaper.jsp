<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String paper_id = request.getParameter("paper_id");
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
<title>Add Question Paper</title>
<script src="https://kit.fontawesome.com/7780cccd9d.js"></script>
<!-- Google Fonts Link -->
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" />
<link
	href="https://fonts.googleapis.com/css2?family=Merriweather:ital,wght@1,300&display=swap"
	rel="stylesheet" />
<link type="text/css" rel="stylesheet" href="addQuestionPaper.css" />
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
		<form action="question" method="post">
			<fieldset>
				<legend>Add Question</legend>
				<input name="paper_id" type="hidden" value=<%=paper_id%> />
				<div class="input-area">
					<label for="paperName">Select Paper:</label>
					<%
					try {
						Class.forName(driver);
						connection = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);
						statement = connection.createStatement();
						String sql = "select * from add_paper where paper_id=" + paper_id;
						resultSet = statement.executeQuery(sql);
					%>
					<%
					while (resultSet.next()) {
					%>
					<select name="paperName" id="paperName" required>
						<option value="<%=resultSet.getString("pname")%>"><%=resultSet.getString("pname")%></option>
					</select>
				</div>
				<div class="input-area">
					<label for="className">Select Class:</label> <select
						name="className" id="className" required>
						<option value="<%=resultSet.getString("pclass")%>"><%=resultSet.getString("pclass")%>
						<option>
					</select>
					<%
					}
					%>
					<%
					connection.close();
					} catch (Exception e) {
					e.printStackTrace();
					}
					%>
				</div>
				<div class="input-area">
					<label for="Description">Question:</label>
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