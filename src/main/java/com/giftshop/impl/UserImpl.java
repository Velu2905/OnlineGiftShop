package com.giftshop.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.giftshop.dao.UserDao;
import com.giftshop.model.User;
import com.giftshop.model.userlogin;
import com.giftshop.util.ConnectionUtil;

public class UserImpl implements UserDao {
public void insert (User user) throws ClassNotFoundException, SQLException {
	
		String insertQuery="insert into user_gift(user_name,email,mobile_number,user_Password) values(?,?,?,?)";
		Connection con=ConnectionUtil.gbconnection();
		PreparedStatement pstmt=con.prepareStatement(insertQuery);
		
		System.out.println(user.getUsername());
		System.out.println(user.getMobilenumber());
		pstmt.setString(1,user.getUsername());
		pstmt.setString(2,user.getEmail());
		pstmt.setLong(3,user.getMobilenumber());
		pstmt.setString(4,user.getPassword());	
	int i = pstmt.executeUpdate();
	System.out.println("Registration successful");	
    pstmt.close();
	con.close();
	}

public ResultSet validateuser1(userlogin ul) throws ClassNotFoundException, SQLException {
//	int i=0;
	ResultSet rs=null;
	String  validate="select * from user_gift where email = ? and user_password = ?";
	Connection con=ConnectionUtil.gbconnection();
	PreparedStatement Pstmt1 = con.prepareStatement(validate);
    Pstmt1.setString(1, ul.getUsername());
    Pstmt1.setString(2, ul.getPassword());
    rs=Pstmt1.executeQuery();
//	ResultSet rs = Pstmt1.executeQuery();
//	if(rs.next()) {
//		return true;
//	}
//	return false;
	return rs;
}

@Override
public ResultSet validateuser(String Email, String password) throws ClassNotFoundException, SQLException {
	// TODO Auto-generated method stub
	return null;
}

}
