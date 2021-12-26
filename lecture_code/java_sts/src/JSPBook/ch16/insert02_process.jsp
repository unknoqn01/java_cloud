<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- DB관련 라이브러리 로드 -->
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DB 연동</title>
</head>
<body>
<!-- 	db 커넥션 파일 로드 -->
	<%@ include file="dbconn.jsp" %>
	
	<%
	request.setCharacterEncoding("utf-8");
	
// 	클라이언트에서 전송한 데이터를 request 내장객체에서 가져옴
	String id = request.getParameter("id");
	String passwd = request.getParameter("passwd");
	String name = request.getParameter("name");
	
// 	DB서버에 sql 쿼리를 전송하여 데이터를 사용하기 위해서 PrepareStatement 객체 생성
	PreparedStatement pstmt = null;
	
	try {
// 		DB 서버로 전송한 SQL문 생성
		String sql = "insert into member(id, passwd, name) ";
		sql += "values (?, ?, ?) ";
		
// 		Connection 클래스를 사용하여 prepareStatement 객체를 생성함
		pstmt = conn.prepareStatement(sql);
// 		PrepareStatement 객체를 쿼리문 생성 후 나중에 데이터를 변경할 수 있음
// 		setString() 의 첫번째 매개변수가 생성된 쿼리문의 index 번호를 뜻함
// 		두번째 매개변수가 실제 데이터
		pstmt.setString(1, id);
		pstmt.setString(2, passwd);
		pstmt.setString(3, name);
// 		Statememt 클래스와 동일하게 executeUpdate() 는 insert, update, delete 명령 시 사용
// 		select 명령은 executeQuery() 메서드 사용
// 		PrepareStatement는 close() 하기 전 몇번이고 쿼리 명령을 수행할 수 있음
		pstmt.executeUpdate();
		out.println("Member 테이블 삽입이 성공했습니다.");
	}
	catch (SQLException ex) {
		out.println("Member 테이블 삽입이 실패했습니다.");
		out.println("SQLException: " + ex.getMessage());
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
	
	<!-- 문제 1) prepareStatement 클래스를 사용하여 update, delete 하는 프로그램을 각각 작성하세요 -->
	<!-- update02.jsp, update02_process.jsp, delete02.jsp, delete02_process.jsp 생성 -->
</body>
</html>










