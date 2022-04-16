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
 * Servlet implementation class AdminEditProfileServlet
 */
@WebServlet("/AdminEditProfileServlet")
public class AdminEditProfileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminEditProfileServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession sc=request.getSession();
		
		int id=Integer.parseInt(request.getParameter("id"));
		String username=request.getParameter("username");
		String email=request.getParameter("email");
		String phone=request.getParameter("phone");
		String name=request.getParameter("name");
		//System.out.println(username);
		
		AdminDAO ad=new AdminDAO();
		int i=ad.editAdminProfile(id, username, name, email, phone);
		if(i>0) {
			sc.setAttribute("admin-profile-edit-success", true);
			response.sendRedirect("admin/admin-profile-edit.jsp");
		}else {
			sc.setAttribute("admin-profile-edit-fail", false);
			response.sendRedirect("admin/admin-profile-edit.jsp");
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
