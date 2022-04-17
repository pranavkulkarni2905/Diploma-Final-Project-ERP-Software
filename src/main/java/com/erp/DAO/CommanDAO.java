package com.erp.DAO;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class CommanDAO {

	Connection con=null;
	PreparedStatement ps=null;
	public int Add_faculty(String fname,String mname,String lname,String email,String education,String password)
	{
		int i=0;
		con = DBConnection.getConnection();
			try {
				ps=con.prepareStatement("insert into erp_faculty (firstname,middlename,lastname,email,education,password) values(?,?,?,?,?,?)");
				ps.setString(1,fname);
				ps.setString(2, mname);
				ps.setString(3,lname);
				ps.setString(4,email);
				ps.setString(5,education);
				ps.setString(6, password);
				i = ps.executeUpdate();
				
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}		
		return i;
		
	}
	
	public ResultSet viewAllFaculty()
	{
		con = DBConnection.getConnection();
		ResultSet rs = null;
		try {
			ps = con.prepareStatement("select * from erp_faculty");
			rs = ps.executeQuery();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rs;
	}
}
