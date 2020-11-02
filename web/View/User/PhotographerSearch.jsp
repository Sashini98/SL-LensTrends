<%-- 
    Document   : PhotographerSearch
    Created on : Oct 16, 2020, 7:13:45 PM
    Author     : kesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="../../CSS/User/PhotographerSearch.css"/>
        <link type="text/css" rel="stylesheet" href="../../CSS/header.css" />
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Be+Vietnam:wght@300&family=Didact+Gothic&family=Dr+Sugiyama&family=Poiret+One&family=Poppins:wght@300&family=Questrial&family=Tenali+Ramakrishna&display=swap" rel="stylesheet"> 
        <link href="https://fonts.googleapis.com/css2?family=Cinzel+Decorative:wght@400;700&family=Righteous&family=Sora:wght@600&family=Syne&display=swap" rel="stylesheet"> 
    </head>
    <body>
        
         <div class="fixedheader">  
            <div class="pageheader">
                <a href="../Home.jsp" type="button"> <img src="../../Resources/Img/7.png" height="55px" width="60px"> </a>
                <h1>Sl Lens Trends </h1>

                <div class="headerul">
                    <ul>

                         <li><a href="../Events/EventHome.jsp" type="button"> Events </a></li>
                        <li><a href="../User/AdvancedSearch.jsp" type="button"> Album </a></li>
                        <li><a href="ClientProfileUpdate" type="button"> Profile </a></li>
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
        <div>
            <header style="height: 90px;background-color: black;color: white">this place for navigation bar and all</header>
            <div style="display: flex;min-height: 88vh">
                <div style="position: fixed;width: 3%;height: 88vh;background-color: #FAFAFA;padding-top: 1.8%;padding-left: .5%;padding-right: 1.2%;border-right:solid 2px #EAEAEA">
                    <i class="material-icons sidemenu-icons">filter_alt</i>
                    <br><br>
                    <!--<i class="material-icons sidemenu-icons">camera_alt</i>-->
                </div>
                <iframe style="width: 23%;margin-left: 3.8%;border: none" src="PhotographerAdvancedFilter.jsp">

                </iframe>
                <div style="background-color: bisque;width: 100%;">
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
