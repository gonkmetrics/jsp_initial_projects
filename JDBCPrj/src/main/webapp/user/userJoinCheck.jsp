<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Types"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%
	request.setCharacterEncoding("utf-8");
    /* DB connection */
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbcprac2?serverTimezone=UTC","root","qwe123");

	/* Handle request */
    String formUserId = request.getParameter("userId");
    String formUserPw = request.getParameter("userPw");
    String formUserName = request.getParameter("userName");
    String formUserEmail = request.getParameter("userEmail");
    
    /* Check dupes */
    String insertU = null;
    PreparedStatement queryUser = con.prepareStatement("SELECT user_id, user_pw FROM userinfo WHERE user_id=?");
	queryUser.setString(1, formUserId);
	ResultSet rsUser = queryUser.executeQuery();
	
	if(rsUser.next()){
		insertU = rsUser.getString("user_id");
	}

	
    if(formUserId.equals(insertU)){
    	session.setAttribute("id_dupe",true);
    	response.sendRedirect("userJoinForm.jsp");
    }else{
    	session.removeAttribute("id_dupe");
    	PreparedStatement createUser = con.prepareStatement("INSERT INTO userinfo VALUES (?,?,?,?)");
    	createUser.setString(1, formUserId);
    	createUser.setString(2, formUserPw);
    	createUser.setString(3, formUserName);
    	if(formUserEmail.equals("")){
    		createUser.setObject(4, null, Types.VARCHAR);
    	}else{
    		createUser.setString(4, formUserEmail);
    	}
    	createUser.executeUpdate();
    	boolean registered = true;
    }
    
    /* Fetch DB info */
	/* PreparedStatement createUser = con.prepareStatement("INSERT INTO userinfo VALUES (?,?,?,?)");
	createUser.setString(1, formUserId);
	createUser.setString(2, formUserPw);
	createUser.setString(3, formUserName);
	if(formUserEmail.equals("")){
		createUser.setObject(4, null, Types.VARCHAR);
	}else{
		createUser.setString(4, formUserEmail);
	}
	createUser.executeUpdate();
	boolean registered = true;
	*/
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:if test="${registered}" >
<c:out value="${'Registration Complete'}"/>
</c:if><br>
<a href="userLoginForm.jsp">로그인</a>
</body>
</html>