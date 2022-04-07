<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    Object dupe = session.getAttribute("id_dupe");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container">
<form action="userJoinCheck.jsp" method="post">
<% if(dupe == null){}else if((boolean)dupe){ out.println("id cannot be duplicate");} %>
<input type="text" name="userId" placeholder="필수" /><br>
<input type="password" name="userPw" placeholder="필수" /><br>
<input type="text" name="userName" placeholder="필수" /><br>
<input type="text" name="userEmail"/><br>
<input type="submit"><br>
</form>
</div>
</body>
</html>