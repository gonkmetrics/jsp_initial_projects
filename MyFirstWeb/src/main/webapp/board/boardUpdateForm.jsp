<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	#selectA{bgc:yellow;}
</style>
</head>
<body>
<div class="container">
	<div class="row">
		<h1>boardUpdate</h1>
		<form class="form-inline" action="http://localhost:8080/MyFirstWeb/boardUpdate" method="post">
			<div class="form-group">
				<input type="text" name="bnoUpdate" value="${bno}"/>
				<input type="text" class="form-control" name="bUpdateTitle" value="${bTitle}"/>
			</div>
			<br>
			<textarea name="bUpdateText" cols="60" rows="6">${bText}</textarea>
			<br>
			<div class="form-group">
				<input type="text" class="form-control" name="bUpdateAuthor" value="${bAuthor}"/>
				<input type="submit"/>
			</div>
		</form>
	</div>
</div>
</body>
</html>