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

@WebServlet("/insert")
public class insertServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int productid=Integer.parseInt (req.getParameter("productid"));
		String productname=req.getParameter("productname");
		String description =req.getParameter("productdescription");
		System.out.println(description);
		double cost =Double.parseDouble(req.getParameter("productprice"));
		String category=req.getParameter("productcategory");
		int qunatity=Integer.parseInt(req.getParameter("productquantity"));	
		String image=req.getParameter("image");
		String type=req.getParameter("type");
		Product pr=new Product(productid, productname, description, cost, category,qunatity,image,type);
		ProductsImpl product=new ProductsImpl();
		try {
			product.insert(pr);
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
