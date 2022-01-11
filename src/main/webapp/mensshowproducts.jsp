<%@page import="com.giftshop.model.Product"%>
<%@page import="com.giftshop.impl.* "%>
<%@page import="java.util.* "%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Mens products</title>
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
}

.button1{
margin-top:180px;
margin-left:-140px;
}


</style>

</head>
<body>
<form>
<%
ProductsImpl dao=new ProductsImpl();
List<Product> mens;
mens=dao.mens();
%>

</form>
 <h2 class="Products">Mens products</h2>
         <div class="recently added list">
        <table>
            <tbody>
                <tr>
                <%int count=0;
                for(Product showProduct: mens){
                	%>
                    <td>
                        <table id="carproduct">
                            <tbody>
                                <tr>
                                    <td><img src=<%=showProduct.getImage() %> alt="Show image"></td>    
                                    <td class="car">
                                      
                                        <span>product name : <%=showProduct.getProductName()%>  </span><br>
                                        <span>description : <%=showProduct.getDescription()%> </span><br>
                                        <span>price : Rs.<%=showProduct.getStandardCost() %> </span><br>
                                        <span>category: <%=showProduct.getCategory()%></span><br>
                                       
                                       <!-- <a href="viewtshirt.jsp?"><button>view product</button></a> -->   
                                       
                                       
                                       <div class="button1">
										 <a href="viewtshirt.jsp" ><button type="button" class="btn btn-default">View product</button> </a>   
										</div>
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