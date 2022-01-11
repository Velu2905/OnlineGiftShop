<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>mens tshirts</title>
 <style>
        body{
        background-image: url("images/plain-yellow-wall-product-background.jpg");
         background-repeat: no-repeat ;
        background-size: 1370px 620px;
        /* background-size: cover; */
        background-attachment: fixed;
            }
           
            </style>
            <link rel="stylesheet" href="addtocart.css">
            <script type="text/javascript"src="addtocart.js"></script>
</head>
<body>
<div class="container">
        

        <div class="card"id="item1">
            <img src="images/attitude_black_men_model_400x400.jpg">
            <div class="title">Good vibes tshirt</div>
            <div>500</div>
            <div>
                <label>Size: </label>
                <select>
                    <option>S</option>
                    <option>M</option>
                    <option>L</option>
                    <option>XL</option>
                    <option>2XL</option>
                    <option>3XL</option>
                </select>
            </div>
            <div>
                <label>Qty:</label>
                <select>
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                    <option>6</option>
                    <option>7</option>
                    <option>8</option>
                    <option>9</option>
                    <option>10</option>
                    <option>11</option>
                </select>
            </div>
            
        <button onclick="addtocart(item1)">Add to cart</button>
        </div>
   
        <div class="card"id="item2">
            <img src="images/men-s-fancy-t-shirt-500x500.jpg">
            <div class="title">Half hand tshirt</div>
            <div>250</div>
            <div>
                <label>Size: </label>
                <select>
                    <option>S</option>
                    <option>M</option>
                    <option>L</option>
                    <option>XL</option>
                    <option>2XL</option>
                    <option>3XL</option>
                </select>
            </div>
            <div>
                <label>Qty:</label>
                <select>
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                    <option>6</option>
                    <option>7</option>
                    <option>8</option>
                    <option>9</option>
                    <option>10</option>
                    <option>11</option>
                </select>
            </div>
        <button onclick="addtocart(item2)">Add to cart</button>
        </div>
   
        <div class="card"id="item4">
            <img src="images/men-s-fancy-t-shirt-500x500.jpg">
            <div class="title">Hoodies</div>
            <div>300</div>
            <div>
                <label>Size: </label>
                <select>
                    <option>S</option>
                    <option>M</option>
                    <option>L</option>
                    <option>XL</option>
                    <option>2XL</option>
                    <option>3XL</option>
                </select>
            </div>
            <div>
                <label>Qty:</label>
                <select>
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                    <option>6</option>
                    <option>7</option>
                    <option>8</option>
                    <option>9</option>
                    <option>10</option>
                    <option>11</option>
                </select>
            </div>
        <button onclick="addtocart(item4)">Add to cart</button>
        </div>
   

        <div class="card"id="item3">
            <img src="images/attitude_black_men_model_400x400.jpg"zz>
            <div class="title">Polo tshirt</div>
            <div>240</div>
            <div>
                <label>Size:</label>
                <select>
                    <option>S</option>
                    <option>M</option>
                    <option>L</option>
                    <option>XL</option>
                    <option>2XL</option>
                    <option>3XL</option>
                </select>
            </div>
            <div>
                <label>Qty:</label>
                <select>
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                    <option>6</option>
                    <option>7</option>
                    <option>8</option>
                    <option>9</option>
                    <option>10</option>
                    <option>11</option>
                </select>
            </div>
            
<button onclick="addtocart(item3)">Add to cart</button>
        </div>
    </div>
    
    <!-- <form action="#">
        <div class="button">
        <input type="submit" value="Buy now">
      </div>
    </form> -->
    




    
<div class="cart"id="cart">
    <div class="title">CART</div><hr/>
    <div id="title"></div> 

</div>
</body>
</html>