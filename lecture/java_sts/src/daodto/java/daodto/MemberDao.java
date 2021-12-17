package daodto;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class MemberDao {
	
	private String url = "jdbc:mysql://localhost:3306/testdb?useUnicode=true&characterEncoding=utf8&serverTimezone=UTC";
	private String uid = "testuser";
	private String upw = "bitc1234";
	
	public MemberDao() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		}
		catch (Exception e) {
			System.out.println(e.getMessage());
			e.printStackTrace();
		}
	}
	
	public ArrayList<MemberDto> memberSelect() {
		
		ArrayList<MemberDto> members = new ArrayList<MemberDto>();
		
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		String sql = "SELECT * FROM member ";
		
		try {
			conn = DriverManager.getConnection(url, uid, upw);
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			
			while (rs.next()) {
				String id = rs.getString("id");
				String passwd = rs.getString("passwd");
				String name = rs.getString("name");
				
				MemberDto dto = new MemberDto(id, passwd, name);
				members.add(dto);
			}
		}
		catch (Exception e) {
			System.out.println(e.getMessage());
			e.printStackTrace();
		}
		finally {
			try {
				if (rs != null) { rs.close(); }
				if (stmt != null) { stmt.close(); }
				if (conn != null) { conn.close(); }
			}
			catch (Exception e) {
				System.out.println(e.getMessage());
				e.printStackTrace();
			}
		}
		
		return members;
	}
	
	public int memberInsert(MemberDto member) {
		Connection conn = null;
		Statement stmt = null;
		int resultCount = 0;
		
		String sql = "INSERT INTO member (id, passwd, name) ";
		sql += "VALUES ('" + member.getId() + "','"+ member.getPasswd() +"','"+ member.getName() +"'); ";
		
		try {
			conn = DriverManager.getConnection(url, uid, upw);
			stmt = conn.createStatement();
			resultCount = stmt.executeUpdate(sql);
		}
		catch (SQLException se) {
			System.out.println(se.getMessage());
			se.printStackTrace();
		}
		finally {
			try {
				if (stmt != null) { stmt.close(); }
				if (conn != null) { conn.close(); }
			}
			catch (SQLException se) {
				System.out.println(se.getMessage());
				se.printStackTrace();
			}
		}
		
		return resultCount;
	}
	
	public int memberUpdate(MemberDto member) {
		int resultCount = 0;
		String sql = "UPDATE member SET ";
		sql += "id = '" + member.getId() + "', passwd = '" + member.getPasswd() + "', name = '" + member.getName() + "' ";
		sql += "WHERE id = '" + member.getId() + "' ";
		
		Connection conn = null;
		Statement stmt = null;
		
		try {
			conn = DriverManager.getConnection(url, uid, upw);
			stmt = conn.createStatement();
			resultCount = stmt.executeUpdate(sql);
		}
		catch (SQLException se) {
			se.printStackTrace();
		}
		finally {
			try {
				if (stmt != null) { stmt.close(); }
				if (conn != null) { conn.close(); }
			}
			catch (SQLException se) {
				se.printStackTrace();
			}
		}
		
		return resultCount;
	}
	
	public int memberDelete(String id) {
		int resultCount = 0;
		String sql = "DELETE FROM member ";
		sql += "WHERE id = '" + id + "' ";
		
		Connection conn = null;
		Statement stmt = null;
		
		try {
			conn = DriverManager.getConnection(url, uid, upw);
			stmt = conn.createStatement();
			resultCount = stmt.executeUpdate(sql);
		}
		catch (SQLException se) {
			se.printStackTrace();
		}
		finally {
			try {
				if (stmt != null) { stmt.close(); }
				if (conn != null) { conn.close(); }
			}
			catch (SQLException se) {
				
			}
		}
		
		return resultCount;
	}
	
	public ArrayList<MemberDto> memberSelect3() {
		ArrayList<MemberDto> dtoList = new ArrayList<MemberDto>();
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "SELECT * FROM member ";
		
		try {
			conn = DriverManager.getConnection(url, uid, upw);
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while (rs.next()) {
				String id = rs.getString("id");
				String pw = rs.getString("passwd");
				String name = rs.getString("name");
				
				MemberDto dto = new MemberDto();
				dto.setId(id);
				dto.setPasswd(pw);;
				dto.setName(name);
				
				dtoList.add(dto);
			}
		}
		catch (SQLException se) {
			se.printStackTrace();
		}
		finally {
			try {
				if (rs != null) { rs.close(); }
				if (pstmt != null) { pstmt.close(); }
				if (rs != null) { rs.close(); }
			}
			catch (SQLException se) {
				se.printStackTrace();
			}
		}
		
		return dtoList;
	}
	
	public int memberInsert3(MemberDto member) {
		int resultCount = 0;
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		String sql = "INSERT INTO member (id, passwd, name) ";
		sql += "VALUES (?, ?, ?) ";
		
		try {
			conn = DriverManager.getConnection(url, uid, upw);
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, "tester04");
			pstmt.setString(2, "bitc1234");
			pstmt.setString(3, "테스터4");
			
			resultCount = pstmt.executeUpdate();
		}
		catch (SQLException se) {
			se.printStackTrace();
		}
		finally {
			try {
				if (pstmt != null) { pstmt.close(); }
				if (conn != null) { conn.close(); }
			}
			catch (SQLException se) {
				se.printStackTrace();
			}
		}
		
		return resultCount;
	}
	
	public int memberUpdate3(MemberDto member) {
		int resultCount = 0;
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		String sql = "UPDATE member SET ";
		sql += "id = ?, passwd = ?, name = ? ";
		sql += "WHERE id = ? ";
		
		try {
			conn = DriverManager.getConnection(url, uid, upw);
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, "tester04");
			pstmt.setString(2, "btic1234");
			pstmt.setString(3, "테스터04");
			
			resultCount = pstmt.executeUpdate();
		}
		catch (SQLException se) {
			se.printStackTrace();
		}
		finally {
			try {
				if (pstmt != null) { pstmt.close(); }
				if (conn != null) { conn.close(); }
			}
			catch (SQLException se) {
				se.printStackTrace();
			}
		}
		
		return resultCount;
	}
	
	public int memberDelete3(String id) {
		int resultCount = 0;
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		String sql = "DELETE FROM member ";
		sql += "WHERE id ? ";
		
		try {
			conn = DriverManager.getConnection(url, uid, upw);
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, "tester04");
			
			resultCount = pstmt.executeUpdate();
		}
		catch (SQLException se) {
			se.printStackTrace();
		}
		finally {
			try {
				if (pstmt != null) { pstmt.close(); }
				if (conn != null) { conn.close(); }
			}
			catch (SQLException se) {
				se.printStackTrace();
			}
		}
		
		return resultCount;
	}
}











