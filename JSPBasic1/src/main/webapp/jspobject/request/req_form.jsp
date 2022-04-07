<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%  %>
the form tag has action="destination" method="sending method"(get, post)
these transmit data from the request.<br>
<form action="http://localhost:8181/JSPBasic1/jspobject/request
/req_param.jsp" method="post">
apple: <input type="text" name="apple" /><br>
banana: <input type="text" name="banana" /><br>
papaya: <input type="text" name="papaya" /><br>
이름: <input type="text" placeholder="이름" name="uname" /><br>
아이디: <input type="text" placeholder="아이디" name="uid" /><br>
<input type="submit"><br>
for the post arg, the content does not appear in the URI. however, the encoding must be set for the request
</form>
</body>
</html>