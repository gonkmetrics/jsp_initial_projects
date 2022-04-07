<%@page import="com.ict.domain.UserVO"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <%
    /* empty */
    String insertU = null;
    String insertP = null;
    UserVO user = new UserVO();
    /* DB connection */
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbcprac2?serverTimezone=UTC","root","mysql123");

	/* Handle request */
    String formUserId = request.getParameter("userId");
    String formUserPw = request.getParameter("userPw");
    
    /* Fetch DB info */
	PreparedStatement queryUser = con.prepareStatement("SELECT user_id, user_pw FROM userinfo WHERE user_id=?");
	queryUser.setString(1, formUserId);
	ResultSet rsUser = queryUser.executeQuery();
	
	if(rsUser.next()){
		user.setUserId(rsUser.getString("user_id"));
		user.setUserPw(rsUser.getString("user_pw"));
		//user.setUserName(rsUser.getString("user_name"));
		//user.setEmail(rsUser.getString("email"));
		/* insertU = rsUser.getString("user_id");
		insertP = rsUser.getString("user_pw"); */
	}

	rsUser.close();
	
	/*
	dbPw = user.getUserPw();
	if(formPw.equals(dbPw) && reUrl == null){
		session.setAttribute("s_id", formId);
		reUrl = "loginWelcome.jsp";
	}else if(!formPw.equals(dbPw) && reUrl == null){
	reUrl = "userPwFail.jsp";
	}
	*/
		
	

	
    if((formUserId.equals(insertU))&&(formUserPw.equals(insertP))){
    	session.setAttribute("s_id",formUserId);
    	response.sendRedirect("loginWelcome.jsp");
    	return;
    } else if((formUserId.equals(insertU))&&(!(formUserPw.equals(insertP)))){
    	response.sendRedirect("userPwFail.jsp");
    	return;
    } else if(!(formUserId.equals(insertU)) || (insertU == null)){
    	/* pass if Id null or incorrect */
    	response.sendRedirect("userIdFail.jsp");
    	return;
    }
	//for response.sendRedirect, only create one method, and set the string for the redirect URL below.
    %>
    
</body>
</html>