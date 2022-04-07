<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//create cookie constructor
Cookie apple = new Cookie("apple_cookie", "apple_flavored_cookie");
Cookie peanut = new Cookie("peanut_cookie", "peanut_flavored_cookie");
//set cookie attributes
apple.setMaxAge(3000);
peanut.setMaxAge(20);
//adds cookie on response from servlet
response.addCookie(apple);
response.addCookie(peanut);
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