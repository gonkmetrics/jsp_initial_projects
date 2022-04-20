<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<title>Insert title here</title>
</head>
<body>
<div class="container">
<h1 class="row justify-content-md-center">boardList 페이지</h1>
<table class="table">
<thead>
<tr>
<td>#</td>
<td>제목</td>
<td>내용</td>
<td>글쓴이</td>
<td>작성일B</td>
<td>작성일M</td>
<td>조회수</td>
<td>Delete?</td>
</tr>
</thead>
<c:forEach items="${boardList}" var="board">
<tr>
<td>${board.getBoardNum()}</td>
<td>${board.getTitle()}</td>
<td>${board.getContent()}</td>
<td>${board.getWriter()}</td>
<td>${board.getBdate()}</td>
<td>${board.getMdate()}</td>
<td>${board.getHit()}</td>
<td>Delete: 		
	<form action="http://localhost:8080/MyFirstWeb/boardDelete" method="post">
		<input type="text" name="bno" value="${board.getBoardNum()}"/><br>
		<input type="submit" value="Delete User"/>
	</form>
</td>
</tr>
</c:forEach>
</table>
</div>
</body>
</html>