<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>구구단 1-9단</h2>
	<% //System.out.println("console message here");
	//out.println("html message here");
	int count = 1;
	while(count < 10){
		for(int mult = 1;mult<=9;mult++){
			if(mult % 2 == 1){
				out.println("<p>"+count+"*"+mult+"="+(2*mult)+"</p>");
			}
		}
		count++;
	}
	%>
	

	
</body>
</html>