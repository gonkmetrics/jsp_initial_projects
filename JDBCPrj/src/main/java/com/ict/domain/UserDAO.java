package com.ict.domain;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

//DAOs can help cut down on having to connect to DB on single page applications
public class UserDAO {
	//As explored earlier, the data required for DB connection:
	private String dbType="com.mysql.cj.jdbc.Driver";
	private String connectUrl="jdbc:mysql://localhost:3306/jdbcprac2?serverTimezone=UTC";
	private String connectId = "root";
	private String connectPw = "mysql123";
	
	public UserDAO() {
		try {
			Class.forName(dbType);
			
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	//gets all user info into a list
	public List<UserVO> getAllUserList(){
		//closing methods is recommended to prevent bloat
		Connection con = null;
		PreparedStatement queryUser = null;
		ResultSet rsUser = null;
		List<UserVO> userList = new ArrayList<>();
		String query = "SELECT * FROM userinfo";
		try {
			con = DriverManager.getConnection(connectUrl,connectId,connectPw);
			queryUser = con.prepareStatement(query);
			rsUser = queryUser.executeQuery();
			while (rsUser.next()) {
				UserVO user = new UserVO();
				//list of objects UserVO
				System.out.println("user before insertion: "+user);
				user.setUserId(rsUser.getString("user_id"));
				user.setUserPw(rsUser.getString("user_pw"));
				user.setUserName(rsUser.getString("user_name"));
				user.setEmail(rsUser.getString("email"));
				System.out.println("user after insertion: "+user);
				userList.add(user);

				//userList.addAll();
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
			con.close();
			queryUser.close();
			rsUser.close();
			}catch(Exception e) {}
			
		}
		return userList;
		
		
	}
	
	
	
}
