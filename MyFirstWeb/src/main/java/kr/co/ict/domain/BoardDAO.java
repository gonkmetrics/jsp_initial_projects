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
		List<BoardVO> boardListA = new ArrayList<>();
		try {
			con = ds.getConnection();
			queryBoard = con.prepareStatement("SELECT * FROM boardTbl");
			rsBoard = queryBoard.executeQuery();
			while (rsBoard.next()) {
				BoardVO board = new BoardVO();
				//System.out.println(rsBoard.getInt("board_num"));
				board.setBoardNum(rsBoard.getInt("board_num"));
				board.setTitle(rsBoard.getString("title"));
				board.setContent(rsBoard.getString("content"));
				board.setWriter(rsBoard.getString("writer"));
				board.setBdate(rsBoard.getDate("bdate"));
				board.setMdate(rsBoard.getDate("mdate"));
				board.setHit(rsBoard.getInt("hit"));
				boardListA.add(board);
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
		return boardListA;	
	}
	
	public BoardVO getBoardDetail(int bno){
		Connection con = null;
		PreparedStatement queryBoard = null;
		ResultSet rsBoard = null;
		BoardVO board = new BoardVO();
		try {
			con = ds.getConnection();
			queryBoard = con.prepareStatement("SELECT * FROM boardTbl WHERE board_num=?");
			queryBoard.setInt(1, bno);
			rsBoard = queryBoard.executeQuery();
			if (rsBoard.next() == true) {
				board.setBoardNum(rsBoard.getInt("board_num"));
				board.setTitle(rsBoard.getString("title"));
				board.setContent(rsBoard.getString("content"));
				board.setWriter(rsBoard.getString("writer"));
				board.setBdate(rsBoard.getDate("bdate"));
				board.setMdate(rsBoard.getDate("mdate"));
				board.setHit(rsBoard.getInt("hit"));
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
		return board;	
		}


	public void insertBoard(String title, String text, String author){
		Connection con = null;
		PreparedStatement queryBoard = null;
		try {
			con = ds.getConnection();
			queryBoard = con.prepareStatement("INSERT INTO boardTbl(title, content, writer) VALUES (?, ?, ?)");
			queryBoard.setString(1, title);
			queryBoard.setString(2, text);
			queryBoard.setString(3, author);
			queryBoard.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
			con.close();
			queryBoard.close();
			}catch(Exception e) {}
		}
		return;
		}

	public void updateBoard(String title, String text, String author, int bno){
		Connection con = null;
		PreparedStatement queryBoard = null;
		try {
			con = ds.getConnection();
			queryBoard = con.prepareStatement("UPDATE boardTbl SET title=?, content=?, writer=?, mdate=now() WHERE board_num=?");
			queryBoard.setString(1, title);
			queryBoard.setString(2, text);
			queryBoard.setString(3, author);
			queryBoard.setInt(4, bno);
			//update time stamp
			queryBoard.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
			con.close();
			queryBoard.close();
			}catch(Exception e) {}
		}
		return;
		}
	
	public void deleteBoard(int bno){
		Connection con = null;
		PreparedStatement queryBoard = null;
		try {
			con = ds.getConnection();
			queryBoard = con.prepareStatement("DELETE FROM boardTbl WHERE board_num=?");
			queryBoard.setInt(1, bno);
			queryBoard.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
			con.close();
			queryBoard.close();
			}catch(Exception e) {}
		}
		return;	
		}
	}
