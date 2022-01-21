package com.giftshop.dao;

import java.sql.SQLException;
import java.util.List;

import com.giftshop.model.ProductPojo;

public interface ProductsDao {
	public void insert(ProductPojo product) throws ClassNotFoundException, SQLException;
	
	public void update(ProductPojo product2) throws SQLException, ClassNotFoundException;
	
	public  List<ProductPojo> adminShowProduct();
	
	public void showProduct();
	
	public List<ProductPojo> mens(); 
	
	public void womens();
	
	public void kids();
	
	public int productid(String prodname) throws Exception;
	
	public ProductPojo validateProduct(String proName);
	
	
	
}
