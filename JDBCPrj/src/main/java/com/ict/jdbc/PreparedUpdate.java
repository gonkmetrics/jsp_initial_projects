package com.ict.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Scanner;

public class PreparedUpdate {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String dbType = "com.mysql.cj.jdbc.Driver";
		String connectUrl = "jdbc:mysql://localhost:3306/jdbcprac2?serverTimezone=UTC";
		String connectId = "root";
		String connectPw = "qwe123";
		String query = "UPDATE userinfo SET user_id=?, user_pw=?, user_name=?, email=? WHERE user_id = ?";
		
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
			int index = 1;
			for(String info:inputInfo){
				if(info.equals("null") || info.equals("")) {
					a.setNull(index, java.sql.Types.VARCHAR);
				} else {
					a.setString(index, info);
				}
				index++;
			}
			int sizeL = inputInfo.size()+1;
			a.setString(sizeL, inputInfo.get(0));
			System.out.println("finish");
			a.executeUpdate();
			//a.setString(2, pw);
			//a.setString(3, name);
			//a.setString(4, email);
			//a.executeUpdate();
		}
		catch(Exception e) {
			e.printStackTrace();
		}

	}

}
