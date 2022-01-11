package com.giftshop.model;

import java.util.Objects;

public class Admin {
private String name;
private String emailid;
private String password;

private int productId;
private String productName;
private String description;
private double standardCost;
private String category;
private int quantityonhand;

public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getEmailid() {
	return emailid;
}
public void setEmailid(String emailid) {
	this.emailid = emailid;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public Admin(String name, String emailid, String password) {
	super();
	this.name = name;
	this.emailid = emailid;
	this.password = password;
}
@Override
public int hashCode() {
	return Objects.hash(emailid, name, password);
}
@Override
public boolean equals(Object obj) {
	if (this == obj)
		return true;
	if (obj == null)
		return false;
	if (getClass() != obj.getClass())
		return false;
	Admin other = (Admin) obj;
	return Objects.equals(emailid, other.emailid) && Objects.equals(name, other.name)
			&& Objects.equals(password, other.password);
}
@Override
public String toString() {
	return "Admin [name=" + name + ", emailid=" + emailid + ", password=" + password + "]";
}
public Admin(String email1, String pass) {
	super();
	this.emailid = email1;
	this.password = pass;
}
public int getProductId() {
	return productId;
}
public void setProductId(int productId) {
	this.productId = productId;
}
public String getProductName() {
	return productName;
}
public void setProductName(String productName) {
	this.productName = productName;
}
public String getDescription() {
	return description;
}
public void setDescription(String description) {
	this.description = description;
}
public double getStandardCost() {
	return standardCost;
}
public void setStandardCost(double standardCost) {
	this.standardCost = standardCost;
}
public String getCategory() {
	return category;
}
public void setCategory(String category) {
	this.category = category;
}
public int getQuantityonhand() {
	return quantityonhand;
}
public void setQuantityonhand(int quantityonhand) {
	this.quantityonhand = quantityonhand;
}
public Admin(int productId, String productName, String description, double standardCost, String category,
		int quantityonhand) {
	super();
	this.productId = productId;
	this.productName = productName;
	this.description = description;
	this.standardCost = standardCost;
	this.category = category;
	this.quantityonhand = quantityonhand;
}
public Admin(String productName,int productId) {
	super();
	this.productName = productName;
	this.productId = productId;
	
}

}
