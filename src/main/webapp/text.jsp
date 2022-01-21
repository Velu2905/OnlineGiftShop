<%@page import="com.giftshop.model.ProductPojo"%>
<%@page import="com.giftshop.impl.*"%>
<%@page import="java.util.*"%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Tshirts</title>
<style>
body {
	background-image: url("images/plain-yellow-wall-product-background.jpg");
	background-repeat: no-repeat;
	background-size: 1370px 620px;
	/* background-size: cover; */
	background-attachment: fixed;
}

table img {
	width: 150px;
	height: 150px;
	border-style: solid;
	border-radius: 5%;
	border: 5px solid #daa520;
}

table {
	width: 2%;
	float: left;
}
</style>
<!-- <link rel="stylesheet" href="addtocart.css"> -->
<!--  <script type="text/javascript" src="addtocart.js"></script>-->
</head>
<body>
	<%
	ProductsImpl dao = new ProductsImpl();
		List<ProductPojo> price1;
		price1 = dao.price();
	%>

<form action="addcart?"method="post">


	<h2 class="Products">Tshirts</h2>
	<div class="abcd">
		<table>
			<tbody>
				<tr>

					<%
					int count = 1;
					%>

					<%
					for (ProductPojo showPrice : price1) {
					%>

					<td>

						<table id="product">
							<tbody>
								<tr>
									<div id="item1">
									<td><img src=<%=showPrice.getImage()%> alt="Show image"></td>
									<td class="car">

										<div>
											product name :
											<%=showPrice.getProductName()%>
										</div>
										<div>product type:<%=showPrice.getType()%>
									</div>
										<div>price:<%=showPrice.getStandardCost()%>
										</div>
										<% session.setAttribute("image",showPrice.getImage());
										session.setAttribute("pname",showPrice.getProductName());
										session.setAttribute("ptype",showPrice.getType());
										session.setAttribute("price",showPrice.getStandardCost());
										%>
										<br>
									</td>
								</tr>
							</tbody>
						</table>
						<div>
						<label for="size">Choose your size:</label>
						<select name="size">
						        <option value="S" >S</option>
								<option value="M">M</option>
								<option value="L">L</option>
								<option value="XL">XL</option>
								<option value="2XL">2XL</option>
								<option value="3xl">3XL</option>
						</select>
						</div>
						<div>
						<label for="quantity">choose quantity:</label>
						<select name="quantity">
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
						</select>
						</div>
						<a href="index.jsp"><button >Add to cart</button></a>
						</div>
					</td>
					<%
					count++;
					if (count == 5) {
					%>
				</tr>
				<tr>
					<%
					count = 0;
					}
					}
					%>

				</tr>

			</tbody>
		</table>

	</div>
	</div>
	</div>
	</div>

	
	<!-- <div class="cart" id="cart">
		<div class="title">CART</div>
		<hr />
		<div id="title"></div>  -->

	</div>
	</form>
</body>
</html>