package com.giftshop.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.giftshop.impl.ProductsImpl;
import com.giftshop.model.Product;
@WebServlet("/delete")
public class deleteservlet extends HttpServlet {
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	// TODO Auto-generated method stub
	int productid=Integer.parseInt(req.getParameter("productid"));
	Product pr=new Product(productid);
	ProductsImpl product=new ProductsImpl();
	try {
		product.delete(pr);
		resp.sendRedirect("adminlogin.jsp");
	} catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
}
}
