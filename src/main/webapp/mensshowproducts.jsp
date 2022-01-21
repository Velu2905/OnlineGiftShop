<%@page import="com.giftshop.model.ProductPojo"%>
<%@page import="com.giftshop.impl.*"%>
<%@page import="java.util.*"%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Mens products</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
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

table img {
	width: 150px;
	height: 150px;
	border-style: solid;
	border-radius: 5%;
	border: 5px solid #daa520;
}

.button1 {
	margin-top: 180px;
	margin-left: -140px;
}

.navbar {
  overflow: hidden;
  background-color:seashell;
  width:100%;
  margin-top:1px;
  height:55px;
 
 
  
}
.navbar a {
	float: left;
	font-size: 16px;
	color: black;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
	float: right;
	font-style: italic;
	font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS',
		sans-serif;
	font-size: 18px;
	margin-right: 25px;
	margin-right: 5px;
}

.dropdown {
	float: right;
	overflow: hidden;
}

.dropdown .dropbtn {
	font-size: 18px;
	border: none;
	outline: none;
	color: black;
	padding: 14px 16px;
	background-color: inherit;
	font-family: inherit;
	margin: 0;
	font-style: italic;
	font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS',
		sans-serif;
}

.navbar a:hover, .dropdown:hover .dropbtn {
	background-color: goldenrod;
}

.dropdown-content {
	display: none;
	position: fixed;
	background-color: #f9f9f9;
	min-width: 160px;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
	z-index: 1;
}

.dropdown-content a {
	float: none;
	color: black;
	padding: 12px 16px;
	text-decoration: none;
	display: block;
	text-align: left;
}

.dropdown-content a:hover {
	background-color: #ddd;
}

.dropdown:hover .dropdown-content {
	display: block;
}

#logo {
	position: relative;
	left: 100px;
	top: -70px;
}
</style>

</head>
<body>
	<div class="navbar">
		<a href="index.jsp">Logout</a> <a href="showorders.jsp">My orders</a>
		<a href="cart.jsp">My cart</a>


		<div class="dropdown">
			<button class="dropbtn">
				categories <i class="fa fa-caret-down"></i>
			</button>

			<div class="dropdown-content">
				<a href="mensshowproducts.jsp">mens</a> <a href="#">womens</a> <a
					href="#">kids</a> <a href="#">occasions</a>

			</div>

		</div>

		<a href="userallproducts.jsp">All collections</a> <a
			href="homepage.jsp">Home</a>

	</div>


	<div id="logo">
		<img src="images/pngwing.com (2).png" height="45px" width="150px">
	</div>
	<form>
		<%
		

		ProductsImpl dao=new ProductsImpl();
		List<ProductPojo> mens;
		mens=dao.mens();
		%>

	</form>
	<h2 class="Products">Mens products</h2>
	<div class="recently added list">
		<table>
			<tbody>
				<tr>
					<%
					
					int count=0;
					                for(ProductPojo showProduct: mens){
					%>
					<td>
						<table id="carproduct">
							<tbody>
									<td><img src=<%=showProduct.getImage() %> alt="Show image"></td>
									<td class="car"><span>product name : <%=showProduct.getProductName()%>
									</span><br> <span>description : <%=showProduct.getDescription()%>
									</span><br> <span>price : Rs.<%=showProduct.getStandardCost() %>
									</span><br> <span>category: <%=showProduct.getCategory()%></span><br>

										<!-- <a href="viewtshirt.jsp?"><button>view product</button></a> -->


										<div class="button1">
											<a href="viewtshirt.jsp"><button type="button"
													class="btn btn-default">View product</button> </a>
										</div></td>
								</tr>
							</tbody>
						</table>

					</td>
					<% count ++;
                       if(count==4){ %>
				</tr>
				<tr>
					<%count=0; }}%>

				</tr>
			</tbody>
		</table>

	</div>
	</div>
	</div>

</body>
</html>