package my.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import my.model.Vote;
import my.util.JdbcUtil;


public class VoteDao {
	public void insert(Connection conn, Vote vote) 
			throws SQLException {
		PreparedStatement pstmt=null; 
		try {
			pstmt = conn.prepareStatement
			("insert into vote (voteId,voteName,voteDate,voteImg,busDate,background,content,benefit,price)"
					+ " values(?,?,?,?,?,?,?,?,?)");
			pstmt.setInt(1, vote.getVoteId());
			pstmt.setString(2, vote.getVoteName());
			pstmt.setString(3, vote.getVoteDate());
			pstmt.setString(4, vote.getVoteImg());
			pstmt.setString(5, vote.getBusDate());
			pstmt.setString(6, vote.getBackground());
			pstmt.setString(7, vote.getContent());
			pstmt.setString(8, vote.getBenefit());
			pstmt.setInt(9, vote.getPrice());
			pstmt.executeUpdate(); 
		} catch (SQLException e){
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn);
			JdbcUtil.close(pstmt);
		}
	}
	
	public Vote selectById(Connection conn, int voteId) 
			throws SQLException {
		PreparedStatement pstmt=null; 
		ResultSet rs = null;
		Vote vote = null; 
		try {
			pstmt = conn.prepareStatement
			("select * from vote where voteId = ?");
			pstmt.setInt(1, voteId);
			rs = pstmt.executeQuery();
			if (rs.next()){
				vote = new Vote(); 
				vote.setVoteId(rs.getInt(1));
				vote.setVoteName(rs.getString(2));
				vote.setVoteDate(rs.getString(3));
				vote.setVoteImg(rs.getString(4));
				vote.setBusDate(rs.getString(5));
				vote.setBackground(rs.getString(6));
				vote.setContent(rs.getString(7));
				vote.setBenefit(rs.getString(8));
				vote.setPrice(rs.getInt(9));
			}
		} catch (SQLException e){
			e.printStackTrace();
		} finally {
			//JdbcUtil.close(conn);
			JdbcUtil.close(pstmt);
			JdbcUtil.close(rs);
		}
		return vote;
	}
	
	public List<Vote> selectLike(Connection conn, String target, String keyword) 
			throws SQLException {
		PreparedStatement pstmt=null; 
		ResultSet rs = null;
		Vote vote = null; 
		List<Vote> votes = new ArrayList<Vote>();
		try {
			pstmt = conn.prepareStatement
			("select * from vote where " +target +" like ?");
			pstmt.setString(1, "%"+keyword+"%");
			rs = pstmt.executeQuery();
			while (rs.next()){
				vote = new Vote(); 
				vote.setVoteId(rs.getInt(1));
				vote.setVoteName(rs.getString(2));
				vote.setVoteDate(rs.getString(3));
				vote.setVoteImg(rs.getString(4));
				vote.setBusDate(rs.getString(5));
				vote.setBackground(rs.getString(6));
				vote.setContent(rs.getString(7));
				vote.setBenefit(rs.getString(8));
				vote.setPrice(rs.getInt(9));
				votes.add(vote);
			}
		} catch (SQLException e){
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn);
			JdbcUtil.close(pstmt);
			JdbcUtil.close(rs);
		}
		return votes;
	}
	
	public void update(Connection conn, Vote vote) 
			throws SQLException {
		PreparedStatement pstmt=null; 
		try {
			pstmt = conn.prepareStatement
			("update vote set votename=?,voteDate=?,voteImg=?, "
					+ "   busDate=?, background=?, content=?, benefit=?, price=? where voteId=?");
			pstmt.setString(1, vote.getVoteName());
			pstmt.setString(2, vote.getVoteDate());
			pstmt.setString(3, vote.getVoteImg());
			pstmt.setString(4, vote.getBusDate());
			pstmt.setString(5, vote.getBackground());
			pstmt.setString(6, vote.getContent());
			pstmt.setString(7, vote.getBenefit());
			pstmt.setInt(8, vote.getPrice());
			pstmt.setInt(9, vote.getVoteId());
			pstmt.executeUpdate(); 
		} catch (SQLException e){
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn);
			JdbcUtil.close(pstmt);
		}
	}
	
	public void deleteById(Connection conn, int voteId) 
			throws SQLException {
		PreparedStatement pstmt=null; 		
		try {
			pstmt = conn.prepareStatement
			("delete from vote where voteId = ?");
			pstmt.setInt(1, voteId);
			pstmt.executeUpdate();			
		} catch (SQLException e){
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn);
			JdbcUtil.close(pstmt);
		}
	}
	
	public int selectCount(Connection conn) throws SQLException {
		Statement stmt = null; 
		ResultSet rs = null; 
		try {
			stmt = conn.createStatement();
			rs = stmt.executeQuery("select count(*) from vote");
			rs.next();
			return rs.getInt(1);
		} finally {
			JdbcUtil.close(conn);
			JdbcUtil.close(rs);
		}
	}
	
	public List<Vote> selectList(Connection conn) 
			throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<Vote> voteList = null;
		try {
			pstmt = conn.prepareStatement
					("select * from vote ");			
			rs  = pstmt.executeQuery(); 
			voteList = new ArrayList<Vote>();
			while (rs.next()){
				Vote vote = new Vote();
				vote.setVoteId(rs.getInt(1));
				vote.setVoteName(rs.getString(2));
				vote.setVoteDate(rs.getString(3));
				vote.setVoteImg(rs.getString(4));
				vote.setBusDate(rs.getString(5));
				vote.setBackground(rs.getString(6));
				vote.setContent(rs.getString(7));
				vote.setBenefit(rs.getString(8));
				vote.setPrice(rs.getInt(9));
				voteList.add(vote);
			}
		} finally {
			JdbcUtil.close(conn);
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
		return voteList;
	}

}
