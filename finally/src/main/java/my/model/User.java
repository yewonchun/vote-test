package my.model;

import java.util.Date;

//import java.util.Date;

public class User {
	private String userId;
	private String password;
	private String passwordCheck;
	private String userName;
	private String pubUserState;
	private String pubUserGender;
	private String year;
	private String month;
	private String day;
	
	
	
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	
	
	public String getPasswordCheck() {
		return passwordCheck;
	}
	public void setPasswordCheck(String passwordCheck) {
		this.passwordCheck = passwordCheck;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPubUserState() {
		return pubUserState;
	}
	public void setPubUserState(String pubUserState) {
		this.pubUserState = pubUserState;
	}
	public String getPubUserGender() {
		return pubUserGender;
	}
	public void setPubUserGender(String pubUserGender) {
		this.pubUserGender = pubUserGender;
	}
	public String getYear() {
		return year;
	}
	public void setYear(String year) {
		this.year = year;
	}
	public String getMonth() {
		return month;
	}
	public void setMonth(String month) {
		this.month = month;
	}
	public String getDay() {
		return day;
	}
	public void setDay(String day) {
		this.day = day;
	}
	
	

}
