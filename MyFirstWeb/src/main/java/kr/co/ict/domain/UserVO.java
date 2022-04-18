package kr.co.ict.domain;

public class UserVO {

	private String userId;
	private String userPw;
	private String userName;
	private String email;
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserPw() {
		return userPw;
	}
	public void setUserPw(String userPw) {
		this.userPw = userPw;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	@Override
	public String toString() {
		return "UserVO [userId=" + userId + ", userPw=" + userPw + ", userName=" + userName + ", email=" + email + "]";
	}
	
	//A VO will return as a pointer, similarly to a enum or list. Therefore use a toString() method.
	//A single VO should correspond to a single row in a table.
	//Similarly, a single DAO should correspond to a single table in SQL.
	//가공 = processed
	
	
	
	
	
}
