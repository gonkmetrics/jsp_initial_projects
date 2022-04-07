<%@page import="java.util.Collections"%>
<%@page import="java.util.Collection"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%!
List<String> party = new ArrayList<>();
int playerCount = 0;
%>
<%

String[] jobs ={"전사","도적","사냥꾼","마법사","사제"};
int select = (int)(Math.random()*jobs.length);
party.add(jobs[select]);
playerCount++;
int duplicates = Collections.frequency(party, jobs[select]);

if(party.size() == 10){
	party.clear();
}
%>
<h1>당신의 역할</h1>
역할: <%= jobs[select]%><br>
플레이어 수: <%= playerCount%><br>
현제 역할 중복 수: <%= duplicates%><br>

파티 구성: <%= party%><br>

</body>
</html>