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
String protocol = request.getProtocol();
String conPath = request.getContextPath();
StringBuffer url = request.getRequestURL();
String uri = request.getRequestURI();
int serverPort = request.getServerPort();
String method = request.getMethod();
String addr = request.getRemoteAddr();
String sName = request.getServerName();
%>
Protocol: <%=protocol %><br>
Context Path: <%=conPath %><br>
URL: <%=url %><br>
URI: <%=uri %><br>
Port #: <%=serverPort %><br>
Method: <%=method %><br>
Address: <%=addr %><br>
Server Name: <%=sName %><br>

</body>
</html>