<%@page import="com.giftshop.model.viewcartPojo"%>
<%@page import="com.giftshop.model.ProductPojo"%>
<%@page import="com.giftshop.impl.*"%>
<%@page import="java.util.*"%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Your orders</title>
</head>
<body>
<form>
<%
viewcartPojo  vcart = new viewcartPojo();
int userid = (int) session.getAttribute("logincustomer");
vcart.setUserid(userid);
viewCartImpl dao = new viewCartImpl();
List<viewcartPojo> mycart;
List<viewcartPojo> showcart=dao.mycart( vcart);
%>


 <h2 class="Products">Your orders</h2>
         <div class="recently added list">
        <table>
            <tbody>
                <tr>
                <%
                int count=0;
                                for(viewcartPojo showProduct: showcart){
                %>
                    <td>
                        <table id="carproduct">
                            <tbody>
                                <tr>
                                    <td><img src=<%=showProduct.getImage() %> alt="Show image"></td>    
                                    <td class="car">
                                      <span>user id: <%=showProduct.getUserid()%>  </span><br>
                                        <span>product id: <%=showProduct.getProductid()%>  </span><br>
                                        <span>product name: <%=showProduct.getProductname()%> </span><br>
                                        <span>Type:<%=showProduct.getType() %> </span><br>
                                        <span>Size: <%=showProduct.getSize()%></span><br>
                                       <span>quantity: <%=showProduct.getQuantity()%></span><br>
                                       <span>Price:Rs: <%=showProduct.getStandardcost()%></span><br>
                                       <span>Total:Rs: <%=showProduct.getTotalprice()%></span><br>
                                        
                                       
                                        
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
</form>
</body>
</html>