package com.ict.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Scanner;

public class JDBCInsert {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		//Use scanner, then INSERT INTO query to add to DB from java-side
		//ResultSet is not needed
		//Check in MySQL Workbench, then in previous scanner class
		//use method executeUpdate("QUERY") for non select queries
		Scanner sA = new Scanner(System.in);
		System.out.println("user_id (string)");
		String userId = sA.nextLine();
		System.out.println("user_pw (string)");
		String userPw = sA.nextLine();
		System.out.println("user_name (string)");
		String userName = sA.nextLine();
		System.out.println("user_email (string)");
		String userEmail = sA.nextLine();
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbcprac2?serverTimezone=UTC","root","qwe123");
			Statement stmt = con.createStatement();
			String ins = "INSERT INTO userinfo VALUES ('"+userId+"','"+userPw+"','"+userName+"','"+userEmail+"')";
			stmt.executeUpdate(ins);
			System.out.println("insert complete");
		}catch(Exception e) {
			e.printStackTrace();
		}finally {}
		sA.close();

	}

}
