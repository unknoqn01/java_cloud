<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내장 객체</title>
</head>
<body>
	<p>이 페이지는 5초마다 새로고침이 됩니다.</p>
	<%
	response.setIntHeader("Refresh", 5);
	%>
	<p><%=new java.util.Date()%></p>
</body>
</html>