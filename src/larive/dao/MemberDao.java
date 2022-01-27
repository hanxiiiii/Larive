package larive.dao;

import java.io.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.jsp.JspWriter;

import larive.tool.Emailset;
import larive.dto.MemberDto;

public class MemberDao {
	
	Connection conn;
	public MemberDao() throws Exception
	{
		Db_conn db_conn = new Db_conn();
		conn = db_conn.DB_conns();
	}
	public void member_ok(HttpServletRequest request,
			HttpServletResponse response) throws Exception
	{
		request.setCharacterEncoding("utf-8");
		
		String name=request.getParameter("name");
		String Email=request.getParameter("Email");
		String Pwd=request.getParameter("Pwd");
		String Phone=request.getParameter("Phone");
		
		String sql="insert into member(name,Email,Pwd,Phone,Writeday) ";
		sql=sql+" values(?,?,?,?,now())";
		
		PreparedStatement pstmt=conn.prepareStatement(sql);
		
		pstmt.setString(1, name);
		pstmt.setString(2, Email);
		pstmt.setString(3, Pwd);
		pstmt.setString(4, Phone);
		
		pstmt.executeUpdate();
		
		pstmt.close();
		conn.close();
		response.sendRedirect("login.jsp");
		
	}
	public void Email_check(HttpServletRequest request,JspWriter out) throws Exception
	{
		String userid=request.getParameter("Email");
		
		String sql="select * from member where Email=?";
	
		PreparedStatement pstmt=conn.prepareStatement(sql);
		pstmt.setString(1, userid);
		
		ResultSet rs=pstmt.executeQuery();
		
		// 이메일 전송부분
		
		
		if(rs.next())
			out.print("1"); // 사용불가능 아이디
		else {
			Emailset mail = new Emailset();
			String keys = mail.Emailkeys(request);
			out.print(keys); // 사용가능 아이디
		}
	}
	public void Phone_check(HttpServletRequest request,JspWriter out) throws Exception
	{
		String userid=request.getParameter("Phone");
		
		String sql="select * from member where Phone=?";
	
		PreparedStatement pstmt=conn.prepareStatement(sql);
		pstmt.setString(1, userid);
		
		ResultSet rs=pstmt.executeQuery();
		if(rs.next())
		  out.print("1"); //가능
		else
		  out.print("0"); //불가능
	}
	public int login_ok(HttpServletRequest request,HttpSession session) throws Exception
	{
		String Email=request.getParameter("Email");
		String Pwd=request.getParameter("Pwd");
		
		
		String sql="select * from member where Email=? and Pwd=? and state=0";
		
		PreparedStatement pstmt=conn.prepareStatement(sql);
		pstmt.setString(1, Email);
		pstmt.setString(2, Pwd);
		
		
		ResultSet rs=pstmt.executeQuery();
		int chk=0;
		if(rs.next())  // 로그인 성공 => 세션변수를 생성 => /main/index.jsp이동
		{
			session.setAttribute("Email",rs.getString("Email"));
			session.setAttribute("name", rs.getString("name"));
			session.setAttribute("Memberid", rs.getString("memberid"));
			System.out.println("세션확인용"+session.getAttribute("Memberid"));
		}
		else  // 로그인 실패 => login.jsp로 다시 이동
		{
		
			chk=1;
		}
		
		return chk;
	}
	// 이메일아이디 찾기 
	public void Email_search_ok(HttpServletRequest request,HttpServletResponse response,HttpSession session) throws Exception
	{
	   	request.setCharacterEncoding("utf-8");
	   	String name=request.getParameter("name");
	   	String phone=request.getParameter("Phone");
	   	
	   	String sql="select Email from member where name=? and Phone=?";
	   	PreparedStatement pstmt=conn.prepareStatement(sql);
	   	pstmt.setString(1, name);
	   	pstmt.setString(2, phone);
	   	
	   	ResultSet rs=pstmt.executeQuery();
	   	
	   	int chk=1;
	   	if(rs.next())  // 이름,전화번호가 일치하는 레코드가 존재 => Email
	   	{
	        session.setAttribute("imsi", rs.getString("Email"));
	        chk=0;
	   	}
	   	
	   	response.sendRedirect("Email_search.jsp?chk="+chk);
	}
	// 비밀번호 찾기
		public void pwd_search_ok(HttpServletRequest request,HttpServletResponse response,HttpSession session) throws Exception
		{
			request.setCharacterEncoding("utf-8");
			String Email=request.getParameter("Email");
		   	String name=request.getParameter("name");
		   	String Phone=request.getParameter("Phone");
		   	System.out.println(Email);
		   	System.out.println(name);
		   	System.out.println(Phone);
		   	String sql="select Pwd from member where Email=? and name=? and Phone=?";
		   	
		   	PreparedStatement pstmt=conn.prepareStatement(sql);
		   	pstmt.setString(1, Email);
		   	pstmt.setString(2, name);
		   	pstmt.setString(3, Phone);
		   	
		   	ResultSet rs=pstmt.executeQuery();
		   	int chk=1;
		   	if(rs.next())
		   	{
		   		session.setAttribute("Pwd", rs.getString("Pwd"));
		   		chk=0;
		   	}
			
		   	response.sendRedirect("Pwd_search.jsp?chk="+chk);
	     }
		public MemberDto myinfo(HttpSession session) throws Exception
		{
			String Email=session.getAttribute("Email").toString();
			
			String sql="select * from member where Email=?";
			PreparedStatement pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, Email);
			
			ResultSet rs=pstmt.executeQuery();
			rs.next();
			// ResultSet => MemberDto 옮기기
			MemberDto mdto=new MemberDto();
			mdto.setEmail(rs.getString("email"));
			mdto.setName(rs.getString("name"));
			mdto.setPhone(rs.getString("phone"));
			mdto.setPwd(rs.getString("pwd"));
			mdto.setWriteday(rs.getString("writeday"));
			
			return mdto;
		}
	
	public void myinfo_chg_ok(HttpServletRequest request,
			HttpSession session, HttpServletResponse response) throws Exception
	{
		request.setCharacterEncoding("utf-8");
		String name=request.getParameter("name");
		String Phone=request.getParameter("phone");
		String Pwd=request.getParameter("Pwd");
		String Email=session.getAttribute("Email").toString();
		System.out.println(Pwd);
		
		String sql="update member set name=?, phone=?, Pwd=? where Email=?";
		
		PreparedStatement pstmt=conn.prepareStatement(sql);
		pstmt.setString(1, name);
		pstmt.setString(2, Phone);
		pstmt.setString(3, Pwd);
		pstmt.setString(4, Email);
		pstmt.executeUpdate();
		
		pstmt.close();
		conn.close();
		
		response.sendRedirect("myinfo.jsp");
	}
	
	// 회원탈퇴
	public void member_out(HttpSession session,
			HttpServletResponse response) throws Exception
	{
		String Email=session.getAttribute("Email").toString();
		
		String sql="update member set state=1 where Email=?";
		
		PreparedStatement pstmt=conn.prepareStatement(sql);
		pstmt.setString(1, Email);
		pstmt.executeUpdate();
		
		pstmt.close();
		conn.close();
		
		session.invalidate();
		
		response.sendRedirect("/pension0503/home/home.jsp");
	}
	
	
	public void roomnumber_ok(HttpServletRequest request,JspWriter out) throws Exception
	{
		String room=request.getParameter("room");
		System.out.println(room);
		String sql="select * from room where roomid=?";
	
		PreparedStatement pstmt=conn.prepareStatement(sql);
		pstmt.setString(1, room);
		
		ResultSet rs=pstmt.executeQuery();
		rs.next();
		System.out.println(rs.getInt("max"));
		out.print(rs.getInt("max"));
	}
	
	
	public String membername(int id) throws Exception {
		String sql="select * from member where memberid=?";
	   	
	   	PreparedStatement pstmt=conn.prepareStatement(sql);
	   	pstmt.setInt(1, id);
	   	ResultSet rs=pstmt.executeQuery();
		rs.next();		
		return rs.getString("name");
	}
	
	public void reverse_check_room(HttpServletRequest request,JspWriter out) throws Exception  {
	   	String room=request.getParameter("room");
		String sql = "select * from reverse where roomid=? order by checkin asc";
	   	PreparedStatement pstmt=conn.prepareStatement(sql);
	   	pstmt.setString(1,room);
	   	ResultSet rs=pstmt.executeQuery();
	   	ArrayList<String> dates = new ArrayList<String>();
	   	String dates2 ="";
	   	while(rs.next()) {	   		
			String in = rs.getString("Checkin");
			String outs = rs.getString("Checkout");
			SimpleDateFormat transFormat = new SimpleDateFormat("yyyy-MM-dd");
			Date in_day = transFormat.parse(in);
			Date out_day = transFormat.parse(outs);	
			Date currentDate = in_day;			
			while (currentDate.compareTo(out_day) < 0) {
				dates.add(transFormat.format(currentDate));
				dates2 = dates2 + transFormat.format(currentDate)+",";
				Calendar c = Calendar.getInstance();
				c.setTime(currentDate);
				c.add(Calendar.DAY_OF_MONTH, 1);
				currentDate = c.getTime();
			}	 
		}	
	   	System.out.println(dates2);
		out.print(dates2);			   	
	}
	
	
	public void Phone_check_update(HttpServletRequest request,JspWriter out) throws Exception
	{
		String Phone=request.getParameter("Phone");
		String Email=request.getParameter("id");
		System.out.println(Phone);
		System.out.println(Email);
		String sql="select * from member where Phone=?";
		
		PreparedStatement pstmt=conn.prepareStatement(sql);
		pstmt.setString(1, Phone);
		
		ResultSet rs=pstmt.executeQuery();
		if(rs.next()) {
			if(rs.getString("Email").equals(Email))
				out.print("0"); //媛��뒫
			else
				out.print("1"); //遺덇��뒫		  
		}else {
			out.print("0"); //媛��뒫			
		}
	}
	
}
