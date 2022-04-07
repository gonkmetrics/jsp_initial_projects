<%@page import="java.text.DecimalFormat"%>
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
Receiving data sent from a form
1. set form recipient to req_bmi.jsp url
2. use script leads to get data from req_bmi_form.jsp and save it to a variable
3. print values
 --%>
 <%

double height = Double.parseDouble(request.getParameter("cm"));
double weight = Double.parseDouble(request.getParameter("kg"));
double bmi = ((weight/((height/100)*(height/100))));
DecimalFormat displayBmi = new DecimalFormat("#.#");
%>
키: <%=height %><br>
체중: <%=weight %><br>
BMI: <%=displayBmi.format(bmi) %><br>
<%if(bmi > 23){%>
	당신은 과체중입니다
<%}else if(bmi < 18.5){%>
	당신은 저체중입니다
<%}else{%>
	당신은 정상체중입니다
<%} %>
</body>
</html>