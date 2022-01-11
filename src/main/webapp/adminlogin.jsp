<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>admin</title>
<style>
body {
	background-image: url("images/bg.jpg");
	background-repeat: no-repeat;
	background-size: 1370px 620px;
	/* background-size: cover; */
	background-attachment: fixed;
}

form .button1 {
	height: 45px;
	margin: 35px 0;
}

form .button1 input {
	height: 100%;
	width: 20%;
	border-radius: 5px;
	border: none;
	color: #fff;
	font-size: 18px;
	font-weight: 500;
	letter-spacing: 1px;
	cursor: pointer;
	transition: all 0.3s ease;
	background: rgba(165, 110, 9, 0.863);
	position: relative;
	left: 505px;
	top: 180px;
}

form .button1 input:hover {
	transform: scale(0.99);
	background: rgb(0, 162, 255);
}

form .button2 {
	height: 45px;
	margin: 35px 0;
}

form .button2 input {
	height: 100%;
	width: 20%;
	border-radius: 5px;
	border: none;
	color: #fff;
	font-size: 18px;
	font-weight: 500;
	letter-spacing: 1px;
	cursor: pointer;
	transition: all 0.3s ease;
	background: rgba(165, 110, 9, 0.863);
	position: relative;
	left: 505px;
	top: 180px;
}

form .button2 input:hover {
	transform: scale(0.99);
	background: rgb(0, 255, 13);
}

form .button3 {
	height: 45px;
	margin: 35px 0;
}

form .button3 input {
	height: 100%;
	width: 20%;
	border-radius: 5px;
	border: none;
	color: #fff;
	font-size: 18px;
	font-weight: 500;
	letter-spacing: 1px;
	cursor: pointer;
	transition: all 0.3s ease;
	background: rgba(165, 110, 9, 0.863);
	position: relative;
	left: 505px;
	top: 180px;
}

form .button3 input:hover {
	transform: scale(0.99);
	background: rgb(255, 230, 0);
}

form .button4 {
	height: 45px;
	margin: 35px 0;
}

form .button4 input {
	height: 100%;
	width: 20%;
	border-radius: 5px;
	border: none;
	color: #fff;
	font-size: 18px;
	font-weight: 500;
	letter-spacing: 1px;
	cursor: pointer;
	transition: all 0.3s ease;
	background: rgba(165, 110, 9, 0.863);
	position: relative;
	left: 505px;
	top: 180px;
}

form .button4 input:hover {
	transform: scale(0.99);
	background: rgb(241, 7, 7);
}
</style>
</head>
<body>
	<form action="adminshowproducts.jsp"method="post">
		<div class="button1">
			<input type="submit" value="show products">
		</div>
	</form>
	<form action="insertproduct.jsp">
		<div class="button2">
			<input type="submit" value="Insert product">
		</div>
	</form>
	<form action="update.jsp">
		<div class="button3">
			<input type="submit" value="update product">
		</div>
	</form>
	<form action="delete.jsp">
		<div class="button4">
			<input type="submit" value="Delete product">
		</div>
	</form>
</body>
</html>