package com.giftshop.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

public interface OrdersDao {
	
	public void orderinsert(int userid, String prodname, int quant,double price) throws ClassNotFoundException, SQLException;
	
	public ResultSet showorders(int userid) throws Exception;
	
	//public static void viewInvoice()throws ClassNotFoundException, SQLException;
	
	
}
