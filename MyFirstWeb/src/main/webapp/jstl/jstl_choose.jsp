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
<c:set var="name" scope="session" value="${param.lang}"/>
<c:choose>
<c:when test="${name eq '자바'}">
<c:out value="스프링부트로 배민에서 웹 개발을 합니다"/>
</c:when>
<c:when test="${name eq '파이썬'}">
<c:out value="장고로 요기요에서 웹 개발을 합니다"/>
</c:when>
<c:otherwise>
<c:out value="php로 웹개발합니다"/>
</c:otherwise>
</c:choose>
</body>
</html>