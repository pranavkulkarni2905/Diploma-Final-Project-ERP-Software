package com.erp.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.erp.DAO.AdminDAO;
import com.erp.DAO.CommanDAO;

/**
 * Servlet implementation class AddFacultyServlet
 */
@WebServlet("/AddFacultyServlet")
public class AddFacultyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public AddFacultyServlet() {
        super();
        
       
        
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String fname=request.getParameter("fname");
		String mname=request.getParameter("mname");
		String lname=request.getParameter("lname");
		String email=request.getParameter("email");
		String education=request.getParameter("education");
		String password=request.getParameter("password");
		
		HttpSession session=request.getSession();
		CommanDAO cd=new CommanDAO();
		int i=cd.Add_faculty(fname, mname, lname, email, education, password);
		if(i>0)
		{
			session.setAttribute("add-faculty-success",true);
			response.sendRedirect("admin/add-faculty.jsp");
		}
		else {
			session.setAttribute("add-faculty-fail", false);
			response.sendRedirect("admin/add-faculty.jsp");
		}
		
		}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
