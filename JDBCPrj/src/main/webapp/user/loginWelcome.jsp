<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%
    String userId = (String)session.getAttribute("s_id");
	if((userId==null) || (userId.equals("s_id"))){
		response.sendRedirect("session_login_form.jsp");
	}	
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:out value="${sessionScope.s_id}" /><span>님 로그인을 환영합니다</span>
<a href="userLogout.jsp">로그아웃</a>
<a href="userDelete.jsp" onclick="return confirm('유저를 탈퇴 하시겠습니까?')">유저 탈퇴</a>
<a href="userUpdateForm.jsp">Modify User Details</a>
</body>
</html>