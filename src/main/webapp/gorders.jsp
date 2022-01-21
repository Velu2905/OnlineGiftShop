<%@page import="java.util.List"%>
<%@page import="com.giftshop.impl.OrdersImpl"%>
<%@page import="com.giftshop.model.OrdersPojo"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>order details</title>

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

table {
	width: 10%;
	float: left;
	border-spacing: 10px;
	
}

.button {
	margin-top: 170px;
	margin-left: 33px;
}

/* table, th, td {
  border:1px solid black;
} */

th, td {
	text-align: left;
	padding: 2px;
}

.car {
	border: 10px seashell;
	width: 5000px;
	background-color:seashell ;
	border-radius:5px;
	padding:20px;
	
}

.navbar {
	overflow: hidden;
	background-color: seashell;
	width: 100%;
	margin-top: 1px;
	height: 55px;
	position: FIXED;
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
	position: relative;
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




</style>
</head>
<body>
	<div class="navbar">
		<a href="index.jsp">Logout</a> <a href="userallproducts.jsp">My
			orders</a> <a href="cart.jsp">My cart</a>


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
	

	<%
		
			 int userid= (int) session.getAttribute("logincustomer");
			OrdersPojo showord = new OrdersPojo();
			showord.setUserid(userid);

			 /* showord.setUserid(userid);
		 */	
		 OrdersImpl dao = new OrdersImpl();
			List<OrdersPojo> show;
			
			show = dao.userOrderDetails(showord);
		%>
	<%


				for (OrdersPojo  showPrice : show) {
	%>
	<form>



		<div class="abcd">
			<table>
				<tbody>
					<tr>
						<td>

							<table id="product">
								<tbody>
									<tr>

										<br>
										<br>
										<br>
										<td class="car">




											<div calss="qwety">
												Order id:<%=showPrice.getOrderid()%>
												<br> Order date:<%=showPrice.getOrderdate()%>
												<br> status:<%=showPrice.getStatus()%>
											</div>







										</td>
									</tr>
								</tbody>
							</table> <!-- <input type="button" value="add to cart"> -->

							<div class="button">

								<input type="button" value="Details"
									onclick="window.location='orderdetails.jsp?orderId=<%=showPrice.getOrderid()%>'">
							</div> </a>
							</div>


							</div>
						</td>

					</tr>
					<tr>

						<%
										
										
										
										}
										%>

					</tr>
				</tbody>
			</table>
	</form>

	</div>
	</div>
	</div>
	</div>




	</div>
</body>
</html>