<%-- 
    Document   : UserViewPhotographerProfile
    Created on : Oct 23, 2020, 6:10:09 PM
    Author     : kesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link type="text/css" rel="stylesheet" href="../../CSS/Photographer/UserViewPhotographerProfile.css" />
        <link type="text/css" rel="stylesheet" href="../../CSS/header.css" />
        <link href="https://fonts.googleapis.com/css2?family=Be+Vietnam:wght@300&family=Didact+Gothic&family=Dr+Sugiyama&family=Poiret+One&family=Poppins:wght@300&family=Questrial&family=Tenali+Ramakrishna&display=swap" rel="stylesheet"> 
        <link href="https://fonts.googleapis.com/css2?family=Cinzel+Decorative:wght@400;700&family=Righteous&family=Sora:wght@600&family=Syne&display=swap" rel="stylesheet">  
        <title>JSP Page</title>
    </head>
    <body>
        <div class="content">

            <div class="fixedheader">

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
                <div class="profile-header">
                    <div class="user-detail">
                        <div class="user-image">
                            <img src="../../Resources/Img/athavan.jpg">
                        </div>
                        <div class="user-data">
                            <h2>Theivendram Athavan</h2>
                            <span class="post-label">Wildlife</span>
                            <span class="post-label">Portraits</span>
                            <span class="post-label">Fashion</span>
                            <span class="post-label">Landscape</span>
                            <p>Founder <strong>IkonGraphy</strong><br>
                                <i>Jaffna, Srilanka</i> 
                            </p>
                        </div>
                        <div class="social-icons">
                            <img src="../../Resources/Img/facebook.png">
                            <img src="../../Resources/Img/instagram.png">
                            <img src="../../Resources/Img/twitter.png">
                            <img src="../../Resources/Img/google.png">                       
                            <br> <br>
                        </div>                                
                    </div>				
                </div>

            </div>

            <div class="photographBody">
                <div class="photographs" style="">
                    <div class="row"> 
                        <div class="column">
                            <img src="../../Resources/Img/Gallery Sample Images/a-stark-n40XRU-eSSI-unsplash.jpg" style="width:100%">
                            <img src="../../Resources/Img/Gallery Sample Images/artem-sapegin-8c6eS43iq1o-unsplash.jpg" style="width:100%">
                            <img src="../../Resources/Img/Gallery Sample Images/chris-barbalis-vazZtmYFgFY-unsplash.jpg" style="width:100%">
                        </div>
                        <div class="column">
                            <img src="../../Resources/Img/Gallery Sample Images/jonathan-zerger-yzzJbqQ1O-Y-unsplash.jpg" style="width:100%">
                            <img src="../../Resources/Img/Gallery Sample Images/cristina-gottardi-iEGXkSXRXN4-unsplash.jpg" style="width:100%">
                        </div>
                        <div class="column">
                            <img src="../../Resources/Img/Gallery Sample Images/lefty-kasdaglis-DLwF8G6GuyY-unsplash.jpg" style="width:100%">
                            <img src="../../Resources/Img/Gallery Sample Images/james-peacock-AxYOB1v9TsU-unsplash.jpg" style="width:100%">

                        </div>  
                        <div class="column">
                            <img src="../../Resources/Img/Gallery Sample Images/marco-secchi-JcisCWrKUOA-unsplash.jpg" style="width:100%">
                            <img src="../../Resources/Img/Gallery Sample Images/othmar-ortner-qy8l3MUSl4Y-unsplash.jpg" style="width:100%">
                            <img src="../../Resources/Img/Gallery Sample Images/raphael-stager-MPAFS1K7oYE-unsplash.jpg" style="width:100%">
                        </div>  
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
