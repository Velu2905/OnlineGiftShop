package com.giftshop.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.giftshop.model.User;

public interface UserDao {
	
	public void insert (User user) throws ClassNotFoundException, SQLException;
	
	public  ResultSet validateuser(String Email,String password  ) throws ClassNotFoundException, SQLException;
}

