<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    session.setAttribute("id_session","abc1234");
    session.setAttribute("name_session","laver_fry");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<a href="http://localhost:8181/JSPBasic1/jspobject/session/session_check.jsp">session</a>
</body>
</html>