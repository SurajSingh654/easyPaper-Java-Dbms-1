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
<title>Class Report</title>
</head>
<body>

<h1>Class Report</h1>
<table border="1">
<tr>
<td>Class Id</td>
<td>Class Name</td>
<td>Class Description</td>

</tr>
<%
try{
connection = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);
statement=connection.createStatement();
String sql ="select * from add_class";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("class_id") %></td>
<td><%=resultSet.getString("cname") %></td>
<td><%=resultSet.getString("cdescription") %></td>
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
