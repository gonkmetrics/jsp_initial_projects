package com.ict.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Scanner;

public class PreparedSelect {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String dbType = "com.mysql.cj.jdbc.Driver";
		String connectUrl = "jdbc:mysql://localhost:3306/jdbcprac2?serverTimezone=UTC";
		String connectId = "root";
		String connectPw = "qwe123";
		String query = "INSERT INTO userinfo VALUES (?,?,?,?)";
		
		ArrayList<String> inputInfo = new ArrayList<String>();
		Scanner scan = new Scanner(System.in);
		System.out.println("id");
		inputInfo.add(scan.nextLine());
		System.out.println("pw");
		inputInfo.add(scan.nextLine());
		System.out.println("name");
		inputInfo.add(scan.nextLine());
		System.out.println("email");
		inputInfo.add(scan.nextLine());
		
		try {
			Class.forName(dbType);
			Connection con = DriverManager.getConnection(connectUrl, connectId, connectPw);
			PreparedStatement a = con.prepareStatement(query);
			for(String info:inputInfo){
				int index = inputInfo.indexOf(info);
				a.setString(index+1, info);
			}
			a.executeUpdate();
			//a.setString(2, pw);
			//a.setString(3, name);
			//a.setString(4, email);
			//a.executeUpdate();
		}
		catch(Exception e) {
			
		}

	}

}
