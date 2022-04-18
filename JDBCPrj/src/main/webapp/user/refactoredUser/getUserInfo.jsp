<%@page import="com.ict.domain.UserDAO"%>
<%@page import="com.ict.domain.UserVO"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Driver"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    String userId1 = request.getParameter("userId");
    UserDAO dao = UserDAO.getInstance(); //constructor executes commands in constructor
    UserVO user1 = dao.getUserInfo(userId1); //execute dao method for class UserDAO
    System.out.println(user1);
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