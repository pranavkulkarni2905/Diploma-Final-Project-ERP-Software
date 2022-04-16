package com.erp.servlet;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.erp.DAO.AdminDAO;

/**
 * Servlet implementation class AdminProfileUploadServlet
 */
@MultipartConfig
@WebServlet("/AdminProfileUploadServlet")
public class AdminProfileUploadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminProfileUploadServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int id=Integer.parseInt(request.getParameter("id"));
		AdminDAO ad=new AdminDAO();
		
		
			Part file=request.getPart("profile-photo");
			
			String imageFileName=file.getSubmittedFileName();  // get selected image file name
			imageFileName=id+"_"+imageFileName;
			System.out.println("Selected Image File Name : "+imageFileName);
		
		String uploadPath="C:/Users/NCS/eclipse-workspace/ERP Software/src/main/webapp/admin-images/"+imageFileName;  // upload path where we have to upload our actual image
		System.out.println("Upload Path : "+uploadPath);
		
		// Uploading our selected image into the images folder
		
		try
		{
		
		FileOutputStream fos=new FileOutputStream(uploadPath);
		InputStream is=file.getInputStream();
		
		byte[] data=new byte[is.available()];
		is.read(data);
		fos.write(data);
		fos.close();
		
		}
		
		catch(Exception e)
		{
			e.printStackTrace();
		}
		int i=ad.uploadAdminProfile(imageFileName, id);
		HttpSession sc=request.getSession();
		if(i>0) {
			sc.setAttribute("upload-success", true);
			response.sendRedirect("admin/admin-profile-edit.jsp");
		}else {
			sc.setAttribute("upload-fail", false);
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
