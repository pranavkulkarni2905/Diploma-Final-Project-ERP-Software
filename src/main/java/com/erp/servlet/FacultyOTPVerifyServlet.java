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
 * Servlet implementation class FacultyOTPVerifyServlet
 */
@WebServlet("/FacultyOTPVerifyServlet")
public class FacultyOTPVerifyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FacultyOTPVerifyServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String gen_otp=request.getParameter("gen-otp");
		String phone=request.getParameter("otp-phone");
		
		HttpSession session=request.getSession();
		ServletContext sc=request.getServletContext();
		
		String pin=request.getParameter("otp");
		FacultyDAO fd=new FacultyDAO();
		Faculty f=fd.checkFacultyForOtp(phone);
		
		if(pin.equals(gen_otp)) {
			sc.setAttribute("faculty-id", f.getFaculty_id());
			session.setAttribute("faculty-uname", f.getUname());
			sc.setAttribute("faculty-login-success-context", f);
			session.setAttribute("faculty-login-success", true);
			response.sendRedirect("faculty/faculty-index.jsp");

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
