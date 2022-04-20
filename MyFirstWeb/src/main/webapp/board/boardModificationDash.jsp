<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="//js.nicedit.com/nicEdit-latest.js" type="text/javascript"></script>
<script type="text/javascript">bkLib.onDomLoaded(nicEditors.allTextAreas);</script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<style>
</style>
</head>
<body>
<div class="container">
	<div class="d-flex justify-content-center">
		<h1 class="align-middle">User Dashboard</h1>
	</div>
	<br>
	<div class="row">
		<div class="col 3" id="selectA">
			<div class="row">
				<h1>boardDetail</h1>
				<form action="http://localhost:8080/MyFirstWeb/boardDetail" method="get">
					<input type="text" name="bno" placeholder="Board Number"/><br>
					<input type="submit" value="Search User"/>
				</form>
			</div>
		<div class="row">
			<h1>boardList</h1>
			<form action="http://localhost:8080/MyFirstWeb/boardList" method="get">
				<input type="submit" value="Search All Users"/>
			</form>
		</div>
		<h1>boardDelete</h1>
		<form action="http://localhost:8080/MyFirstWeb/boardDelete" method="post">
			<input type="text" name="bno" placeholder="Board Number"/><br>
			<input type="submit" value="Delete User"/>
		</form>
		<h1>boardUpdate</h1>
		<form class="form-inline" action="http://localhost:8080/MyFirstWeb/boardUpdateHandler" method="get">
			<div class="form-group">
				<input type="text" name="bno" placeholder="Board Number"/><br>
				<input type="submit" value="Updated Selected Post"/>
			</div>
		</form>
		</div>
		<div class="col 7" id="selectB">
			<h1>boardInsert</h1>
			<form class="form-inline" action="http://localhost:8080/MyFirstWeb/boardInsert" method="post">
				<div class="form-group">
					<input type="text" class="form-control" name="bTitle" placeholder="Title"/>
				</div>
				<br>
				<textarea name="bText" cols="60" rows="6"></textarea>
				<br>
				<div class="form-group">
					<input type="text" class="form-control" name="bAuthor" placeholder="Author"/>
					<input type="submit"/>
				</div>
			</form>
		</div>
	</div>
</div>
</body>
</html>