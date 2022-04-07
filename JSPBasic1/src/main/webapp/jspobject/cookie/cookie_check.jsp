<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    Cookie[] cookies = request.getCookies();
    String str = null;
    String str2;
    boolean flag = false;
    for(int i = 0;i < cookies.length; i++){
    	str = cookies[i].getName();
    	System.out.println(str);
    	str2 = cookies[i].getValue();
    	System.out.println(str2);
    	
    	if(str.equals("peanut_cookie")){
    		out.println("땅콩 쿠키가 존재합니다<br>");
    		flag = true;
    		break;
    	}
    	if(!flag){
    		out.println("땅콩 쿠키가 없음<br>");
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

</body>
</html>