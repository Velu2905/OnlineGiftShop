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

public class mtpriceservlet extends HttpServlet {
@Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	// TODO Auto-generated method stub
	HttpSession session=req.getSession();
	System.out.println("pothi");
	String image=session.getAttribute("image").toString();
	System.out.println(image);
	String pname=session.getAttribute("pname").toString();
	System.out.println(pname);
	String type=session.getAttribute("ptype").toString();
	System.out.println(type);
     Double price=Double.parseDouble(session.getAttribute("price").toString());
     System.out.println(price);
	 String size=req.getParameter("size");
	 System.out.println(size);
	 int qty=Integer.parseInt(req.getParameter("quantity"));
	 System.out.println(qty);
	 
      viewcartPojo vcar=new viewcartPojo(image, pname, type, price, size, qty,0);
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
	resp.sendRedirect("viewcart.jsp");
      


	

	
}
}
