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

import com.giftshop.exception.LoginException;
import com.giftshop.impl.UserImpl;
import com.giftshop.model.userloginPojo;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
		// TODO Auto-generated method stub
		
	String username=req.getParameter("username");
	String pwd=req.getParameter("password");
	userloginPojo ul=new userloginPojo(username, pwd);
	UserImpl ui=new UserImpl();
	HttpSession session=req.getSession(); 
		ResultSet rs = null;
		try {
			rs = ui.validateuser1(ul);
			rs.next();
			 
	        session.setAttribute("logincustomer",rs.getInt(1));
			if(rs.getString(6).equals("admin")) {
				resp.sendRedirect("adminlogin.jsp");
				System.out.println("success");
			} 
			else if(rs.getString(6).equals("user")) {
				
				resp.sendRedirect("homepage.jsp");
			}
			else {
				
				 throw new LoginException();
		
				}
			}
			 catch (ClassNotFoundException  | SQLException  | LoginException e) {
					 

					session.setAttribute("erroruserid","Sorry, username or password incorrect!");
				
					req.getRequestDispatcher("login.jsp").include(req, resp);
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		
		
	
		 
	
	}
}
