<%@page import="java.sql.SQLException"%>
<%@page import="com.giftshop.impl.viewCartImpl"%>
<%@page import="com.giftshop.model.viewcart"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap')
	;

* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: 'Poppins', sans-serif;
}

body {
	background-image: url("images/plain-yellow-wall-product-background.jpg");
	background-repeat: no-repeat;
	background-size: 1370px 620px;
	/* background-size: cover; */
	background-attachment: fixed;
}

img {
	width: 200px;
	height: 200px;
	border-style: solid;
	border-radius: 5%;
	border: 5px solid #daa520;
}
</style>
</head>
<body>
	<%
	int pid = Integer.parseInt(request.getParameter("pid"));
	System.out.println(pid);
	String image = request.getParameter("img");
	String pname = request.getParameter("pname");
	System.out.println(pname);
	String type = request.getParameter("type");
	System.out.println(type);
	Double price = Double.parseDouble(request.getParameter("price"));
	System.out.println(price);

	int userid = (int) session.getAttribute("logincustomer");

	viewcart vcart = new viewcart();
	vcart.setImage(image);
	vcart.setProductid(pid);
	vcart.setProductname(pname);
	vcart.setType(type);
	vcart.setUserid(userid);
	vcart.setStandardcost(price);

	session.setAttribute("cart", vcart);
	%>
	<div>
		<form action="addcart" method="post">
		
			<img src="<%=image%>">
			<p>Product name:<%=pname%></p>
			<p>Type:<%=type%></p>
			<p>Id;<%=pid%></p>
			<p>Rs.<%=price%></p>
			
			<label for="size">Choose your size:</label> <select name="sss">
				<option value="S">S</option>
				<option value="M">M</option>
				<option value="L">L</option>
				<option value="XL">XL</option>
				<option value="2XL">2XL</option>
				<option value="3xl">3XL</option>
			</select>
	</div>
	<div>
		<label for="quantity">choose quantity:</label> <select name="qqq">
			<option value=1>1</option>
			<option value=2>2</option>
			<option value=3>3</option>
			<option value=4>4</option>
			<option value=5>5</option>
			<option value=6>6</option>
			<option value=7>7</option>
			<option value=8>8</option>
			<option value=9>9</option>
			<option value=10>10</option>
			<option value=11>11</option>
			<option value=12>12</option>
		</select> <input type="submit">
		</form>
</body>
</html>