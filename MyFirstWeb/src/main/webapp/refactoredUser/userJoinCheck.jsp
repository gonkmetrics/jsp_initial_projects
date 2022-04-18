<%@page import="kr.co.ict.domain.UserDAO"%>
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
	UserDAO dao = UserDAO.getInstance();
    dao.userJoin(formUserId, formUserPw, formUserName, formUserEmail);
    response.sendRedirect("userLoginForm.jsp");
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