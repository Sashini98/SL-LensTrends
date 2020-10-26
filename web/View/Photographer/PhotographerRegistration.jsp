<%-- 
    Document   : PhotographerRegistration
    Created on : Oct 17, 2020, 6:59:30 PM
    Author     : Madusha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href ="../../CSS/Photographer/PhotographerRegistration.css">
        <link rel="stylesheet" href ="../../CSS/User/UserRegistration.css">
        <link type="text/css" rel="stylesheet" href="../../CSS/header.css" />
        <link href="https://fonts.googleapis.com/css2?family=Roboto+Slab:wght@500&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Be+Vietnam:wght@300&family=Didact+Gothic&family=Dr+Sugiyama&family=Poiret+One&family=Poppins:wght@300&family=Questrial&family=Tenali+Ramakrishna&display=swap" rel="stylesheet"> 
        <link href="https://fonts.googleapis.com/css2?family=Cinzel+Decorative:wght@400;700&family=Righteous&family=Sora:wght@600&family=Syne&display=swap" rel="stylesheet"> 
        
    </head>
    <body style="background-image: url(../../Resources/Img/pregister.jpg); background-size: 100% ; ">
        
        
        <div class="fixedheader">  
            <div class="pageheader">
                <a href="../Home.jsp" type="button"> <img src="../../Resources/Img/7.png" height="55px" width="60px"> </a>
                <h1>Sl Lens Trends </h1>

                <div class="headerul">
                    <ul>

                        <li><a href="#" type="button"> Events </a></li>
                        <li><a href="../User/AdvancedSearch.jsp" type="button"> Album </a></li>
                        <li><a href="../Photographer/PhotographerProfile.jsp" type="button"> Profile </a></li>
                        <li><a href="../Fourm/forum home.jsp" type="button"> Forum </a></li>
                        <li><a href="#" type="button"> Notifications </a></li>

                    </ul>
                </div>

                <div class="notifyicn">
                    <a href="#" type="button"> <img src="../../Resources/Img/notification.png"> </a>

                </div>

                <div class="logout">
                    <a href="../login.jsp" type="button"> Login </a>
                </div>
            </div>
        </div>

        
        <br><br><br><br><br><br><br><br> <font color="red"><h1>Choose Your Plan</h1></font><br><hr>
       <div class="columns">
        <ul class="price">
        <li class="header1">Free</li>
        <li class="grey">$ 9.99 / year</li>
        <li class="white">a</li>
        <li class="white">b</li>
        <li class="white">c</li>
        <li class="white">d</li>
        <li class="grey"><button id="signup1" class="button">Sign Up</button></li>
        </ul>
        </div>
        
        <div class="columns">
        <ul class="price">
        <li class="header2">Basic</li>
        <li class="grey">$ 9.99 / year</li>
        <li class="white">a</li>
        <li class="white">b</li>
        <li class="white">c</li>
        <li class="white">d</li>
        <li class="grey"><button id="signup2" class="button">Sign Up</button></li>
        </ul>
        </div>
        
        <div class="columns">
        <ul class="price">
        <li class="header1">Pro</li>
        <li class="grey">$ 9.99 / year</li>
        <li class="white">a</li>
        <li class="white">b</li>
        <li class="white">c</li>
        <li class="white">d</li>
        <li class="grey"><button id="signup3" class="button">Sign Up</button></li>
        </ul>
        </div>
        
        <div class="columns">
        <ul class="price">
        <li class="header2">Premium</li>
        <li class="grey">$ 9.99 / year</li>
        <li class="white">a</li>
        <li class="white">b</li>
        <li class="white">c</li>
        <li class="white">d</li>
        <li class="grey"><button id="signup4" class="button">Sign Up</button></li>
        </ul>
        </div>
        <hr>
        
      
<div id="myModal" class="modal">

 
  <div class="modal-content">
    <span class="close">&times;</span>
    <div class="outterdiv">

            <div class="d1">
                <img src="../../Resources/Img/Logo/Picture1.png"/>
            </div>
            <div class="form">

                <div class="topic">
                    <span style="font-size: 24px; font-weight: bold">Welcome to SL-Lens Trends</span>
                    <br />
                    <span class="logintxt">If you already have an account. <a href="">Sign In</a></span>
                </div>

                <div class="content">

                    <div class="formContent">
                        <input type="text" name="email" required/>
                        <label for="email" class="label_name">
                            <span class="content_name"> Email Address </span>
                        </label>
                    </div>

                    <div class="formContent" style="align-items: space-between;">
                        <input type="text" name="fname" required style="width: 50%; align-items: space-between;"/>
                        <label for="fname" class="label_name" style="width: 45%; align-items: space-between; ">
                            <span class="content_name" style="width: 45%; align-items: space-between;"> First name </span>
                        </label>
                        <input type="text" name="lname" required style="width: 50%; align-items: space-between;"/>
                        <label for="lname" class="label_name" style="width: 50%; left: 50%;">
                            <span class="content_name" style="width: 45%; align-items: space-between; "> Last Name</span>
                        </label>
                    </div>

<!--
                    <div class="formContent">
                        <input type="text" name="lname" required/>
                        <label for="lname" class="label_name">
                            <span class="content_name"> Last Name</span>
                        </label>
                    </div>-->


                    <div class="formContent">
                        <input type="password" name="pwd" required/>
                        <label for="pwd" class="label_name">
                            <span class="content_name"> Password </span>
                        </label>
                    </div>


                    <div class="formContent">
                        <input type="date" name="dob" required class="dob"/>
                        <label for="dob" class="label_name">
                            <span class="content_name"> Date of Birth </span>
                        </label>
                    </div>


                    <div class="formContent">
                        <input type="text" name="country" required/>
                        <label for="country" class="label_name">
                            <span class="content_name"> Country </span>
                        </label>
                    </div>


                    <div class="para">
                        <hr style="width: 100%;">
                        The SL-Lens Trends may keep me informed with personalized email<br />
                        about products and services.  <br />

                        See our Privacy Policy for more details or to opt-out at any time. <br />

                    </div>
                    <hr style="width: 100%;">

                    <button class="submit">
                        Submit
                    </button>

                </div>
            </div>
        </div>
  </div>

</div>
        
        <script>
var modal = document.getElementById("myModal");
var btn = document.getElementById("signup1");
var span = document.getElementsByClassName("close")[0];
btn.onclick = function() {
  modal.style.display = "block";
}
span.onclick = function() {
  modal.style.display = "none";
}
window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
}

var modal = document.getElementById("myModal");
var btn = document.getElementById("signup2");
var span = document.getElementsByClassName("close")[0];
btn.onclick = function() {
  modal.style.display = "block";
}
span.onclick = function() {
  modal.style.display = "none";
}
window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
}

var modal = document.getElementById("myModal");
var btn = document.getElementById("signup3");
var span = document.getElementsByClassName("close")[0];
btn.onclick = function() {
  modal.style.display = "block";
}
span.onclick = function() {
  modal.style.display = "none";
}
window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
}

var modal = document.getElementById("myModal");
var btn = document.getElementById("signup4");
var span = document.getElementsByClassName("close")[0];
btn.onclick = function() {
  modal.style.display = "block";
}
span.onclick = function() {
  modal.style.display = "none";
}
window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
}
        </script>
        
        
    </body>
</html>
