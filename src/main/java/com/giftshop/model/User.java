package com.giftshop.model;

public class User {
	

private String Username;
private String Password;
private String email;
private Long mobilenumber;

public String getUsername() {
	return Username;
}
public void setUsername(String username) {
	Username = username;
}
public String getPassword() {
	return Password;
}
public void setPassword(String password) {
	Password = password;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public Long getMobilenumber() {
	return mobilenumber;
}
public void setMobilenumber(Long mobilenumber) {
	this.mobilenumber = mobilenumber;
}
public User(String username, String password, String email, Long mobilenumber) {

	this.Username = username;
	System.out.println(username);
	this.Password = password;
	this.email = email;
	this.mobilenumber = mobilenumber;
}
public User() {
	super();
	// TODO Auto-generated constructor stub
}

}