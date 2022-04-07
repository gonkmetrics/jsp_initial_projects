<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%

    String userId = request.getParameter("id");
    String userPw = request.getParameter("pw");
    String insertU = "abc1234";
    String insertP = "1111";
    if((userId.equals(insertU))&&(userPw.equals(insertP))){
    	session.setAttribute("s_id",userId);
    	response.sendRedirect("session_login_ok.jsp");
    } else if((userId.equals(insertU))&&(!(userPw.equals(insertP)))){
    	response.sendRedirect("session_pw_fail.jsp");
    } else if(!(userId.equals(insertU))){
    	response.sendRedirect("session_id_fail.jsp");
    }
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