package com.easyPaper.Controller;

import java.io.IOException;
import java.io.PrintWriter;

import com.easyPaper.DAO.contactDAO;
import com.easyPaper.Model.contactModel;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class contactController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private contactDAO contact;

	public void init() {
		contact = new contactDAO();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String feed = request.getParameter("feed");

		contactModel user = new contactModel();
		user.setFeedback(feed);
		try {
			contact.contactUser(user);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		PrintWriter out = response.getWriter();
		out.println("<script type=\"text/javascript\">");
		out.println("alert('Feedback Successfully Received');");
		out.println("location='Practice.jsp';");
		out.println("</script>");
	}
}
