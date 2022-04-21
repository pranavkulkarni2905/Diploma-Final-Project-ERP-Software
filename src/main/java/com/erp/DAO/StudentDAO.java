package com.erp.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.erp.model.Student;

public class StudentDAO {
	Connection con = null;
	PreparedStatement ps = null;
	
	public Student checkStudent(String username, String password)
	{
		Student s = null;
		con = DBConnection.getConnection();
		try {
			ps = con.prepareStatement("select * from erp_student where username=? and password=?");
			ps.setString(1, username);
			ps.setString(2, password);
			ResultSet rs = ps.executeQuery();
			if(rs.next())
				s = new Student(rs.getInt(1),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7),rs.getString(8),rs.getString(10),rs.getString(9),username,password);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return s;
	}

}
