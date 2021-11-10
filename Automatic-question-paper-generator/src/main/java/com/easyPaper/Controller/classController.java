package com.easyPaper.Controller;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import com.easyPaper.DAO.addclassDAO;
import com.easyPaper.Model.classModel;
import com.easyPaper.Model.userModel;

public class classController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private addclassDAO classDao;

	public void init() {
		classDao = new addclassDAO();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String className = request.getParameter("className");
		String Description = request.getParameter("Description");
		classModel user = new classModel();
		user.setCname(className);
		user.setCdescription(Description);

		try {
			classDao.registerClass(user);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		PrintWriter out = response.getWriter();
		out.println("<script type=\"text/javascript\">");
		out.println("alert('Class Added Successfully');");
		out.println("location='teacherHomePage.jsp';");
		out.println("</script>");
	}
}
