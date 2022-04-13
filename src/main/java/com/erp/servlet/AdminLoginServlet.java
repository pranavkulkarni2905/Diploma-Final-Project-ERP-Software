package com.erp.servlet;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.erp.DAO.AdminDAO;
import com.erp.model.Admin;

/**
 * Servlet implementation class AdminLoginServlet
 */
@WebServlet("/AdminLoginServlet")
public class AdminLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminLoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		ServletContext sc=request.getServletContext();
		
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		
		AdminDAO adDAO=new AdminDAO();
		Admin adObj=adDAO.checkAdmin(username, password);
		
		if(username.isBlank() && password.isBlank()) {
			session.setAttribute("blank-fields", false);
			response.sendRedirect("admin/admin-login.jsp");
		}
		if(adObj!=null) {
			sc.setAttribute("admin-id", adObj.getAdmin_id());
			sc.setAttribute("admin-login-success-context", adObj);
			session.setAttribute("admin-login-success", true);
			response.sendRedirect("admin/admin-index.jsp");
		}else {
			sc.setAttribute("admin-login-fail-context", adObj);
			session.setAttribute("admin-login-fail", false);
			//System.out.println("hello");
			response.sendRedirect("admin/admin-login.jsp");
			//System.out.println("hiiii");
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
