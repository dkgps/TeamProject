package mini.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

//import com.hk.th.vo.Boardvo;

import mini.vo.AddDelete;
import mini.vo.StoreVo;

public class StoreDao {

	private static Connection conn = null;
	private static PreparedStatement pstmt = null;
	private static ResultSet rs = null;

	private StoreDao() {
	}

	private static StoreDao instance = new StoreDao();

	public static StoreDao getInstance() {
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
			if (conn == null) {
				conn = DriverManager.getConnection(url, user, password);
			}
			System.out.println("데이터베이스접속");
		} catch (ClassNotFoundException e) {
			System.out.println("JDBC LIB Load Fail : " + e.getMessage());
		} catch (SQLException e2) {
			System.out.println("SQL Fail : " + e2.getMessage());
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
			System.out.println("디비접속완료");
		} catch (SQLException e) {
			System.out.println("CLOSE DB Fail : " + e.getMessage());
		}
	}

	public int selectTotal() {
		int rst = 0;
		try {
			Connection conn = getConnection();

			String sql = "select count(s_name) as total from store";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				rst = rs.getInt("total");
				System.out.println("쿼리결과:" + rst);
			}
		} catch (Exception e) {
			System.out.println("selectTotal SQL Fail : " + e.getMessage());
		} finally {
			closeConnection();
		}
		return rst;
	}

	public int getTotal() {
		int rst = 0;
		try {
			Connection conn = getConnection();

			String sql = "select count(*) as total from store";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				rst = rs.getInt("total");
				System.out.println("쿼리결과:" + rst);
			}
		} catch (Exception e) {
			System.out.println("getTotal SQL Fail : " + e.getMessage());
		} finally {
			closeConnection();
		}
		return rst;
	}

	

	public int countStore(String floor) {
		int rst = 0;
		/* StoreVo rstvo = new StoreVo(); */
		try {
			Connection conn = getConnection();

			String sql = "select count(location) as cnt from adddelete where floor=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, floor);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				rst = rs.getInt("cnt");
			}
			System.out.println("쿼리결과: " + rst);
		} catch (Exception e) {
			System.out.println("countStore SQL Fail: " + e.getMessage());
		} finally {
			closeConnection();
		}
		return rst;
	}

	public ArrayList<String> getStatus(String floor) {

		/* StoreVo rstvo = new StoreVo(); */
		int i = 0;
		

		ArrayList<String> data = new ArrayList<String>();

		try {
			Connection conn = getConnection();

			String sql = "select location from adddelete where floor=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, floor);
			rs = pstmt.executeQuery();

			while (rs.next()) {

				data.add(i, rs.getString("location"));
				

				i++;

			}

		} catch (Exception e) {
			// System.out.println("class value SQL Fail1111: " + e.getMessage());
			System.out.println("class value SQL Fail1111: " + "" + e);
		} finally {
			closeConnection();
		}
		return data;
	}

	public int getlength(String floor) {

		int length = 0;

		try {
			Connection conn = getConnection();

			String sql = "select count(*) as cnt from adddelete where floor=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, floor);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				length = Integer.valueOf(rs.getString("cnt"));

			}
			System.out.println("쿼리결과: " + rs);
		} catch (Exception e) {
			System.out.println("countStore SQL Fail: " + e.getMessage());
		} finally {
			closeConnection();
		}

		return length;
	}

	public String getSNAME(String floor, String location) {

		String result="";
		
		try {
			Connection conn = getConnection();

			String sql = "select location,s_name from adddelete where floor=? and location=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, floor);
			pstmt.setString(2,location);
			rs = pstmt.executeQuery();

			while (rs.next()) {

				result = rs.getString("s_name");

			}

		} catch (Exception e) {
			// System.out.println("class value SQL Fail1111: " + e.getMessage());
			System.out.println("class value GetSNAME Fail: " + "" + e);
		} finally {
			closeConnection();
		}
		return result;
	}
	
	public int insert(String floor,String number, String location, String s_name, String name) {
		int rst = 0;
		try {
			Connection conn = getConnection();
			
			String sql = "insert into adddelete values ( ?, ?, ?, ?, ?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, number);
			pstmt.setString(2, floor);
			pstmt.setString(3, location); 
			pstmt.setString(4, s_name);
			pstmt.setString(5, name);
			
			rst = pstmt.executeUpdate();
		}catch(Exception e) {
			System.out.println("insert SQL Fail : " + e.getMessage());
		}finally {
			closeConnection();
		}
		return rst;
	}
	
	public int delete(String floor,String location) {
		int rst = 0;
		try {
			Connection conn = getConnection();
			
			String sql = "delete from adddelete where floor=? and location=?";
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, floor);
			pstmt.setString(2, location); 
			
			
			rst = pstmt.executeUpdate();
		}catch(Exception e) {
			System.out.println("insert SQL Fail : " + e.getMessage());
		}finally {
			closeConnection();
		}
		return rst;
	}
	
	public String g_number(String floor,String location) {
		String g_number="";
		try {
			Connection conn = getConnection();
			
			String sql = "select number from adddelete where floor=? and location=?";
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, floor);
			pstmt.setString(2, location); 
			
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				g_number=rs.getString("number");
			}
		}catch(Exception e) {
			System.out.println("insert SQL Fail : " + e.getMessage());
		}finally {
			closeConnection();
		}
		return g_number;
	}
	
	public int updateInfo(String name, String number) {

		int rst = 0; // 성공 실패
		try {
			Connection conn = getConnection();

			String sql = "update adddelete set number=? where name=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, number);
			pstmt.setString(2, name);

			/* rs = pstmt.executeQuery(); */
			rst = pstmt.executeUpdate();

			/*
			 * if (rs.next()) { rst = rs.getInt("total"); }
			 */
		} catch (Exception e) {
			System.out.println("updateInfo SQL Fail:" + e.getMessage());
		} finally {
			closeConnection();
		}
		return rst;
	}
}
