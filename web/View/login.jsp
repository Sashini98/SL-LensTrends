<%-- 
    Document   : new
    Created on : Oct 13, 2020, 2:45:34 PM
    Author     : Sashini Shihara
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%

%>

<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="../CSS/log.css">
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300&family=Tenali+Ramakrishna&display=swap" rel="stylesheet"> 
        <link href="https://fonts.googleapis.com/css2?family=Be+Vietnam:wght@300&family=Didact+Gothic&family=Dr+Sugiyama&family=Poiret+One&family=Poppins:wght@300&family=Questrial&family=Tenali+Ramakrishna&display=swap" rel="stylesheet"> 
        <link href="https://fonts.googleapis.com/css2?family=Cinzel+Decorative:wght@400;700&family=Righteous&family=Sora:wght@600&family=Syne&display=swap" rel="stylesheet"> 
    </head>
    <body style="background-image: url(../Resources/Img/loginbg.jpg); background-size: 100%">
        <div class="container"> 

            <div class="logo">
                <img src="../Resources/Img/6.png">
            </div>
            <h1>Sign in</h1>

            <div class="caption">
                <p>
                    New User  <a href="../View/User/UserRegistration.jsp">Create an account</a><br><br>
                </p>
            </div>

            <div class="passinfo">
                <form action="../Login" method="POST">
                    <fieldset class="cpass">
                        <legend> Email Address </legend>
                        <input type="text" id="email" name="email" placeholder="Email">
                    </fieldset>

                    <fieldset class="rpass">
                        <legend> Password </legend>
                        <input type="password" id="pw" name="pw" placeholder="Password">
                    </fieldset>
                
                <div class="change">
                    <input type="submit" id="login" value="Login">
                </div>

                <p>
                    <a href="ResetPwd.jsp">Forgot Password?</a><br><br>
                </p>
                </form>
                <font size="2px">Protected by reCAPTCHA and subject to the Google Privacy Policy and Terms of Services.</font>
            </div>
        </div>
<!--                <div class="slideshow-container">
        
                    <div class="mySlides fade">
                        <div class="img"><img src="../Resources/Img/user.png" style="width:15%;height:15%;margin-left:94%;margin-top:4%;margin-bottom: -2.3%;"></div>
                        <img src="../Resources/Img/loginbg.jpg" style="width:100%">
                        <div class="form"> 
                            <form action="../Login" method="POST">
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
                            <form action="../Login" method="POST">
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
                            <form action="../Login" method="POST">
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
                            <form action="../Login" method="POST">
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
                            <form action="../Login" method="POST">
                                <br><br><br>
                                
                                <input type="text" id="email" name="email" placeholder="Email">
                                <br><br>
                                
                                <input type="password" id="pw" name="pw" placeholder="Password">
                                <br>
                                
                                <a href="ResetPwd.jsp">Forgot Password?</a><br><br>
                                <input type="submit" id="login"  value="Login"><br><br>
        
                            </form>
                        </div>
                    </div>
        
                    <div class="mySlides fade">
                        <div class="img"><img src="../Resources/Img/user.png" style="width:15%;height:15%;margin-left:94%;margin-top:4%;margin-bottom: -2.3%;"></div>
                        <img src="../Resources/Img/loginbg6.jpg" style="width:100%">
                        <div class="form"> 
                            <form action="../Login" method="POST">
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
                            <form action="../Login" method="POST">
                                <br><br><br>
                                <input type="text" id="email" name="email" placeholder="Email">
                                <br><br>
                                <input type="password" id="pw" name="pw" placeholder="Password"><br>
                                <a href="ResetPwd.jsp">Forgot Password?</a><br><br>
                                <input type="submit" id="login" value="Login">
                                <br><br>
        
                            </form>
                        </div>
                    </div>
        
        
                    <div class="mySlides fade">
                        <div class="img"><img src="../Resources/Img/user.png" style="width:15%;height:15%;margin-left:94%;margin-top:4%;margin-bottom: -2.3%;"></div>
                        <img src="../Resources/Img/loginbg8.jpg" style="width:100%">
                        <div class="form"> 
                            <form action="../Login" method="POST">
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
                    <span class="dot"></span>-->
        <!--        </div>-->

        <!--        <script>
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
                        if (slideIndex > slides.length) {
                            slideIndex = 1
                        }
                        for (i = 0; i < dots.length; i++) {
                            dots[i].className = dots[i].className.replace(" active", "");
                        }
                        slides[slideIndex - 1].style.display = "block";
                        dots[slideIndex - 1].className += " active";
                        setTimeout(showSlides, 5000);
                    }
                </script>-->

    </body>
</html> 
