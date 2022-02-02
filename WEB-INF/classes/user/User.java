package user;

// jsp에선 bean이라고 부름!
public class User {
	private String userID;
	private String userPassword;
	private String userName;
	private String userBirthYear;
	private String userBirthMonth;
	private String userBirthDate;
	private String userGender;
	private String userPhonenum;
	private String userPasswordhintQ;
	private String userPasswordhintA;
	
	public String getUserID() {
		return userID;
	}
	public void setUserID(String userID) {
		this.userID = userID;
	}
	public String getUserPhonenum() {
		return userPhonenum;
	}
	public void setUserPhonenum(String userPhonenum) {
		this.userPhonenum = userPhonenum;
	}
	public String getUserPassword() {
		return userPassword;
	}
	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserGender() {
		return userGender;
	}
	public void setUserGender(String userGender) {
		this.userGender = userGender;
	}
	public String getUserBirthYear() {
		return userBirthYear;
	}
	public void setUserBirthYear(String userBirthYear) {
		this.userBirthYear = userBirthYear;
	}
	public String getUserBirthMonth() {
		return userBirthMonth;
	}
	public void setUserBirthMonth(String userBirthMonth) {
		this.userBirthMonth = userBirthMonth;
	}
	public String getUserBirthDate() {
		return userBirthDate;
	}
	public void setUserBirthDate(String userBirthDate) {
		this.userBirthDate = userBirthDate;
	}
	public String getUserPasswordhintQ() {
		return userPasswordhintQ;
	}
	public void setUserPasswordhintQ(String userPasswordhintQ) {
		this.userPasswordhintQ = userPasswordhintQ;
	}
	public String getUserPasswordhintA() {
		return userPasswordhintA;
	}
	public void setUserPasswordhintA(String userPasswordhintA) {
		this.userPasswordhintA = userPasswordhintA;
	}
	
}

