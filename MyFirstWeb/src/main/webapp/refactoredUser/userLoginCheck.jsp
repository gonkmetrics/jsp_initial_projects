<%@page import="kr.co.ict.domain.UserDAO"%>
<%@page import="kr.co.ict.domain.UserVO"%>
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
    String redirectURL = null;
	/* Handle request */
    String formUserId = request.getParameter("userId");
    String formUserPw = request.getParameter("userPw");
    /* DB connection */
	UserDAO dao = UserDAO.getInstance();
    UserVO user = dao.getUserInfo(formUserId);
    insertU = user.getUserId();
    insertP = user.getUserPw();
	
    if((formUserId.equals(insertU))&&(formUserPw.equals(insertP))){
    	session.setAttribute("s_id",formUserId);
    	redirectURL = "loginWelcome.jsp";
    } else if((formUserId.equals(insertU))&&(!(formUserPw.equals(insertP)))){
    	redirectURL = "userPwFail.jsp";
    } else if(!(formUserId.equals(insertU)) || (insertU == null)){
    	/* pass if Id null or incorrect */
    	redirectURL = "userIdFail.jsp";
    }
    response.sendRedirect(redirectURL);
	//for response.sendRedirect, only create one method, and set the string for the redirect URL below.
    %>
    
</body>
</html>