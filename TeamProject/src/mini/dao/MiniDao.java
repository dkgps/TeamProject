package mini.dao;
import mini.vo.Member;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

//import com.hk.th.vo.EmpMemVo;

public class MiniDao {
	private static Connection conn=null;
	private static PreparedStatement pstmt=null;
	private static ResultSet rs=null;
	
	private MiniDao() {
		
	}
	
	private static MiniDao instance = new MiniDao();
	
	public static MiniDao getInstance() {
		System.out.println("인스턴스 생성");
		return instance;
	}
	
	private static String url = "jdbc:mysql://localhost:3306/jspboard3";
	private static String user = "jspuser3";
	private static String password = "jspuser3";
	
	
	public Connection getConnection() throws Exception {

		Connection conn = null;

		try {
			Class.forName("com.mysql.jdbc.Driver");
			if (conn == null) {
				conn = DriverManager.getConnection(url, user, password);
			}
			System.out.println("데이터베이스접속");
		} catch (ClassNotFoundException e) {
			System.out.println("JDBC LIB Load Fail:" + e.getMessage());
		} catch (SQLException e2) {
			System.out.println("SQL Fail: " + e2.getMessage());
		}

		return conn;
	}
	
	public static void closeConnection() {
		try {
			if (conn != null)
				conn.close();
			if (pstmt != null)
				pstmt.close();
			if (rs != null)
				rs.close();
		} catch (SQLException e) {
			System.out.println("CLOSE DB Fail:" + e.getMessage());
		}
	}
	
	public int insertMember(String memberid, String number, String password, String name) {
		int rst = 0; // 성공 실패
		try {
			Connection conn = getConnection();

			String sql = "insert into member values(?,?,?,?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, memberid);
			pstmt.setString(2, number);/// 불편함
			pstmt.setString(3, password);
			pstmt.setString(4, name);

			/* rs = pstmt.executeQuery(); */
			rst = pstmt.executeUpdate();

			/*
			 * if (rs.next()) { rst = rs.getInt("total"); }
			 */
		} catch (Exception e) {
			System.out.println("getTotalEmp SQL Fail:" + e.getMessage());
		} finally {
			closeConnection();
		}
		return rst;
	}
	
	public boolean login(String memberid, String password) {
		boolean check=true;
		Member rst = new Member();
		
		try {
			Connection conn = getConnection();

			String sql = "select memberid,password from member where memberid=? and password=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, memberid);
			pstmt.setString(2, password);
			rs = pstmt.executeQuery();

			if (rs.next() == true) {
				while (rs.next()) {
					rst.setMemberid(rs.getString("memberid"));
					rst.setPassword(rs.getString("password"));

					System.out.println("쿼리결과:" + rst);
				}
				check = true;
			} else {
				check = false;
			}

		} catch (Exception e) {
			System.out.println("getTotalEmp SQL Fail:" + e.getMessage());
		} finally {
			closeConnection();
		}

		return check;
	}
	
	public Member selectMember(String memberid) {

		Member rst = new Member();
		try {
			Connection conn = getConnection();

			String sql = "select memberid,name,number from member where memberid=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, memberid);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				rst.setMemberid(rs.getString("memberid"));
				rst.setName(rs.getString("name"));
				rst.setNumber(rs.getString("number"));

				System.out.println("쿼리결과:" + rst);
			}

		} catch (Exception e) {
			System.out.println("getTotalEmp SQL Fail:" + e.getMessage());
		} finally {
			closeConnection();
		}
		return rst;
	}
	
	public int updateMember(String memberid, String number) {

		int rst = 0; // 성공 실패
		try {
			Connection conn = getConnection();

			String sql = "update member set number=? where memberid=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, number);
			pstmt.setString(2, memberid);

			/* rs = pstmt.executeQuery(); */
			rst = pstmt.executeUpdate();

			/*
			 * if (rs.next()) { rst = rs.getInt("total"); }
			 */
		} catch (Exception e) {
			System.out.println("getTotalEmp SQL Fail:" + e.getMessage());
		} finally {
			closeConnection();
		}
		return rst;
	}
	
	
	public Member getNameNumber(String memberid) {

		Member rst = new Member();
		try {
			Connection conn = getConnection();

			String sql = "select number,name from member where memberid=?;";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, memberid);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				
				rst.setName(rs.getString("name"));
				rst.setNumber(rs.getString("number"));

				System.out.println("쿼리결과:" + rst);
			}

		} catch (Exception e) {
			System.out.println("getNameNumber SQL Fail:" + e.getMessage());
		} finally {
			closeConnection();
		}
		return rst;
	}
	
	public String GetNumber(String memberid) {

		String rst = "";
		try {
			Connection conn = getConnection();

			String sql = "select number from member where memberid=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, memberid);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				
				rst=rs.getString("number");
				

				System.out.println("쿼리결과:" + rst);
			}

		} catch (Exception e) {
			System.out.println("getNameNumber SQL Fail:" + e.getMessage());
		} finally {
			closeConnection();
		}
		return rst;
	}
	
}
