<%-- 
    Document   : Cart
    Created on : Oct 12, 2020, 11:17:36 AM
    Author     : kesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../../CSS/User/Cart.css" type="text/css" rel="stylesheet"/>
        <link type="text/css" rel="stylesheet" href="../../CSS/header.css" />
        <link href="https://fonts.googleapis.com/css2?family=Roboto+Slab:wght@400&display=swap" rel="stylesheet">
        <title>My Favourites</title>
    </head>
    <body>
        
        <div class="fixedheader">  
            <div class="pageheader">
                <a href="../Home.jsp" type="button"> <img src="../../Resources/Img/7.png" height="55px" width="60px"> </a>
                <h1>Sl Lens Trends </h1>

                <div class="headerul">
                    <ul>

                        <li><a href="#" type="button"> Events </a></li>
                        <li><a href="../User/AdvancedSearch.jsp" type="button"> Album </a></li>
                        <li><a href="../User/ClientProfileUpdate.jsp" type="button"> Profile </a></li>
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
        
        
        <div class="content">

            <div class="ArtisiDiv">
                <div>
                    <h1 class="title">
                        My Favourites

                    </h1>
                    <span>
                        Items (9)
                    </span>
                </div>
                <div class="row"> 
                    <div class="column">
                        <img src="../../Resources/Img/Gallery Sample Images/Photographer/agnieszka-kowalczyk-44rwabC9jjI-unsplash.jpg" style="width:100%">
                        <img src="../../Resources/Img/Gallery Sample Images/Photographer/dexman-ten-hwe-eM5z-GX10p8-unsplash.jpg" style="width:100%">
                    </div>
                    <div class="column">
                        <img src="../../Resources/Img/Gallery Sample Images/Photographer/farhath-firows-n05yyHLZvsk-unsplash.jpg" style="width:100%">
                        <img src="../../Resources/Img/Gallery Sample Images/Photographer/ishan-kahapola-arachchi-5wpeSsXZ93s-unsplash.jpg" style="width:100%">
                    </div>
                    <div class="column">
                        <img src="../../Resources/Img/Gallery Sample Images/Photographer/julie-ricard-RmFX5bxHqCg-unsplash.jpg" style="width:100%">
                        <img src="../../Resources/Img/Gallery Sample Images/Photographer/kon-karampelas-3JhoWMa7WG8-unsplash.jpg" style="width:100%">

                    </div>  
                    <div class="column">
                        <img src="../../Resources/Img/Gallery Sample Images/Photographer/mike-swigunski-zDDQZgZjFtM-unsplash.jpg" style="width:100%">
                        <img src="../../Resources/Img/Gallery Sample Images/Photographer/rowan-heuvel-qfiSDPQD9Ws-unsplash.jpg" style="width:100%">
                        <img src="../../Resources/Img/Gallery Sample Images/Photographer/sasha-set-Y8wzb5b_st0-unsplash.jpg" style="width:100%">
                    </div>  
                </div>

            </div>

        </div>
    </body>
</html>
