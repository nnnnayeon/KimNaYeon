package project;

public class UserDTO {
	
	private int userNo;
	private String userId, userPw, name, mobile;
	
	public UserDTO(int userNo, String userId, String userPw, String name, String mobile) {
		this.userNo = userNo;
		this.userId = userId;
		this.userPw = userPw;
		this.name = name;
		this.mobile = mobile;
	}
	
	public UserDTO(String userId, String userPw, String name, String mobile) {
		this.userId = userId;
		this.userPw = userPw;
		this.name = name;
		this.mobile = mobile;
	}
	
	public UserDTO(String userId, String userPw) {
		this.userId = userId;
		this.userPw = userPw;
	}
	
	public int getUserNo() {
		return userNo;
	}
	
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	
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
	
	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public String getMobile() {
		return mobile;
	}
	
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

}
