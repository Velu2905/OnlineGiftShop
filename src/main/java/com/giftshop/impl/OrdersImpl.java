package com.giftshop.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.giftshop.dao.OrdersDao;
import com.giftshop.model.OrdersPojo;
import com.giftshop.model.ProductPojo;
import com.giftshop.util.ConnectionUtil;

public class OrdersImpl implements OrdersDao {
	public void orderinsert(int userid, String productname, int quantity, double price)
			throws ClassNotFoundException, SQLException {

		String insertQuery = "insert into gorders(user_id,product_name,quantity,price) values(?,?,?,?)";
		Connection con = ConnectionUtil.gbconnection();
		PreparedStatement pstmt = con.prepareStatement(insertQuery);
		// ProductDao prodao=new ProductDao();

		pstmt.setInt(1, userid);
		pstmt.setString(2, productname);
		pstmt.setInt(3, quantity);
		pstmt.setDouble(4, price);
		int i = pstmt.executeUpdate();
		pstmt.executeUpdate("commit");
		System.out.println("order placed sucessfully");
		OrdersImpl addproduct = new OrdersImpl();
		pstmt.close();
		con.close();
	}

	public ResultSet showorders(int userid) throws Exception {
		String prod = "select * from gorders where user_id in ?";
		Connection con;
		con = ConnectionUtil.gbconnection();
		PreparedStatement stmt = con.prepareStatement(prod);
		stmt.setInt(1, userid);
		ResultSet rs = stmt.executeQuery();
		return rs;

	}

	public void insert(OrdersPojo product1) throws ClassNotFoundException, SQLException {
		String insertorder = "insert into gorders(user_id,product_name,p_type,order_id,order_date,p_size,total_price,qunatity,status) values(?,?,?,?,?,?,?,?,?)";
		Connection con = ConnectionUtil.gbconnection();
		PreparedStatement pstmt = con.prepareStatement(insertorder);
		// ProductDao prodao=new ProductDao();

		pstmt.setString(1, product1.getProductname());
		pstmt.setString(2, product1.getProducttype());
		pstmt.setString(3, product1.getProdutsize());
		pstmt.setDouble(4, product1.getTotalprice());
		pstmt.setInt(5, product1.getQuantiy());
		pstmt.setString(6, product1.getStatus());

		int i = pstmt.executeUpdate();
		pstmt.executeUpdate("commit");
//		OrdersImpl addproduct=new OrdersImpl();
		pstmt.close();
		con.close();

	}

	public void createorder(OrdersPojo order) throws ClassNotFoundException, SQLException {

		String insertQuery = "insert into gorders(user_id) values(?)";
		Connection con = ConnectionUtil.gbconnection();
		PreparedStatement pstmt = con.prepareStatement(insertQuery);
		pstmt.setInt(1, order.getUserid());
		int i = pstmt.executeUpdate();
		pstmt.executeUpdate("commit");
		OrdersImpl addproduct = new OrdersImpl();
		pstmt.close();
		con.close();
	}

	public int getorder(OrdersPojo order) throws ClassNotFoundException, SQLException {
		int orderid = 0;
		String insertQuery = "SELECT order_id FROM gorders where user_id = ?  order by order_date desc fetch first rows only";
		Connection con = ConnectionUtil.gbconnection();
		PreparedStatement pstmt = con.prepareStatement(insertQuery);
		pstmt.setInt(1, order.getUserid());
		int i = pstmt.executeUpdate();
		ResultSet rs = pstmt.executeQuery();
		if (rs.next()) {
			orderid = rs.getInt(1);
			System.out.println(rs.getInt(1));
		}
		pstmt.close();
		con.close();
		return orderid; 
	}
	
	public void insertorder( OrdersPojo order1) throws SQLException, ClassNotFoundException {
		String insertord="insert into gorder_items1(order_id,quantity_ordered,total_price,user_id,product_id,p_size)values(?,?,?,?,?,?)";
		Connection con = ConnectionUtil.gbconnection();
		PreparedStatement pstmt = con.prepareStatement( insertord);
		pstmt.setInt(1,order1.getOrderid());
		pstmt.setInt(2,order1.getQuantiy());
		pstmt.setDouble(3,order1.getTotalprice());
		pstmt.setInt(4,order1.getUserid());
		pstmt.setInt(5,order1.getProductid());
		pstmt.setString(6,order1.getProdutsize());
		int i=pstmt.executeUpdate();
		pstmt.executeUpdate("commit");
	}
	
	public List<OrdersPojo> userOrderDetails(OrdersPojo showord) throws ClassNotFoundException, SQLException {
		Connection con = ConnectionUtil.gbconnection();
		List<OrdersPojo> orderlist = new ArrayList<OrdersPojo>();
		String query = " select order_id,trunc(order_date),status from gorders where user_id=?";
		PreparedStatement stmt = con.prepareStatement(query);
		stmt.setInt(1, showord.getUserid());
		// stmt.executeUpdate();
		ResultSet rs = stmt.executeQuery();
		while (rs.next()) {
			OrdersPojo ord1 = new OrdersPojo();
			ord1.setOrderid(rs.getInt(1));
			ord1.setOrderdate(rs.getDate(2));
			ord1.setStatus(rs.getString(3));
			System.out.println("\norder id: " + rs.getInt(1) + "\nOrder Date:" + rs.getDate(2) + "\nStatus: "
					+ rs.getString(3));
			orderlist.add(ord1);
		}
		return orderlist;
	}
}
