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
<h1 class="row justify-content-md-center">boardDetail 페이지</h1>
<table class="table table-dark">
<tr>
<td>Post Number: ${boardList.boardNum}</td>
<td>Title: <input type="text" value="${boardList.title}"/></td>
<td>Content: <textarea cols="40" rows="10">${boardList.content}</textarea></td>
<td>Writer: <input type="text" value="${boardList.writer}"/></td>
<td>Posted: ${boardList.getBdate()}</td>
<td>Last Modified: ${boardList.getMdate()}</td>
<td>Views: ${boardList.hit}</td>
<td>Delete: 		
	<form action="http://localhost:8080/MyFirstWeb/boardDelete" method="post">
		<input type="hidden" name="bno" value="${boardList.boardNum}" /><br>
		<input type="submit" value="삭제">
	</form>
</td>
</tr>
</table>
</div>
</body>
</html>