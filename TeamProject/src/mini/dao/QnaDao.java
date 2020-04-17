package mini.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import mini.vo.Qnavo;

public class QnaDao {
	private static Connection conn = null;
	private static PreparedStatement pstmt = null;
	private static ResultSet rs = null;
	
	private QnaDao() { }
	
	private static QnaDao instance = new QnaDao();
	
	public static QnaDao getInstance() {
		System.out.println("인스턴스생성");
		return instance;		
	}
	
	private static String url = "jdbc:mysql://localhost:3306/jspboard3";
	private static String user = "root";
	private static String password = "root";
	
	public Connection getConnection() throws Exception {
		Connection conn = null;		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			if(conn == null) {
				conn = DriverManager.getConnection(url, user, password);
			}
			System.out.println("데이터베이스접속");
		}catch(ClassNotFoundException e) {
				System.out.println("JDBC LIB Load Fail : " + e.getMessage());
		}catch(SQLException e2) {
				System.out.println("SQL Fail : " + e2.getMessage());
		}		
		return conn;
	}

	public static void closeConnection() {
		try {
			if(conn!=null) conn.close();
			if(pstmt !=null) pstmt.close();
			if(rs != null) rs.close();
			System.out.println("디비접속완료");
		}catch(SQLException e){
			System.out.println("CLOSE DB Fail : " + e.getMessage());
		}
		
	}
	
	public String TestFunction() {
		String rst ="";
		rst ="100";
		return rst;
	}
	
	public int selectTotal() {
		int rst = 0;
		try {
			Connection conn = getConnection();
			
			String sql = "select count(*) as total from tblbbs";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				rst = rs.getInt("total");
				System.out.println("쿼리결과:" + rst);
			}
		}catch(Exception e) {
			System.out.println("selectTotal SQL Fail : " + e.getMessage());
		}finally {
			closeConnection();
		}
		return rst;
	}
	
	
	public int insertBBS(String author, String title, String content, String memberid) {
	 int rst =0; //성공 실패
	 try {
		 Connection conn = getConnection();
		 
		 String sql = "insert into tblbbs values ( (select ifnull(max(no)+1, 1) from tblbbs a), ?,?,?,?)";
		 pstmt = conn.prepareStatement(sql);
		 pstmt.setString(1,  title);
		 pstmt.setString(2,  author);
		 pstmt.setString(3,  content);
		 pstmt.setString(4,  memberid);
		 
		 rst = pstmt.executeUpdate();
	 }catch(Exception e) {
		 System.out.println("insertBBS SQL Fail: "+e.getMessage());
		 
	 }finally {
		 closeConnection();
		 
	 }
	 return rst;
		
	}
	
	public List listBBS() {
		List arrRst = new ArrayList();
		try {
			Connection conn = getConnection();
					
			String sql = "select no, author, title from tblbbs order by no";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				
				Qnavo bbs = new Qnavo();
				bbs.setNo( rs.getInt("no"));
				bbs.setAuthor( rs.getString("author"));
				bbs.setTitle( rs.getString("title"));
				
				arrRst.add(bbs); //1세트
			}
			System.out.println("쿼리결과: "+arrRst);
		}catch(Exception e) {
			System.out.println("listBBS SQL Fail: "+ e.getMessage());
		
	}finally {
		closeConnection();
	}

	return 	arrRst;
}
	
	

	public Qnavo viewBBS(int no) {
		Qnavo rstvo = new Qnavo();
		try {
			Connection conn = getConnection();
			
			String sql = "select no, title, author, memberid, content from tblbbs where no=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, no);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				rstvo.setNo(rs.getInt("no"));
				rstvo.setAuthor(rs.getString("author"));
				rstvo.setTitle(rs.getString("title"));
				rstvo.setContent(rs.getString("content"));
				rstvo.setMemberid(rs.getString("memberid"));
			}
			System.out.println("쿼리결과: "+rstvo);
		}catch(Exception e) {
			System.out.println("viewBBS SQL Fail: "+e.getMessage());
		}finally {
			closeConnection();
		}
		return rstvo;
	}
	
	public int updateBBS(int no, String author, String title, String content, String memberid) {
		int rst =0; //성공 실패
		 try {
			 Connection conn = getConnection();
			 
			 String sql = "update tblbbs set title=?, author=?, content=?, memberid=? where no=?";
			 pstmt = conn.prepareStatement(sql);
			 pstmt.setString(1,  title);
			 pstmt.setString(2,  author);
			 pstmt.setString(3,  content);
			 pstmt.setString(4,  memberid);
			 pstmt.setInt(5,  no);
			 
			 rst = pstmt.executeUpdate();
		 }catch(Exception e) {
			 System.out.println("updateBBS SQL Fail: "+e.getMessage());
			 
		 }finally {
			 closeConnection();
			 
		 }
		 return rst;
			
	
	}
	
	public int deleteBBS(int no) {
		int rst=0; //성공 실패
		try {
			Connection conn = getConnection();
			
		String sql = "delete from tblbbs where no=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, no);
		rst = pstmt.executeUpdate(); // in,up,del ==> pass:1
		}catch(Exception e) {
			System.out.println("deleteBBS SQL Fail : "+ e.getMessage());
		}finally {
			closeConnection();
		}
		return rst;
	}
	
	
	
	
}
