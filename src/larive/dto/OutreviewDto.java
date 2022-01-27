package larive.dto;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.jsp.JspWriter;

import larive.tool.Emailset;

public class OutreviewDto {	
	private int outReviewId, Drops, RoomNum;
	private String Link, Writeday, Title;
	private String Posttype, RoomName;
	public int getOutReviewId() {
		return outReviewId;
	}
	public String getTitle() {
		return Title;
	}
	public void setTitle(String title) {
		Title = title;
	}
	public void setOutReviewId(int outReviewId) {
		this.outReviewId = outReviewId;
	}
	public int getDrops() {
		return Drops;
	}
	public void setDrops(int drops) {
		Drops = drops;
	}
	public int getRoomNum() {
		return RoomNum;
	}
	public void setRoomNum(int roomNum) {
		RoomNum = roomNum;
	}
	public String getLink() {
		return Link;
	}
	public void setLink(String link) {
		Link = link;
	}
	public String getWriteday() {
		return Writeday;
	}
	public void setWriteday(String writeday) {
		Writeday = writeday;
	}
	public String getPosttype() {
		return Posttype;
	}
	public void setPosttype(String posttype) {
		Posttype = posttype;
	}
	public String getRoomName() {
		return RoomName;
	}
	public void setRoomName(String roomName) {
		RoomName = roomName;
	}
	
	
}
