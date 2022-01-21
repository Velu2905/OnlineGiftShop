package com.giftshop.model;

public class UserPojo {
	

private String Username;
private String Password;
private String email;
private Long mobilenumber;
private String address;

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

public String getAddress() {
	return address;
}
public void setAddress(String address) {
	this.address = address;
}
public void setMobilenumber(Long mobilenumber) {
	this.mobilenumber = mobilenumber;
}
public UserPojo(String username, String password, String email, Long mobilenumber) {

	this.Username = username;
	System.out.println(username);
	this.Password = password;
	this.email = email;
	this.mobilenumber = mobilenumber;
}
public UserPojo() {
	super();
	// TODO Auto-generated constructor stub
}
public UserPojo(String username, String password, String email, Long mobilenumber, String address) {
	super();
	Username = username;
	Password = password;
	this.email = email;
	this.mobilenumber = mobilenumber;
	this.address = address;
}


}