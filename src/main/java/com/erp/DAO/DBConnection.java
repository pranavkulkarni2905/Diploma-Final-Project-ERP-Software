package com.erp.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
	public static Connection getConnection() {
		Connection con=null;
		try {
			//load drivers
			Class.forName("oracle.jdbc.OracleDriver");
			//connection to data Base

<<<<<<< HEAD
			con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","pranav2905");
=======
			con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","sampada04");
>>>>>>> 14fcd14d4f384dc2958cca19e1dd0cb1070b58b0

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return con;
	}
}
