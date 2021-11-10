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
<title>Class Report</title>
<meta charset="ISO-8859-1">
<!-- Font Awesome link -->
<script src="https://kit.fontawesome.com/7780cccd9d.js"></script>
<!-- Google Fonts Link -->
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" />
<link
	href="https://fonts.googleapis.com/css2?family=Merriweather:ital,wght@1,300&display=swap"
	rel="stylesheet" />

<link type="text/css" rel="stylesheet" href="clasReport.css">
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
				<legend>Class Report</legend>
				<table class="table-content">
					<thead>
						<th>Class Id</th>
						<th>Class</th>
						<th>Action</th>
					</thead>
					<tbody>
						<tr>
							<%
							try {
								connection = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);
								statement = connection.createStatement();
								String sql = "select * from add_class";
								resultSet = statement.executeQuery(sql);
								int i=0;
								while (resultSet.next()) {
							%>
						
						<tr>
							<td><%=resultSet.getString("class_id")%></td>
							<td><%=resultSet.getString("cname")%></td>
							<td>
								<button class="classReportEditButton" type="submit">
									Edit</button> <a
								href="deleteClass.jsp?class_id=<%=resultSet.getString("class_id")%>">

									<button class="classReportDeleteButton" type="button">
										Delete</button>
							</a>
							</td>
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
