<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    Cookie[] cookies = request.getCookies();
    String targetedCookieName = "login_id";
    if(cookies != null){
    for(int c = 0;c < cookies.length; c++){
    	String str = cookies[c].getName();
    	System.out.println(str);
    	if((str != null) && (str.equals(targetedCookieName))){
    	    response.sendRedirect("login_ok.jsp");
    	    break;
    	}
    	}
    }
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="cookie_login_check.jsp" method="post">
<input type="text" name="id" placeholder="uname"/><br>
<input type="password" name="pw" placeholder="upass"/>
<input type="submit"/>
</form>
</body>
</html>