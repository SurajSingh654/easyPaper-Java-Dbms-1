package com.easyPaper.Controller;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import com.easyPaper.DAO.addQuestionDAO;

import com.easyPaper.Model.addQuestionModel;

public class addQuestionController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private addQuestionDAO questionDao;

    public void init() {
        questionDao = new addQuestionDAO();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {

        String qpaper = request.getParameter("paperName");
        String qclass = request.getParameter("className");
        String ques = request.getParameter("Description");
        addQuestionModel user = new addQuestionModel();
        user.setQpaper(qpaper);
        user.setQclass(qclass);
        user.setQuestion(ques);
        
        try {
            questionDao.addquestion(user);
        } 
        catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
		PrintWriter out = response.getWriter();
        out.println("<script type=\"text/javascript\">");
        out.println("alert('Question Added Successfully');");
        out.println("location='teacherHomePage.jsp';");
        out.println("</script>");
    }
}

