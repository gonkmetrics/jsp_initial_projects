<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
	request.setCharacterEncoding("utf-8");
    /* DB connection */
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbcprac2?serverTimezone=UTC","root","qwe123");

    String formUserId = request.getParameter("userId");
    String formUserPw = request.getParameter("userPw");
    String formUserName = request.getParameter("userName");
    String formUserEmail = request.getParameter("userEmail");
    String insertP = null;
    String insertN = null;
    String insertE = null;
    
	try{
	PreparedStatement queryUser = con.prepareStatement("SELECT * FROM userinfo WHERE user_id=?");
	queryUser.setString(1, formUserId);
	ResultSet rsUser = queryUser.executeQuery();
	
	if(rsUser.next()){
	insertP = rsUser.getString("user_pw");
	insertN = rsUser.getString("user_name");
	insertE = rsUser.getString("email");
	}
	
    PreparedStatement updateUser = con.prepareStatement("UPDATE userinfo SET user_pw=?, user_name=?, email=? WHERE user_id =?");
    if(formUserPw.equals("")){
    	updateUser.setString(1, insertP);
    }else{
    	updateUser.setString(1, formUserPw);
    }
    if(formUserPw.equals("")){
    	updateUser.setString(2, insertN);
    }else{
    	updateUser.setString(2, formUserName);
    }
    if(formUserPw.equals("")){
    	updateUser.setString(3, insertE);
    }else{
    	updateUser.setString(3, formUserEmail);
    }
    updateUser.setString(4, formUserId);
    updateUser.executeUpdate();

    response.sendRedirect("loginWelcome.jsp");

	}catch(Exception e){
		e.printStackTrace();
	}
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>