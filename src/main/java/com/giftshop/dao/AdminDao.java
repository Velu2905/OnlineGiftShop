package com.giftshop.dao;

import java.sql.SQLException;

import com.giftshop.model.Admin;

public interface AdminDao {
	
	public  Admin validateadmin(String email1, String pass) throws ClassNotFoundException, SQLException ;
}
