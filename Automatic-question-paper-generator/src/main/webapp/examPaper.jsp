<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
int paper_id = Integer.parseInt(request.getParameter("pid"));
String time = request.getParameter("time");
String maxMarks = request.getParameter("maxMarks");
String year = request.getParameter("year");
int questions = Integer.parseInt(request.getParameter("questions"));
String collegeName = request.getParameter("collegeName");
String description = request.getParameter("description");
String count = request.getParameter("count");
%>
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
Statement s = null;
ResultSet rs = null;
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
<<<<<<< HEAD
    <header>
      <h3>Easy Paper</h3>
      <ul>
        <li><a class="links" href="teacherHomePage.jsp">Home</a></li>
        <li><a class="links" href="contactUs.jsp">ContactUs</a></li> 
			<li class="links" >PrintPaper</li>
			<li><a class="links" href="logout">Logout</a></li>
      </ul>
    </header>
    <section class="card">
      <div class="div1">
        <div class="subDiv1">
          <h3>Maulana Azad National Institute of technology, Bhopal</h3>
        </div>
        <div class="subDiv2"><h3>End Term Examination-2021</h3></div>
        <div class="subDiv3">
          <h3>JAVA</h3>
        </div>
      </div>
      <div class="div2">
        <h3 class="totalTime">Time: 3 hrs 30 min</h3>
        <h3 class="maximumMarks">MM: 50 marks</h3>
      </div>
=======
	<header>
		<h3>Easy Paper</h3>
		<ul>
			<li><a href="teacherHomePage.jsp">Home</a></li>
			<li><button name="printPaper" onClick="Print()">PrintPaper</button></li>
			<li><a href="logout">Logout</a></li>
		</ul>
	</header>
	<section class="card" id="card">
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
					s = connection.createStatement();
					String sql = "select * from add_paper where paper_id=" + paper_id;
					String sql1 = "select distinct * from add_question where paper_id=" + paper_id + " order by rand() limit "
					+ questions;
>>>>>>> branch 'main' of https://github.com/waryphantom/easyPaper-Java-Dbms.git

					resultSet = statement.executeQuery(sql);
					rs = s.executeQuery(sql1);
					/*while(rs.next())
					{
						System.out.println(rs.getString("question"));
						
					}*/

					while (resultSet.next()) {
						String pname = resultSet.getString("pname");
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
			<h3 class="maximumMarks">
				MM:
				<%=maxMarks%>
				marks
			</h3>
		</div>

		<div class="div3">
			<div class="Note">
				<h3>
					<span>Note: </span><%=description%>
				</h3>
			</div>
			<table class="table-content">
				<%
				int i = 1;
				while (rs.next()) {
				%>
				<tbody>
					<tr>
						<td>Q.<%=i%></td>
						<td><%=rs.getString("question")%></td>
					</tr>
				</tbody>
				<%
				i++;
				}
				%>
			</table>
		</div>
	</section>
	<%
	connection.close();
	} catch (

	Exception e) {
	System.out.println(e.getMessage());
	}
	%>
	<script>
		function Print() {
			var mywindow = window.open('', 'PRINT', 'height=400,width=600');
			//mywindow.document
				//	.write('<link rel="preconnect" href="https://fonts.googleapis.com" />');
			//mywindow.document.write('
			//<link rel="preconnect" href="https://fonts.gstatic.com" />');
			//mywindow.document.write('<link
				//href="https://fonts.googleapis.com/css2?family=Merriweather:ital,wght@1,300&display=swap"
				//rel="stylesheet" />');
			mywindow.document
					.write('<link type="text/css" rel="stylesheet" href="examPaper.css" />');
			mywindow.document.write(document.getElementById('card').innerHTML);

			mywindow.document.close(); // necessary for IE >= 10
			mywindow.focus(); // necessary for IE >= 10*/

			mywindow.print();
			mywindow.close();

			return true;
		}
	</script>
</body>
</html>