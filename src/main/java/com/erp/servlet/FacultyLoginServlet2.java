package com.erp.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.erp.DAO.FacultyDAO;
import com.erp.email.SendOtp;

/**
 * Servlet implementation class FacultyLoginServlet2
 */
@WebServlet("/FacultyLoginServlet2")
public class FacultyLoginServlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FacultyLoginServlet2() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		long number = 0;
		SendOtp sotp = new SendOtp();
		HttpSession session = request.getSession();
		number = Long.parseLong(request.getParameter("number"));
		if(number!=0)
		{
			FacultyDAO fdao = new FacultyDAO();
			//int id = (int)session.getAttribute("faculty-id");
			int i = fdao.checkPhone(number);
			if(i==0)
			{
				System.out.println("Not valid phone number");
			}else {
				System.out.println("Valid");
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
