<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbcprac2?serverTimezone=UTC","root","qwe123");
	String attributeId = (String)session.getAttribute("s_id");
	String sId = null;
	ResultSet rsUser = null;
	
	
	try{
	PreparedStatement queryUser = con.prepareStatement("SELECT * FROM userinfo WHERE user_id=?");
	queryUser.setString(1, attributeId);
	rsUser = queryUser.executeQuery();
	rsUser.next();
	}catch(Exception e){}
	
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container">
<%= attributeId %><p> user</p>
<form action="userUpdateCheck.jsp" method="post">
<input type="text" name="userId" readonly type="hidden" value="<%= attributeId %>"/><br>
<input type="password" name="userPw"/><br>
<input type="text" name="userName" value="<%= rsUser.getString(3) %>"/><br>
<input type="text" name="userEmail" value="<%= rsUser.getString(4) %>"/><br>
<input type="submit"><br>
</form>
</div>
</body>
</html>