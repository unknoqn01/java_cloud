package com.bitc.dto;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class BoardDao {

	private String drivers = "com.mysql.cj.jdbc.Driver";
	private String url = "jdbc:mysql://localhost:3306/testdb?useUnicode=true&characterEncoding=utf8&serverTimezone=UTC";
	private String uid = "testuser";
	private String upw = "bitc1234";
	
	public BoardDao() {
		try {
			Class.forName(drivers);
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
	
//	게시글 목록
	public ArrayList<BoardDto> selectBoardList() {
		ArrayList<BoardDto> boardList = new ArrayList<BoardDto>();
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "SELECT * FROM t_board ";
		sql += "WHERE deleted_yn = 'N' ";
		
		try {
			conn = DriverManager.getConnection(url, uid, upw);
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while (rs.next()) {
				int idx = rs.getInt("idx");
				String title = rs.getString("title");
				String contents = rs.getString("contents");
				String creatorId = rs.getString("creator_id");
				String createdDate = rs.getString("created_date");
				String updatedId = rs.getString("update_id");
				String updatedDate = rs.getString("updated_date");
				int hitCnt = rs.getInt("hit_cnt");
				String passwd = rs.getString("passwd");
				
				BoardDto item = new BoardDto();
				item.setIdx(idx);
				item.setTitle(title);
				item.setContents(contents);
				item.setCreatorId(creatorId);
				item.setCreatedDate(createdDate);
				item.setUpdateId(updatedId);
				item.setUpdatedDate(updatedDate);
				item.setHitCnt(hitCnt);
				item.setPasswd(passwd);
				
				boardList.add(item);
			}
		}
		catch (SQLException se) {
			se.printStackTrace();
		}
		finally {
			try {
				if (rs != null) { rs.close(); }
				if (pstmt != null) { pstmt.close(); }
				if (conn != null) { conn.close(); }
			}
			catch (SQLException se) {
				se.printStackTrace();
			}
		}
		
		return boardList;
	}
	
//	게시글 확인
	
//	게시글 등록
	public int boardInsert(BoardDto board) {
		int result = 0;
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		String sql = "INSERT INTO t_board ";
		sql += "(title, contents, creator_id, created_date) ";
		sql += "VALUES (?, ?, ?, NOW()) ";
		
		try {
			conn = DriverManager.getConnection(url, uid, upw);
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, board.getTitle());
			pstmt.setString(2, board.getContents());
			pstmt.setString(3, board.getCreatorId());
			
			result = pstmt.executeUpdate();
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
		
		return result;
	}
	
//	게시글 수정
	public BoardDto boardSelect(int idx) {
		BoardDto board = new BoardDto();
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "SELECT idx, title, contents, creator_id, ";
		sql += "created_date, update_id, updated_date, hit_cnt ";
		sql += "FROM t_board ";
		sql += "WHERE idx = ? ";
		sql += "AND deleted_yn = 'N' ";
		
		try {
			conn = DriverManager.getConnection(url, uid, upw);
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, idx);
			
			rs = pstmt.executeQuery();
			rs.next();
			
			board.setIdx(rs.getInt("idx"));
			board.setTitle(rs.getString("title"));
			board.setContents(rs.getString("contents"));
			board.setCreatorId(rs.getString("creator_id"));
			board.setCreatedDate(rs.getString("created_date"));
			board.setUpdateId(rs.getString("update_id"));
			board.setUpdatedDate(rs.getString("updated_date"));
			board.setHitCnt(rs.getInt("hit_cnt"));
		}
		catch (SQLException se) {
			se.printStackTrace();
		}
		finally {
			try {
				if (rs != null) { rs.close(); }
				if (pstmt != null) { pstmt.close(); }
				if (conn != null) { conn.close(); }
			}
			catch(SQLException se) {
				se.printStackTrace();
			}
		}
		return board;
	}
//	게시글 삭제
}
