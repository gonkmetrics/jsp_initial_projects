<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    Cookie[] cookies = request.getCookies();
    
    
    try{
    	int cookieLength = cookies.length;
    }catch (NullPointerException e) {
    	response.sendRedirect("cookie_login.jsp");
    } finally {}
    boolean loginTrue = true;
	for(int i = 0;i < cookies.length; i++){
		
    	String str = cookies[i].getName();
    	if(str.equals("login_id")){
    		loginTrue = true;
    		break;
    	}
    	if(!loginTrue){
    		response.sendRedirect("cookie_login.jsp");
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
<a href="http://localhost:8181/JSPBasic1/jspobject/cookie/logout_ok.jsp">logout</a>
</body>
</html>