<%@page import="com.giftshop.model.Product"%>
<%@page import="com.giftshop.impl.* "%>
<%@page import="java.util.* "%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Products</title>
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
List<Product> ShowProduct;
 ShowProduct=dao.adminShowProduct();
%>

</form>
 <h2 class="Products">All collections</h2>
         <div class="recently added list">
        <table>
            <tbody>
                <tr>
                <%int count=0;
                for(Product ushowProduct: ShowProduct){
                	%>
                    <td>
                        <table id="carproduct">
                            <tbody>
                                <tr>
                                    <td><img src=<%=ushowProduct.getImage() %> alt="Show image"></td>    
                                    <td class="car">
                                        
                                        <span>product name : <%=ushowProduct.getProductName()%>  </span><br>
                                   
                              
                                       <a href="viewtshirt.jsp"><button>view product</button></a>   
                                    </td>
                                </tr>
                            </tbody>
                        </table>  
                            
                    </td>
                       <% count ++;
                       if(count==4){ %> 
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