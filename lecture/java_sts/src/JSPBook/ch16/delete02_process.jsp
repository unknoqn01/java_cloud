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
	
	PreparedStatement pstmt = null;
	
	try {
		String sql = "delete from member ";
		sql += "where id = ? ";
		
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		
		pstmt.executeUpdate();
		out.println("member 테이블 중 id가 " + id + " 인 데이터를 삭제했습니다.");
	}
	catch (SQLException ex) {
		out.println("member 테이블의 데이터 삭제 시 오류가 발생했습니다.");
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










