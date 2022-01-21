<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome giftshop</title>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body {
	background-image: url("images/bg.jpg");
	background-repeat: no-repeat;
	background-size: 1370px 620px;
	/* background-size: cover; */
	background-attachment: fixed;
}

#logo {
	position: relative;
	left: 110px;
	top: 1px;
	position: fixed;
}

#title {
	font-style: italic;
	font-size: 100px;
	color: black;
	text-align: left;
	line-height: 85px;
	position: fixed;
	font-family: serif;
	left: 340px;
	top: 65px;
	position: fixed;
}

#slogan {
	font-family: Verdana, Geneva, Tahoma, sans-serif;
	position: relative;
	left: 380px;
	top: 370px;
	letter-spacing: 4px;
	text-align: left;
	position: fixed;
}

.Buynow {
	position: relative;
	left: 570px;
	top: 480px;
	background-color: goldenrod;
	border: none;
	color: black;
	padding: 5px 10px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 15px;
	margin: 4px 2px;
	cursor: pointer;
	border-radius: 25pX;
	position: fixed;
}

body {
	font-family: Arial, Helvetica, sans-serif;
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
	position: absolute;
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
	top: 2px;
	position: fixed;
}
</style>

</head>
<body>

	<div class="navbar">
		<a href="offersflip1.jsp">$ Offers of the day $</a> <a
			href="index.jsp">Logout</a> <a href="gorders.jsp">My orders</a> <a
			href="cart.jsp">My cart</a>


		<div class="dropdown">
			<button class="dropbtn">
				categories <i class="fa fa-caret-down"></i>
			</button>

			<div class="dropdown-content">
				<a href="mensshowproducts.jsp">mens</a> 
				<a href="#">womens</a> 
				<a href="#">kids</a> 
				<a href="#">occasions</a>
			</div>

		</div>

		<a href="userallproducts.jsp">All collections</a>
		 <a href="homepage.jsp">Home</a>

	</div>


	<div id="logo">
		<img src="images/pngwing.com (2).png" height="45px" width="150px">
	</div>

	<div id="title">
		<P>
			Awesome gifts<br> for your loved one..
		</P>
	</div>

	<div id="slogan">
		<P>Order same day delivery gifts to their doorstep</P>
	</div>

	<a href="userallproducts.jsp" class="Buynow">Buy now</a>

</body>
</html>