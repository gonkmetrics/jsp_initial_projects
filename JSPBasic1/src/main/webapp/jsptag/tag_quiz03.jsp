<%@page import="java.util.Random"%>
<%@page import="java.util.ArrayList"%>
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
//int count;
//int prevN;
//int insert;
%>
<%
ArrayList<Integer> lotto = new ArrayList<>();
for(int count = 0; count<=6; count++){
	boolean duplicate = true;
	while(duplicate){
		duplicate = false;
		int insert = (int)(Math.random()*45)+1;
		for(int count2 = 0; count2<count; count2++){
			if(insert == lotto.get(count2)){
				duplicate = true;
				break;
			}
		}
		if(!duplicate){
			lotto.add(insert);
		}

	}

}
//out.println("num: "+lotto+"<br>");
%>
<h1>로또번호 생성 결과</h1>
<p>이번주 로또는이 번호다</p>
<%
for(int count3 = 0; count3 <= 6; count3++){
	out.println(lotto.get(count3));
	Thread.sleep(800);
	} 

%>
</body>
</html>