<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Driver"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    String userId = request.getParameter("userId");
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbcprac2?serverTimezone=UTC","root","qwe123");
	PreparedStatement a = con.prepareStatement("SELECT * FROM userinfo WHERE user_id=?");
	a.setString(1, userId);
	ResultSet rsA = a.executeQuery();
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
/* if(rs.next{})else{account does not exist}
out.println(rsA.getString("user_id")+"\n"+
		rsA.getString("user_pw")+"\n"+
		rsA.getString("user_name")+"\n"+
		rsA.getString("email"));
%> */
<c:if test="${rsA.next()}">
${rs.getString("user_id")}
</c:if>
</body>
</html>