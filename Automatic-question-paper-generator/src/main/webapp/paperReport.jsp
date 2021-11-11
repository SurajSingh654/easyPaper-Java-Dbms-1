
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
<title>Paper Report</title>
<meta charset="ISO-8859-1">
<!-- Font Awesome link -->
<script src="https://kit.fontawesome.com/7780cccd9d.js"></script>
<!-- Google Fonts Link -->
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" />
<link
	href="https://fonts.googleapis.com/css2?family=Merriweather:ital,wght@1,300&display=swap"
	rel="stylesheet" />

<link type="text/css" rel="stylesheet" href="paperReport.css">
</head>
<body>
	<header>
		<h3>Easy Paper</h3>
		<ul>
			<li><a class="links" href="teacherHomePage.jsp">Home</a></li>
			<li><a class="links" href="contactUs.jsp">ContactUs</a></li> 
			<li><a class="links" href="logout">Logout</a></li>
		</ul>
	</header>
	<section class="card">
		<form>
			<fieldset>
				<legend>Paper Report</legend>
				<table class="table-content">
					<thead>
						<th>Paper Id</th>
						<th>Paper Name</th>
						<th>Paper Class</th>
						<th>Question</th>
						<th>Action</th>
					</thead>
					<tbody>
						<%
						try {
							connection = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);
							statement = connection.createStatement();
							String sql = "select * from add_paper";
							resultSet = statement.executeQuery(sql);
							while (resultSet.next()) {
						%>
						<tr>
							<td><%=resultSet.getString("paper_id")%></td>
							<td><%=resultSet.getString("pname")%></td>
							<td><%=resultSet.getString("pclass")%></td>
							<td>
								<button class="classReportEditButton" type="submit">
									Add</button>
								<button class="classReportDeleteButton" type="submit">
									View</button>
							</td>
							<td>
								<button class="classReportEditButton" type="submit">
									Edit</button> <a
								href="deletePaper.jsp?paper_id=<%=resultSet.getString("paper_id")%>">

									<button class="classReportDeleteButton" type="button">
										Delete</button>
							</a>
								<button class="classReportEditButton" type="submit">
									Generate</button>
							</td>
						</tr>
						<%
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
