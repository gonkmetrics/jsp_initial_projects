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
Passing user input to server:
1. put input field inside form tag
2. in form tag for action attribute, insert page URL
3. inside the input tag, set the name attribute and receive BMI, cm, and kg
4. add submit button
 --%>
 <form action="http://localhost:8181/JSPBasic1/jspobject/request/req_bmi.jsp" method="get">
 <input name="cm" type="number" placeholder="heightcm"/><br>
 <input name="kg" type="number" placeholder="weightkg"/><br>
 <input type="submit" value="submitty">
 </form>
</body>
</html>