<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%><%@page import="java.sql.DriverManager"%>
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
<title>Generate Question Paper</title>
<script src="https://kit.fontawesome.com/7780cccd9d.js"></script>
<!-- Google Fonts Link -->
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" />
<link
	href="https://fonts.googleapis.com/css2?family=Merriweather:ital,wght@1,300&display=swap"
	rel="stylesheet" />
<link type="text/css" rel="stylesheet" href="generateQuestionPaper.css" />
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
		<form action="examPaper.jsp">
			<%
			try {
				Class.forName(driver);
				connection = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);
				statement = connection.createStatement();
				String sql = "select * from add_paper where paper_id=" + paper_id;
				resultSet = statement.executeQuery(sql);
			%>
			<fieldset>
				<%
				while (resultSet.next()) {
					String pname = resultSet.getString("pname");
					String pclass = resultSet.getString("pclass");
				%>
				<legend>
					Generate
					<%=resultSet.getString("pname")%>
					Exam Paper for
					<%=resultSet.getString("pclass")%>
				</legend>
				<%
				}
				%>
				<div class="input-area">
					<label for="time">Total Time</label>
					<textarea name="time" id="time" cols="30" rows="1"
						placeholder="hh:mm"></textarea>
					<span class="examYear"> <label for="year">Year:</label> <input
						name="year" type="number"></span>
				</div>
				<div class="input-area">
					<label for="maxMarks">MaxMarks:</label> <input type="number">
				</div>
				<div class="input-area">
					<label for="questions">Total Questions</label>
					<textarea name="questions" id="questions" cols="20" rows="1"></textarea>
					<span class="availableQuestions">Available :10</span>
				</div>
				<div class="input-area">
					<label for="collegeName">CollegeName</label>
					<textarea name="collegeName" id="collegeName" cols="58" rows="1"></textarea>
				</div>
				<div class="input-area">
					<label for="description">Description:</label>
					<textarea name="description" id="description" cols="60" rows="3"></textarea>
				</div>
				<div class="button_area">
					<div></div>
					<input type="reset" value="Reset" /> <input type="submit"
						value="Submit" />
					<div></div>
				</div>
			</fieldset>
		</form>
		<%
		connection.close();
		} catch (Exception e) {
		e.printStackTrace();
		}
		%>
	</section>
</body>
</html>