<%@page import="com.giftshop.model.*"%>
<%@page import="com.giftshop.impl.* "%>
<%@page import="java.util.* "%>



<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Thank you</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
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
	background-image: url("images/SL_050721_42770_15.jpg");
	background-repeat: no-repeat;
	background-size: 1370px 620px;
	/* background-size: cover; */
	background-attachment: fixed;
}
.exit{
 position: absolute;left: 450px;top: 250px; text-align: center;
           
            /* color:goldenrod;   */        

}
.btn-success{
position: absolute;left: 500px;top: 380px;
}

.btn-danger{
position: absolute;left: 680px;top: 380px;
width:11%;

}
.glyphicon{

position: absolute;left: 400px;top: 280px;

}
</style>
</head>
<body>
<div class="exit">

            <h1>order placed successfully</h1>
<p><u>Your order will be delivered within 2 to 3 working days</u> </p>
</div>
<a href="homepage.jsp"><button type="button" class="btn btn-success">Continue shopping</button></a>
<a href="index.jsp"><button type="button" class="btn btn-danger">Exit</button></a>
<!--  <p>
        <span class="glyphicon">&#xe013;</span>
      </p> --> 
      <i class="glyphicon" style="font-size:30px;color:black;">&#xe013</i>
      
</body>
</html>