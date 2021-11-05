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
<title>Paper Report</title>
</head>
<body>

<h1>Paper Report</h1>
<table border="1">
<tr>
<td>Paper Id</td>
<td>Paper Name</td>
<td>Paper Class</td>
<td>Paper Description</td>
<td>Question Paper</td>

</tr>
<%
try{
connection = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);
statement=connection.createStatement();
String sql ="select * from add_paper";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("paper_id") %></td>
<td><%=resultSet.getString("pname") %></td>
<td><%=resultSet.getString("pclass") %></td>
<td><%=resultSet.getString("pdescription") %></td>
<td><a href="#">view</a></td>
</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</body>
</html>
