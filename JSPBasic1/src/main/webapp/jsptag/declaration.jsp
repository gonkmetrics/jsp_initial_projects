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
	//%! declarative
	//% script read
	public int i = 10;
	public String str = "hello";
	int add(int n1, int n2){
		return n1+ n2;
	}

	%>
	<%
	//declarations
	int result = add(10,5);
	out.println(result);
	out.println(add(16, 14));
	out.println(result);
	
	%>
</body>
</html>