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
Statement statement1 = null;
ResultSet resultSet = null;
ResultSet rs = null;
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
		<form action="updatePaperProcess.jsp?paper_id=<%=paper_id%>"
			method="post">

			<fieldset>
				<legend>Add Paper</legend>
				<%
				try {
					Class.forName(driver);
					connection = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);
					statement = connection.createStatement();
					statement1 = connection.createStatement();
					String sql = "select cname from add_class";
					String sql1 = "select * from add_paper where paper_id=" + paper_id;
					resultSet = statement.executeQuery(sql);
					rs = statement1.executeQuery(sql1);
				%>
				<div class="input-area">
					<%
					while (rs.next()) {
						String pname = rs.getString("pname");
						String pdescription = rs.getString("pdescription");
					%>
					<label for="paperName">Paper Name:</label>
					<textarea name="paperName" id="paperName" cols="30" rows="1"><%=rs.getString("pname")%></textarea>
				</div>
				<div class="input-area">
					<label for="className">Select Class:</label> <select
						name="className" id="className" required>
						<%
						while (resultSet.next()) {
							String cname = resultSet.getString("cname");
						%>
						<option value="<%=cname%>"><%=cname%></option>
						<%
						}
						%>
					</select>
				</div>
				<div class="input-area">
					<label for="Description">Description:</label>
					<textarea name="Description" id="Description" cols="30" rows="8"><%=rs.getString("pdescription")%></textarea>
				</div>
				<%
				}
				%>
				<div class="button_area">
					<div></div>
					<input type="reset" value="Reset" /> <input type="submit"
						value="Submit" />
					<div></div>
				</div>
				<%
				connection.close();
				} catch (Exception e) {
				e.printStackTrace();
				}
				%>
			</fieldset>
		</form>
	</section>
</body>
</html>