package com.erp.DAO;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class CommanDAO {

	Connection con=null;
	PreparedStatement ps=null;
	public int addFaculty(String name,String email,String phone,String gender,String password){
		int i=0;
		con = DBConnection.getConnection();
			try {
				ps=con.prepareStatement("insert into erp_faculty (name,email,phone,gender,password,verified) values(?,?,?,?,?,?)");
				ps.setString(1,name);
				ps.setString(2, email);
				ps.setString(3,phone);
				ps.setString(4,gender);
				ps.setString(5, password);
				ps.setString(6, "No");
				i = ps.executeUpdate();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}		
		return i;
		
	}
	public ResultSet getFacultyIdForVerify(String password,String email) {
		con=DBConnection.getConnection();
		ResultSet rs=null;
		try {
			ps=con.prepareStatement("select * from erp_faculty where password=? and email=?");
			ps.setString(1, password);
			ps.setString(2, email);
			rs = ps.executeQuery();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rs;
	}
	public ResultSet viewAllFaculty(){
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
	public ResultSet getFacultyById(int id){
		con = DBConnection.getConnection();
		ResultSet rs = null;
		try {
			ps = con.prepareStatement("select * from erp_faculty where id=?");
			ps.setInt(1, id);
			rs = ps.executeQuery();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rs;
	}
	public int updateVerifiedStatus(int id) {
		con=DBConnection.getConnection();
		int i=0;
		try {
			ps=con.prepareStatement("update erp_faculty set verified=? where id=?");
			ps.setString(1, "Yes");
			ps.setInt(2, id);
			i = ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return i;
	}
}
