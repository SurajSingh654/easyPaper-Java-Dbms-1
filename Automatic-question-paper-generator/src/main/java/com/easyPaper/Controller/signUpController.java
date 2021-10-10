package com.easyPaper.Controller;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import com.easyPaper.DAO.signUp;
import com.easyPaper.Model.userModel;


public class signUpController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private signUp userDao;

    public void init() {
        userDao = new signUp();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {

        String fname = request.getParameter("fname");
        String lname = request.getParameter("lname");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String address = request.getParameter("address");
        String city = request.getParameter("city");
        int pincode = Integer.parseInt(request.getParameter("pincode"));
        String state = request.getParameter("state");

        userModel user = new userModel();
        user.setFname(fname);
        user.setLname(lname);
        user.setEmail(email);
        user.setPassword(password);
        user.setAddress(address);
        user.setCity(city);
        user.setPincode(pincode);
        user.setState(state);
        
        try {
            userDao.registerUser(user);
        } 
        catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        response.sendRedirect("userPage.jsp");
    }
}
