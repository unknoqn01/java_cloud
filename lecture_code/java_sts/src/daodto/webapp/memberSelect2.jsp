<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="daodto.MemberDto" %>
<%@ page import="daodto.MemberDao" %>
<%@ page import="java.util.ArrayList" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="dao" class="daodto.MemberDao"></jsp:useBean>
	
	<%
	ArrayList<MemberDto> dtoList = new ArrayList<MemberDto>();
	
	dtoList = dao.memberSelect();
	
	for (int i = 0; i < dtoList.size(); i++) {
		MemberDto dto = dtoList.get(i);
		
		String id = dto.getId();
		String pw = dto.getPasswd();
		String name = dto.getName();
		
		out.println("아이디 : " + id + "<br>비밀번호 : " + pw + "<br>이름 : " + name + "<br>");
		out.println("-------------------------------<br>");
	}
	
	%>
</body>
</html>









