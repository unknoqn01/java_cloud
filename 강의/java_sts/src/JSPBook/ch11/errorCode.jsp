<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예외 처리</title>
</head>
<body>
	<form action="errorCode_process.jsp" method="post">
		<label for="num1">숫자 1 : </label>
		<input type="text" id="num1" name="num1"><br>
		<label for="num2">숫자 2 : </label>
		<input type="text" id="num2" name="num2"><br><br>
		<button type="submit">나누기</button>
	</form>
</body>
</html>