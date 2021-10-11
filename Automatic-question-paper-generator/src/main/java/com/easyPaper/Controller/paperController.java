package com.easyPaper.Controller;

import java.io.IOException;
import java.io.PrintWriter;

import com.easyPaper.DAO.addclassDAO;
import com.easyPaper.DAO.addpaperDAO;
import com.easyPaper.Model.classModel;
import com.easyPaper.Model.paperModel;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class paperController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private addpaperDAO paperDao;

	public void init() {
		paperDao = new addpaperDAO();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String paperName = request.getParameter("paperName");
		String className = request.getParameter("className");
		String Description = request.getParameter("Description");
		paperModel user = new paperModel();
		user.setPname(paperName);
		user.setPclass(className);
		user.setPdescription(Description);

		try {
			paperDao.registerPaper(user);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		PrintWriter out = response.getWriter();
		out.println("<script type=\"text/javascript\">");
		out.println("alert('Paper Added Successfully');");
		out.println("location='teacherHomePage.jsp';");
		out.println("</script>");
	}

}
