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
<title>Question Paper Report</title>
<script src="https://kit.fontawesome.com/7780cccd9d.js"></script>
<!-- Google Fonts Link -->
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" />
<link
	href="https://fonts.googleapis.com/css2?family=Merriweather:ital,wght@1,300&display=swap"
	rel="stylesheet" />
<link type="text/css" rel="stylesheet" href="questionReport.css" />
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
		<form>
			<fieldset>
				<legend>All Question Report</legend>
				<table class="table-content">
					<thead>
						<th>Sr. No.</th>
						<th>Question</th>
						<!--  <th>Marks</th> -->
						<th>Action</th>
					</thead>
					<tbody>
						<%
						try {
							connection = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);
							statement = connection.createStatement();
							String sql = "select * from add_question";
							resultSet = statement.executeQuery(sql);
							int i = 0;
							while (resultSet.next()) {
						%>

						<tr>
							<td><%=resultSet.getString("question_id")%></td>
							<td><%=resultSet.getString("question")%></td>

							<td><button class="classReportEditButton" type="submit">
									Edit</button> <a
								href="deleteQuestion.jsp?question_id=<%=resultSet.getString("question_id")%>">

									<button class="classReportDeleteButton" type="button">
										Delete</button>
							</a></td>
						</tr>
						<%
						i++;
						}
						connection.close();
						} catch (Exception e) {
						e.printStackTrace();
						}
						%>
					</tbody>
				</table>
			</fieldset>
		</form>
	</section>
</body>
</html>