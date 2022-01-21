package com.giftshop.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.giftshop.dao.UserDao;
import com.giftshop.model.UserPojo;
import com.giftshop.model.userloginPojo;
import com.giftshop.util.ConnectionUtil;

public class UserImpl implements UserDao {
public void insert (UserPojo user) throws ClassNotFoundException, SQLException {
	
		String insertQuery="insert into user_gift(user_name,email,mobile_number,user_Password,address) values(?,?,?,?,?)";
		Connection con=ConnectionUtil.gbconnection();
		PreparedStatement pstmt=con.prepareStatement(insertQuery);
		pstmt.setString(1,user.getUsername());
		pstmt.setString(2,user.getEmail());
		pstmt.setLong(3,user.getMobilenumber());
		pstmt.setString(4,user.getPassword());	
		pstmt.setString(5,user.getAddress());
	int i = pstmt.executeUpdate();	
    pstmt.close();
	con.close();
	}

public ResultSet validateuser1(userloginPojo ul) throws ClassNotFoundException, SQLException {
	ResultSet rs=null;
	String  validate="select * from user_gift where email = ? and user_password = ?";
	Connection con=ConnectionUtil.gbconnection();
	PreparedStatement Pstmt1 = con.prepareStatement(validate);
    Pstmt1.setString(1, ul.getUsername());
    Pstmt1.setString(2, ul.getPassword());
    rs=Pstmt1.executeQuery();
	return rs;
}

@Override
public ResultSet validateuser(String Email, String password) throws ClassNotFoundException, SQLException {
	// TODO Auto-generated method stub
	return null;
}

}
