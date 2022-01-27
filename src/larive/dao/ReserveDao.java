package larive.dao;

import java.io.File;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.time.LocalDate;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.jsp.JspWriter;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import larive.dto.InreviewDto;
import larive.dto.ReserveDto;
import larive.dto.RoomDto;

public class ReserveDao {
	
	Connection conn=null;
	public ReserveDao() throws Exception
	{
		Db_conn db_conn = new Db_conn();
		conn = db_conn.DB_conns();
	}
	
	// 달력에 출력할 방의 이름을 가지고 간다.
	public ArrayList<RoomDto> room_info() throws Exception
	{
		String sql="select Roomname,Roomid from room order by price asc";
		Statement stmt=conn.createStatement();
		ResultSet rs=stmt.executeQuery(sql);
		
		// rs에 있는 레코드들을 dto로 만들어서 전달(ArrayList에 담아서)
		ArrayList<RoomDto> list=new ArrayList<RoomDto>();
		while(rs.next()) 
		{
			RoomDto rdto=new RoomDto();
			rdto.setRoomid(rs.getInt("Roomid"));
			rdto.setRoomname(rs.getString("Roomname"));			
			list.add(rdto);
		}
		
		return list;
	}
	
	// 하나의 방의 정보를 리턴해주는 메소드
	public RoomDto getroom(HttpServletRequest request) throws Exception
	{
	    String Roomid=request.getParameter("Roomid");
	    System.out.println(Roomid);
	    String sql="select * from room where Roomid=?";
	    PreparedStatement pstmt=conn.prepareStatement(sql);
	    pstmt.setString(1, Roomid);
	    ResultSet rs=pstmt.executeQuery();
	    rs.next();
	    // 하나의 레코드를 dto에 담기
	    RoomDto rdto=new RoomDto();
		rdto.setRoomid(rs.getInt("roomid"));
		rdto.setRoomname(rs.getString("roomname"));
		rdto.setPrice(rs.getInt("price"));
		rdto.setMin(rs.getInt("min"));
		rdto.setMax(rs.getInt("max"));
		rdto.setOvercost(rs.getInt("overcost"));
		rdto.setRooms(rs.getInt("rooms"));
		rdto.setBed(rs.getInt("bed"));
		rdto.setSize(rs.getInt("size"));
		rdto.setInduction(rs.getInt("induction"));
		rdto.setWashing(rs.getInt("washing"));
		
		
		return rdto;
	}
	
	
	
	public void reserve_ok(HttpServletRequest request,
			HttpSession session,HttpServletResponse response) throws Exception
	{
		String Memberid=session.getAttribute("Memberid").toString();
		String Roomid=request.getParameter("Roomid");
		String Checkin=request.getParameter("Checkin");
		String Checkout=request.getParameter("Checkout");
		String Totalday=request.getParameter("totalday");
		String Membercount=request.getParameter("membercount");
		String Overprice=request.getParameter("inwon_price");
		String Totalprice=request.getParameter("totalprice");
		String Roomname=request.getParameter("roomname");

		System.out.println("-----------------------");
		System.out.println(Memberid);
		System.out.println(Roomid);
		System.out.println(Checkin);
		System.out.println(Checkout);
		System.out.println(Membercount);
		System.out.println(Overprice);
		System.out.println(Totalprice);
		System.out.println(Checkout);
		System.out.println("-----------------------");
		String sql="insert into reverse(Memberid,Roomid,Checkin,Checkout,totalday,Membercount,Overprice";
		sql=sql+",Totalprice,writeday,roomname)";
		sql=sql+" values(?,?,?,?,?,?,?,?,now(),?)";	
		
		PreparedStatement pstmt=conn.prepareStatement(sql);
		pstmt.setString(1, Memberid);
		pstmt.setString(2, Roomid);
		pstmt.setString(3, Checkin);
		pstmt.setString(4, Checkout); 
		pstmt.setString(5, Totalday); 
		pstmt.setString(6, Membercount);
		pstmt.setString(7, Overprice);
		pstmt.setString(8, Totalprice);
		pstmt.setString(9, Roomname);
		
		pstmt.executeUpdate();
		System.out.println(pstmt.toString());
        pstmt.close();
        conn.close();
		
        
        
        
		response.sendRedirect("reserve_view.jsp");
		// 방금 예약한 내용을 보여주기
	}
	
	// 사용자의 가장 최근의 예약 레코드를 가져오기
	public ReserveDto get_current(HttpSession session) throws Exception
	{
		
		String Memberid=session.getAttribute("Memberid").toString();
		System.out.println(Memberid);
		String sql="select * from reverse where Memberid=? order by writeday desc";
		//String sql="select * from reverse order by writeday desc";
		PreparedStatement pstmt=conn.prepareStatement(sql);
		pstmt.setString(1, Memberid);
		//Statement stmt=conn.createStatement();
		
		ResultSet rs=pstmt.executeQuery();
        rs.next(); 
        // ResultSet  => ReserveDto로 이동
        ReserveDto rdto=new ReserveDto();
        rdto.setMemberid(rs.getInt("Memberid"));
        rdto.setRoomid(rs.getInt("roomid"));
        rdto.setCheckin(rs.getString("Checkin"));
        rdto.setCheckout(rs.getString("Checkout"));
        rdto.setMembercount(rs.getInt("membercount"));
        rdto.setTotalday(rs.getInt("totalday"));
        rdto.setOverprice(rs.getInt("overprice"));
        rdto.setTotalprice(rs.getInt("totalprice"));
        rdto.setWriteday(rs.getString("writeday"));
        rdto.setState(rs.getInt("state"));
        rdto.setRoomname(rs.getString("roomname"));
       
        return rdto;
	}
	
	// 특정날짜와 방의 id를 가지고 예약여부 체크
	public int get_check(String xday, int Roomid) throws Exception 
	{
		String sql="select count(*) as cnt from reverse where ";
		sql=sql+" ? >= Checkin and ? < Checkout and Roomid=?";
		
		PreparedStatement pstmt=conn.prepareStatement(sql);
		pstmt.setString(1, xday);
		pstmt.setString(2, xday);
		pstmt.setInt(3, Roomid);
		//System.out.println(pstmt.toString());
		ResultSet rs=pstmt.executeQuery();
		rs.next();
		//System.out.println(rs.getInt("cnt"));
		return rs.getInt("cnt"); // 1이면 예약불가, 0이면 예약가능
	}
	// 몇박이 가능한지의 값을 구해서 리턴해주기
	public int suk_check(String Roomid,String y, String m, String day) throws Exception
	{
		int yy=Integer.parseInt(y);
		int mm=Integer.parseInt(m);
		int dd=Integer.parseInt(day);
		
		// 입실일을 LocalDate객체에 넣어주기
		LocalDate Checkin=LocalDate.of(yy, mm, dd); //입실일
		
		int chk=0; // 숙박이 가능한 숫자를 저장
		
		for(int i=1;i<=8;i++)
		{
			chk++;
			LocalDate xday=Checkin.plusDays(i);
			String sql="select * from reverse where ? >= Checkin and ? < Checkout ";
			sql=sql+" and Roomid=?";
			
			PreparedStatement pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, xday.toString());
			pstmt.setString(2, xday.toString());
			pstmt.setString(3, Roomid);
			
			ResultSet rs=pstmt.executeQuery();
			if(rs.next())
			{
			   break;
			}
		}
		
		//System.out.println(chk);
		return chk;
	}
	
	// 나의 예약 조회 (예약 전부 확인)
	public ArrayList<ReserveDto> myreser(HttpSession session) throws Exception
	{
		String Memberid=session.getAttribute("Memberid").toString();
		
		String sql="select r1.*, r2.Roomname from reverse as r1, room as r2"
				+ " where Memberid=? and r1.Roomid=r2.Roomid order by Checkin asc";
		
		PreparedStatement pstmt=conn.prepareStatement(sql);
		pstmt.setString(1, Memberid);
		
		ResultSet rs=pstmt.executeQuery();
		// 결과를 Dto에 담기 => 레코드가 하나 이상이므로 ArrayList가 필요
		ArrayList<ReserveDto> rlist=new ArrayList<ReserveDto>();
		while(rs.next()) {
			ReserveDto rdto=new ReserveDto();
			rdto.setReserveid(rs.getInt("reverseid"));
	        rdto.setMemberid(rs.getInt("memberid"));
	        rdto.setRoomid(rs.getInt("roomid"));
	        rdto.setCheckin(rs.getString("Checkin"));
	        rdto.setCheckout(rs.getString("Checkout"));
	        rdto.setMembercount(rs.getInt("membercount"));
	        rdto.setTotalday(rs.getInt("totalday"));
	        rdto.setOverprice(rs.getInt("overprice"));
	        rdto.setTotalprice(rs.getInt("totalprice"));
	        rdto.setWriteday(rs.getString("writeday"));
	        rdto.setState(rs.getInt("state"));
	        rdto.setRoomname(rs.getString("roomname"));
	        
	        rlist.add(rdto);
		}
		return rlist;
	}
	// 결제완료 => 취소신청
	public void cancel(HttpServletRequest request,
			HttpServletResponse response) throws Exception
	{
		String reserveid=request.getParameter("reserveid");
		System.out.println(reserveid);
		String sql="update reverse set State=2 where Reverseid=?";
		PreparedStatement pstmt=conn.prepareStatement(sql);
		pstmt.setString(1, reserveid);
		
		pstmt.executeUpdate();
		
		
		System.out.println("이거 동작안하지?");
		response.sendRedirect("reserve_list.jsp");
	}

	
	public ArrayList<ReserveDto> rlist2(HttpSession session) throws Exception {
		String Memberid=session.getAttribute("Memberid").toString();
		String sql = "select * from reverse where memberid = ? order by reverseid desc";		
		PreparedStatement pstmt=conn.prepareStatement(sql);
		pstmt.setString(1, Memberid);
		ResultSet rs = pstmt.executeQuery();
		ArrayList<ReserveDto> rlist2 = new ArrayList<ReserveDto>();
		while(rs.next()) {
			ReserveDto rdto = new ReserveDto();
			rdto.setMemberid(rs.getInt("Memberid"));
			rdto.setReserveid(rs.getInt("reverseid"));
	        rdto.setMemberid(rs.getInt("memberid"));
	        rdto.setRoomid(rs.getInt("roomid"));
	        rdto.setCheckin(rs.getString("Checkin"));
	        rdto.setCheckout(rs.getString("Checkout"));
	        rdto.setMembercount(rs.getInt("membercount"));
	        rdto.setTotalday(rs.getInt("totalday"));
	        rdto.setOverprice(rs.getInt("overprice"));
	        rdto.setTotalprice(rs.getInt("totalprice"));
	        rdto.setWriteday(rs.getString("writeday"));
	        rdto.setState(rs.getInt("state"));
	        rdto.setRoomname(rs.getString("roomname"));
			
			rlist2.add(rdto);
		}
		
		return rlist2;
	}
	
	public ReserveDto rcontent(HttpServletRequest request) throws Exception {
		request.setCharacterEncoding("UTF-8");
		String Reserveid = request.getParameter("reverseid");
		String sql = "select * from reverse where reverseid =" + Reserveid;
		
		Statement stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery(sql);
		rs.next();
		ReserveDto rdto = new ReserveDto();
		rdto.setReserveid(rs.getInt("reverseid"));
        rdto.setMemberid(rs.getInt("memberid"));
        rdto.setRoomid(rs.getInt("roomid"));
        rdto.setCheckin(rs.getString("Checkin"));
        rdto.setCheckout(rs.getString("Checkout"));
        rdto.setMembercount(rs.getInt("membercount"));
        rdto.setTotalday(rs.getInt("totalday"));
        rdto.setOverprice(rs.getInt("overprice"));
        rdto.setTotalprice(rs.getInt("totalprice"));
        rdto.setWriteday(rs.getString("writeday"));
        rdto.setState(rs.getInt("state"));
        rdto.setRoomname(rs.getString("roomname"));
		return rdto;
	}
	
	public void stateupdate(HttpServletRequest request) throws Exception {
		request.setCharacterEncoding("UTF-8");
		String Reverseid = request.getParameter("reverseid");   
		

	
		String sql = "update reverse set state='2' where Reverseid =?" ;

		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, Reverseid);
		pstmt.executeUpdate();
		
		

	}
	
	
	public ReserveDto rroom(HttpServletRequest request) throws Exception {
		request.setCharacterEncoding("UTF-8");
		String Reserveid = request.getParameter("reverseid");
		String sql = "select * from reverse where reverseid =" + Reserveid;
		
		Statement stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery(sql);
		rs.next();
		ReserveDto rdto = new ReserveDto();
		rdto.setReserveid(rs.getInt("reverseid"));
        rdto.setMemberid(rs.getInt("memberid"));
        rdto.setRoomid(rs.getInt("roomid"));
        rdto.setRoomname(rs.getString("roomname"));
		return rdto;
	}
}
















