package com.ict.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Scanner;

public class JDBCSelectQ1 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner sA = new Scanner(System.in);
		System.out.println("user_id (string)");
		String userId = sA.nextLine();
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbcprac2?serverTimezone=UTC","root","qwe123");
			Statement stmt = con.createStatement();
			//or string sql = "SELECT * FROM userInfo WHERE";
			ResultSet rs = stmt.executeQuery("SELECT * FROM userinfo WHERE user_id='"+userId+"'");
			if(rs.next()) {
			System.out.println(rs.getString("user_id")+"\n"+
					rs.getString("user_pw")+"\n"+
					rs.getString("user_name")+"\n"+
					rs.getString("email"));
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			sA.close();
		}
		
	}

}
