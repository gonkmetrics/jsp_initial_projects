<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    String userId = (String)session.getAttribute("s_id");
    Enumeration<String> attNames = session.getAttributeNames();
    boolean get = attNames.hasMoreElements();
	if(userId!=null){
	}else if(get){
		response.sendRedirect("session_login_ok.jsp");
	}
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="http://localhost:8181/JSPBasic1/jspobject/session/session_login_check.jsp" method="post">
<input type="text" name="id" placeholder="uname"/><br>
<input type="password" name="pw" placeholder="upass"/>
<input type="submit"/>
</form>
</body>
</html>