<%@page import="com.giftshop.model.ProductPojo"%>
<%@page import="com.giftshop.impl.*"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All products</title>
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
}
</style>
</head>
<body>

<form>
<%
ProductsImpl dao=new ProductsImpl();
List<ProductPojo> adminShowProduct;
 adminShowProduct=dao.adminShowProduct();
%>

</form>
 <h2 class="Products">Products</h2>
         <div class="recently added list">
        <table>
            <tbody>
                <tr>
                <%
                int count=0;
                                for(ProductPojo showProduct: adminShowProduct){
                %>
                    <td>
                        <table id="carproduct">
                            <tbody>
                                <tr>
                                    <td><img src=<%=showProduct.getImage() %> alt="Show image"></td>    
                                    <td class="car">
                               
                                        <span>product name : <%=showProduct.getProductName()%>  </span><br>
                                        <span>description : <%=showProduct.getDescription()%> </span><br>
                                        
                                        <span>category: <%=showProduct.getCategory()%></span><br>
                                       
                                      <a href="adminviewtshirts.jsp"><button>view</button></a>   
                                    
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