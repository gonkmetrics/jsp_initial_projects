<%@page import="java.io.PrintWriter"%>
<%@page import="java.io.StringWriter"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    <%
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbcprac2?serverTimezone=UTC","root","qwe123");
		Statement stmt = con.createStatement();
		ResultSet rs = stmt.executeQuery("SELECT * FROM userinfo");
		rs.next();
		String[] str = {"ab","a","n"};
		rs.getString("user_id")
		//out.println(rs.getString("user_id"));
    %>
    이런씩으로 메서드를.
    선언부 내에 java.sql 메서드를 어떻게 접근하나요?
    <%!
	public String getRsResult(ResultSet rs){
    	try{
    		while(rs.next()) {
    			return (rs.getString("1"));}
    			
    	}catch(Exception e){
    		StringWriter sp = new StringWriter();
    		PrintWriter exp = new PrintWriter(sp);
    		e.printStackTrace(exp);
    		String stt = exp.toString();
    		return stt;
    		}
    	}

     %>
    <%
	//rs = preparedstatement.executequery()
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
${str.length()}
${rs.getString("user_id")}
<c:forEach var="i" begin="1" end="4">
<%= rs.getString("user_id") %>
</c:forEach>
<p>
-------------------
</p>


<!--  <table>
<thead>
<tr>
</tr>
<tbody>
<tr>
<% while(rs.next()){ %>
<td><%= rs.getString(1) %></td>
<td><%= rs.getString(2) %></td>
<td><%= rs.getString(3) %></td>
<td><%= rs.getString(4) %></td>
<% } %>
</tr>
</tbody>
</table>  -->
<% /* getRsResult(rs1) */ %>

</body>
</html>