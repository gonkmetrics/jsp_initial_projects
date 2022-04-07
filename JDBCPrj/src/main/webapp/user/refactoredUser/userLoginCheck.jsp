<%@page import="java.util.List"%>
<%@page import="com.ict.domain.UserDAO"%>
<%@page import="com.ict.domain.UserVO"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    UserDAO dao = new UserDAO(); //constructor executes commands in constructor
    List<UserVO> userList = dao.getAllUserList(); //execute dao method for class UserDAO
    out.println(userList);
    //arraylist can be directly printed
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