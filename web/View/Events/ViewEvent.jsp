<%-- 
    Document   : ViewEvent
    Created on : Oct 24, 2020, 11:41:54 PM
    Author     : Madusha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://fonts.googleapis.com/css2?family=Be+Vietnam:wght@300&family=Didact+Gothic&family=Dr+Sugiyama&family=Poiret+One&family=Poppins:wght@300;700&family=Questrial&family=Tenali+Ramakrishna&display=swap" rel="stylesheet"> 
        <link href="https://fonts.googleapis.com/css2?family=Cinzel+Decorative:wght@400;700;900&family=Righteous&family=Sora:wght@600&family=Syne&family=Barlow:wght@400;500;700;800&display=swap" rel="stylesheet">  
        <link href="https://fonts.googleapis.com/css2?family=Lato&display=swap" rel="stylesheet">
        <link type="text/css" rel="stylesheet" href="../../CSS/Events/ViewEvent.css"/>
        <link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:wght@300;400;600&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Lobster+Two:wght@400;700&display=swap" rel="stylesheet">
        <title> View Event</title>




    </head>
    <body style="background-color: #f7f6f9;" onload="view()">

        <div class="fixedheader">  

            <div class="pageheader">

                <a href="../Home.jsp" type="button"> <img src="../../Resources/Img/7.png" height="55px" width="60px"> </a>
                <h1>Sl Lens Trends </h1>

                <div class="headerul">
                    <ul>

                        <li><a href="#" type="button"> Events </a></li>
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

        <div class="main-content">
<!--            <div class="side-box"> 
                <div class="home">
                    <ul>
                        <li><a href="../../View/Home.jsp"> Home </a></li>
                        <li><a href=""> Post An Event </a></li>
                        <li><a href=""> Past Events </a></li>
                    </ul>
                </div>
            </div>-->
            <div class="events">                
                <h2>Event Details</h2>
                <p>Event Date:  </p>
                <p>Event venue:</p>
                <p>Estimate Budget:</p>

                <button type="submit" class="Approvebtn">Accept</button>
                <button type="button" class="Closebtn">Reject</button>

            </div>

            <div class="clients">                
                <h2>Client Details</h2>
                <p>Client Name:  </p>
                <p>Email:</p>
                <p>Address:</p>
                <br><br><br>
            </div>
        </div>

    </body>
</html>
