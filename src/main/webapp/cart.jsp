<%@page import="com.giftshop.model.viewcart"%>
<%@page import="com.giftshop.model.Product"%>
<%@page import="com.giftshop.impl.* "%>
<%@page import="java.util.* "%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>cart</title>
<style>
@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap');
*{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: 'Poppins',sans-serif;
}
body {
	background-image: url("images/plain-yellow-wall-product-background.jpg");
	background-repeat: no-repeat;
	background-size: 1370px 620px;
	/* background-size: cover; */
	background-attachment: fixed;
}

table img {
	width: 200px;
	height: 200px;
	border-style: solid;
	border-radius: 5%;
	border: 5px solid #daa520;
}

table {
	width: 2%;
	float: left;
}
</style>
</head>
<body>

	<%
	int userid = (int) session.getAttribute("logincustomer");
	viewcart vcar1 = new viewcart();
	vcar1.setUserid(userid);
	viewCartImpl dao = new viewCartImpl();
	List<viewcart> insertcart = dao.insert(vcar1);
	%>
	<form action="buynow"method="post">
		<h2 class="Products">your cart</h2>
		<div class="recently added list">
			<table>
				<tbody>
					<tr>
						<%
						int count = 0;
						for (viewcart showProduct : insertcart) {
						%>
						<td>
							<table id="carproduct">
								<tbody>
									<tr>
										<td><img src=<%=showProduct.getImage()%> alt="Show image"></td>

									
										<span>product name : <%=showProduct.getProductname()%>
										</span>
										<span>product type : <%=showProduct.getType()%>
										</span>
										<span>price : Rs.<%=showProduct.getStandardcost()%>
										</span>
										<span>size: <%=showProduct.getSize()%></span>
										
										<span>quantity : <%=showProduct.getQuantity()%>
										</span>

										</td>
									</tr>
								</tbody>
							</table>

						</td>
						<%
						count++;
						if (count == 6) {
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

			<!-- <input type="button" value="Buy now"
				onclick="window.location='buynow'">
				
<input type="button" value="Remove from cart"
				onclick="window.location='buynow'"> -->
				
				<div class="button">
                    <input type="submit" value="Buy now">
                  </div>

		</div>
		</div>
		</div>

	</form>
</body>
</html>