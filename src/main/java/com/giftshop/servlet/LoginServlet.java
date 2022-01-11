package com.giftshop.servlet;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.giftshop.impl.UserImpl;
import com.giftshop.model.userlogin;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
		// TODO Auto-generated method stub
		
	String username=req.getParameter("username");
	String pwd=req.getParameter("password");
	System.out.println(username+pwd);
	userlogin ul=new userlogin(username, pwd);
	UserImpl ui=new UserImpl();
	
		ResultSet rs = null;
		try {
			rs = ui.validateuser1(ul);
			rs.next();
			HttpSession session=req.getSession();  
	        session.setAttribute("logincustomer",rs.getInt(1));
			System.out.println(rs.toString());
			if(rs.getString(6).equals("admin")) {
				resp.sendRedirect("adminlogin.jsp");
				System.out.println("success");
			} 
			else {
				resp.sendRedirect("homepage.jsp");
			
				}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	
		 
	
	}
}
