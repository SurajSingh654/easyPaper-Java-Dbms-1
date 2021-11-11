<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
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
%>
<%
String paper_id = request.getParameter("paper_id");
String pname = request.getParameter("pname");
String pclass = request.getParameter("pclass");
String pdescription = request.getParameter("pdescription");
if (paper_id != null) {
	Connection con = null;
	PreparedStatement ps = null;
	try {
		Class.forName(driver);
		con = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);
		String sql = "Update add_paper set paper_id=?,pname=?,pclass=?,pdescription=? where paper_id=" + paper_id;
		ps = con.prepareStatement(sql);
		ps.setString(1, paper_id);
		ps.setString(2, pname);
		ps.setString(3, pclass);
		ps.setString(4, pdescription);
		int i = ps.executeUpdate();
		if (i > 0) {
	out.print("Record Updated Successfully");
		} else {
	out.print("There is a problem in updating Record.");
		}
	} catch (SQLException sql) {
		request.setAttribute("error", sql);
		out.println(sql);
	}
}
%>
