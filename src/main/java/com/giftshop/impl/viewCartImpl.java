package com.giftshop.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.giftshop.model.ProductPojo;
import com.giftshop.model.viewcartPojo;
import com.giftshop.util.ConnectionUtil;

public class viewCartImpl {

	public void insertview(viewcartPojo vcar) throws ClassNotFoundException, SQLException {

		String insertQuery = "insert into gcart(image,product_name,p_type,standard_cost,p_size,quantity,user_id,product_id)values(?,?,?,?,?,?,?,?)";
				
		Connection con = ConnectionUtil.gbconnection();
		PreparedStatement pstmt = con.prepareStatement(insertQuery);
		// ProductDao prodao=new ProductDao();
//System.out.println(product1.getProductId()+product1.getProductName()+product1.getDescription()+product1.getStandardCost()+product1.getCategory()+product1.getQuantityonhand());

		
		System.out.println(vcar.getProductid());
		System.out.println(vcar.getProductname());
		System.out.println(vcar.getImage());
		System.out.println(vcar.getStandardcost());
		System.out.println(vcar.getUserid());
		System.out.println(vcar.getType());
		
		pstmt.setString(1, vcar.getImage());
		pstmt.setString(2, vcar.getProductname());
		pstmt.setString(3, vcar.getType());
		pstmt.setDouble(4, vcar.getStandardcost());
		pstmt.setString(5, vcar.getSize());
		pstmt.setInt(6, vcar.getQuantity());
		pstmt.setInt(7, vcar.getUserid());
		pstmt.setInt(8, vcar.getProductid());

		int i = pstmt.executeUpdate();
		System.out.println(i + "product inserted");
		pstmt.close();
		con.close();
	}

	public List<viewcartPojo> showcart() {
		List<viewcartPojo> view = new ArrayList<viewcartPojo>();
		String show = "select*from gcart";

//		 String insert1 ="insert into gcart (image,product_name,p_type,standard_cost,p_size,quantity)values(?,?,?,?,?,?)";

		Connection con;
		viewcartPojo show1 = null;
		try {
			con = ConnectionUtil.gbconnection();
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(show);
			while (rs.next()) {

//				System.out.format("%-15s%-15s%-25s%-25s%-15s%-5s", rs.getInt(1), rs.getString(2), rs.getString(3),
//						rs.getDouble(4), rs.getString(5), rs.getInt(6),rs.getString(7));
//				System.out.println();

				show1 = new viewcartPojo(rs.getString(1), rs.getString(2), rs.getString(3), rs.getDouble(4),
						rs.getString(5), rs.getInt(6), rs.getInt(7));

//				product=new Product(rs.getInt(1), rs.getString(2), rs.getString(3),
//						rs.getDouble(4), rs.getString(5), rs.getInt(6),rs.getString(7));
				view.add(show1);
			}

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return view;
	}



	public List<viewcartPojo> showcart(viewcartPojo vcar1) throws ClassNotFoundException, SQLException {
		Connection con = ConnectionUtil.gbconnection();
		List<viewcartPojo> cart = new ArrayList<viewcartPojo>();
		String query = "select image,product_name,p_type,standard_cost,p_size,quantity,product_id from gcart where user_id=?";
		PreparedStatement stmt = con.prepareStatement(query);
		stmt.setInt(1, vcar1.getUserid());
		ResultSet rs = stmt.executeQuery();
		while (rs.next()) {
			vcar1=new viewcartPojo();
			vcar1.setImage(rs.getString(1));
			vcar1.setProductname(rs.getString(2));
			vcar1.setType(rs.getString(3));
			vcar1.setStandardcost(rs.getDouble(4));
			vcar1.setSize(rs.getString(5));
			vcar1.setQuantity(rs.getInt(6));
			vcar1.setProductid(rs.getInt(7));
			cart.add(vcar1);
			}
		return cart;
	}
	public boolean emptycart(viewcartPojo vcar2) throws  SQLException, ClassNotFoundException
	{
		Connection con = ConnectionUtil.gbconnection();
		String delcart="DELETE FROM gcart WHERE user_id=?";
		PreparedStatement pstmt = con.prepareStatement( delcart);
		pstmt.setInt(1, vcar2.getUserid());
		System.out.println(vcar2.getUserid());
		int i=pstmt.executeUpdate();
		if(i!=0) {
		return true;
		}
		else {
			return false;
		}
	}
	
	public List<viewcartPojo> mycart(viewcartPojo vcart) throws ClassNotFoundException, SQLException  {
		Connection con = ConnectionUtil.gbconnection();
		List<viewcartPojo> view = new ArrayList<viewcartPojo>();
		System.out.println("vel1");
String showcart = "SELECT image,user_id,product_id,product_name,p_type,p_size,quantity,standard_cost,standard_cost*quantity AS total_price FROM gcart where user_id=?";
System.out.println("vel2");

		PreparedStatement pstmt = con.prepareStatement(showcart);
	pstmt.setInt(1, vcart.getUserid());
		ResultSet rs = pstmt.executeQuery();
		while (rs.next()) {
			System.out.println("vel3");

			vcart.setImage(rs.getString(1));
			vcart.setUserid(rs.getInt(2));
			vcart.setProductid(rs.getInt(3));
			vcart.setProductname(rs.getString(4));
			vcart.setType(rs.getString(5));
			vcart.setSize(rs.getString(6));
			vcart.setQuantity(rs.getInt(7));
			vcart.setStandardcost(rs.getDouble(8));
			vcart.setTotalprice(rs.getDouble(9));
			System.out.println(rs.getString(1));
		view.add(vcart);
		}
		
		return view;
		
	}
	
	public boolean duplicatecart (viewcartPojo vcart) throws ClassNotFoundException, SQLException  {
		Connection con = ConnectionUtil.gbconnection();
		
String showcart = "select*from gcart where user_id=? and product_id=? and p_size=?";
		PreparedStatement pstmt = con.prepareStatement(showcart);
	     pstmt.setInt(1, vcart.getUserid());
	     pstmt.setInt(2, vcart.getProductid());
	     pstmt.setString(3, vcart.getSize());
        pstmt.executeUpdate(); 
		return false;
}
	}