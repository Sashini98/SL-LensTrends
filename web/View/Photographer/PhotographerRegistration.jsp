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
        <link rel="stylesheet" href ="../../CSS/Photographer/changepassword.css">
        <link type="text/css" rel="stylesheet" href="../../CSS/header.css" />
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300&family=Tenali+Ramakrishna&display=swap" rel="stylesheet"> 
        <link href="https://fonts.googleapis.com/css2?family=Be+Vietnam:wght@300&family=Didact+Gothic&family=Dr+Sugiyama&family=Poiret+One&family=Poppins:wght@300&family=Questrial&family=Tenali+Ramakrishna&display=swap" rel="stylesheet"> 
        <link href="https://fonts.googleapis.com/css2?family=Cinzel+Decorative:wght@400;700&family=Righteous&family=Sora:wght@600&family=Syne&display=swap" rel="stylesheet"> 

    </head>
    <body>


        <div class="fixedheader">  
            <div class="pageheader">
                <a href="../PhotographerHome.jsp" type="button"> <img src="../../Resources/Img/7.png" height="55px" width="60px"> </a>
                <h1>Sl Lens Trends </h1>

                <div class="headerul">
                    <ul>

                         <li><a href="../Events/EventHome.jsp" type="button"> Events </a></li>
                        <li><a href="../User/AdvancedSearch.jsp" type="button"> Album </a></li>
                        <li><a href="PhotographerUpdate.jsp" type="button"> Profile </a></li>
                        <li><a href="../Fourm/forum home.jsp" type="button"> Forum </a></li>
                        <li><a href="../Notifications/notificationsHome.jsp" type="button"> Notifications </a></li>

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


        <br><br><br><br><br> <font color="blue"><h1>Choose Your Plan</h1></font><hr>
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
                <div class="cont"> 

                    <div class="logo">
                        <img src="../../Resources/Img/6.png">
                    </div>
                    <h1>Welcome to SL-Lens Trends</h1>

                    <div class="caption">
                        <p>
                            If you already have an account. <a href="../login.jsp">Sign In</a>
                        </p>
                    </div>

                    <div class="passinfo">
                        <form>
                            <fieldset class="cpass">
                                <legend> Email Address </legend>
                                <input type="text" id="email" name="mail" >
                                <legend> First Name </legend>
                                <input type="text" id="fname" name="name">
                                <legend> Last Name </legend>
                                <input type="text" id="lname" name="namel" >
                                <legend> Password </legend>
                                <input type="password" id="pw" name="password">
                                <legend> Date of Birth </legend>
                                <input type="text" id="dob" name="birth">
                                <legend> Country </legend>
                                <input type="text" id="country" name="contr">
                            </fieldset>                        

                            <div class="change">
                                <a href="#" type="button">Submit</a>
                            </div>
                        </form><br><br><br>
                        <font size="2px">The SL-Lens Trends may keep me informed with personalized email about products and services.See our Privacy Policy for more details or to opt-out at any time.</font>
                    </div>
                </div>
            </div>

        </div>

        <script>
            var modal = document.getElementById("myModal");
            var btn = document.getElementById("signup1");
            var span = document.getElementsByClassName("close")[0];
            btn.onclick = function () {
                modal.style.display = "block";
            }
            span.onclick = function () {
                modal.style.display = "none";
            }
            window.onclick = function (event) {
                if (event.target == modal) {
                    modal.style.display = "none";
                }
            }

            var modal = document.getElementById("myModal");
            var btn = document.getElementById("signup2");
            var span = document.getElementsByClassName("close")[0];
            btn.onclick = function () {
                modal.style.display = "block";
            }
            span.onclick = function () {
                modal.style.display = "none";
            }
            window.onclick = function (event) {
                if (event.target == modal) {
                    modal.style.display = "none";
                }
            }

            var modal = document.getElementById("myModal");
            var btn = document.getElementById("signup3");
            var span = document.getElementsByClassName("close")[0];
            btn.onclick = function () {
                modal.style.display = "block";
            }
            span.onclick = function () {
                modal.style.display = "none";
            }
            window.onclick = function (event) {
                if (event.target == modal) {
                    modal.style.display = "none";
                }
            }

            var modal = document.getElementById("myModal");
            var btn = document.getElementById("signup4");
            var span = document.getElementsByClassName("close")[0];
            btn.onclick = function () {
                modal.style.display = "block";
            }
            span.onclick = function () {
                modal.style.display = "none";
            }
            window.onclick = function (event) {
                if (event.target == modal) {
                    modal.style.display = "none";
                }
            }
        </script>


    </body>
</html>
