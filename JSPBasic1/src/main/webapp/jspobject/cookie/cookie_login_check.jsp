<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    request.setCharacterEncoding("utf-8");
    String uname = request.getParameter("id");
    String upass = request.getParameter("pw");
    out.println(uname);
    out.println(upass);
    String insertU = "abc1234";
    String insertP = "1111";
    if((uname.equals(insertU))&&(upass.equals(insertP))){
    	out.println("로그인 성공");
    	Cookie loginId = new Cookie("login_id", "login_id");
    	response.addCookie(loginId);
    	response.sendRedirect("http://localhost:8181/JSPBasic1/jspobject/cookie/login_ok.jsp");
    } else if((uname.equals(insertU))&&(!(upass.equals(insertP)))){
    	out.println("비번 없음");
    	//response.sendRedirect("http://localhost:8181/JSPBasic1/jspobject/login_pw_fail.jsp");
    } else if(!(uname.equals(insertU))){
    	out.println("아이디가 없음");
    	//response.sendRedirect("http://localhost:8181/JSPBasic1/jspobject/login_id_fail.jsp");
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