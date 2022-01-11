package com.giftshop.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.giftshop.impl.OrdersImpl;
import com.giftshop.impl.viewCartImpl;
import com.giftshop.model.Orders;
import com.giftshop.model.viewcart;
@WebServlet("/buynow")
public class buynowservlet extends HttpServlet {
@Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	// TODO Auto-generated method stub
	HttpSession session = req.getSession();
	System.out.println("hii");
	 int uid= (int) session.getAttribute("logincustomer");
	 int ordip=0;
		boolean flag=false;
	 Orders order = new Orders();
	 order.setUserid(uid);
	 OrdersImpl obj = new OrdersImpl();
	  try {
		obj.createorder(order);
	} catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	 
	  try {
		 ordip =obj.getorder(order);
		 System.out.println(ordip);
	} catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	  viewcart vcar1 =new viewcart();
	  vcar1.setUserid(uid);
	  viewCartImpl obj1 = new viewCartImpl();
	  List<viewcart> cartlist;
	try {
		cartlist = obj1.insert(vcar1);
		 for(int i=0;cartlist.size()>i;i++)
		  {
			 Orders orders = new Orders();
			 orders.setUserid(uid);
			 orders.setOrderid(ordip);
			 orders.setProductid(cartlist.get(i).getProductid());
			 orders.setQuantiy(cartlist.get(i).getQuantity());
			 orders.setProdutsize(cartlist.get(i).getSize());
			 orders.setTotalprice(cartlist.get(i).getStandardcost());
			 OrdersImpl ord = new OrdersImpl();
			  ord.insertorder(orders);
		  }
		 
	} catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	 
	 viewcart vcar2 =new viewcart();
	 System.out.println(uid);
	 vcar2.setUserid(uid);
	 viewCartImpl obj2 = new viewCartImpl();
	 try {
	 flag=	obj2.emptycart(vcar2);
	} catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	 if(flag)
	 {
	 resp.sendRedirect("buynow.jsp");
	 }
}
	
}
