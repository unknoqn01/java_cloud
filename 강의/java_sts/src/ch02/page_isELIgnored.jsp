<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%@ page isELIgnored="true" %> --%>
<!-- isScriptingEnabled="false"는 JSP 문법을 사용하지 않음 -->
<%-- <%@ page isScriptingEnabled="false" %> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>디렉티브 태그</title>
</head>
<body>
	<%
	request.setAttribute("RequestAttribute", "request 내장 객체");
	%>
	
	${requestScope.RequestAttribute}
</body>
</html>