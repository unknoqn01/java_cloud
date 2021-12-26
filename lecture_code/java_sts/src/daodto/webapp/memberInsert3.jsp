<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="daodto.MemberDto" %>
<%@ page import="daodto.MemberDao" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="dao" class="daodto.MemberDao" ></jsp:useBean>
	<jsp:useBean id="dto" class="daodto.MemberDto" ></jsp:useBean>
	
	<%
	dto.setId("tester05");
	dto.setPasswd("bitc1234");
	dto.setName("테스터05");
	
	int result = dao.memberInsert3(dto);
	
	if (result > 0) {
		out.println("데이터베이스에 " + result + "개의 정보를 입력했습니다.");
	}
	else {
		out.println("데이터베이스에 정보 입력 중 오류가 발생했습니다.");
	}
	%>
</body>
</html>












