<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%-- 
    
    --%>
    <%
    //request
    request.setCharacterEncoding("utf-8");
    String a = request.getParameter("apple");
    String b = request.getParameter("banana");
    String c = request.getParameter("papaya");
    String u1 = request.getParameter("uname");
    String u2 = request.getParameter("uid");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
grape request: <%=c %><br>
apple data: <%=a %><br>
if the above is ?apple="data" then apple data: data<br>
banana data: <%=b %><br>
if the above is ?banana="data" then banana data: data<br>
url looks like
http://localhost:8181/JSPBasic1/jspobject/request
/req_param.jsp?apple=%22apple%22&banana=
%22%EB%B0%94%EB%82%98%EB%82%98%22

?apple=""&banana=""
the above is http data.
사용자의 이름: <%=u1 %><br>
사용자의 ID: <%=u2 %><br>
</body>
</html>