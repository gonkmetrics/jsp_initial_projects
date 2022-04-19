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
<thead>
<tr>
<td>#</td>
<td>제목</td>
<td>내용</td>
<td>글쓴이</td>
<td>작성일B</td>
<td>작성일M</td>
<td>조회수</td>
</tr>
</thead>
<tr>
<td>Post Number: ${boardList.boardNum}</td>
<td>Title: <input type="text" value="${boardList.title}"/></td>
<td>Content: <textarea cols="40" rows="10">${boardList.content}</textarea></td>
<td>Writer: <input type="text" value="${boardList.writer}"/></td>
<td>Posted: ${boardList.bDate}</td>
<td>Last Modified: ${boardList.mDate}</td>
<td>Views: ${boardList.hit}</td>
</tr>
</table>
</div>
</body>
</html>