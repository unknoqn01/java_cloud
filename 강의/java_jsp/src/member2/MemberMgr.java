package member2;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;

public class MemberMgr {
	
	private DBConnectionMgr pool;
	
	public MemberMgr() {
		//DBConnection 객체 10개 미리 생성
		pool = DBConnectionMgr.getInstance();
	}

	//모든리스트- select =>db1
	public Vector<MemberBean> selectAll(){
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		Vector<MemberBean> vlist = 
				new Vector<MemberBean>();
		try {
			//pool에서 빌려온다.
			con = pool.getConnection();
			sql = "select * from tblMember2";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();//select
			while(rs.next()){
				MemberBean bean = new MemberBean();
				bean.setId(rs.getInt("id"));
				bean.setName(rs.getString("name"));
				bean.setPhone(rs.getString("phone"));
				bean.setTeam(rs.getString("team"));
				bean.setAddress(rs.getString("address"));
				vlist.add(bean);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return vlist;
	}
	
	//저장 => insert, update ,delete => db2
	public boolean insert(MemberBean bean){
		Connection con = null;
		PreparedStatement pstmt = null;
		boolean flag = false;
		String sql = null;
		try {
			con = pool.getConnection();
			sql = "insert tblMember2(name,phone,team,address)values(?,?,?,?)";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, bean.getName());
			pstmt.setString(2, bean.getPhone());
			pstmt.setString(3, bean.getTeam());
			pstmt.setString(4, bean.getAddress());
			int count = pstmt.executeUpdate();//insert,update,delete
			if(count==1) flag = true;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt);
		}
		return flag;
	}
	
	//한개의 레코드
	public MemberBean select(int id){
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		MemberBean bean = new MemberBean();
		try {
			con = pool.getConnection();
			sql = "select * from tblMember2 where id=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, id);
			rs = pstmt.executeQuery();
			if(rs.next()){
				bean.setId(rs.getInt("id"));
				bean.setName(rs.getString("name"));
				bean.setPhone(rs.getString("phone"));
				bean.setTeam(rs.getString("team"));
				bean.setAddress(rs.getString("address"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return bean;
	}
	
	//삭제
	public boolean delete(int id){
		Connection con = null;
		PreparedStatement pstmt = null;
		boolean flag = false;
		String sql = null;
		try {
			con = pool.getConnection();
			sql = "delete from tblMember2 where id=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, id);
			if(pstmt.executeUpdate()==1) flag = true; 
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt);
		}
		return flag;
	}
	
	//수정
	public boolean update(MemberBean bean){
		Connection con = null;
		PreparedStatement pstmt = null;
		boolean flag = false;
		String sql = null;
		try {
			con = pool.getConnection();
			sql = "update tblMember2 set name=?,phone=?,team=?,"
					+ "address=? where id=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, bean.getName());
			pstmt.setString(2, bean.getPhone());
			pstmt.setString(3, bean.getTeam());
			pstmt.setString(4, bean.getAddress());
			pstmt.setInt(5, bean.getId());
			int count = pstmt.executeUpdate();
			if(count==1) flag = true;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt);
		}
		return flag;
	}
}









