package com.erp.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.Date;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.erp.DAO.DBConnection;

/**
 * Servlet implementation class AdminLogoutServlet
 */
@WebServlet("/AdminLogoutServlet")
public class AdminLogoutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminLogoutServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession ses = request.getSession();
		ServletContext sc=request.getServletContext();
		
		
		int id=(Integer)(sc.getAttribute("admin-id"));
		System.out.println(id);
		
		
		Connection con=null;
		PreparedStatement ps=null;
		Timestamp date=new Timestamp(new Date().getTime());

		con=DBConnection.getConnection();
		try {
			ps=con.prepareStatement("update erp_admin set logout_time=? where id =?");
			ps.setTimestamp(1, date);
			ps.setInt(2, id);
			int i=ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		sc.removeAttribute("admin-login-success-context");
		ses.removeAttribute("admin-login-success");

		ses.invalidate();
		
		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.

		response.setHeader("Pragma", "no-cache"); // HTTP 1.0.

		response.setDateHeader("Expires", 0); // Proxies.

		//response.sendRedirect("home.jsp");
		HttpSession ses1 = request.getSession();
		ses1.setAttribute("admin-logout-msg", true);
		response.sendRedirect("admin/admin-login.jsp");
	}

	/**
	 * 
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
