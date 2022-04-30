package com.erp.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.Date;

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
	
	public int addStudent(String name,String email,String phone,String dept,String gender,String password)
	{
		int i=0;
		Timestamp date=new Timestamp(new Date().getTime());
		con = DBConnection.getConnection();
		try {
			ps=con.prepareStatement("insert into erp_student(name,email,phone,dept,gender,password,username,admission_date,verified) values(?,?,?,?,?,?,?,?,?)");
			ps.setString(1,name);
			ps.setString(2, email);
			ps.setString(3, phone);
			ps.setString(4, dept);
			ps.setString(5, gender);
			ps.setString(6, password);
			ps.setString(7, email);
			ps.setTimestamp(8, date);
			ps.setString(9, "No");
			i=ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return i;
	}
	public ResultSet getStudentIdForVerify(String password,String email) {
		con=DBConnection.getConnection();
		ResultSet rs=null;
		try {
			ps=con.prepareStatement("select * from erp_student where password=? and email=?");
			ps.setString(1, password);
			ps.setString(2, email);
			rs = ps.executeQuery();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rs;
	}

}
