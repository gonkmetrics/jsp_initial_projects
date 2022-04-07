<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    
    
    try{
    	int a = 3/0;
    	out.println(a);
    }catch(Exception e){
    	out.println("에러가 발생했습니다.");
    	//out.println("에러: " + e);
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