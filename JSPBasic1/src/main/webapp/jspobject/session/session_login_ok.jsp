<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    String userId = (String)session.getAttribute("s_id");
	if((userId==null) || (userId.equals("s_id"))){
		response.sendRedirect("session_login_form.jsp");
	}
	//application.getAttribute();
	Integer value = (Integer)application.getAttribute("visit");
	out.println(value);
	
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%=userId %>님 로그인을 환영함니다
<a href="session_logout_ok.jsp">logout</a>
</body>
</html>