package com.giftshop.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.giftshop.dao.UserDao;
import com.giftshop.impl.UserImpl;
import com.giftshop.model.UserPojo;

@WebServlet("/reg")
public class registerServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
		String username=req.getParameter("username");
		String email=req.getParameter("email");
		Long phone=Long.parseLong(req.getParameter("phone"));
		String address=req.getParameter("address");
		String Password=req.getParameter("password");
		UserPojo us=new UserPojo(username,Password,email,phone,address);
		UserImpl ud=new UserImpl();
		try {
			ud.insert(us);
			resp.sendRedirect("login.jsp");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}
}
