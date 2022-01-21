package com.giftshop.model;

import java.sql.Date;

public class showordersPojo {

	private int userid;
	private int orderid;
	private Date orderdate;
	private String status;
	private int quantityordered;
	private double totalprice;
	private String size;
	private String productname;
	private double standardcost;
	private String image;
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public int getOrderid() {
		return orderid;
	}
	public void setOrderid(int orderid) {
		this.orderid = orderid;
	}
	public Date getOrderdate() {
		return orderdate;
	}
	public void setOrderdate(Date orderdate) {
		this.orderdate = orderdate;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public int getQuantityordered() {
		return quantityordered;
	}
	public void setQuantityordered(int quantityordered) {
		this.quantityordered = quantityordered;
	}
	public double getTotalprice() {
		return totalprice;
	}
	public void setTotalprice(double totalprice) {
		this.totalprice = totalprice;
	}
	public showordersPojo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getSize() {
		return size;
	}
	public void setSize(String size) {
		this.size = size;
	}
	public String getProductname() {
		return productname;
	}
	public void setProductname(String productname) {
		this.productname = productname;
	}
	public double getStandardcost() {
		return standardcost;
	}
	public void setStandardcost(double standardcost) {
		this.standardcost = standardcost;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public showordersPojo(int userid, int orderid, Date orderdate, String status, int quantityordered, int totalprice,
			String size, String productname, double standardcost, String image) {
		super();
		this.userid = userid;
		this.orderid = orderid;
		this.orderdate = orderdate;
		this.status = status;
		this.quantityordered = quantityordered;
		this.totalprice = totalprice;
		this.size = size;
		this.productname = productname;
		this.standardcost = standardcost;
		this.image = image;
	}
	
	
}
