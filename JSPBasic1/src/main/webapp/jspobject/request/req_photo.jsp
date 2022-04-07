<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%--
photo result is recipient
photo title, checkbox
button is 그림 보러 가기
imagefile put as <img src="">
 --%>
 <form action="http://localhost:8181/JSPBasic1/jspobject/request
/req_photo_result.jsp" method="post">
 <table>
 <tr>
 <th>
 <td>사진 설명</td>
 <td>선택</td>
 </th>
 </tr>
 <tr>
 <td>cat1</td>
 <td><input type="radio" name="photo" value="cat1">1 선택</td>
 </tr>
 <tr>
 <td>cat2</td>
 <td><input type="radio" name="photo" value="cat2">2 선택</td>
 </tr>
 <tr>
 <td>sit3</td>
 <td><input type="checkbox" name="photo" value="sit3">3 선택</td>
 </tr>
 </table>
 <input type="submit" value="그림 보러 가기">
 </form>
</body>
</html>