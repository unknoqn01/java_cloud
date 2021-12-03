<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내장 객체</title>
</head>
<body>
	<form action="out02_process.jsp" method="post">
		<label for="userId">아이디 : </label>
		<input type="text" id="userId" name="userId"><br>
		<label for="userPw">비밀번호 : </label>
		<input type="password" id="userPw" name="userPw"><br>
		<button type="submit">전송</button>
	</form>
</body>
</html>