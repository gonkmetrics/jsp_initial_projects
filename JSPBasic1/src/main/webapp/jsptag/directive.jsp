<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.Array"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Date" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
marked by percent at sign
can put in language, import, errorPage, contentType, pageEncoding
<br><br>
<%
Date date = new Date();

List<String> names = new ArrayList<>();
names.add("a");
names.add("b");
names.add("c");
names.add("d");
names.remove(1);
names.remove("d");
names.clear();
out.println("names: "+names+"<br>");
%>

<%= date %>
<%= date.getHours() %>:<%= date.getMinutes() %>:<%= date.getSeconds() %>


</body>
</html>