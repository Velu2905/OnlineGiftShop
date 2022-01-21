<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>offers</title>
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

* {
  box-sizing: border-box;
}

.columns {
  float: left;
  width: 33.3%;
  padding: 8px;
}

.price {
  list-style-type: none;
  border: 8px solid #eee;
  margin: 0;
  padding: 0;
  -webkit-transition: 0.3s;
  transition: 0.3s;
}

.price:hover {
  box-shadow: 0 8px 12px 0 rgba(0,0,0,0.2)
}

.price .header {
  background-color: goldenrod;
  color: white;
  font-size: 25px;
}

.price li {
  border-bottom: 4px solid #eee;
  padding: 20px;
  text-align: center;
}

.price .grey {
  background-color: #eee;
  font-size: 20px;
}

.button {
  background-color: goldenrod;
  border: none;
  color: white;
  padding: 10px 25px;
  text-align: center;
  text-decoration: none;
  font-size: 18px;
}

@media only screen and (max-width: 600px) {
  .columns {
    width: 100%;
  }
}
</style>
</head>
<body>
<!-- <center><h1>Tshirts</h1></center> -->
<!-- <h3>Hover over the box below:</h3> -->

 <div class="columns">
  <ul class="price">
    <li class="header">Tshirts</li>
    <li class="grey">Buy one get one</li>
    <li>polo tshirt</li>
    <li>hoodies</li>
    <li>round neck</li>
    <li>v neck</li>
    <li class="grey"><a href="viewtshirt.jsp" class="button">view</a></li>
  </ul>
</div>

<div class="columns">
  <ul class="price">
    <li class="header" style="background-color:goldenrod">mobile case</li>
    <li class="grey">Bulk offers</li>
    <li>couple mobile case</li>
    <li>Friends mobile case</li>
    <li>marvel mobile cases</li>
    <li>DC mobile cases</li>
    <li class="grey"><a href="viewtshirt.jsp" class="button">view</a></li>
  </ul>
</div>

<div class="columns">
  <ul class="price">
    <li class="header">watches</li>
    <li class="grey">get minimum price</li>
    <li>offer1</li>
    <li>offer2</li>
    <li>offer3</li>
    <li>offer4</li>
    <li class="grey"><a href="viewtshirt.jsp" class="button">view</a></li>
  </ul>
</div> 


</body>
</html>