<%-- 
    Document   : PhotographerProfile
    Created on : Nov 1, 2020, 11:16:54 AM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">        
        <link type="text/css" rel="stylesheet" href="../../CSS/Photographer/PhotographerProfile.css">
        <link type="text/css" rel="stylesheet" href="../../CSS/Mainheader.css">
        <link href="https://fonts.googleapis.com/css2?family=Be+Vietnam:wght@300&family=Didact+Gothic&family=Dr+Sugiyama&family=Poiret+One&family=Poppins:wght@300;700&family=Questrial&family=Tenali+Ramakrishna&display=swap" rel="stylesheet"> 
        <link href="https://fonts.googleapis.com/css2?family=Cinzel+Decorative:wght@400;700&family=Righteous&family=Sora:wght@600&family=Syne&display=swap" rel="stylesheet">  
        <link href="https://fonts.googleapis.com/css2?family=Lato&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://use.typekit.net/mzc0rkn.css">

        <title>Profile</title>
    </head>
    <body style="background-color: #f9f9f9;">

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


        <div class="profilebox">
            <div class="user-image">
                <img src="../../Resources/Img/athavan.jpg">
            </div>
            <div class="username">
                <p>Mr.ATHAVAN T </p>
            </div>
            <div class="location">
                <p>Jaffna,Srilanka</p>
                <p>www.Ikongraphy.lk</p>
            </div>
            <div class="bio">
                <h3>ABOUT ME</h3>
                <p>My name is Daria, I come from Ukraine (now based in Amsterdam). I feel passionate about internet and mobile apps. Obsessed with data & metrics gathering.  <br> </p>
                <ul>
                    <li>Wild life</li>
                    <li>Portraits</li>
                    <li>Landscape</li>
                    <li>Astro</li>
                </ul>
            </div> 
            <div class="count">
                <table>
                    <tr>
                        <th>Rating</th>
                        <th id="color">68%</th>
                    </tr>
                    <tr>
                        <th>Uploads</th>
                        <th id="color">68</th>
                    </tr>
                    <tr>
                        <th>Completed Events</th>
                        <th id="color">20</th>
                    </tr>
                </table>
            </div>
            <div class="editprofile">
                <a type="button" href="../../View/Photographer/PhotographerUpdate.jsp"> Edit Your Profile </a>
            </div>
            
            <div class="member">
                <p>MEMBER SINCE: OCTOBER 31,2020</p>
            </div>
        </div>

    </body>
</html>
