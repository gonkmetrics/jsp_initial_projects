<%@page import="kr.co.ict.domain.UserDAO"%>
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
	UserDAO dao = UserDAO.getInstance();
	dao.userDelete((String)loggedIn);
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