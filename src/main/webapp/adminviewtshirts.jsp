<%@page import="com.giftshop.model.Product"%>
<%@page import="com.giftshop.impl.* "%>
<%@page import="java.util.* "%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
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
}</style>
</head>
<body>
<form>
<%
ProductsImpl dao=new ProductsImpl();
List<Product> adminviewtshirt;
adminviewtshirt=dao.adminviewtshirt();
%>

</form>
 <h2 class="Products">Mens products</h2>
         <div class="recently added list">
        <table>
            <tbody>
                <tr>
                <%int count=0;
                for(Product showProduct: adminviewtshirt){
                	%>
                    <td>
                        <table id="carproduct">
                            <tbody>
                                <tr>
                                    <td><img src=<%=showProduct.getImage() %> alt="Show image"></td>    
                                    <td class="car">
                                      <span>product id: <%=showProduct.getProductId()%>  </span><br>
                                        <span>product name : <%=showProduct.getProductName()%>  </span><br>
                                        <span>description : <%=showProduct.getDescription()%> </span><br>
                                        <span>price : Rs.<%=showProduct.getStandardCost() %> </span><br>
                                        <span>category: <%=showProduct.getCategory()%></span><br>
                                       <span>quantity: <%=showProduct.getQuantityonhand()%></span><br>
                                       <span>Type: <%=showProduct.getType()%></span><br>
                                       
                                       <a href="adminlogin.jsp?productid=<%=showProduct.getProductId() %>"><button>Edit</button></a>  
                                    </td>
                                </tr>
                            </tbody>
                        </table>  
                            
                    </td>
                       <% count ++;
                       if(count==3){ %> 
                    	   </tr>
                    	   <tr>              
                     <%count=0; }}%>  
                       
                </tr>
            </tbody>
        </table>
         
        </div>
    </div>
   </div>

</body>
</html>