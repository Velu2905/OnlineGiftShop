package com.giftshop.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.giftshop.dao.ProductsDao;
import com.giftshop.model.Product;
import com.giftshop.util.ConnectionUtil;

public class ProductsImpl implements ProductsDao {

//	private static final ProductsImpl ProductDao1 = null;

	public void insert(Product product1) throws ClassNotFoundException, SQLException {

		String insertQuery = "insert into gproducts (product_id,product_name,description,standard_cost,category,quantity_onhand)values(?,?,?,?,?,?)";
		Connection con = ConnectionUtil.gbconnection();
		PreparedStatement pstmt = con.prepareStatement(insertQuery);
		// ProductDao prodao=new ProductDao();
System.out.println(product1.getProductId()+product1.getProductName()+product1.getDescription()+product1.getStandardCost()+product1.getCategory()+product1.getQuantityonhand());
		pstmt.setInt(1, product1.getProductId());
		pstmt.setString(2, product1.getProductName());
		pstmt.setString(3, product1.getDescription());
		pstmt.setDouble(4, product1.getStandardCost());
		pstmt.setString(5, product1.getCategory());
		pstmt.setInt(6, product1.getQuantityonhand());

		int i = pstmt.executeUpdate();
		System.out.println(i + "product inserted");
		pstmt.close();
		con.close();
	}

	public void update(Product product2) throws SQLException, ClassNotFoundException {
		String UpdateQuery = "update gproducts set standard_cost=?,quantity_onhand=? where product_id=?";
		Connection con = ConnectionUtil.gbconnection();
		PreparedStatement pstmt = con.prepareStatement(UpdateQuery);
		pstmt.setDouble(1,product2.getStandardCost());
		pstmt.setInt(2, product2.getQuantityonhand());
		pstmt.setInt(3, product2.getProductId());
		int i = pstmt.executeUpdate();
		System.out.println(i + "Row updated");
		con.close();
		pstmt.close();
	}

	public  List<Product> adminShowProduct() {
		 List<Product> products =new ArrayList<Product>();
		String prod = "select product_name,description,category,image from gproducts";
		Connection con;
		Product product=null;
		try {
			con = ConnectionUtil.gbconnection();
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(prod);
			while (rs.next()) {
//				System.out.format("%-15s%-15s%-25s%-25s%-15s%-5s", rs.getInt(1), rs.getString(2), rs.getString(3),
//						rs.getDouble(4), rs.getString(5), rs.getInt(6),rs.getString(7));
//				System.out.println();
				product=new Product(rs.getString(1),rs.getString(2), rs.getString(3), rs.getString(4));
				products.add(product);
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return products;
	}

	public void showProduct() {
		String prod = "select*from gproducts";
		Connection con;
		try {
			con = ConnectionUtil.gbconnection();
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(prod);
			while (rs.next()) {
				System.out.format("%-15s%-25s%-25s%-15s",rs.getInt(1),rs.getString(2), rs.getString(3), rs.getDouble(4),
						rs.getString(5),rs.getString(7));
				System.out.println();
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public List<Product> mens() {
		 List<Product> products =new ArrayList<Product>();
		String products1= "select * from gproducts where category='mens'";
		Connection con;
		Product product=null;
		try {
			con = ConnectionUtil.gbconnection();
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(products1);
			while (rs.next()) {
//				System.out.format("%-15s%-25s%-25s%-15s", rs.getString(2), rs.getString(3), rs.getDouble(4),
//						rs.getString(5));
//				System.out.println();
				product=new Product(rs.getString(2), rs.getString(3), rs.getDouble(4),
						rs.getString(5),rs.getString(7));
				products.add(product);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return products;
	}

	public void womens() {
		String product = "select * from gproducts where category='womens'";
		Connection con;
		try {
			con = ConnectionUtil.gbconnection();
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(product);
//			rs.next();
//			System.out.format("%-15s%-25s%-25s%-15s",rs.getString(2),rs.getString(3),rs.getDouble(4),rs.getString(5));
			while (rs.next()) {
				System.out.format("%-15s%-25s%-25s%-15s", rs.getString(2), rs.getString(3), rs.getDouble(4),
						rs.getString(5));
				System.out.println();
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	public void kids() {
		String product = "select * from gproducts where category='kids'";
		Connection con;
		try {
			con = ConnectionUtil.gbconnection();
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(product);
//			rs.next();
//			System.out.format("%-15s%-25s%-25s%-15s",rs.getString(2),rs.getString(3),rs.getDouble(4),rs.getString(5));
			while (rs.next()) {
				System.out.format("%-15s%-25s%-25s%-15s", rs.getString(2), rs.getString(3), rs.getDouble(4),
						rs.getString(5));
				System.out.println();
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

		public void delete(Product product3) throws SQLException, ClassNotFoundException {
			System.out.println("row deleted successfully");
			String Deletequery = "delete from gproducts where product_id=?";
			Connection con =ConnectionUtil.gbconnection();
			PreparedStatement pstmt = con.prepareStatement(Deletequery);
			pstmt.setInt(1, product3.getProductId());
			int i = pstmt.executeUpdate();
			System.out.println(i + "row deleted successfully");
		}

	public int productid(String prodname) throws Exception {
		String UpdateQuery = "select product_id from gproducts where product_name in ?";
		Connection con = ConnectionUtil.gbconnection();
		PreparedStatement pstmt = con.prepareStatement(UpdateQuery);
		pstmt.setString(1, prodname);

		ResultSet rs = pstmt.executeQuery();
		while (rs.next()) {
			return rs.getInt(1);
		}
		return -1;
	}

	public Product validateProduct(String productname) {

		String validdateQuery = "select *from gproducts where product_name=?";
		Product product1=null;

		try {
			Connection con = ConnectionUtil.gbconnection();
			PreparedStatement pstmt = con.prepareStatement(validdateQuery);
			pstmt.setString(1, productname);
			ResultSet rs = pstmt.executeQuery();
			if (rs.next()) 
			{
				
//				ProductDao1 stock = new ProductDao1(rs.getInt(1), rs.getString(2),rs.getString(3),rs.getDouble(4),rs.getString(5), rs.getInt(6) ));
				 product1=new Product(rs.getInt(1), rs.getString(2),rs.getString(3),rs.getDouble(4),rs.getString(5), rs.getInt(6));
				System.out.println();
            return product1;
			}
			
			

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return product1;
	
	}	

	public List<Product> price ()  {
		List<Product> products2 =new ArrayList<Product>();
	  
		String getprice="select product_name,standard_cost,image,p_type,product_id from gproducts where product_name='Mens tshirt'";
		Connection con;
		Product prod=null;
		try {
		 con = ConnectionUtil.gbconnection();
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(getprice);
			while (rs.next()) {
			
					prod=new Product();
					prod.setImage(rs.getString(3));
					/* System.out.println(rs.getString(1)); */
					prod.setProductName(rs.getString(1));
					prod.setProductId(rs.getInt(5));
					prod.setStandardCost(rs.getDouble(2));
					prod.setType(rs.getString(4));
					
					
				products2.add(prod);
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
			return products2;
	}
	
	public List<Product> adminviewtshirt ()  {
		List<Product> products2 =new ArrayList<Product>();
	  
		String getview="select*from gproducts where product_name='Mens tshirt'";
		Connection con;
		Product prod=null;
		try {
		 con = ConnectionUtil.gbconnection();
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(getview);
			while (rs.next()) {
			
					prod=new Product(rs.getInt(1), rs.getString(2),rs.getString(3),rs.getDouble(4),rs.getString(5), rs.getInt(6),rs.getString(7),rs.getString(8));
					
				products2.add(prod);
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
			return products2;
	}
}

		

	
	
	
	
	
	
	
	

