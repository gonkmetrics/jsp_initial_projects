package com.ict.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Scanner;

public class JDBCUpdate {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner sA = new Scanner(System.in);
		
		System.out.println("user_id (string)");
		String originalUserId = sA.nextLine();
		System.out.println("replace w/ user_id (string)");
		String userId = sA.nextLine();
		System.out.println("replace w/ user_pw (string)");
		String userPw = sA.nextLine();
		System.out.println("replace w/ user_name (string)");
		String userName = sA.nextLine();
		System.out.println("replace w/ user_email (string)");
		String userEmail = sA.nextLine();
		

		
		try {
			ArrayList<String> inputInfo = new ArrayList<String>();
			Collections.addAll(inputInfo, userId, userPw, userName, userEmail);
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbcprac2?serverTimezone=UTC","root","qwe123");
			//Statement stmt = con.createStatement();
			//String ins = "UPDATE userinfo SET user_id='"+inputInfo.get(0)+"', user_pw='"+inputInfo.get(1)+"', user_name='"+inputInfo.get(2)+"', email='"+inputInfo.get(3)+"' WHERE user_id='"+originalUserId+"'";
			//String ins = "UPDATE userinfo SET user_id='"+userId+"', user_pw='"+userPw+"', user_name='"+userName+"', email='"+userEmail+"' WHERE user_id='"+originalUserId+"'";
			//stmt.executeUpdate(ins);
			System.out.println("update complete");
			String query = "UPDATE userinfo SET user_id= ?, user_pw= ?, user_name= ?, email= ? WHERE user_id='"+originalUserId+"'";
			PreparedStatement a = con.prepareStatement(query);
			for(String info: inputInfo) {
				for(int count = 1; count <= 4; count++) {
					if(info.equals("") || info.equals("null")) {
						info=null;
						a.setString(count, info);
				}else {
					a.setString(count, info);
				}
				}
			}
			a.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			sA.close();
		}

	}

}
