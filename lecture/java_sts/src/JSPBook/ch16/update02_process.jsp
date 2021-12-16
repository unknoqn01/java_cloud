<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DB 연동</title>
</head>
<body>
	<%@ include file="dbconn.jsp" %>
	
	<%
	request.setCharacterEncoding("utf-8");
	
	String id = request.getParameter("id");
	String passwd = request.getParameter("passwd");
	String name = request.getParameter("name");
	
	PreparedStatement pstmt = null;
	
	try {
		String sql = "update member ";
		sql += "set passwd = ?, name = ? ";
		sql += "where id = ? ";
		
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, passwd);
		pstmt.setString(2, name);
		pstmt.setString(3, id);
		
		pstmt.executeUpdate();
		out.println("Member 테이블의 " + id + " 데이터를 수정 하였습니다.");
	}
	catch (SQLException ex) {
		out.println("Member 테이블 수정 시 오류가 발생했습니다.");
		out.println("SQLException : " + ex.getMessage());
	}
	finally {
		if (pstmt != null) {
			pstmt.close();
		}
		
		if (conn != null) {
			conn.close();
		}
	}
	%>
</body>
</html>









