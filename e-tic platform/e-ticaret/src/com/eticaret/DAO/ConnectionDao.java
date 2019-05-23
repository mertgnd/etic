package com.eticaret.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ConnectionDao {
	public static Connection getConnection(){
		Connection connectStatus =null;
		
		try{
			Class.forName("com.mysql.cj.jdbc.Driver");
			connectStatus=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/deneme?useUnicode=true&characterEncoding=UTF-8&zeroDateTimeBehavior=CONVERT_TO_NULL&serverTimezone=GMT&useSSL=false", "root", "mert");
		} catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
		}
		return connectStatus;
	}
	
	public static void kapat(Connection con,PreparedStatement psmt, ResultSet rs) throws SQLException{
		if (con != null)
			con.close();
		if (psmt != null)
			psmt.close();
		if (rs != null)
			rs.close();
	}
	public static void kapat(Connection con,PreparedStatement psmt) throws SQLException{
		if (con != null)
			con.close();
		if (psmt != null)
			psmt.close();
	}
}
			
		