package com.erp.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.erp.DAO.DepartmentDAO;

/**
 * Servlet implementation class DeleteDeptServlet
 */
@WebServlet("/DeleteDeptServlet")
public class DeleteDeptServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteDeptServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		int deptid = Integer.parseInt(request.getParameter("deptid")); 
		HttpSession session = request.getSession();
		DepartmentDAO ddao = new DepartmentDAO();
		boolean b = ddao.deleteDept(deptid);
		if(b)
		{
			session.setAttribute("dept-deleted", true);
			response.sendRedirect("admin/view-dept.jsp");
			//System.out.println("deleted");
		}
		else {
			session.setAttribute("dept-deleted", false);
			response.sendRedirect("admin/view-dept.jsp");
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
