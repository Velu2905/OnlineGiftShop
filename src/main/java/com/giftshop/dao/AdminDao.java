package com.giftshop.dao;

import java.sql.SQLException;

import com.giftshop.model.AdminPojo;

public interface AdminDao {
	
	public  AdminPojo validateadmin(String email1, String pass) throws ClassNotFoundException, SQLException ;
}
