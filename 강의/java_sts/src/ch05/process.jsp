<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내장 객체</title>
</head>
<body>
	<%
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("userName");
	%>
	
	<p>이 름 : <%= name %>
</body>
</html>