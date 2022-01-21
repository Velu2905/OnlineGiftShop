<%@page import="com.giftshop.model.ProductPojo"%>
<%@page import="com.giftshop.impl.*"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All collections</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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

	/* border: 1px solid #ddd;
  border-radius: 4px;
  padding: 5px;
  width: 150px; */
}

.button {
	margin-top: -1573px;
	margin-left: 50px;
}

.button1 {

	margin-top: -32px;
	margin-left: 323px;
}

.button2 {
	margin-top: -32px;
	margin-left: 585px;
}
.button3 {
	margin-top: -32px;
	margin-left: 865px;
}
.button4 {
	margin-top: -32px;
	margin-left: 1130px;
}

span b {
	margin-left: -120px;
	margin-top: 510px;
}

th, td {
	padding: 18px;
}
.navbar {
	overflow: hidden;
	background-color: seashell;
	width: 100%;
	margin-top: -7px;
	height: 55px;
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

.back {
	position: fixed;
	left: 150px;
}
</style>
</head>
<body>

	<div class="navbar">
		<a href="index.jsp">Logout</a> <a href="gorders.jsp">My orders</a> <a
			href="cart.jsp">My cart</a>


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
		<div class="back">
			<a href="homepage.jsp">Back</a>
		</div>

	</div>



	<form>
		<%
		ProductsImpl dao = new ProductsImpl();
				List<ProductPojo> ShowProduct;
				ShowProduct = dao.adminShowProduct();
		%>
	</form>


	<div class="recently added list">
		<table>
			<tbody>
				<tr>
					<%
					int count = 0;
								for (ProductPojo ushowProduct : ShowProduct) {
					%>
					<td>
						<table id="carproduct">
							<tbody>
								<tr>
									
									<td><img src=<%=ushowProduct.getImage()%> alt="Show image"></td>

									<td>
									&nbsp; &nbsp; 
									</td>
								</tr>
							</tbody>
						</table>

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
		<div class="button">
			<a href="viewtshirt.jsp"><button type="button"
					class="btn btn-default">View product</button> </a>
		</div>
		<div class="button1">
			<a href="viewtshirt.jsp"><button type="button"
					class="btn btn-default">View product</button> </a>
		</div>
		<div class="button2">
			<a href="mobilecase.jsp"><button type="button"
					class="btn btn-default">View product</button> </a>
		</div>
		<div class="button3">
			<a href="viewtshirt.jsp"><button type="button"
					class="btn btn-default">View product</button> </a>
		</div>
		<div class="button4">
			<a href="viewtshirt.jsp"><button type="button"
					class="btn btn-default">View product</button> </a>
		</div>
	</div>
	</div>
	</div>




</body>
</html>