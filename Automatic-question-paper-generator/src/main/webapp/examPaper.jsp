<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
String time = request.getParameter("time");
String year = request.getParameter("year");
String questions = request.getParameter("questions");
String collegeName = request.getParameter("collegeName");
String description = request.getParameter("description");
%>
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
<title>examPaper</title>
<script src="https://kit.fontawesome.com/7780cccd9d.js"></script>
<!-- Google Fonts Link -->
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" />
<link
	href="https://fonts.googleapis.com/css2?family=Merriweather:ital,wght@1,300&display=swap"
	rel="stylesheet" />
<link type="text/css" rel="stylesheet" href="examPaper.css" />
</head>
<body>
	<header>
		<h3>Easy Paper</h3>
		<ul>
			<li>Home</li>
			<li>PrintPaper</li>
			<li>Logout</li>
		</ul>
	</header>
	<section class="card">
		<div class="div1">
			<div class="subDiv1">
				<h3><%=collegeName%>
				</h3>
			</div>
			<div class="subDiv2">
				<h3>
					End Term Examination-<%=year%></h3>
			</div>
			<div class="subDiv3">
				<%
				try {
					connection = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);
					statement = connection.createStatement();
					String sql = "select * from add_paper where paper_id=" + paper_id;
					resultSet = statement.executeQuery(sql);
					while (resultSet.next()) {
				%>
				<h3><%=resultSet.getString("pname")%></h3>
				<%
				}
				%>
			</div>
		</div>
		<div class="div2">
			<h3 class="totalTime">
				Time:
				<%=time%>
			</h3>
			<h3 class="maximumMarks">MM: 50 marks</h3>
		</div>

		<div class="div3">
			<div class="Note">
				<h3>
					<span>Note: </span><%=description%>
				</h3>
			</div>
			<table class="table-content">
				<tbody>
					<tr>
						<td>Q.1</td>
						<td>What is Java?</td>
					</tr>
					<tr>
						<td>Q.2</td>
						<td>What is Access Modifier in Java?</td>
					</tr>
					<tr>
						<td>Q.3</td>
						<td>What is Operator overloading in java?</td>
					</tr>
					<tr>
						<td>Q.4</td>
						<td>What is Generic functions?</td>
					</tr>
				</tbody>
			</table>
		</div>
	</section>
	<%
	connection.close();
	} catch (

	Exception e) {
	e.printStackTrace();
	}
	%>
</body>
</html>