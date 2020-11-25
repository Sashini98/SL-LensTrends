<%-- 
    Document   : notificationsHome
    Created on : Nov 2, 2020, 10:16:16 AM
    Author     : Sashini Shihara
--%>
<%
    String logged = (String) request.getAttribute("loggedAs");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://fonts.googleapis.com/css2?family=Be+Vietnam:wght@300&family=Didact+Gothic&family=Dr+Sugiyama&family=Poiret+One&family=Poppins:wght@300;700&family=Questrial&family=Tenali+Ramakrishna&display=swap" rel="stylesheet"> 
        <link href="https://fonts.googleapis.com/css2?family=Cinzel+Decorative:wght@400;700;900&family=Righteous&family=Sora:wght@600&family=Syne&family=Barlow:wght@400;500;700;800&display=swap" rel="stylesheet">  
        <link href="https://fonts.googleapis.com/css2?family=Lato&display=swap" rel="stylesheet">
        <link type="text/css" rel="stylesheet" href="../../CSS/Notifications/NotificationHome.css"/>
        <link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:wght@300;400;600&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Lobster+Two:wght@400;700&display=swap" rel="stylesheet">
        <title>Notifications</title>

    </head>
    <body style="background-color: #f7f6f9;" onload="view()">

        <div class="fixedheader">  

            <div class="pageheader">
                <%
                    if (logged.equals("client") || logged.equals("nl")) {
                %>
                <a href="../Home.jsp" type="button"> <img src="../../Resources/Img/7.png" height="55px" width="60px"> </a>
                    <%
                    } else if (logged.equals("photographer")) {
                    %>

                <a href="../PhotographerHome.jsp" type="button"> <img src="../../Resources/Img/7.png" height="55px" width="60px"> </a>
                    <%
                        }
                    %>
                <h1>Sl Lens Trends </h1>

                <div class="headerul">
                    <ul>
                        <%
                            if (logged.equals("client") || logged.equals("nl")) {
                        %>

                        <li><a href="<%= request.getContextPath()%>/View/User/AdvancedSearch.jsp" type="button"> Photographs </a></li>
                        <li><a href="<%= request.getContextPath()%>/View/User/PhotographerSearch.jsp" type="button"> Photographers </a></li>
                        <li><a href="<%= request.getContextPath()%>/View/Fourm/MainForum.jsp" type="button"> Forum </a></li>
                        <li><a href="<%= request.getContextPath()%>/View/Events/MainEventHome.jsp" type="button"> Events </a></li>
                            <%
                                if (logged.equals("client")) {
                            %>
                        <li><a href="<%= request.getContextPath()%>/View/User/Cart.jsp" type="button"> Cart </a></li>
                        <li><a href="<%= request.getContextPath()%>/View/User/purchasehistory.jsp" type="button"> Purchase History </a></li>
                        <li><a href="<%= request.getContextPath()%>/View/User/ClientProfileUpdate.jsp" type="button"> Profile </a></li>
                            <%
                                }
                            } else if (logged.equals("photographer")) {
                            %>
                        <li><a href="<%= request.getContextPath()%>/View/Fourm/MainForum.jsp" type="button"> Forum </a></li>
                        <li><a href="<%= request.getContextPath()%>/View/User/PhotographerSearch.jsp" type="button"> Photographers </a></li>
                        <li><a href="<%= request.getContextPath()%>/View/Photographer/PhotographerUploadPhoto.jsp" type="button"> Upload </a></li>
                        <li><a href="<%= request.getContextPath()%>/View/Photographer/PhotographerProfile.jsp" type="button"> Profile </a></li>

                        <%
                            }
                        %>
                    </ul>
                </div>
                <div class="notifyicn">
                    <a href="<%= request.getContextPath()%>/View/Notifications/notificationsHome.jsp" type="button"> <img src="../../Resources/Img/notification.png"> </a>
                </div>

                <div class="logout">
                    <%
                        if (!logged.equals("nl")) {
                    %>
                    <a href="../../LogOut?loc=nh" type="button"> Logout </a>
                    <%
                    } else {
                    %>
                    <a href="../login.jsp?loc=nh" >Login</a> 
                    <%
                        }
                    %>
                </div>

            </div>

        </div>
        <div class="main-content">
            <a href="../Events/ViewEvent.jsp" style="text-decoration: none; color: black;">
                <div class="notifications">                
                    <h2>Annual Get together</h2>
                    <p>Event Date:  </p>
                    <p>Event venue: Royal Hotel, New Mary Street, Colombo 12.</p>
                    <p>Estimate Budget:</p>
                    <span id="time">2020/11/02</span>   
                    <div class="updown">
                        <a href="#" type="button"><img src="../../Resources/Img/up.png"></a> 
                        <span id="up">Mark as read</span>
                    </div>
                </div>
            </a>
            <div class="notifications">                
                <h2>Annual Get together</h2>
                <p>Event Date:  </p>
                <p>Event venue: Royal Hotel, New Mary Street, Colombo 12.</p>
                <p>Estimate Budget:</p>
                <span id="time">2020/11/02</span>   
                <div class="updown">
                    <a href="#" type="button"><img src="../../Resources/Img/up.png"></a> 
                    <span id="up">Mark as read</span>
                </div>
            </div>

            <div class="notifications">                
                <h2>Annual Get together</h2>
                <p>Event Date:  </p>
                <p>Event venue: Royal Hotel, New Mary Street, Colombo 12.</p>
                <p>Estimate Budget:</p>
                <span id="time">2020/11/02</span>   
                <div class="updown">
                    <a href="#" type="button"><img src="../../Resources/Img/up.png"></a> 
                    <span id="up">Mark as read</span>
                </div>
            </div>




        </div>
        <!--    <div class="sec"style=" border-top: 10px solid greenyellow; ">
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
        
        </div>-->
    </body>
</html>
