package com.ict.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.util.Scanner;

public class JDBCDelete {

		public static void main(String[] args) {
			// TODO Auto-generated method stub
			//Use scanner, then INSERT INTO query to add to DB from java-side
			//ResultSet is not needed
			//Check in MySQL Workbench, then in previous scanner class
			//use method executeUpdate("QUERY") for non select queries
			Scanner sA = new Scanner(System.in);
			System.out.println("user_id (string)");
			String userId = sA.nextLine();
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbcprac2?serverTimezone=UTC","root","qwe123");
				Statement stmt = con.createStatement();
				String ins = "DELETE FROM userinfo WHERE user_id='"+userId+"'";
				stmt.executeUpdate(ins);
				System.out.println("delete complete");
			}catch(Exception e) {
				e.printStackTrace();
			}finally {
				sA.close();
			}
			

		

	}

}
