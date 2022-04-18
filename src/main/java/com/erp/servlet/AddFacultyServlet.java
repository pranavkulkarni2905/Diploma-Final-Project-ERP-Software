package com.erp.servlet;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.erp.DAO.AdminDAO;
import com.erp.DAO.CommanDAO;
import com.erp.email.SendMail;
import com.erp.email.sendHtmlMail;

/**
 * Servlet implementation class AddFacultyServlet
 */
@WebServlet("/AddFacultyServlet")
public class AddFacultyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public AddFacultyServlet() {
        super();
        
       
        
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		SendMail sm=new SendMail();
		sendHtmlMail shm=new sendHtmlMail();
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String phone=request.getParameter("phone");
		String gender=request.getParameter("gender");
		
		String password=sm.generateRandomPassword();
		
		HttpSession session=request.getSession();
		CommanDAO cd=new CommanDAO();
		int i=cd.addFaculty(name,email,phone,gender,password);
		int id=0;
		
		ResultSet rs=cd.getFacultyIdForVerify(password, email);
		try {
			if(rs.next()) {
				id=rs.getInt(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		final String subject = "[ Login Credential For SignIn ] ERP System ";
		final String messg = "Dear "+name+",\n\n"
				+"Congratulation ! Your Registration is Confirmed!\n"
				+ "Welcome To ERP System. Your Application has been approved by our Senior Professor. You have registered successfully on ERP System.\n\n"
				+ "Accordingly, We are sending your Username & Password to access the our portal and your dashboard.\n\n"
				+ "Username = "+email+"\n"
				+"Password = "+password+"\n\n"
				+"Before SignIn on ERP System You must have to verify your email addres by clicking on follwing link.\n"
				+"http://localhost:8085/ERP_Software/verify-faculty.jsp?faculty_id="+id+"\n\n"
				+"[Do not share this link with others]\n\n"
				+"*After Login first change your Username and Password*\n"
				+"Regards,\n"
				+"ERP System Team";
		sm.sendEmail(email, messg, subject);
		
		
		if(i>0)
		{
			session.setAttribute("add-faculty-success",true);
			response.sendRedirect("admin/add-faculty.jsp");
		}
		else {
			session.setAttribute("add-faculty-fail", false);
			response.sendRedirect("admin/add-faculty.jsp");
		}
		
		}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
