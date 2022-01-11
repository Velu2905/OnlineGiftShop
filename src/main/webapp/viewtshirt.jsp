<%@page import="com.giftshop.model.Product"%>
<%@page import="com.giftshop.impl.* "%>
<%@page import="java.util.* "%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Tshirts</title>
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
	/* border: 1px solid #ddd;
  border-radius: 4px;
  padding: 5px;
  width: 150px; */
}

table {
	width: 2%;
	float: left;
}

.button {
	margin-top: 170px;
	margin-left: 33px;
}

/* table, th, td {
  border:1px solid black;
} */
</style>

</head>
<body>

	<%
	ProductsImpl dao = new ProductsImpl();
	List<Product> price1;
	price1 = dao.price();
	%>
	<%
					for (Product showPrice : price1) {
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
										<div id="item1">

											<td><img src=<%=showPrice.getImage()%> alt="Show image"></td>
										<td class="car">



											<div>

												<%=showPrice.getProductName()%>
												<%-- Id:<%=showPrice.getProductId()%> --%>
											</div>
											<div>
												Type:<%=showPrice.getType()%>
											</div>
											<div>
												Rs:<%=showPrice.getStandardCost()%>

											</div>


										</td>
									</tr>
								</tbody>
							</table> <a
							href="addcart.jsp?
							&pid=<%=showPrice.getProductId()%>
							&pname=<%=showPrice.getProductName()%>
							&img=<%=showPrice.getImage()%>
							&type=<%=showPrice.getType()%>
							&price=<%=showPrice.getStandardCost()%>">


								<!-- <input type="button" value="add to cart"> -->
								<div class="button">
									<button type="button" class="btn btn-default">Add to
										cart</button>
								</div>
						</a>
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