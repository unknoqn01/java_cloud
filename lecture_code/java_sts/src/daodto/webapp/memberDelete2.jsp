<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="daodto.MemberDao" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<jsp:useBean id="dao" class="daodto.MemberDao"></jsp:useBean>
	
	<%
	int result = dao.memberDelete("tester04");
	
	if (result > 0) {
		out.println("데이터 베이스에서 " + result + "개의 데이터를 정상적으로 삭제하였습니다.");
	}
	else {
		out.println("데이터 베이스에서 정보 삭제 중 오류가 발생했습니다.");
	}
	%>
</body>
</html>