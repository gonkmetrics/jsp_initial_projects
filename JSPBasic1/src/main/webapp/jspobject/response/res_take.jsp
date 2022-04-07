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
int age = Integer.parseInt(request.getParameter("age"));
if(age >= 20){
	out.println("성인입니다");
	response.sendRedirect("http://localhost:8181/JSPBasic1/jspobject/response/res_adult.jsp");
}else{
	out.println("미성년자입니다");
	response.sendRedirect("http://localhost:8181/JSPBasic1/jspobject/response/res_kids.jsp");
}
%>

</body>
</html>