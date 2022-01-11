package com.giftshop.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Scanner;

import com.giftshop.dao.InvoiceDao;
import com.giftshop.model.Invoice;
import com.giftshop.util.ConnectionUtil;

public class InvoiceImpl implements InvoiceDao{
	public static String proName;
	public static int orderId;
	public static int quantity;
	public static double totalPrice;
	public static String userName;
	public static int instanceUserId;
	static ArrayList<Invoice> orderItemsList = null;

	public void totalprice(int userid) throws ClassNotFoundException, SQLException {
		Connection con = ConnectionUtil.gbconnection();
		String query = "select  user_gift.user_name,sum(price),sum(quantity) from gorders  full outer join user_gift on user_gift.user_id = gorders.user_id group by user_gift.user_name,user_gift.user_id having user_gift.user_id=?";
//		String query = "select  user_gift.user_name,sum(price),sum(quantity) from gorders  full outer join user_gift on user_gift.user_id = gorders.user_id group by user_gift.user_name,user_gift.user_id having user_gift.user_id=?";

		PreparedStatement pst = con.prepareStatement(query);
		pst.setInt(1, userid);
		ResultSet rs = pst.executeQuery();
		ArrayList<Invoice> orderItems = new ArrayList<>();

		if(rs.next()){
			System.out.println("TOTAL PURCHASE:\n" + "User name:" +rs.getString(1)+"\n"+"Total amount:" +  rs.getInt(2)+"\n" +"Total quantity:" +rs.getInt(3));
//			System.out.println("TOTAL PURCHASE:\n" + "User name:" +rs.getString(1)+"\n"+"Total amount:" +  rs.getInt(2)+"Product name:" +  rs.getString(3)+"\n" +"Total quantity:" +rs.getInt(4));

			
		}
		

	}
	public static void invoiceTotal(int userId)throws ClassNotFoundException, SQLException {
		PreparedStatement ps = null;
		Connection con = null;
		ResultSet rs = null;
		
		instanceUserId = userId;

		try {
			con = ConnectionUtil.gbconnection();
			String sql = "select product_name,order_id,quantity,price from gorders where user_id = ?";
			ps = con.prepareStatement(sql);
			ps.setInt(1, userId);
			rs = ps.executeQuery();
			
			orderItemsList = new ArrayList<>();
			while (rs.next()) {
				//int userId1 = rs.getInt(1);
				proName = rs.getString(1);
				orderId = rs.getInt(2);
				quantity = rs.getInt(3);
				totalPrice = rs.getDouble(4);

				Invoice orderItems = new Invoice(orderId,proName,quantity,totalPrice);

				System.out.println("Product Name : "+proName+"  Order Id  : "+orderId+"  Quantity : "+quantity+"  Total Price : "+totalPrice);
				orderItemsList.add(orderItems);
			}

		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		//return orderItemsList;
	}
	
	public static void getusername()throws ClassNotFoundException, SQLException {
		PreparedStatement ps = null;
		Connection con = null;
		ResultSet rs = null;
		

		try {
			con = ConnectionUtil.gbconnection();
			String sqlTwo = "select  user_name from user_gift where user_id = ?";
			ps = con.prepareStatement(sqlTwo);
			ps.setInt(1, instanceUserId);
			rs = ps.executeQuery();
			userName = rs.getString(1);

		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		//return orderItemsList;
	}
	
	public static void addOrderItems(String userName)
			throws ClassNotFoundException, SQLException {
		PreparedStatement ps = null;
		Connection con = null;

		try {
			con = ConnectionUtil.gbconnection();
			
			
			String sql = "insert into g_invoice(order_id,user_name,product_name,quantity_ordered,total_price)  values(?,?,?,?,?)";
			ps = con.prepareStatement(sql);
			ps.setString(2, userName);
			for(Invoice ord : orderItemsList) {
				ps.setString(3, ord.getProductname());
				ps.setInt(1, ord.getOrderid());
				ps.setInt(4, ord.getQuantityordered());
				ps.setDouble(5, ord.getTotalprice());
				int i = ps.executeUpdate();
//				System.out.println(i);
			}
			  
			//ps.setString(2, userName);
//            System.out.println("hello");
            
          
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		} 
	}
	public static void viewInvoice(String Name)throws ClassNotFoundException, SQLException {
		PreparedStatement ps = null;
		Connection con = null;
		ResultSet rs = null;
//		System.out.println("hi");

		try {
			con = ConnectionUtil.gbconnection();
			String sqlTwo = "select  * from g_invoice where user_name = ?";
			ps = con.prepareStatement(sqlTwo);
			ps.setString(1,Name);
			rs = ps.executeQuery();
			while(rs.next()) {
				System.out.println("YOUR INVOICE:\n" +"OrderId"+ rs.getInt(1) + "Product name:" + rs.getString(3) + "\n" + "UserName:"
						+ rs.getString(2) + "\n" + "Quantity:" + rs.getInt(4) + "\n" + "Total price:"
						+ rs.getDouble(5));
			}
			

		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		//return orderItemsList;
	}
}
