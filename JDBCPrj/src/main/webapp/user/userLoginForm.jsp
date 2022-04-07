<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
    <%
    Enumeration<String> attributesTest = session.getAttributeNames();
    boolean get = attributesTest.hasMoreElements();
	if(get){
		response.sendRedirect("loginWelcome.jsp");
	}
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container">
<form action="userLoginCheck.jsp" method="post">
<input type="text" name="userId" /><br>
<input type="password" name="userPw" /><br>
<input type="submit"><br>
</form><br>
<a href="userJoinForm.jsp">Register</a>
</div>
</body>
</html>