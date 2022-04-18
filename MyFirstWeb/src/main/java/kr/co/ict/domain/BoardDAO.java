package kr.co.ict.domain;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class BoardDAO {
	private DataSource ds = null;
	
	private BoardDAO() {
		try {
			Context ct = new InitialContext();
			ds = (DataSource)ct.lookup("java:comp/env/jdbc/mysql");
		}catch(Exception e) {}
	}
	
	private static BoardDAO bDAO = new BoardDAO();
	
	public static BoardDAO getInstance() {
		if(bDAO == null){
			bDAO = new BoardDAO();
		}
		return bDAO;
	}
	
	public List<BoardVO> getAllUserList(){
		Connection con = null;
		PreparedStatement queryBoard = null;
		ResultSet rsBoard = null;
		List<BoardVO> boardList = new ArrayList<>();
		try {
			con = ds.getConnection();
			queryBoard = con.prepareStatement("SELECT * FROM boardTbl");
			rsBoard = queryBoard.executeQuery();
			BoardVO board = new BoardVO();
			while (rsBoard.next()) {
				//System.out.println(rsBoard.getInt("board_num"));
				board.setBoardNum(rsBoard.getInt("board_num"));
				board.setTitle(rsBoard.getString("title"));
				board.setContent(rsBoard.getString("content"));
				board.setWriter(rsBoard.getString("writer"));
				board.setBdate(rsBoard.getDate("bdate"));
				board.setMdate(rsBoard.getDate("mdate"));
				board.setHit(rsBoard.getInt("hit"));
				boardList.add(board);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
			con.close();
			queryBoard.close();
			rsBoard.close();
			}catch(Exception e) {}
		}
		return boardList;	
	}

}
