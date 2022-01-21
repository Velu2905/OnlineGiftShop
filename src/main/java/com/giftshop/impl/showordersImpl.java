package com.giftshop.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.giftshop.model.showordersPojo;
import com.giftshop.model.viewcartPojo;
import com.giftshop.util.ConnectionUtil;

public class showordersImpl {

	public List<showordersPojo> myorders(showordersPojo showord) throws ClassNotFoundException, SQLException  {
		Connection con = ConnectionUtil.gbconnection();
		List<showordersPojo> view = new ArrayList<showordersPojo>();
		System.out.println("vel1");
String showcart = "select g.user_id,g.order_id,g.order_date,g.status,o.quantity_ordered,o.total_price,o.p_size,p.product_name,p.standard_cost,p.image from gorders g join gorder_items1 o on g.order_id=o.order_id join gproducts p on p.product_id = o.product_id where o.user_id=?";
System.out.println("vel2");

		PreparedStatement pstmt = con.prepareStatement(showcart);
	pstmt.setInt(1, showord.getUserid());
	
		ResultSet rs = pstmt.executeQuery();
		while (rs.next()) {
			System.out.println("vel3");
			showordersPojo showords= new showordersPojo();
			
			showords.setUserid(rs.getInt(1));
			showords.setOrderid(rs.getInt(2));
			showords.setOrderdate(rs.getDate(3));
			showords.setStatus(rs.getString(4));
			 showords.setQuantityordered(rs.getInt(5)); 
			showords.setTotalprice( rs.getDouble(6));
			showords.setSize(rs.getString(7));
			showords.setProductname(rs.getString(8));
			showords.setStandardcost(rs.getDouble(9));
			showords.setImage(rs.getString(10));
			
		view.add(showords);
		}
		
		return view;
		
	}
	
	
	public List<showordersPojo> orderdetails(showordersPojo orddetails) throws ClassNotFoundException, SQLException  {
		Connection con = ConnectionUtil.gbconnection();
		List<showordersPojo> view = new ArrayList<showordersPojo>();
		System.out.println("vel1");
String showorderdetails = "select o.quantity_ordered,o.total_price,o.p_size,p.product_name,p.image,(o.quantity_ordered*o.total_price)as toalllll from gorders g join gorder_items1 o on g.order_id=o.order_id join gproducts p on p.product_id = o.product_id where o.order_id=? group by g.user_id,g.order_id,g.order_date,g.status,o.quantity_ordered,o.total_price,o.p_size,p.product_name,p.image";
System.out.println("vel2");

		PreparedStatement pstmt = con.prepareStatement(showorderdetails);
	pstmt.setInt(1, orddetails.getOrderid());
	
		ResultSet rs = pstmt.executeQuery();
		while (rs.next()) {
			System.out.println("vel3");
			showordersPojo orderdetails= new showordersPojo();
			
			
			orderdetails.setQuantityordered(rs.getInt(1)); 
			 orderdetails.setTotalprice( rs.getDouble(2));
			 orderdetails.setSize(rs.getString(3));
			 orderdetails.setProductname(rs.getString(4));
			 orderdetails.setImage(rs.getString(5));
			 orderdetails.setStandardcost(rs.getDouble(6));
			
		view.add(orderdetails);
		}
		
		return view;
		
	}
	
	
}
