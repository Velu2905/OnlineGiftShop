package com.giftshop.model;

public class Invoice {
	private int orderid;
	private String username;
	private String productname;
	private int quantityordered;
	private double totalprice;

	public int getOrderid() {
		return orderid;
	}

	public void setOrderid(int orderid) {
		this.orderid = orderid;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getProductname() {
		return productname;
	}

	public void setProductname(String productname) {
		this.productname = productname;
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

	public Invoice(int orderid, String productname, int quantityordered, double totalprice) {
		super();
		this.orderid = orderid;
		this.productname = productname;
		this.quantityordered = quantityordered;
		this.totalprice = totalprice;
	}

}
