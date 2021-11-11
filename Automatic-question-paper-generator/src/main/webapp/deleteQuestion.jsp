<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String question_id=request.getParameter("question_id");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/easypaper", "root", "Antiquity@12");
Statement st=conn.createStatement();
int i=st.executeUpdate("DELETE FROM add_question WHERE question_id="+question_id);
out.println("<script type=\"text/javascript\">");
out.println("alert('Question Deleted Successfully');");
out.println("location='questionReport.jsp';");
out.println("</script>");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
