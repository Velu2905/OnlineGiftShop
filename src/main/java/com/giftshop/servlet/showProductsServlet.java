package com.giftshop.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.giftshop.impl.ProductsImpl;
import com.giftshop.model.Product;

public class showProductsServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("vel");
		int productid=Integer.parseInt (req.getParameter("productid"));
		System.out.println("vel1");
		String productname=req.getParameter("productname");
		System.out.println("vel2");
		String description =req.getParameter("productdescription");
		System.out.println("vel3");
		System.out.println(description);
		double cost =Double.parseDouble(req.getParameter("productprice"));
		System.out.println("vel4");
		String category=req.getParameter("productcategory");
		System.out.println("vel5");
		int quantity=Integer.parseInt (req.getParameter("productquantity"));
		System.out.println("vel6");
		String image=req.getParameter("image");
		System.out.println("vel7");
		Product product=new Product(productid, productname, description, cost, category, quantity, image);
		ProductsImpl pr =new ProductsImpl();
	    pr.adminShowProduct();
	    resp.sendRedirect("adminlogin.jsp");
	    HttpSession session = req.getSession();
	    		session.setAttribute("productname", product);
	}
}
