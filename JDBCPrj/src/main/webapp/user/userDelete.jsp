<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    String redirectPage = "userLoginForm.jsp";
    Object loggedIn = session.getAttribute("s_id");
    try{
    if(loggedIn == null){
    	response.sendRedirect(redirectPage);
    }
    %>

    <%
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbcprac2?serverTimezone=UTC","root","qwe123");
	PreparedStatement deleteUser = con.prepareStatement("DELETE FROM userinfo WHERE user_id=?");
	deleteUser.setString(1, (String)loggedIn);
	deleteUser.executeUpdate();
	session.invalidate();
	response.sendRedirect(redirectPage);
    }catch(Exception e){}
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