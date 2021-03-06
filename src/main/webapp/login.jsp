<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
   <style>
      @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap');
*{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: 'Poppins',sans-serif;
}
body{
  height: 100vh;
  display: flex;
  justify-content: center;
  align-items:center;
  padding: 10px;
  background: linear-gradient(135deg,#f7ef8a,#d2ac47,#ae8625,#edc967);
}
.container{
  max-width: 500px;
  width: 100%;
  background-color:rgb(255, 255, 255);
  /* background-color:rgba(253, 253, 253, 0.973); */
  padding: 25px 30px;
  border-radius: 5px;
  box-shadow: 0 5px 10px rgba(0,0,0,0.15);
}
.container .title{
  font-size: 25px;
  font-weight: 500;
  position: relative;
}
.container .title::before{
  content: "";
  position: absolute;
  left: 0;
  bottom: 0;
  height: 3px;
  width: 30px;
  border-radius: 5px;
  /* background: linear-gradient(135deg, #71b7e6, #9b59b6); */
}
.content form .user-details{
  display:ruby;
  flex-wrap: wrap;
  justify-content: space-between;
  margin: 20px 0 12px 0;
}
form .user-details .input-box{
  margin-bottom: 15px;
  width: calc(100% / 2- 20px);
}
form .input-box span.details{
  display: block;
  font-weight: 500;
  margin-bottom: 5px;
}
.user-details .input-box input{
  height: 45px;
  width: 100%;
  outline: none;
  font-size: 16px;
  border-radius: 10px;
  padding-left: 15px;
  border: 1px solid #ccc;
  border-bottom-width: 2px;
  transition: all 0.3s ease;
}
.user-details .input-box input:focus,
.user-details .input-box input:valid{
  border-color: goldenrod;
}
 form .button{
   height: 45px;
   margin: 35px 0;
 }
 form .button input{
   height: 100%;
   width: 40%;
   border-radius: 5px;
   border: none;
   color: #fff;
   font-size: 18px;
   font-weight: 500;
   letter-spacing: 1px;
   cursor: pointer;
   transition: all 0.3s ease;
   background:rgba(165, 110, 9, 0.863);
   position: relative;left: 135px;top: 10px;
 }
 form .button input:hover{
  transform: scale(0.99);
  background:rgb(241, 175, 7);
  }
 @media(max-width: 584px){
 .container{
  max-width: 100%;
}
form .user-details .input-box{
    margin-bottom: 15px;
    width: 100%;
  }
  form .category{
    width: 100%;
  }
  .content form .user-details{
    max-height: 300px;
    overflow-y: scroll;
  }
  .user-details::-webkit-scrollbar{
    width: 5px;
  }
  }
  @media(max-width: 459px){
  .container .content .category{
    flex-direction: column;
  }
}
#text{
    position: relative;left: -490px;top: 215px;
}
    </style>
</head>
<body>
<body>
        <div class="container">
          <div class="title">Login</div>
          <div class="content">
            <form action="login" method="post">
              <div class="user-details">
                <div class="input-box">
                  <span class="details">Email</span>
                  <input type="text" name="username"pattern="[a-z0-9]+[@][a-zA-Z]+[.][a-z]+"					
            title="You have to insert @ and . in the username ex.abc@gmail.com" placeholder="Enter your mail id" required>
                </div>
                <div class="input-box">
                  <span class="details">Password</span>
                  <input type="password" name="password"pattern="^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[!@#&?/*$^]).{8,16}$"
            title="Minimum 8 characters should be there.There should be atleast one numeric,special character,capital letter and small letter." name="password"
            minlength="8" maxlength="16"
             placeholder="Enter your password" required>
                </div>
              </div>
              <div class="button">
                <input type="submit" value="Login">
              </div>
              <%String erroruserid=(String)session.getAttribute("erroruserid");
     if(erroruserid!=null){ %>
		<p id="errorcontent"><%=erroruserid %></p>
		<% session.removeAttribute("erroruserid");} %>
            </form>
          </div>
        </div>
</body>
</html>