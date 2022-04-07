<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</head>
<body>
<div class="container">
<form action="music_req.jsp" method="post">
 <table class="table table-dark">
 <tr>
 <td>가수</td>
 <td>노래제목</td>
 <td>선택</td>
 </tr>
 <tr>
 <td>아이유</td>
 <td>LILAC</td>
 <td><input type="radio" name="msc" value="1">1 선택</td>
 </tr>
 <tr>
 <td>악뮤</td>
 <td>낙하</td>
 <td><input type="radio" name="msc" value="2">2 선택</td>
 </tr>
 <tr>
 <td>태연</td>
 <td>INVU</td>
 <td><input type="radio" name="msc" value="3">3 선택</td>
 </tr>
 </table><br>
 <input type="submit" class="btn btn-primary my-auto"/>
 </form>
</div>
</body>
</html>