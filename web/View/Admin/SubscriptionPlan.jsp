<%-- 
    Document   : SubscriptionPlan
    Created on : Nov 3, 2020, 8:19:51 AM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <link type="text/css" rel="stylesheet" href="../../CSS/header.css"/>
        <link type="text/css" rel="stylesheet" href="../../CSS/Admin/SubscriptionPlan.css"/>
        <link href="https://fonts.googleapis.com/css2?family=Be+Vietnam:wght@300&family=Didact+Gothic&family=Dr+Sugiyama&family=Poiret+One&family=Poppins:wght@300;700&family=Questrial&family=Tenali+Ramakrishna&display=swap" rel="stylesheet"> 
        <link href="https://fonts.googleapis.com/css2?family=Cinzel+Decorative:wght@400;700;900&family=Righteous&family=Sora:wght@600&family=Syne&family=Barlow:wght@400;500;700;800&display=swap" rel="stylesheet">  
        <link href="https://fonts.googleapis.com/css2?family=Lato&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://use.typekit.net/mzc0rkn.css">
        <title>Subscription</title>
    </head>
    <body style="background-color: #f9f9f9;">
        <!--        <div class="fixedheader">  
                    <div class="pageheader">
                        <a href="../Home.jsp" type="button"> <img src="../../Resources/Img/7.png" height="55px" width="60px"> </a>
                        <h1>Sl Lens Trends </h1>
        
                        <div class="headerul">
                            <ul>
        
                                <li><a href="#" type="button"> Events </a></li>
                                <li><a href="#" type="button"> Album </a></li>
                                <li><a href="#" type="button"> Profile </a></li>
                                <li><a href="#" type="button"> Settings </a></li>
        
                            </ul>
                        </div>
        
                        <div class="notifyicn">
                            <a href="#" type="button"> <img src="../../Resources/Img/notification.png"> </a>
        
                        </div>
        
                        <div class="logout">
                            <a href="#" type="button"> Logout </a>
                        </div>
        
                    </div>
        
                </div>-->
        <div class="top">
            <div class="logo">
                <img src="../../Resources/Img/7.png">
                <h1>Sl Lens Trends</h1>
            </div>
            <div class="heading">
                <p id='p1'>Plans and Pricing</p> <br>
                <p id='p2'>SELECT YOUR AFFORDABLE PACKAGE</p>
            </div>
            <div class="options">
                <ul>
                    <li><a href="../Home.jsp">Home</a></li>
                    <li><a href="../login.jsp">Login</a></li>
                </ul>
            </div>
        </div>

        <div class="content">
            <div class="box" id="box1">
                <h2>Free</h2>
                <div class="icon1">
                    <img src="../../Resources/Img/pot1.png">
                </div>
                <div class="hover-content">
                    <p>0$<span style="font-family:'Poppins', sans-serif; font-size:50%">/month</span></p>
                </div>
              
                    <img src="../../Resources/Img/close.png" id="close">
                    <p id="fix-price">Fix the price</p>
                
                    <div class="arrow">
                        <a href="#" type="button" id="free"><img src="../../Resources/Img/arrow.png"></a>
                    </div>
            </div>
            <div class="box" id="box-color1">
                <h2>Standard</h2>
                <div class="icon">
                    <img src="../../Resources/Img/pot2.png">
                </div> <br> <br> <br> 
                <div class="hover-content">
                    <p>40$<span style="font-family:'Poppins', sans-serif; font-size:50%">/month</span></p>
                </div>
               
                    <img src="../../Resources/Img/check-mark.png" id="close">
                    <p id="fix-price">Fix the price up to 20$</p>
                    
                    <div class="arrow">
                        <a href="#" type="button" id="standard"><img src="../../Resources/Img/arrow.png"></a>
                    </div>
               
            </div>
            <div class="box" id="box-color2">
                <h2>Premium</h2>
                <div class="icon">                    
                    <img src="../../Resources/Img/pot3.png">
                </div> <br> <br> <br>
                <div class="hover-content">
                    <p>85$<span style="font-family:'Poppins', sans-serif; font-size:50%">/month</span></p>
                </div>
              
                    <img src="../../Resources/Img/close.png" id="close">
                    <p id="fix-price">Fix the price up to 60$</p>
                    
                    <div class="arrow">
                        <a href="#" type="button" id="premium"><img src="../../Resources/Img/arrow.png"></a>
                    </div>
                

            </div>            

        </div>

    </body>
</html>
