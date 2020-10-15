<%-- 
    Document   : new
    Created on : Oct 13, 2020, 2:45:34 PM
    Author     : Sashini Shihara
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="../CSS/login.css">
</head>
<body>


<div class="slideshow-container">

<div class="mySlides fade">
    <div class="img"><img src="../Resources/Img/user.png" style="width:15%;height:15%;margin-left:94%;margin-top:4%;margin-bottom: -2.3%;"></div>
  <img src="../Resources/Img/loginbg.jpg" style="width:100%">
  <div class="form"> 
      <form>
             <br><br><br><input type="text" id="email" name="email" placeholder="Email"><br><br>
             <input type="password" id="pw" name="pw" placeholder="Password"><br>
             <a href="ResetPwd.jsp">Forgot Password?</a><br><br>
              <input type="submit" id="login" value="Login"><br><br>
             
      </form>
  </div>
</div>

<div class="mySlides fade">
    <div class="img"><img src="../Resources/Img/user.png" style="width:15%;height:15%;margin-left:94%;margin-top:4%;margin-bottom: -2.3%;"></div>
  <img src="../Resources/Img/loginbg2.jpg" style="width:100%">
  <div class="form"> 
      <form>
             <br><br><br><input type="text" id="email" name="email" placeholder="Email"><br><br>
             <input type="password" id="pw" name="pw" placeholder="Password"><br>
             <a href="ResetPwd.jsp">Forgot Password?</a><br><br>
              <input type="submit" id="login" value="Login"><br><br>
             
      </form>
  </div>
</div>
    
<div class="mySlides fade">
    <div class="img"><img src="../Resources/Img/user.png" style="width:15%;height:15%;margin-left:94%;margin-top:4%;margin-bottom: -2.3%;"></div>
  <img src="../Resources/Img/loginbg3.jpg" style="width:100%">
  <div class="form"> 
      <form>
             <br><br><br><input type="text" id="email" name="email" placeholder="Email"><br><br>
             <input type="password" id="pw" name="pw" placeholder="Password"><br>
             <a href="ResetPwd.jsp">Forgot Password?</a><br><br>
              <input type="submit" id="login" value="Login"><br><br>
             
      </form>
  </div>
</div>
    
 <div class="mySlides fade">
    <div class="img"><img src="../Resources/Img/user.png" style="width:15%;height:15%;margin-left:94%;margin-top:4%;margin-bottom: -2.3%;"></div>
  <img src="../Resources/Img/loginbg4.jpg" style="width:100%">
  <div class="form"> 
      <form>
             <br><br><br><input type="text" id="email" name="email" placeholder="Email"><br><br>
             <input type="password" id="pw" name="pw" placeholder="Password"><br>
             <a href="ResetPwd.jsp">Forgot Password?</a><br><br>
              <input type="submit" id="login" value="Login"><br><br>
             
      </form>
  </div>
</div>
    
<div class="mySlides fade">
    <div class="img"><img src="../Resources/Img/user.png" style="width:15%;height:15%;margin-left:94%;margin-top:4%;margin-bottom: -2.3%;"></div>
  <img src="../Resources/Img/loginbg5.jpg" style="width:100%">
  <div class="form"> 
      <form>
             <br><br><br><input type="text" id="email" name="email" placeholder="Email"><br><br>
             <input type="password" id="pw" name="pw" placeholder="Password"><br>
             <a href="ResetPwd.jsp">Forgot Password?</a><br><br>
              <input type="submit" id="login" value="Login"><br><br>
             
      </form>
  </div>
</div>
    
<div class="mySlides fade">
    <div class="img"><img src="../Resources/Img/user.png" style="width:15%;height:15%;margin-left:94%;margin-top:4%;margin-bottom: -2.3%;"></div>
  <img src="../Resources/Img/loginbg6.jpg" style="width:100%">
  <div class="form"> 
      <form>
             <br><br><br><input type="text" id="email" name="email" placeholder="Email"><br><br>
             <input type="password" id="pw" name="pw" placeholder="Password"><br>
             <a href="ResetPwd.jsp">Forgot Password?</a><br><br>
              <input type="submit" id="login" value="Login"><br><br>
             
      </form>
  </div>
</div>
    
<div class="mySlides fade">
    <div class="img"><img src="../Resources/Img/user.png" style="width:15%;height:15%;margin-left:94%;margin-top:4%;margin-bottom: -2.3%;"></div>
  <img src="../Resources/Img/loginbg7.jpg" style="width:100%">
  <div class="form"> 
      <form>
             <br><br><br><input type="text" id="email" name="email" placeholder="Email"><br><br>
             <input type="password" id="pw" name="pw" placeholder="Password"><br>
             <a href="ResetPwd.jsp">Forgot Password?</a><br><br>
              <input type="submit" id="login" value="Login"><br><br>
             
      </form>
  </div>
</div>


<div class="mySlides fade">
    <div class="img"><img src="../Resources/Img/user.png" style="width:15%;height:15%;margin-left:94%;margin-top:4%;margin-bottom: -2.3%;"></div>
  <img src="../Resources/Img/loginbg8.jpg" style="width:100%">
  <div class="form"> 
      <form>
             <br><br><br><input type="text" id="email" name="email" placeholder="Email"><br><br>
             <input type="password" id="pw" name="pw" placeholder="Password"><br>
             <a href="ResetPwd.jsp">Forgot Password?</a><br><br>
              <input type="submit" id="login" value="Login"><br><br>
             
      </form>
  </div>
</div>


</div>
<br>

<div style="text-align:center">
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span>
  <span class="dot"></span>
  <span class="dot"></span>
  <span class="dot"></span>
</div>

<script>
var slideIndex = 0;
showSlides();

function showSlides() {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";  
    
  }
  slideIndex++;
  if (slideIndex > slides.length) {slideIndex = 1}    
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
     }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
  setTimeout(showSlides, 5000); 
}
</script>

</body>
</html> 
