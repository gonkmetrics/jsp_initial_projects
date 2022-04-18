<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:if test="${param.name eq '이순신'}">
<c:out value="${param.name} 입니다"/>
</c:if>
<c:set var="fName" value="${param.name }"/>
<c:out value="you are ${param.name }"/>
</body>
</html>