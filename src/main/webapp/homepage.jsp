<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
	
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body {
	background-image: url("images/bg.jpg");
	background-repeat: no-repeat;
	background-size: 1370px 620px;
	/* background-size: cover; */
	background-attachment: fixed;
} 

/*    ul {
 
  position: absolute;left: 5px;top: 5px ;
         border: 10px solid cornsilk;
         list-style-type: none;
         height: 20px;
         width: 1500px;
         background-color:cornsilk;
         overflow: hidden;
         margin-top: -13px;
         margin-left: -13px;
         padding: 15px;
         position: fixed;
}

li {
  float: left;
  margin-left: 0px;
         margin-top:-10px;
        
}
    li a{
    display: block;
    padding: 8px;
    text-decoration: none;
    font-style: italic;
    font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
    color: black;
    font-size: 18px;
    position: relative;left: 700px;top: 4px;
    }
    li a:hover{
        background-color:goldenrod;
        border-radius: 5px;
       
    } */
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

/* @media ( min-width : 992px) {
	.navbar li {
		margin-left: -1em;
		margin-right: 2em;
	}
}

.nav navbar-nav {
text-align: right;
}

.container-fluid {
	background-color: seashell;
	width: 100%;
	font-style: italic;
	font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS',
		sans-serif;
	font-size: 18px;
	float: right;
}  */

/* dropdown */
body {
  font-family: Arial, Helvetica, sans-serif;
}

.navbar {
  overflow: hidden;
  background-color:seashell;
  width:100%;
  margin-top:-7px;
  height:50px;
 
  
}

.navbar a {
  float: left;
  font-size: 16px;
  color: black;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  float:right;
  font-style: italic;
	font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS',
		sans-serif;
		 font-size: 18px;
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
  background-color:goldenrod;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
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
	<!-- <div class="link">
    <ul>
        <li><a href="mensshowproducts.jsp">Mens</a></li>
        <li><a href="womens.jsp">Womens</a></li>
        <li><a href="Kids.html">Kids</a></li>
        <li><a href="#Occasions">Occasions</a></li>
        <li><a href="#Contact">About us</a></li>
        <li ><a href=userallproducts.jsp>All collections</a></li>
        <li ><a href=userallproducts.jsp>My cart</a></li>
         <li ><a href=exit.jsp>Logout</a></li>

      </ul>
    </div> -->

	<!-- <nav class="navbar navbar-default">
		<div class="container-fluid">
			<div class="navbar-header">
				 <a class="navbar-brand" href="#">Giftshop</a>
          </div>
				<ul class="nav navbar-nav">
					<li><a href="#">Home</a></li>
					<li><a href="mensshowproducts.jsp">Mens</a></li>
					<li><a href="womens.jsp">Womens</a></li>
					<li><a href="Kids.html">Kids</a></li>
					<li><a href="#Occasions">Occasions</a></li>
					<li><a href="#Contact">About us</a></li>
					<li><a href=userallproducts.jsp>All collections</a></li>
					<li><a href=userallproducts.jsp>My cart</a></li>
					<li><a href=exit.jsp>Logout</a></li>
				</ul>
			</div>
	</nav> -->


<body>

<div class="navbar">
<a href="exit.jsp">Logout</a>
<a href="userallproducts.jsp">Reach us</a>
<a href="index.jsp">About us</a>


  <div class="dropdown">
    <button class="dropbtn">categories 
      <i class="fa fa-caret-down"></i>
    </button>
    
    <div class="dropdown-content">
      <a href="mensshowproducts.jsp">mens</a>
      <a href="#">womens</a>
      <a href="#">kids</a>
      <a href="#">occasions</a>
      
    </div>
 
  </div> 
        
    <a href="userallproducts.jsp">All collections</a>
      <a href="index.jsp">Home</a>
  
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