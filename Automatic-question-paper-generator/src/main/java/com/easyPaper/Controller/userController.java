package com.easyPaper.Controller;

import java.io.IOException;
import java.sql.SQLException;

import com.easyPaper.DAO.userDAO;
import com.easyPaper.Model.userModel;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
public class userController extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	 
    public userController() {
        super();
    }
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String email = request.getParameter("email");
		String password = request.getParameter("password");

		userDAO userDao = new userDAO();

		try {
			userModel user = userDao.checkLogin(email,password);
			String destPage = "Practice.jsp";

			if (user != null) {
				HttpSession session = request.getSession();
				session.setAttribute("user", user);
				destPage = "teacherHomePage.jsp";
			} else {
				String message = "Invalid email/password";
				request.setAttribute("message", message);
			}

			RequestDispatcher dispatcher = request.getRequestDispatcher(destPage);
			dispatcher.forward(request, response);

		} catch (SQLException | ClassNotFoundException ex) {
			throw new ServletException(ex);
		}
	}
}
