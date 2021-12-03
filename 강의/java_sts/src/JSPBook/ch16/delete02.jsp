<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DB 연동</title>
</head>
<body>
	<form action="delete02_process.jsp" method="post">
		<label for="id">삭제할 데이터 ID : </label>
		<input type="text" id="id" name="id" placeholder="삭제할 데이터의 id를 입력하세요"><br><br>
		<button type="submit">삭제</button>
	</form>
</body>
</html>