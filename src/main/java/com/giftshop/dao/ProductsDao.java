package com.giftshop.dao;

import java.sql.SQLException;
import java.util.List;

import com.giftshop.model.Product;

public interface ProductsDao {
	public void insert(Product product) throws ClassNotFoundException, SQLException;
	
	public void update(Product product2) throws SQLException, ClassNotFoundException;
	
	public  List<Product> adminShowProduct();
	
	public void showProduct();
	
	public List<Product> mens(); 
	
	public void womens();
	
	public void kids();
	
	public int productid(String prodname) throws Exception;
	
	public Product validateProduct(String proName);
	
	
	
}
