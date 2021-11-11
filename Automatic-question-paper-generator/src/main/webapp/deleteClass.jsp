<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String class_id=request.getParameter("class_id");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/easypaper", "root", "Antiquity@12");
Statement st=conn.createStatement();
int i=st.executeUpdate("DELETE FROM add_class WHERE class_id="+class_id);
out.println("<script type=\"text/javascript\">");
out.println("alert('Class Deleted Successfully');");
out.println("location='classReport.jsp';");
out.println("</script>");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
