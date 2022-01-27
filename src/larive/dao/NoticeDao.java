package larive.dao;

import java.io.File;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import larive.dto.*;


public class NoticeDao {

	Connection conn;
	public NoticeDao() throws Exception {
		Db_conn db_conn = new Db_conn();
		conn = db_conn.DB_conns();		
	}
	

	public void nwrite_ok(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		String sql = "select * from Notice order by Noticeid desc";
		
		Statement stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery(sql);
		int noticeid = 1;
		// 출력 총갯수 구하기
		if(rs.next())	
			noticeid = rs.getInt("noticeid")+1;	

		
		System.out.println("마지막 id"+noticeid);
		String saveFolder=request.getRealPath("/notice/img/"+ noticeid);      
        File targetDir = new File(saveFolder); 
        
        if(!targetDir.exists()) {    //디렉토리 없으면 생성.
         targetDir.mkdirs();
        }else {
        	File[] folder_list = targetDir.listFiles(); //파일리스트 얻어오기			
    		for (int j = 0; j < folder_list.length; j++) {
    			folder_list[j].delete(); //파일 삭제 
    			System.out.println("파일이 삭제되었습니다.");    					
    		}  	
        }        
        
		String path = request.getRealPath("/notice/img/"+ noticeid);
		int size=1024*1024*10;
		MultipartRequest multi = new MultipartRequest(
				request,path,size,"utf-8",new DefaultFileRenamePolicy());
		request.setCharacterEncoding("UTF-8");
		String title= multi.getParameter("title");
		String content = multi.getParameter("tcontent");
		String photo = multi.getFilesystemName("photo");
//		Enumeration files = multi.getFileNames(); //파일명정보를 배열로 만들다(files에 name들이 담겨있다)
//		while(files.hasMoreElements()){
//		    String name = (String)files.nextElement(); //각각의 파일 name을 String name에 담는다.
//		    String filename = multi.getFilesystemName(name); //각각의 파일 name을 통해서 파일의 정보를 얻는다.
//		    System.out.println(name);
//		    System.out.println(filename);
//		}

	
		System.out.println(title);
		System.out.println(photo);
		System.out.println(content);
	
		sql = "insert into Notice(title, context,photo,writeday)";
		sql = sql + " values(?,?,?,now())";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, title);
		pstmt.setString(2, content);
		pstmt.setString(3, photo);
		pstmt.executeUpdate();
		pstmt.close();
		conn.close();	
		response.sendRedirect("/pension0503/notice/notice.jsp");
		
	}
	
	public ArrayList<NoticeDto> nlist() throws Exception {
		String sql = "select * from notice order by noticeid desc";		
		Statement stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery(sql);
		ArrayList<NoticeDto> nlist = new ArrayList<NoticeDto>();
		while(rs.next()) {
			NoticeDto ndto = new NoticeDto();
			ndto.setNoticeid(rs.getInt("Noticeid"));
			ndto.setTitle(rs.getString("Title"));
			ndto.setContext(rs.getString("Context"));
			ndto.setWriteday(rs.getString("writeday"));
			ndto.setPhoto(rs.getString("photo"));
			
			nlist.add(ndto);
		}
		
		return nlist;
	}
	
	public NoticeDto ncontent(HttpServletRequest request) throws Exception {
		request.setCharacterEncoding("UTF-8");
		String Noticeid = request.getParameter("noticeid");
		String sql = "select * from notice where noticeid =" + Noticeid;
		
		Statement stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery(sql);
		rs.next();
		NoticeDto ndto = new NoticeDto();
		ndto.setNoticeid(rs.getInt("Noticeid"));
		ndto.setTitle(rs.getString("Title"));
		ndto.setContext(rs.getString("Context"));
		ndto.setWriteday(rs.getString("writeday"));
		ndto.setPhoto(rs.getString("photo"));	
		return ndto;
	}
	
	public int delete(HttpServletRequest request) throws Exception {
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id");
		String sql = "select * from Inreview where InReviewId =" + id ;
		Statement stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery(sql);
		rs.next();
		System.out.println(rs.getString("memberid"));
		System.out.println(request.getParameter("userid"));
		if(rs.getString("memberid").equals(request.getParameter("userid"))) {		
			sql = "delete from Inreview where InReviewId = ?";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.executeUpdate();
			return 0;
		}else {
			return 1;
		}
	}
	
	public void update(HttpServletRequest request) throws Exception {
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id");
		System.out.println("아이디디디디딛"+id);
		String saveFolder=request.getRealPath("/inreview/img/"+ id);      
        File targetDir = new File(saveFolder); 
			
		if(!targetDir.exists()) {    //디렉토리 없으면 생성.
	         targetDir.mkdirs();
	        }else {
	        	File[] folder_list = targetDir.listFiles(); //파일리스트 얻어오기			
	    		for (int j = 0; j < folder_list.length; j++) {
	    			folder_list[j].delete(); //파일 삭제 
	    			System.out.println("파일이 삭제되었습니다.");    					
	    		}  	
	        }        
		
		String path = request.getRealPath("/inreview/img/"+ id);
		int size=1024*1024*10;
		MultipartRequest multi = new MultipartRequest(
				request,path,size,"utf-8",new DefaultFileRenamePolicy());
		request.setCharacterEncoding("UTF-8");
		String title= multi.getParameter("title");
		String content = multi.getParameter("tcontent");
		String photo = multi.getFilesystemName("photo");
		id = multi.getParameter("id");
		
		System.out.println("photo");
		System.out.println(photo);
		if(photo.equals("")) {
			String sql = "update Inreview set title=?, context=? where InReviewId =?" ;
			System.out.println(title);
			System.out.println(content);
			System.out.println(id);
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, title);
			pstmt.setString(2, content);
			pstmt.setString(3, id);
			pstmt.executeUpdate();
		}
		else {
		String sql = "update Inreview set title=?, context=?, photo=? where InReviewId =?" ;
		System.out.println(title);
		System.out.println(content);
		System.out.println(id);
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, title);
		pstmt.setString(2, content);
		pstmt.setString(3, photo);
		pstmt.setString(4, id);
		pstmt.executeUpdate();
		}
		

	}
	
}
