<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    int visitCnt =0;
    Integer temp = (Integer)application.getAttribute("visit");
    if(temp != null){
    	visitCnt=temp;
    }
    visitCnt++;
    
    application.setAttribute("visit", visitCnt);
    out.println(temp);
    out.println(visitCnt);
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