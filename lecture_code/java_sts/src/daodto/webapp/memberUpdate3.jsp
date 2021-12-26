<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="daodto.MemberDao" %>
<%@ page import="daodto.MemberDto" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="dao" class="daodto.MemberDao"></jsp:useBean>
	<jsp:useBean id="dto" class="daodto.MemberDto"></jsp:useBean>

	<%
	dto.setId("tester04");
	dto.setPasswd("bitc1234");
	dto.setName("테스터04");
	
	int result = dao.memberUpdate3(dto);
	
	if (result > 0) {
		out.println("데이터 베이스의 정보 " + result + "개를 수정하였습니다.");
	}
	else {
		out.println("데이터 베이스의 정보 수정 중 오류가 발생했습니다.");
	}
	%>
</body>
</html>