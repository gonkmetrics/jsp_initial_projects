package com.ict.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class JDBSelect {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		//JDBC connecton
		//use forName to mySQL
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			//for mysql 8
			//connection object checks conditions for linkage
			//connection address, mysql user, mysql password are needed
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbcprac2?serverTimezone=UTC","root","qwe123");
			//queries are assigned to statement objects
			Statement stmt = con.createStatement();
			//.executeQuery to execute query of schema
			//selected entries are saved to the resultset object
			ResultSet rs = stmt.executeQuery("SELECT * FROM userinfo");
			//the first set in a resultset is -1. at -1 this is a temp base row. 
			// the next set can be selected with .next
			//the index of a resultset is tthe number of table rows
			//resultset selects a single row by index
			//resultset is used for searching data generally
			
			//rs.next(); and
			//rs.getResourceName(index); can be combined in a loop
			while(rs.next()) {
				System.out.println(rs.getString("user_id")+"   - "+
						rs.getString("user_pw")+
						rs.getString("user_name")+
						rs.getString("email"));
			}
			
			/*
			rs.next();
			System.out.println(rs.getString(1));//or("user_id")
			System.out.println(rs.getString(2));
			System.out.println(rs.getString(3));
			System.out.println(rs.getString(4));
			System.out.println("---------------");
			rs.next();
			System.out.println(rs.getString(1));
			System.out.println(rs.getString(2));
			System.out.println(rs.getString(3));
			System.out.println(rs.getString(4));
			System.out.println("---------------");
			rs.next();
			System.out.println(rs.getString(1));
			System.out.println(rs.getString(2));
			System.out.println(rs.getString(3));
			System.out.println(rs.getString(4));
			*/
		}catch(Exception e) {
			e.printStackTrace();
		}
		

	}

}
