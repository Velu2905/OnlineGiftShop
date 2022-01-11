<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update product</title>
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
	height: 100vh;
	display: flex;
	justify-content: center;
	align-items: center;
	padding: 10px;
	background-image: url("images/bg.jpg");
	background-repeat: no-repeat;
	background-size: 1370px 620px;
	background-attachment: fixed;
	/* background: linear-gradient(135deg,#f7ef8a,#d2ac47,#ae8625,#edc967); */
}

.container {
	max-width: 600px;
	/* height: 500px; */
	width: 100%;
	background-color: rgb(255, 255, 255);
	padding: 25px 30px;
	border-radius: 5px;
	box-shadow: 0 5px 10px rgba(0, 0, 0, 0.15);
}

.container .title {
	font-size: 25px;
	font-weight: 500;
	position: relative;
}

.container .title::before {
	content: "";
	position: absolute;
	left: 0;
	bottom: 0;
	height: 3px;
	width: 30px;
	border-radius: 5px;
	/* background: linear-gradient(135deg, #71b7e6, #9b59b6); */
}

.content form .user-details {
	display: ruby;
	flex-wrap: wrap;
	justify-content: space-between;
	margin: 20px 0 12px 0;
}

form .user-details .input-box {
	margin-bottom: 15px;
	width: calc(100%/ 1 - 20px);
}

form .input-box span.details {
	display: block;
	font-weight: 500;
	margin-bottom: -3px;
}

.user-details .input-box input {
	height: 45px;
	width: 100%;
	outline: none;
	font-size: 16px;
	border-radius: 10px;
	padding-left: 15px;
	border: 1px solid #ccc;
	border-bottom-width: 3px;
	transition: all 0.3s ease;
}

.user-details .input-box input:focus, .user-details .input-box input:valid
	{
	border-color: goldenrod;
}

form .button {
	height: 45px;
	margin: 35px 0;
}

form .button input {
	height: 100%;
	width: 40%;
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
	left: 162px;
	top: 7px;
}

form .button input:hover {
	transform: scale(0.99);
	background: rgb(241, 175, 7);
}
</style>
</head>
<body>
	<div class="container">
		<form action="update" method="post">
			<div class="user-details">
				<div class="input-box">
					<span class="details">Product id</span> <input type="text"
						name="productid" placeholder="Enter product id" required>
				</div>
				<div class="input-box">
					<span class="details">price</span> <input type="text" name="price"
						placeholder="Enter product price to update" required>
				</div>
				<div class="input-box">
					<span class="details">quantity</span> <input type="number"
						name="quantity" placeholder="Enter product quantity to update"
						required>
				</div>
			</div>
			<div class="button">
				<input type="submit" value="Update product">
			</div>
	</div>
	</div>


	</form>
</body>
</html>