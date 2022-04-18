<%@page import="java.util.List"%>
<%@page import="kr.co.ict.domain.UserDAO"%>
<%@page import="kr.co.ict.domain.UserVO"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    <%

    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table>
<thead>
<tr>
	<th>categories...</th>
</tr>
</thead>
<tbody>
<% 
UserDAO dao = UserDAO.getInstance(); //constructor executes commands in constructor
List<UserVO> userList = dao.getAllUserList(); //execute dao method for class UserDAO
System.out.println(userList);
for(UserVO board : userList){ %>
<tr>
<td>
<%= board.getUserId() %>
</td>
<td>
<%=  board.getUserPw() %>
</td>
<td>
<%= board.getUserName() %>
</td>
<td>
<%= board.getEmail() %>
</td>
</tr>
<% } %>
</tbody>
</table>
<br>
<table>
<c:forEach items="${userList}" var="element">
<tr>
<td><c:out value="${element.getUserId}"/></td>
<td><c:out value="${element.getUserPw}"/></td>
<td><c:out value="${element.getUserName}"/></td>
<td><c:out value="${element.getEmail}"/></td>
</tr>
</c:forEach>
</table>
</body>
</html>