<%-- 
    Document   : Past Events
    Created on : Oct 27, 2020, 7:10:55 PM
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
        <link type="text/css" rel="stylesheet" href="../../CSS/Events/PastEvents.css"/>
        <link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:wght@300;400;600&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Lobster+Two:wght@400;700&display=swap" rel="stylesheet">
        <title> Past Event</title>




    </head>
    <body style="background-color: #eff0f1; background-image: url(../../Resources/Img/eventanime.svg);background-repeat: no-repeat;" onload="view()">

        <div class="fixedheader">  

            <div class="pageheader">

                <a href="../Home.jsp" type="button"> <img src="../../Resources/Img/7.png" height="55px" width="60px"> </a>
                <h1>Sl Lens Trends </h1>

                <div class="headerul">
                    <ul>

                        <li><a href="<%= request.getContextPath()%>/View/User/AdvancedSearch.jsp" type="button"> Photographs </a></li>
                        <li><a href="<%= request.getContextPath()%>/View/User/PhotographerSearch.jsp" type="button"> Photographers </a></li>
                        <li><a href="<%= request.getContextPath()%>/View/Fourm/MainForum.jsp" type="button"> Forum </a></li>
                        <li><a href="<%= request.getContextPath()%>/View/Events/MainEventHome.jsp" type="button"> Events </a></li>
                        <li><a href="<%= request.getContextPath()%>/View/User/Cart.jsp" type="button"> Cart </a></li>
                        <li><a href="<%= request.getContextPath()%>/View/User/purchasehistory.jsp" type="button"> Purchase History </a></li>
                        <li><a href="<%= request.getContextPath()%>/View/User/ClientProfileUpdate.jsp" type="button"> Profile </a></li>

                    </ul>
                </div>
                <div class="notifyicn">
                    <a href="#" type="button"> <img src="../../Resources/Img/notification.png"> </a>
                </div>

                <div class="logout">
                    <a href="../../LogOut?loc=me" type="button"> Logout </a>
                </div>

            </div>

        </div>
<!--        <div class="bg-image">
            <img src="../../Resources/Img/eventanime.svg">
        </div>-->
        <h2>Past Events</h2>
        <div class="main-content">

            <div class="events">                

                <p style="font-weight: bold;">Event Date: <span style="color: #514f4f; font-weight: normal; margin-left: 6%;">12 Nov 2020</span></p>
                <p style="font-weight: bold;">Event venue: <span style="color: #514f4f; font-weight: normal; margin-left: 5%;">Royal Hotel, New Mary Street, Colombo 12.</span></p>
                <p style="font-weight: bold;">Posted By: <span style="color: #514f4f; font-weight: normal; margin-left: 7%;">Aaketk18</span></p>
                <!--<p style="font-weight: bold;">Estimate Budget:</p>-->
                <span id="time">2020/11/02</span>   
            </div>


        </div>

        <div class="main-content">

            <div class="events">                

                <p style="font-weight: bold;">Event Date: <span style="color: #514f4f; font-weight: normal; margin-left: 6%;">12 Dec 2019</span></p>
                <p style="font-weight: bold;">Event venue: <span style="color: #514f4f; font-weight: normal; margin-left: 5%;">Station Road, Kokuvil, Jaffna</span></p>
                <p style="font-weight: bold;">Posted By: <span style="color: #514f4f; font-weight: normal; margin-left: 7%;">kesh18</span></p>
                <!--<p style="font-weight: bold;">Estimate Budget:</p>-->
                <span id="time">2020/09/07</span>   
            </div>


        </div>

        <div class="main-content">

            <div class="events">                

                <p style="font-weight: bold;">Event Date: <span style="color: #514f4f; font-weight: normal; margin-left: 6%;">2 March 2019</span></p>
                <p style="font-weight: bold;">Event venue: <span style="color: #514f4f; font-weight: normal; margin-left: 5%;">Manning place, New Mary Street, Colombo 12.</span></p>
                <p style="font-weight: bold;">Posted By: <span style="color: #514f4f; font-weight: normal; margin-left: 7%;">Shihara</span></p>
                <!--<p style="font-weight: bold;">Estimate Budget:</p>-->
                <span id="time">2020/09/02</span>   
            </div>


        </div>

        <div class="main-content">

            <div class="events">                

                <p style="font-weight: bold;">Event Date: <span style="color: #514f4f; font-weight: normal; margin-left: 6%;">4 April 2020</span></p>
                <p style="font-weight: bold;">Event venue: <span style="color: #514f4f; font-weight: normal; margin-left: 5%;">Arthusa lane, Wellawate, Colombo 12.</span></p>
                <p style="font-weight: bold;">Posted By: <span style="color: #514f4f; font-weight: normal; margin-left: 7%;">Madhusha</span></p>
                <!--<p style="font-weight: bold;">Estimate Budget:</p>-->
                <span id="time">2020/05/02</span>   
            </div>


        </div>

    </body>

</html>

