<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%!
	//declaration
	double areaCircle (double r){
		return r*r*Math.PI;
	}
	%>
	<%
	String name = "Kim C.";
	int age = 44;
	out.println("name:"+name+"<br>");
	out.println("age:"+age+"<br>");
	out.println("area:"+areaCircle(5));
	
	
	%>
<br>
name:<%= name %><br>
age:<%= age %><br>
area: <%= areaCircle(5) %>
</body>
</html>