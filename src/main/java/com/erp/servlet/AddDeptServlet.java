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
 * Servlet implementation class AddDeptServlet
 */
@WebServlet("/AddDeptServlet")
public class AddDeptServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddDeptServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String dept_code=request.getParameter("code");
		String dept_name=request.getParameter("name");
		String intake=request.getParameter("intake");
		String sem=request.getParameter("sem");
		
		HttpSession session=request.getSession();
		
		DepartmentDAO dd=new DepartmentDAO();
		int i=dd.addDept(dept_code, dept_name, intake, sem);
		
		if(i>0) {
			session.setAttribute("add-dept-success",true);
			response.sendRedirect("admin/add-dept.jsp");
		}else{
			session.setAttribute("add-dept-fail", false);
			response.sendRedirect("admin/add-dept.jsp");
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
