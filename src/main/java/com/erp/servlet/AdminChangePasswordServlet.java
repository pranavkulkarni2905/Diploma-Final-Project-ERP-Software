package com.erp.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.erp.DAO.AdminDAO;

/**
 * Servlet implementation class AdminChangePasswordServlet
 */
@WebServlet("/AdminChangePasswordServlet")
public class AdminChangePasswordServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminChangePasswordServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession sc=request.getSession();
		Integer id=Integer.parseInt(request.getParameter("id"));
		String current_pass=request.getParameter("current_pass");
		String new_pass=request.getParameter("new_pass");
		
		
		AdminDAO ad=new AdminDAO();
		int i=ad.adminChangePassword(current_pass, new_pass, id);
		if (i>0) {
			sc.setAttribute("change-pass-success", true);
			response.sendRedirect("admin/admin-profile.jsp");
		}else {
			sc.setAttribute("change-pass-fail", false);
			response.sendRedirect("admin/admin-profile.jsp");
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
