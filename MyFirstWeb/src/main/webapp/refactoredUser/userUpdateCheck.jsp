<%@page import="kr.co.ict.domain.UserDAO"%>
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
	UserDAO dao = UserDAO.getInstance();
	dao.userUpdate(formUserId, formUserPw, formUserName, formUserEmail);

    response.sendRedirect("loginWelcome.jsp");
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