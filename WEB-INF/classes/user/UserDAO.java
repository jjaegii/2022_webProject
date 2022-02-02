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
			String dbURL = "jdbc:mariadb://127.0.0.1:3306/bbs";
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
	
	public int join(String userID, String userPassword, String userName, String userBirthYear, String userBirthMonth, String userBirthDate, String userGender, String userPhonenum, String userPasswordhintQ, String userPasswordhintA) {
		String SQL = "INSERT INTO user (userID, userPassword, userName, userBirthYear, userBirthMonth, userBirthDate, userGender, userPhonenum, userPasswordhintQ, userPasswordhintA) VALUES (?,?,?,?,?,?,?,?,?,?)";
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, userID);
			pstmt.setString(2, userPassword);
			pstmt.setString(3, userName);
			pstmt.setString(4, userBirthYear);
			pstmt.setString(5, userBirthMonth);
			pstmt.setString(6, userBirthDate);
			pstmt.setString(7, userGender);
			pstmt.setString(8, userPhonenum);
			pstmt.setString(9, userPasswordhintQ);
			pstmt.setString(10, userPasswordhintA);
			
			pstmt.executeUpdate();
			return 1; // 데이터 삽입 성공
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return -2; // DB 오류
	}
}

