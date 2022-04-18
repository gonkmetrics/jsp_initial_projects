package com.ict.domain;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.mysql.cj.conf.ConnectionUrl.Type;

//DAOs can help cut down on having to connect to DB on single page applications
public class UserDAO {
	//As explored earlier, the data required for DB connection:
	private String dbType="com.mysql.cj.jdbc.Driver";
	private String connectUrl="jdbc:mysql://localhost:3306/jdbcprac2?serverTimezone=UTC";
	private String connectId = "root";
	private String connectPw = "qwe123";
	private DataSource ds = null;
	
	//connection pool: cache of connections to DB, same class can be reused
	
	//singleton pattern: creates one DAO instance, DAO address shared with user and called then needed
	//getInstance used instead of using constructor 
	//this prevents many DAOs being constructed on a single servlet that can do with a single DAO class
	//most importantly, this concept is vital when only one of an object should exist at runtime
	//i.e. situations in which 2 DAO, or any object, would break a program
	private static UserDAO dao = new UserDAO();
	
	private UserDAO() {
		try {
			Context ct = new InitialContext();
			ds = (DataSource)ct.lookup("java:comp/env/jdbc/mysql");
		}catch(Exception e) {}
	}
	
	public static UserDAO getInstance() {
		if(dao == null){
			dao = new UserDAO();
		}
		return dao;
	}
	
	/*
	public UserDAO() {
		try {
			Context ct = new InitialContext();
			ds = (DataSource)ct.lookup("java:comp/env/jdbc/mysql");
			//Class.forName(dbType);
			
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
	*/
	
	//gets all user info into a list
	public List<UserVO> getAllUserList(){
		//closing methods is recommended to prevent bloat
		Connection con = null;
		PreparedStatement queryUser = null;
		ResultSet rsUser = null;
		List<UserVO> userList = new ArrayList<>();
		String query = "SELECT * FROM userinfo";
		try {
			//con = DriverManager.getConnection(connectUrl,connectId,connectPw);
			con = ds.getConnection();
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
		/*
		진입점 : getAllUserList.jsp
		getAllUserList.jsp 12번 라인 우변 생성자 호출.
	    UserDAO.java 19번~26번 실행
	    getAllUserList.jsp 12번 라인 우변 복귀 후 결과를 좌변에 대입.
	    getAllUserList.jsp 13번 라인 우변 .getAllUserList() 호출.
	    UserDAO.java 29번~66번 실행
	    getAllUserList.jsp 13번라인 우변 복귀 후 결과를 좌변 List 객체에 대입.
	    getAllUserList.jsp 14번라인 실행(userList 콘솔에 출력)
	    getAllUserList.jsp 16~29라인 화면 구성
	    getAllUserList.jsp 33~40까지 scriplet내에 반복문 호출로 유저정보 화면에 구성
	    getAllUserList.jsp 41~끝 까지 화면 구성
	    servlet응답 후 : 전체 회원정보가 화면에 출력됨.
	    */
		
	}
	
	public UserVO getUserInfo(String userId) {
		Connection con = null;
		PreparedStatement queryUser = null;
		ResultSet rsUser = null;
		UserVO user = new UserVO();
		
		try {
			//con = DriverManager.getConnection(connectUrl,connectId,connectPw);
			con= ds.getConnection();
			String query = "SELECT * FROM userinfo WHERE user_id=?";
			queryUser = con.prepareStatement(query);
			queryUser.setString(1, userId);
			rsUser = queryUser.executeQuery();
			if (rsUser.next()) {
				user.setUserId(rsUser.getString("user_id"));
				user.setUserPw(rsUser.getString("user_pw"));
				user.setUserName(rsUser.getString("user_name"));
				user.setEmail(rsUser.getString("email"));
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
		return user;
	}
	
	public void userDelete(String userId) {
		Connection con = null;
		PreparedStatement queryUser = null;
		try {
			//con = DriverManager.getConnection(connectUrl,connectId,connectPw);
			con = ds.getConnection();
			queryUser = con.prepareStatement("DELETE FROM userinfo WHERE user_id=?");
			queryUser.setString(1, userId);
			queryUser.executeUpdate();
		}catch(Exception e) {
			
		}finally{
			try {
			con.close();
			queryUser.close();
			}catch(Exception e) {}
		}
		return;
	}
	
	public void userJoin(String userId, String userPw, String userName, String email) {
		Connection con = null;
		PreparedStatement joinUser = null;
		try {
			//con = DriverManager.getConnection(connectUrl,connectId,connectPw);
			con = ds.getConnection();
			joinUser = con.prepareStatement("INSERT INTO userinfo VALUES (?,?,?,?)");
	    	joinUser.setString(1, userId);
	    	joinUser.setString(2, userPw);
	    	joinUser.setString(3, userName);
	    	if(email.equals("")){
	    		joinUser.setObject(4, null, Types.VARCHAR);
	    	}else{
	    		joinUser.setString(4, email);
	    	}
	    	joinUser.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
			con.close();
			joinUser.close();
			}catch(Exception e) {}
		}
		return;
	}
	
	public void userUpdate(String userId, String userPw, String userName, String email) {
		Connection con = null;
		PreparedStatement updateUser = null;
		try {
			//con = DriverManager.getConnection(connectUrl,connectId,connectPw);
			con = ds.getConnection();
		    updateUser = con.prepareStatement("UPDATE userinfo SET user_pw=?, user_name=?, email=? WHERE user_id =?");
		    updateUser.setString(1, userPw);
		    updateUser.setString(2, userName);
		    updateUser.setString(3, email);
		    updateUser.setString(4, userId);
		    updateUser.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
			con.close();
			updateUser.close();
			}catch(Exception e) {}
		}
		return;
	}
	
	
	
}
