package com.erp.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.Date;

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
				adminObj.setAdmin_id(rs.getInt(1));
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
	public int adminChangePassword(String current_pass,String new_pass,int id) {
		con=DBConnection.getConnection();
		int i=0;
		try {
			ps=con.prepareStatement("update erp_admin set password=? where id=?" );
			ps.setString(1, new_pass);
			ps.setInt(2, id);
			i = ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return i;
	}
	
	public int addNewAdmin(String username,String email,String contact,String password) {
		con=DBConnection.getConnection();
		Timestamp date=new Timestamp(new Date().getTime());

		int i=0;
		try {
			ps=con.prepareStatement("insert into erp_admin (username,email,phone,password,register_time) values(?,?,?,?,?)");
			ps.setString(1, username);
			ps.setString(2, email);
			ps.setString(3, contact);
			ps.setString(4, password);
			ps.setTimestamp(5, date);
			i = ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return i;
	}
	
	public ResultSet viewAllAdmin() {
		con=DBConnection.getConnection();
		ResultSet rs=null;
		try {
			ps=con.prepareStatement("select * from erp_admin");
			rs = ps.executeQuery();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rs;
		
	}
	public ResultSet getSpecificAdminDataById(int id) {
		//Admin a1=new Admin();
		ResultSet rs=null;
		con=DBConnection.getConnection();
		try {
			ps=con.prepareStatement("select * from erp_admin where id=?");
			ps.setInt(1, id);
			rs=ps.executeQuery();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rs;
	}

}
