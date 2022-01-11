package com.giftshop.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.giftshop.dao.AdminDao;
import com.giftshop.model.Admin;

public class AdminImpl implements AdminDao {
	

	public  Admin validateadmin(String email, String pass) throws ClassNotFoundException, SQLException
	{
		System.out.println(email);
		Connection con=com.giftshop.util.ConnectionUtil.gbconnection();
		String query1="select * from gadmin where email_id=? and password=?";
		
			PreparedStatement pst=con.prepareStatement(query1);
			pst.setString(1, email);
			pst.setString(2, pass);
			ResultSet rs=pst.executeQuery();
			Admin admin=null;
			if(rs.next())
			{
//				System.out.println(rs.getString(2));
			admin=new Admin(rs.getString(1), rs.getString(2), rs.getString(3));
			}
			return admin;
		
	}
	
}
