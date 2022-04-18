package kr.co.ict.domain;

import java.sql.Date;

public class BoardVO {
	
	private int boardNum;
	private String title;
	private String content;
	private String writer;
	private Date bDate;
	private Date mDate;
	private int hit;
	public int getBoardNum() {
		return boardNum;
	}
	public void setBoardNum(int boardNum) {
		this.boardNum = boardNum;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public Date getBdate() {
		return bDate;
	}
	public void setBdate(Date bDate) {
		this.bDate = bDate;
	}
	public Date getMdate() {
		return mDate;
	}
	public void setMdate(Date mDate) {
		this.mDate = mDate;
	}
	public int getHit() {
		return hit;
	}
	public void setHit(int hit) {
		this.hit = hit;
	}
	@Override
	public String toString() {
		return "BoardVO [board_num=" + boardNum + ", title=" + title + ", content=" + content + ", writer=" + writer
				+ ", bdate=" + bDate + ", mdate=" + mDate + ", hit=" + hit + "]";
	}
	
	
}
