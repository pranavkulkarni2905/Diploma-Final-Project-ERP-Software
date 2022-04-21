package com.erp.servlet;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.erp.DAO.StudentDAO;
import com.erp.model.Student;

/**
 * Servlet implementation class StudentLoginServlet
 */
@WebServlet("/StudentLoginServlet")
public class StudentLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StudentLoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		HttpSession session = request.getSession();
		ServletContext sc = request.getServletContext();
		String username = request.getParameter("uname");
		String password = request.getParameter("password");
		
		StudentDAO sdao = new StudentDAO();
		Student s = sdao.checkStudent(username, password);
		if(s==null)
		{
			sc.setAttribute("student-login-fail-context", s);
			session.setAttribute("student-login-fail", false);
			response.sendRedirect("./Students/student-login.jsp");
		}
		else {
			//sc.setAttribute("student-id", s.getStudent_id());
			//session.setAttribute("student-uname", s.getUsername());
			sc.setAttribute("student-login-success-context", s);
			session.setAttribute("student-login-success", true);
			response.sendRedirect("./Students/student-index.jsp");
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
