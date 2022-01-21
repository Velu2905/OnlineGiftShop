package com.giftshop.model;

public class viewcartPojo {
	
private String image;
private String productname;
private String type;
private double standardcost;
private String size;
private int quantity;
private int userid;
private int productid;
private double totalprice;


public double getTotalprice() {
	return totalprice;
}
public void setTotalprice(double d) {
	this.totalprice = d;
}
public String getImage() {
	return image;
}
public void setImage(String image) {
	this.image = image;
}
public String getProductname() {
	return productname;
}
public void setProductname(String productname) {
	this.productname = productname;
}
public String getType() {
	return type;
}
public void setType(String type) {
	this.type = type;
}
public double getStandardcost() {
	return standardcost;
}
public void setStandardcost(double standardcost) {
	this.standardcost = standardcost;
}
public String getSize() {
	return size;
}
public void setSize(String size) {
	this.size = size;
}
public int getQuantity() {
	return quantity;
}
public void setQuantity(int quantity) {
	this.quantity = quantity;
}

public int getUserid() {
	return userid;
}
public void setUserid(int userid) {
	this.userid = userid;
}

public int getProductid() {
	return productid;
}
public void setProductid(int productid) {
	this.productid = productid;
}
public viewcartPojo(String image, String productname, String type, double standardcost, String size, int quantity,
		int userid) {
	super();
	this.image = image;
	this.productname = productname;
	this.type = type;
	this.standardcost = standardcost;
	this.size = size;
	this.quantity = quantity;
	this.userid = userid;
}
public viewcartPojo() {
	super();
	// TODO Auto-generated constructor stub
}
public viewcartPojo(String image, String productname, String type, double standardcost, String size, int quantity,
		int userid, int productid) {
	super();
	this.image = image;
	this.productname = productname;
	this.type = type;
	this.standardcost = standardcost;
	this.size = size;
	this.quantity = quantity;
	this.userid = userid;
	this.productid = productid;
}
//public viewcart(String string, int int1, int int2, String string2, String string3, String string4, int int3,
//		double double1) {
//	// TODO Auto-generated constructor stub
//}
//public viewcart(String string, int int1, int int2, String string2, String string3, String string4, int int3,
//		double double1, double double2) {
//	// TODO Auto-generated constructor stub
//}
public viewcartPojo(String image, String productname, String type, double standardcost, String size, int quantity,
		int userid, int productid, double totalprice) {
	super();
	this.image = image;
	this.productname = productname;
	this.type = type;
	this.standardcost = standardcost;
	this.size = size;
	this.quantity = quantity;
	this.userid = userid;
	this.productid = productid;
	this.totalprice = totalprice;
}

}
