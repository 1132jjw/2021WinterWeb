package member;

import java.sql.*;
import java.sql.DriverManager;

public class MemberDao {
	final String JDBC_DRIVER = "org.h2.Driver";
	final String JDBC_URL = "jdbc:h2:tcp://localhost/~/swwinter";
	final String user = "u19166"
	final String password = "1234"
	private static MemberDao instance;
	

	public MemberDao() {
		// TODO Auto-generated constructor stub
	}
	
	public static MemberDao getInstance( ) {
		if(instance==null)
			instance=new MemberDao();
		return instance;
	}
	
	public Connection open( ) {
		Connection conn = null;
		try {
			Class.forName(JDBC_DRIVER);
			conn = DriverManager.getConnection(JDBC_URL, user, password);	
		}	catch(Exception e)	{
				e.printStackTrace();
		}
		return conn;
	}



	public int loginCheck(String email, String pw) {
		Connection conn=open();
		PreparedStatement pstmt=null;
		ResultSet rs = null;
		String dbPW=" ";
		int x=-1;
		
		try {
			StringBuffer query = new StringBuffer();
			query.append("select password from members where email=?");
			
			pstmt = conn.prepareStatement(query.toString());
			pstmt.setString(1, email);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				dbPW = rs.getString("password");
				if(dbPW.equals(pw)) x=1;
				else x=0;
				
			}else {
				x=-1;
			}
			return x;
		}
	}	
}
