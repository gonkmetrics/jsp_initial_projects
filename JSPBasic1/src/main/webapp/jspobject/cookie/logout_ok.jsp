<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    Cookie[] cookies = request.getCookies();
    String targetedCookieName = "login_id";
    for(int c = 0;c < cookies.length; c++){
    	String str = cookies[c].getName();
    	System.out.println(str);
    	if(str.equals(targetedCookieName)){
    		cookies[c].setMaxAge(0);
    		response.addCookie(cookies[c]);
    	    break;
    	}
    }
    response.sendRedirect("cookie_login.jsp");
    
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