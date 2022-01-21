package com.giftshop.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.giftshop.impl.viewCartImpl;
import com.giftshop.model.viewcartPojo;
@WebServlet("/addcart")
public class viewcartservlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		 String size=req.getParameter("sss");
		 int qty=Integer.parseInt(req.getParameter("qqq"));
		 HttpSession session=req.getSession();
	      viewcartPojo vcar=(viewcartPojo)session.getAttribute("cart");
	      vcar.setSize(size);
	      vcar.setQuantity(qty);
	      viewCartImpl dao=new viewCartImpl();
	      try {
			dao.insertview(vcar);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		resp.sendRedirect("cart.jsp");	
		
	}

}
