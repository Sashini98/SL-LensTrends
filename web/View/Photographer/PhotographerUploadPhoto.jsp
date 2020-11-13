<%-- 
    Document   : PhotographerUploadPhoto
    Created on : Nov 13, 2020, 1:32:35 AM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://fonts.googleapis.com/css2?family=Be+Vietnam:wght@300&family=Didact+Gothic&family=Dr+Sugiyama&family=Poiret+One&family=Poppins:wght@300;700&family=Questrial&family=Tenali+Ramakrishna&display=swap" rel="stylesheet"> 
        <link href="https://fonts.googleapis.com/css2?family=Cinzel+Decorative:wght@400;700;900&family=Righteous&family=Sora:wght@600&family=Syne&family=Barlow:wght@400;500;700;800&display=swap" rel="stylesheet">  
        <link href="https://fonts.googleapis.com/css2?family=Lato&display=swap" rel="stylesheet">
        <link type="text/css" rel="stylesheet" href="../../CSS/header.css"/>
        <link type="text/css" rel="stylesheet" href="../../CSS/Photographer/PhotographerUploadPhoto.css"/>
        <link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:wght@300;400;600&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Lobster+Two:wght@400;700&display=swap" rel="stylesheet">
        <title>Upload</title>
    </head>
    <body style="background-color: #f9f9f9;">

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
        </div>

        <div class="inside-header">
            <ul>
                <li><a href="#" type="button"  autofocus>To Submit</a></li>
                <li><a href="#" type="button">In Review</a></li>
                <li><a href="#" type="button">Not Accepted</a></li>
                <li><a href="#" type="button">Reviewed</a></li>
            </ul>                    
        </div>

        <div class="content">
            <div class="image-box">
                <input type="radio" id="r1" name="radio" checked />
                <label for="r1">
                    <img src="../../Resources/Img/profile/l1.jpg" id="ls1">
                </label>

                <input type="radio" id="r2" name="radio" />
                <label for="r2">
                    <img src="../../Resources/Img/profile/l2.jpg" id="ls2">
                </label>

                <input type="radio" id="r3" name="radio" />
                <label for="r3">
                    <img src="../../Resources/Img/profile/l3.jpg" id="ls3">
                </label>

                <input type="radio" id="r4" name="radio" />
                <label for="r4">
                    <img src="../../Resources/Img/profile/l4.jpg" id="ls4"> 
                </label>

                <input type="radio" id="r5" name="radio" />
                <label for="r5">
                    <img src="../../Resources/Img/profile/p1.jpg" id="p1">
                </label>

                <input type="radio" id="r6" name="radio" />
                <label for="r6">
                    <img src="../../Resources/Img/profile/p2.jpg" id="p2">
                </label>

                <input type="radio" id="r7" name="radio" />
                <label for="r7">
                    <img src="../../Resources/Img/profile/p3.jpg" id="p3">
                </label>

                <input type="radio" id="r8" name="radio" />
                <label for="r8">
                    <img src="../../Resources/Img/profile/p4.jpg" id="p4">
                </label>

            </div>

            <div class="details">
                <img src="../../Resources/Img/delete.svg" id="delete">
                <div class="images">
                    <img src="../../Resources/Img/profile/l1.jpg" style="visibility: visible" id="image">                   
                </div>

            </div>
        </div>

        <script type="text/javascript" src="../../JS/Photohrapher/PhotographerUploadPhoto.js"></script>
    </body>
</html>
