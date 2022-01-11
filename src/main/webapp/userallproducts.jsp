<%@page import="com.giftshop.model.Product"%>
<%@page import="com.giftshop.impl.* "%>
<%@page import="java.util.* "%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All collections</title>
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


.button{
margin-top:180px;
margin-left:-140px;
}

span b{
margin-left:-120px;
margin-top:1000px;
}
</style>
</head>
<body>
	<form>
		<%
		ProductsImpl dao = new ProductsImpl();
		List<Product> ShowProduct;
		ShowProduct = dao.adminShowProduct();
		%>
	</form>
	
	<h2 class="Products">Products</h2>
	<div class="recently added list">
		<table>
			<tbody>
				<tr>
					<%
					int count = 0;
					for (Product ushowProduct : ShowProduct) {
					%>
					<td>
						<table id="carproduct">
							<tbody>
								<tr>
<!--<a target="_blank" href="viewtshirt.jsp"></a>-->									
                                  <td><img src=<%=ushowProduct.getImage()%> alt="Show image"></td>
									
									<td class="car">
									&nbsp;
									&nbsp;
									<span><b><%=ushowProduct.getProductName()%></span></b><br>
										<%-- <span>description : <%=ushowProduct.getDescription()%> </span><br> --%>
										<%--  <span>price : Rs.<%=ushowProduct.getStandardCost() %> </span><br> --%>
										<%--  <span>category: <%=ushowProduct.getCategory()%></span><br> --%>

										<!-- <a href="viewtshirt.jsp"><button>view product</button></a> -->   
										<!-- <button type="button" class="viewtshirt.jsp">view product</button> -->
										<br>
										<div class="button">
										 <a href="viewtshirt.jsp" ><button type="button" class="btn btn-default">View product</button> </a>   
										</div> 
</td>
								</tr>
							</tbody>
						</table>

					</td>
					<%
					count++;
					if (count == 8) {
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

	</div>
	</div>
	</div>
	
	


</body>
</html>