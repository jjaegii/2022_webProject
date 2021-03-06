package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDAO {
	
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public UserDAO() {
		try {
			String dbURL = "jdbc:mariadb://192.168.0.5:3306/bbs";
			String dbID = "jjaegii";
			String dbPassword = "21812096";
			Class.forName("org.mariadb.jdbc.Driver");
			conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
			
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public int login(String userID, String userPassword) {
		String SQL = "SELECT userPassword FROM user WHERE userID=?";
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1,  userID);
			rs = pstmt.executeQuery();
			if(rs.next()) { // 아이디가 있음
				if(rs.getString(1).equals(userPassword))
					return 1; //로그인 성공
				else
					return 0; // 비밀번호 불일치
			}
			return -1; // 아이디가 없음
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return -2; // 데이터베이스 오류
	}
	
	public int join(User user) {
		String SQL = "INSERT INTO user (userID, userPassword, userName, userBirthYear, userBirthMonth, userBirthDate, userGender, userPhonenum, userPasswordhintQ, userPasswordhintA) VALUES (?,?,?,?,?,?,?,?,?,?)";
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, user.getUserID());
			pstmt.setString(2, user.getUserPassword());
			pstmt.setString(3, user.getUserName());
			pstmt.setString(4, user.getUserBirthYear());
			pstmt.setString(5, user.getUserBirthMonth());
			pstmt.setString(6, user.getUserBirthDate());
			pstmt.setString(7, user.getUserGender());
			pstmt.setString(8, user.getUserPhonenum());
			pstmt.setString(9, user.getUserPasswordhintQ());
			pstmt.setString(10, user.getUserPasswordhintA());
			
			pstmt.executeUpdate();
			return 1; // 데이터 삽입 성공
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return -2; // DB 오류
	}
	
	public String idfind(String userName, String userPhonenum) {
		
		  String user_id=null;
	      String SQL = "SELECT userID FROM user WHERE userName=? and userPhonenum=?";
	      try {
	    	  pstmt = conn.prepareStatement(SQL);
		      pstmt.setString(1, userName);
		      pstmt.setString(2, userPhonenum);
		      rs = pstmt.executeQuery();
		      while(rs.next()) {
		    	  user_id=rs.getString("userID");
		    	  return user_id;
		      }
		      return "아이디없음";
	      }catch(Exception e) {
	    	  System.out.println(e);
	      }
	      return "DB오류";
	      //유정오류 테스트2
	   }
	
}

