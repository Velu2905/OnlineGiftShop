package com.giftshop.dao;

import java.sql.SQLException;

public interface InvoiceDao {
	
	public void totalprice(int userid) throws ClassNotFoundException, SQLException;
}
