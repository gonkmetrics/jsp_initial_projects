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
<%
/*
int a = 0;
for(int b = 0; b<=100; b++){
	a += b;
}
out.println(a);
*/
%>
<c:set var="multA" value="${4}"/>
<c:forEach var="increment" begin="${1}" end="${9}" step="${1}">
<c:set var="multB" value="${multA}*${increment}=${multA*increment}"/>
<c:out value="${multB}"/><br>
</c:forEach>


<c:forEach var="increment" begin="${1}" end="${9}" step="${1}">
<c:out value="${4}*${increment}=${multA*increment}"/><br>
</c:forEach>
<hr>
<c:set var="numbersA" value="${fn.split('2,3,4,5,6,7,8,9',',')}"/>
<c:out value="${numbersA}"/>
<c:forEach var="numbersB" items="${numbersA}">
<c:if test="${numbersB % 2 == 0}">
<c:out value="${4}*${increment}=${numbersA.parseInt(numbersA)*numbersB}"/><br>
</c:if>
</c:forEach>

<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!-- <c:set var="arr" value="${['사과','바나나','망고','포도','딸기']}"/> -->
<c:set var="arr" value="${fn:split('사과,바나나,망고,포도,딸기',',')}"/>
<c:forEach var="elements" items="${arr}}">
<c:out value="${elements.toString()}"/>
</c:forEach>

<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="intArray" value="${fn:split('10,20,30,40,50',',')}"/>
<c:forEach var="elements" items="${intArray}">
<c:out value="${elements}"/>
</c:forEach>
</body>
</html>