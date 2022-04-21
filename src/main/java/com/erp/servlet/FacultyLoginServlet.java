package com.erp.servlet;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.erp.DAO.FacultyDAO;
import com.erp.model.Faculty;

/**
 * Servlet implementation class FacultyLoginServlet
 */
@WebServlet("/FacultyLoginServlet")
public class FacultyLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FacultyLoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username=request.getParameter("uname");
		String password=request.getParameter("password");
		
		HttpSession session=request.getSession();
		ServletContext sc=request.getServletContext();
		
		FacultyDAO fd=new FacultyDAO();
		Faculty f=fd.checkFaculty(username, password);
		if(f==null) {
			session.setAttribute("faculty-login-fail", false);
			//System.out.println("hello");
			response.sendRedirect("faculty/faculty-login.jsp");
		}
		else if(f.getVerified().equals("No")) {
			session.setAttribute("verified-fail", false);
			response.sendRedirect("faculty/faculty-login.jsp");
		}else {
			if(f!=null) {
				sc.setAttribute("faculty-id", f.getFaculty_id());
				session.setAttribute("faculty-uname", f.getUname());
				sc.setAttribute("faculty-login-success-context", f);
				session.setAttribute("faculty-login-success", true);
				response.sendRedirect("faculty/faculty-index.jsp");
			}
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
