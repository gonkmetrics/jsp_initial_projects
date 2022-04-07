package com.ict.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Scanner;

public class PreparedDelete {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String dbType = "com.mysql.cj.jdbc.Driver";
		String connectUrl = "jdbc:mysql://localhost:3306/jdbcprac2?serverTimezone=UTC";
		String connectId = "root";
		String connectPw = "qwe123";
		String query = "DELETE FROM userinfo WHERE user_id = ?";
		
		Scanner scan = new Scanner(System.in);
		System.out.println("Delete");
		String id = scan.nextLine();
		
		try {
			Class.forName(dbType);
			Connection con = DriverManager.getConnection(connectUrl, connectId, connectPw);
			PreparedStatement a = con.prepareStatement(query);
			a.setString(1, id);
			a.executeUpdate();

		}
		catch(Exception e) {
			
		}finally {
			scan.close();
		}

	}

}
