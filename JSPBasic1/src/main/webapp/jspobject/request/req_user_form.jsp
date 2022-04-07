<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Form</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</head>
<body>
<form action="http://localhost:8181/JSPBasic1/jspobject/request/req_user.jsp" method="post">
이름: <input type="text" name="uname" placeholder="Name"/><br>
아이디: <input type="text" name="uid" placeholder="ID"/><br>
비밀번호: <input type="password" name="upw" placeholder="PW"/><br>
취미:
<input type="checkbox" name="hobby" value="요리">요리 &nbsp;
<input type="checkbox" name="hobby" value="독서">독서 &nbsp;
<input type="checkbox" name="hobby" value="단체운동">단체운동 &nbsp;
<input type="checkbox" name="hobby" value="코딩">코딩 &nbsp;
<input type="checkbox" name="hobby" value="게이밍">게이밍 &nbsp;

<input type="radio" name="blood" value="A">A형 &nbsp;
<input type="radio" name="blood" value="B">B형 &nbsp;
<input type="radio" name="blood" value="O">O형 &nbsp;
<input type="radio" name="blood" value="AB">AB형 &nbsp;

<select name="region">
	<option value="서울">서울</option>
	<option value="경기">경기</option>
	<option value="강원">강원</option>
	<option value="충청">충청</option>
	<option value="전라">전라</option>
	<option value="경상">경상</option>
	<option value="제주">제주</option>
</select>

<input type="submit" class="btn btn-primary"/>
</form>
</body>
</html>