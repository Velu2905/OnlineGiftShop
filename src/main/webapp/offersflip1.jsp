<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>your offers</title>
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
.flip-box {
  background-color: transparent;
  width: 300px;
  height: 300px;
  border: 1	px solid #cccccc;
  perspective: 1000px;
  margin-left:120px;
  margin-top:15px;
  
}


.flip-box-inner {
  position: relative;
  width: 100%;
  height: 100%;
  text-align: center;
  transition: transform 0.8s;
  transform-style: preserve-3d;
}

.flip-box:hover .flip-box-inner {
  transform: rotateY(180deg);
}

.flip-box-front, .flip-box-back {
  position: absolute;
  width: 100%;
  height: 100%;
  -webkit-backface-visibility: hidden;
  backface-visibility: hidden;
}

.flip-box-front {
  background-color: #bbb;
  color: black;
}

.flip-box-back {
  background-color: dodgerblue;
  color: white;
  transform: rotateY(180deg);
}
/* fjdsifdns */

.flip-box1 {
  background-color: transparent;
  width: 300px;
  height: 300px;
  border: 1px solid #cccccc;
  perspective: 1000px;
  margin-left:515px;
  margin-top:-300px;
  
}


.flip-box1-inner {
  position: relative;
  width: 100%;
  height: 100%;
  text-align: center;
  transition: transform 0.8s;
  transform-style: preserve-3d;
}

.flip-box1:hover .flip-box1-inner {
  transform: rotateY(180deg);
}

.flip-box1-front, .flip-box1-back {
  position: absolute;
  width: 100%;
  height: 100%;
  -webkit-backface-visibility: hidden;
  backface-visibility: hidden;
}

.flip-box1-front {
  background-color: #bbb;
  color: black;
}

.flip-box1-back {
  background-color: dodgerblue;
  color: white;
  transform: rotateY(180deg);
}

/* dfjisfdndsjf */

.flip-box2 {
  background-color: transparent;
  width: 300px;
  height: 300px;
  border: 1px solid #cccccc;
  perspective: 1000px;
  margin-left:920px;
  margin-top:-300px;
  
}


.flip-box2-inner {
  position: relative;
  width: 100%;
  height: 100%;
  text-align: center;
  transition: transform 0.8s;
  transform-style: preserve-3d;
}

.flip-box2:hover .flip-box2-inner {
  transform: rotateY(180deg);
}

.flip-box2-front, .flip-box2-back {
  position: absolute;
  width: 100%;
  height: 100%;
  -webkit-backface-visibility: hidden;
  backface-visibility: hidden;
}

.flip-box2-front {
  background-color: #bbb;
  color: black;
}

.flip-box2-back {
  background-color: dodgerblue;
  color: white;
  transform: rotateY(180deg);
}
 .abc{

            font-size: 60px;
               color:maroon;            
               
        }
</style>
</head>
<body>
<h1 style="text-align:center">pick your offers</h1>
<!-- <p style="text-align:center">pick your offers</p> -->
<div class="abc">
 <marquee width="100%" direction="left" height="100px">
       offers of the day !!!
        </marquee>

<div class="flip-box">
  <div class="flip-box-inner">
    <div class="flip-box-front">
     <a href="offersflip.jsp"> <img src="images/shoppinggggggg (1).webp" alt="show image" width="300" height="300"></a>
    </div>
    <div class="flip-box-back">
      <a href="offersflip.jsp"><img src="images/61Br1t5-cdL._UX425_.jpg" alt="show image" width="300" height="300"></a>
    </div>
  </div>
</div>



<div class="flip-box1">
  <div class="flip-box1-inner">
    <div class="flip-box1-front">
     <a href="offersflip.jsp"> <img src="images/d115c5dcb9969b565f15c24bdabe424f.jpg_720x720q80.jpg_.webp" alt="show image" width="300" height="300"></a>
    </div>
    <div class="flip-box1-back">
      <a href="offersflip.jsp"><img src="images/Zapvi-Banner-Homepage-2.webp" alt="show image" width="300" height="300"></a>
    </div>
  </div>
</div>


<div class="flip-box2">
  <div class="flip-box2-inner">
    <div class="flip-box2-front">
     <a href="offersflip.jsp"> <img src="images/download.jpg" alt="show image" width="300" height="300"></a>
    </div>
    <div class="flip-box2-back">
      <a href="offersflip.jsp"><img src="images/trendy-photo-watch-for-stylish-ladies-326-411-1_diybaazar5f148a3d2fc21.jpg" alt="show image" width="300" height="300"></a>
    </div>
  </div>
</div>


</body>
</html>