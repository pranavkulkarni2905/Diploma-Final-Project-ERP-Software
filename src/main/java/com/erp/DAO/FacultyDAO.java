package com.erp.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.erp.model.Faculty;

public class FacultyDAO {
	Connection con = null;
	PreparedStatement ps = null;

	public Faculty checkFaculty(String username,String pass) {
		Faculty f=null;
		con=DBConnection.getConnection();
		try {
			ps=con.prepareStatement("select * from erp_faculty where username=? and password=?");
			ps.setString(1, username);
			ps.setString(2, pass);
			ResultSet rs=ps.executeQuery();
			if(rs.next()) {
				f=new Faculty(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(5), rs.getString(7), rs.getString(6), rs.getString(8), rs.getString(9), rs.getString(10), rs.getString(14),rs.getString(15),rs.getString(16));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return f;
	}
	public int checkPhone(long number)
	{
		int i = 0;
		ResultSet rs = null;
		con = DBConnection.getConnection();
		try {
			ps = con.prepareStatement("select phone from erp_faculty where phone=?");
			ps.setLong(1, number);
			rs = ps.executeQuery();
			if(rs.next())
				i = 1;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return i;
	}

}
