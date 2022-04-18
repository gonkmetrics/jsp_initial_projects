<%@page import="kr.co.ict.domain.UserVO"%>
<%@page import="kr.co.ict.domain.UserDAO"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
	String sId = (String)session.getAttribute("s_id");
    UserDAO dao = UserDAO.getInstance();
    UserVO user = dao.getUserInfo(sId);

    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container">
<%= sId %><p> user</p>
<form action="userUpdateCheck.jsp" method="post">
<input type="text" name="userId" readonly type="hidden" value="<%= sId %>"/><br>
<input type="password" name="userPw"/><br>
<input type="text" name="userName" value="${user.getUserName()}"/><br>
<input type="text" name="userEmail" value="${user.getEmail()}"/><br>
<input type="submit"><br>
</form>
</div>
</body>
</html>