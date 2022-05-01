package com.erp.servlet;

import java.io.IOException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

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
    public boolean isValid(String mobNo) {

		// The given argument to compile() method
		// is regular expression. With the help of
		// regular expression we can validate mobile
		// number.
		// 1) Begins with 0 or 91
		// 2) Then contains 7 or 8 or 9.
		// 3) Then contains 9 digits
		Pattern p = Pattern.compile("(0/91)?[7-9][0-9]{9}");

		// Pattern class contains matcher() method
		// to find matching between given number
		// and regular expression
		Matcher m = p.matcher(mobNo);
		return (m.find() && m.group().equals(mobNo));
	}
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException,NullPointerException {
		// TODO Auto-generated method stub]
		String pin=null;
		String otp= null;
		pin=request.getParameter("otp");
		
		SendOtp so = new SendOtp();
		
		HttpSession session = request.getSession();
		String number=null;
		number = request.getParameter("phone");
		
		
		
		FacultyDAO fd = new FacultyDAO();
	
			
			if(isValid(number)) {
				int i = fd.checkPhone(number);
				
				if(i==0)
				{
					session.setAttribute("invalid-phone", false);
					response.sendRedirect("faculty/faculty-login.jsp");
				}else {
					otp=so.generateOTP();
					String msg=otp + " is One Time Password (OTP) for your Login. Don't Share it with others.\nThank You\nERP System";
					so.sendSms(msg, number);
					
					System.out.println("Valid");
					
					session.setAttribute("gen-otp", otp);
					session.setAttribute("otp-phone", number);
					session.setAttribute("otp-sent-success", true);
					response.sendRedirect("faculty/faculty-login.jsp");
					
				}
			}else {
				session.setAttribute("not-exist-phone", false);
				response.sendRedirect("faculty/faculty-login.jsp");
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
