<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>디렉티브 태그</title>
</head>
<body>

	<c:out value="JSTL Core 태그 라이브러리" />
	<br>
	
	<c:forEach var="k" begin="1" end="10" step="1">
		<c:out value="${k}" />
	</c:forEach>
</body>
</html>