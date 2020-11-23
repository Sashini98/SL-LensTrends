<%-- 
    Document   : MainEventHome
    Created on : Nov 12, 2020, 10:28:40 PM
    Author     : Madusha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
    boolean logged = (boolean) request.getAttribute("logged");
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://fonts.googleapis.com/css2?family=Be+Vietnam:wght@300&family=Didact+Gothic&family=Dr+Sugiyama&family=Poiret+One&family=Poppins:wght@300;700&family=Questrial&family=Tenali+Ramakrishna&display=swap" rel="stylesheet"> 
        <link href="https://fonts.googleapis.com/css2?family=Cinzel+Decorative:wght@400;700;900&family=Righteous&family=Sora:wght@600&family=Syne&family=Barlow:wght@400;500;700;800&display=swap" rel="stylesheet">  
        <link href="https://fonts.googleapis.com/css2?family=Lato&display=swap" rel="stylesheet">
        <link type="text/css" rel="stylesheet" href="../../CSS/Events/MainEventHome.css"/>
        <link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:wght@300;400;600&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Lobster+Two:wght@400;700&display=swap" rel="stylesheet">

    </head>
    <body style="background-color: #f7f6f9;">

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
                            <%
                                if (logged) {
                            %>
                        <li><a href="<%= request.getContextPath()%>/View/User/Cart.jsp" type="button"> Cart </a></li>
                        <li><a href="<%= request.getContextPath()%>/View/User/purchasehistory.jsp" type="button"> Purchase History </a></li>
                        <li><a href="<%= request.getContextPath()%>/View/User/ClientProfileUpdate.jsp" type="button"> Profile </a></li>
                            <%
                                }
                            %>

                    </ul>
                </div>

                <div class="notifyicn">
                    <a href="#" type="button"> <img src="../../Resources/Img/notification.png"> </a>

                </div>

                <div class="logout">
                    <%
                        if (!logged) {
                    %>
                    <a href="../login.jsp?loc=me" >Log In</a> 
                    <%
                    } else {
                    %>
                    <a href="../../LogOut?loc=me" type="button"> Log Out </a>
                    <%
                        }
                    %>
                </div>

            </div>

        </div>

        <div class="top">
            <ul>
                <li>We love meeting new people,<span style="color:#f7c947;">get in touch. </span></li>
                <li><p><span>It’s going to be a perfect blend of magical reality,</span> <br> as we transform  your events into a truly Magical Moment… </p></li>
            </ul>
        </div>

        <div class="middle">
            <!--            <div class="line">
                            <img src="../../Resources/Img/line.png"> 
                        </div>-->
            <ul>               
                <li>Make it always a different experience with our experts. </li>
                <li><p><span><a href="../Home.jsp">Lens Trends </a></span>is an open community for passionate Photographers.<br>  We help you meet the best photographer for your event,<br>light up your events most memorable  .</p></li>
            </ul>
        </div>


        <div class="box">
            <div class="box1" style="cursor: pointer;" onclick="window.location.href = '../../View/Events/Past Events.jsp';">
                <img src="../../Resources/Img/questions1.png">                
                <h2>Past Events</h2>
                <p>Do you want to see your past events?<br>may be the same, 
                    Browse your past events to get back the wonderful memories. </p>
                <a href="../../View/Fourm/BrowseQn.jsp" type="button">Browse</a>
            </div>

            <div class="box2" style="cursor: pointer;" onclick="window.location.href = '../../View/Events/EventsPost.jsp';">
                <img src="../../Resources/Img/search1.png">
                <h2>Post Events</h2>
                <p>Are You Ready to post your event?<br> We have the best photographers to conduct your event with a grand success. Make it a memorable one!</p>
                <a href="#" type="button">Post</a>
            </div>
        </div>


    </body>
</html>
