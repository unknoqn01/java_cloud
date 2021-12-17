<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="daodto.MemberDao" %>
<%@ page import="daodto.MemberDto" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>dao, dto를 이용한 DB 사용</title>
</head>
<body>
	<%
	MemberDto member = new MemberDto();
	member.setId("tester04");
	member.setPasswd("bitc1234");
	member.setName("테스터");
	
	MemberDao dao = new MemberDao();
	
	int result = dao.memberUpdate(member);
	
	if (result > 0) {
		out.println("데이터 베이스의 정보가 정상적으로 수정되었습니다.");
	}
	else {
		out.println("데이터 베이스의 정보 수정 중 오류가 발생했습니다.");
	}
	%>
</body>
</html>











