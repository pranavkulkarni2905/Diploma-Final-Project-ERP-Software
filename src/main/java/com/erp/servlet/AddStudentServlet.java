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

import com.erp.DAO.CommanDAO;
import com.erp.DAO.StudentDAO;
import com.erp.email.SendMail;
import com.erp.email.SendOtp;

/**
 * Servlet implementation class AddStudentServlet
 */
@WebServlet("/AddStudentServlet")
public class AddStudentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddStudentServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String phone=request.getParameter("phone");
		String dept=request.getParameter("department");
		String gender=request.getParameter("gender");
		
		SendMail sm=new SendMail();
		String password=sm.generateRandomPassword();
		
		HttpSession session=request.getSession();
		
		StudentDAO sd=new StudentDAO();
		
		int i=sd.addStudent(name, email, phone, dept, gender, password);
		int id=0;
		
		ResultSet rs=sd.getStudentIdForVerify(password, email);
		try {
			if(rs.next()) {
				id=rs.getInt(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		SendOtp so=new SendOtp();
		String msg="Dear "+name+",\n"
				+"Your Admission has been confirmed at ERP. We sent you an email for verifying your email including login credentials."
	
				+"Thank You";
		so.sendSms(msg, phone);
		final String subject = "[ Login Credential For SignIn ] ERP System ";
		final String messg = "Dear "+name+",\n\n"
				+"Congratulation ! Your Admission is Confirmed!\n"
				+ "Welcome To ERP System. Your Admission has been approved by our Senior Professor. And also You have registered successfully on ERP System(Portal).\n\n"
				+ "Accordingly, We are sending your Username & Password to access the our portal and your dashboard.\n\n"
				+ "Username = "+email+"\n"
				+"Password = "+password+"\n\n"
				+"Before SignIn on ERP System You must have to verify your email addres by clicking on follwing link.\n"
				+"http://localhost:8085/ERP_Software/verify-student.jsp?student_id="+id+"\n\n"
				+"[Do not share this link with others]\n\n"
				+"*After Login , First change your Username and Password*\n"
				+"Regards,\n"
				+"ERP System Team";
		sm.sendEmail(email, messg, subject);
		
		
		if(i>0)
		{
			session.setAttribute("add-student-success",true);
			response.sendRedirect("admin/add-student.jsp");
		}
		else {
			session.setAttribute("add-student-fail", false);
			response.sendRedirect("admin/add-student.jsp");
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
