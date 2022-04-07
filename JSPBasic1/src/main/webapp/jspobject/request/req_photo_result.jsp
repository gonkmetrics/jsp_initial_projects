<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String[] photoSel = request.getParameterValues("photo");

//name="###N.jpg" 인풋 받는 결과 코드
for(int c = 1; c<= photoSel.length /*--사진 수--*/;c++){
	String selectorImage = photoSel[(c-1)];
	char characterValue = selectorImage.charAt(3);
	int selectorIndex = Character.getNumericValue(characterValue);
	if(true){%>
	<% out.print(selectorIndex); %>번 그림을 골랐습니다<br>
	<img src="<% out.print(selectorImage.substring(0,3)); out.print(selectorIndex); %>.jpg"><br>
	<%}

 }%>
 


<%
%>

</body>
</html>