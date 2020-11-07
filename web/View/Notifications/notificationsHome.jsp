<%-- 
    Document   : notificationsHome
    Created on : Nov 2, 2020, 10:16:16 AM
    Author     : Sashini Shihara
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://fonts.googleapis.com/css2?family=Be+Vietnam:wght@300&family=Didact+Gothic&family=Dr+Sugiyama&family=Poiret+One&family=Poppins:wght@300;700&family=Questrial&family=Tenali+Ramakrishna&display=swap" rel="stylesheet"> 
        <link href="https://fonts.googleapis.com/css2?family=Cinzel+Decorative:wght@400;700;900&family=Righteous&family=Sora:wght@600&family=Syne&family=Barlow:wght@400;500;700;800&display=swap" rel="stylesheet">  
        <link href="https://fonts.googleapis.com/css2?family=Lato&display=swap" rel="stylesheet">
        <link type="text/css" rel="stylesheet" href="../../CSS/forum/BrowseQn.css"/>
        <link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:wght@300;400;600&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Lobster+Two:wght@400;700&display=swap" rel="stylesheet">
        <title>Notifications</title>




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
                <div class="searchInput">

                    <input type="text" placeholder="Search">                   


                </div>
                <div class="notifyicn">
                    <a href="#" type="button"> <img src="../../Resources/Img/notification.png"> </a>
                </div>

                <div class="logout">
                    <a href="#" type="button"> Logout </a>
                </div>

            </div>

        </div>

    
    
    <br><br>
    
    <div class="sec"style=" border-top: 10px solid greenyellow; ">
                    <p style="font-size: 15px; color: darkblue">Client Name</p> <p style="font-size: 15px; color: darkgreen;">Date</p><br>
                    <h8>Event title</h8><br><br><br>
                    <label>Event Date</label><br><br><br>
                    <a href="">Event Type</a><br><br>
                   <input type="button" value="View"><br>

</div>
    
    <br><br>
    
    <div class="sec"style=" border-top: 10px solid greenyellow; ">
                    <p style="font-size: 15px; color: darkblue">Event name</p> <p style="font-size: 15px; color: darkgreen;">Date</p><br>
                    <h8>Photographer Name</h8><br><br><br>
                    <label>Status</label><br><br><br>
                    <input type="button" value="View"><br>

</div>
    
    <br><br>
    
    <div class="sec"style=" border-top: 10px solid greenyellow; ">
                    <p style="font-size: 15px; color: darkblue">Photograph Title</p> <p style="font-size: 15px; color: darkgreen;">Date</p><br>
                    <label>Status</label><br><br><br>
                    <p2 style="font-size: 13px; color: darkgrey;">If rejected -Reason</p2><br>
                    <input type="button" value="View"><br>

</div>
    </body>
</html>
