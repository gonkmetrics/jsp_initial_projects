<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <%
 int select = Integer.parseInt(request.getParameter("msc"));
 switch(select){
 case 1:
	 response.sendRedirect("https://www.youtube.com/watch?v=v7bnOxV4jAc");
	 break;
 case 2:
	 response.sendRedirect("https://www.youtube.com/watch?v=EtiPbWzUY9o");
	 break;
 case 3:
	 response.sendRedirect("https://www.youtube.com/watch?v=AbZH7XWDW_k");
	 break;
 }
 %>
</body>
</html>