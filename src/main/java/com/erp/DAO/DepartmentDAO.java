package com.erp.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.Date;

public class DepartmentDAO {

	Connection con=null;
	PreparedStatement ps=null;
	
	public int addDept(String code,String name,String intake,String sem) {
		Timestamp date=new Timestamp(new Date().getTime());

		int i=0;
		try {
			con=DBConnection.getConnection();
			ps=con.prepareStatement("insert into erp_dept (code,name,intake,semester,dept_register_date) values (?,?,?,?,?)");
			ps.setString(1, code);
			ps.setString(2, name);
			ps.setString(3, intake);
			ps.setString(4, sem);
			ps.setTimestamp(5, date);
			i = ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return i;
	}
	public ResultSet displayAll() {
		ResultSet rs=null;
		con=DBConnection.getConnection();
		try {
			ps=con.prepareStatement("select * from erp_dept");
			rs=ps.executeQuery();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rs;
	}
}
