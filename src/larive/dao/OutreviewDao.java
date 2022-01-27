package larive.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.jsp.JspWriter;

import larive.tool.Emailset;
import larive.dto.OutreviewDto;

public class OutreviewDao {
	
	Connection conn;
	public OutreviewDao() throws Exception
	{
		Db_conn db_conn = new Db_conn();
		conn = db_conn.DB_conns();
	}
	
	public ArrayList<OutreviewDto> olist() throws Exception {
		String sql = "select * from outReview "
				+ "where drops = 0 "
				+ "order by writeday desc";
		
		Statement stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery(sql);
		
		
		ArrayList<OutreviewDto> olist = new ArrayList<OutreviewDto>();
		
		// 출력 총갯수 구하기
		rs.last();
		int id = rs.getRow();
		rs.beforeFirst();
		
		while(rs.next()) {
			OutreviewDto odto = new OutreviewDto();			
			// 가장 최근의 것이 마지막 번호로			
			odto.setOutReviewId(id);
			id = id - 1;
			
			odto.setRoomNum(rs.getInt("roomNum"));
			odto.setDrops(rs.getInt("Drops"));
			odto.setLink(rs.getString("link"));
			odto.setWriteday(rs.getString("writeday"));
			odto.setTitle(rs.getString("title"));
			odto.setPosttype(rs.getString("Posttype"));
			odto.setRoomName(rs.getString("roomName"));			
			olist.add(odto);
			
		}		
		return olist;
		
		
		
	}
}
