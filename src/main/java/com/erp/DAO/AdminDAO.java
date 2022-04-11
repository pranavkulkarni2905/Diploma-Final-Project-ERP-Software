package com.erp.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


import com.erp.model.Admin;

public class AdminDAO {
	
	Connection con=null;
	PreparedStatement ps=null;
	
	public Admin checkAdmin(String username,String password) {
		Admin adminObj=null;
		try {
			con=DBConnection.getConnection();
			//String ecryptedPass=Base64.getEncoder().encodeToString(password.getBytes());
			ps=con.prepareStatement("select * from erp_admin where username=? and password=?");
			ps.setString(1, username);
			ps.setString(2, password);
			
			ResultSet rs=ps.executeQuery();
			if(rs.next()) {
				adminObj=new Admin();
				adminObj.setAdmin_name(rs.getString(2));
				adminObj.setAdmin_username(rs.getString(3));
				adminObj.setAdmin_email(rs.getString(4));
				adminObj.setAdmin_phone(rs.getString(5));
				adminObj.setAdmin_password(rs.getString(6));
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return adminObj;
		
	}

}
