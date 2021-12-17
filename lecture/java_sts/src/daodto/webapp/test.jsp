<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.sql.*, javax.sql.*, java.io.*,javax.naming.InitialContext, javax.naming.Context" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	InitialContext initCtx = new InitialContext();
// 	Context envContext = (Context)initCtx.lookup("java:/comp/env");
// 	DataSource ds = (DataSource) envContext.lookup("jdbc/mysqlDB");
	DataSource ds = (DataSource) initCtx.lookup("java:comp/env/jdbc/mysqlDB");
	Connection conn = ds.getConnection();
	Statement stmt = conn.createStatement();
	ResultSet rs = stmt.executeQuery("SELECT VERSION();");
	while (rs.next()){
		out.println("MySQL Version : " + rs.getString("version()"));
	}
	rs.close();
	stmt.close();
	conn.close();
	initCtx.close();
	%>
</body>
</html>