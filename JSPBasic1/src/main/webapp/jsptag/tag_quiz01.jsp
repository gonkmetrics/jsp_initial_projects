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
int randomNumber(){
	return (int)(Math.round((Math.random()*10)+1));	
}

String randomColor(){
	String color[] = {"빨걍","노랑","파랑"};
	return color[(int)(Math.random()*3)];
}
//methods and variables declared are static
//the scriptlet is executed on every page load
//while declarations are only executed once
int total = 0;
%>
<%
int each =0;
total++;
each++;
%>
<h1>우늘의 행운의 숫자와 행운의 색깔</h1>
<p>행운의 숫자: <%= randomNumber() %></p>
<p>행운의 색: <%= randomColor() %></p>
누적 요청수: <%= total %><br>
개별 요청수: <%= each %><br>
</body>
</html>