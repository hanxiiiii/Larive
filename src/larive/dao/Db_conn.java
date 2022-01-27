package larive.dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class Db_conn {		
	
	public Connection DB_conns() throws Exception{
		
		//db 연결부분
		String dbname ="imsi2";
		String id ="root";
		String password ="1234";	
		
		Class.forName("com.mysql.jdbc.Driver");		
		String db="jdbc:mysql://localhost:3306/"+dbname;
		Connection conn=DriverManager.getConnection(db,id,password);
		return conn;
	}
	
}
