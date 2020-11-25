<%-- 
    Document   : Home
    Created on : Oct 15, 2020, 8:49:41 AM
    Author     : kesh
--%>

<%@page import="Model.Client"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    boolean logged = (Boolean) request.getAttribute("logged");
    Client c = new Client();

    if (logged) {
        c = (Client) session.getAttribute("loggedClient");
    }
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link type="text/css" rel="stylesheet" href="<%= request.getContextPath()%>/CSS/Home.css"/>
        <link type="text/css" rel="stylesheet" href="<%= request.getContextPath()%>/CSS/header.css"/>
        <link href="https://fonts.googleapis.com/css2?family=Roboto+Slab:wght@500&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Sansita+Swashed:wght@600&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Be+Vietnam:wght@300&family=Didact+Gothic&family=Dr+Sugiyama&family=Poiret+One&family=Poppins:wght@300&family=Questrial&family=Tenali+Ramakrishna&display=swap" rel="stylesheet"> 
        <link href="https://fonts.googleapis.com/css2?family=Cinzel+Decorative:wght@400;700&family=Righteous&family=Sora:wght@600&family=Syne&display=swap" rel="stylesheet"> 
        <script src="https://kit.fontawesome.com/9dd75719fe.js" crossorigin="anonymous"></script>
        <title>SL-Lesns Trends</title>

    </head>
    <body>

        <div class="fixedheader" style="z-index: 20;">  
            <div class="pageheader">
                <a href="Home.jsp" type="button"> <img src="<%= request.getContextPath()%>/Resources/Img/7.png" height="55px" width="60px"> </a>
                <h1>Sl Lens Trends </h1>

                <div class="headerul" style="margin-left: 30px;">
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
                        <!--<li><a href="Notifications/notificationsHome.jsp" type="button"> Notifications </a></li>-->

                    </ul>
                </div>

                <div class="notifyicn">
                    <a href="<%= request.getContextPath()%>/View/Notifications/notificationsHome.jsp" type="button" style=""> <img src="<%= request.getContextPath()%>/Resources/Img/notification.png"> </a>

                </div>

                <div class="logout">
                    <%
                        if (!logged) {
                    %>
                    <a href="<%= request.getContextPath()%>/View/login.jsp?loc=ch" >Login</a> 
                    <%
                    } else {
                    %>
                    <a href="../LogOut?loc=ch" >Log Out</a> 
                    <%
                        }
                    %>
                </div>
            </div>
        </div>
        <%
            if (!logged) {
        %>
        <div class="HeaderPart" id="HeaderPart">
            <video playsinline autoplay muted loop poster="polina.jpg" id="bgvid" class="bgvideo">
                <source src="../Resources/video/bg.mp4" type="video/mp4">
            </video>
            <%
            } else {
            %>

            <div class="HeaderPart" id="HeaderPart" style=" background : url('../Resources/Img/homebg-after-login.jpg') no-repeat center;  background-size: cover;">

                <%
                    }
                %>
                <div class="Welcome">
                    <%
                        if (!logged) {
                    %>
                    <h1 class="WelcomeText1">Welcome To SL-Lens Trends!</h1>

                    <h3 class="WelcomeText2">IT'S NICE TO MEET YOU</h3>
                    <%
                    } else {
                    %>

                    <h1 class="WelcomeText1">Hello <%= c.getFname()%>!</h1>

                    <h3 class="WelcomeText2">IT'S NICE TO MEET YOU</h3>

                    <%
                        }
                    %>
                    <a class="WelcomeBtn" href="#services" role="button" >Our Services</a>
                </div>
            </div>
            <div class="services" id="services">
                <h3 class="ServicesTopic">Our Services</h3>
                <div class="ServicesContent" style="display: flex;">
                    <div>
                        <span class="fa-stack fa-4x" style="color: #0092cc;">
                            <i class="fa fa-circle fa-stack-2x text-info"></i>
                            <i class="fa fa-search  fa-stack-1x fa-inverse"></i>
                        </span>
                        <br />
                        <br />
                        <span style="font-size: 20px;">Search Photographs</span>
                        <br />
                        <span>
                            Find the most captivating photographs to suite your search. 
                        </span>
                    </div> 
                    <div>
                        <span class="fa-stack fa-4x" style="color: #0092cc;">
                            <i class="fa fa-circle fa-stack-2x text-info"></i>
                            <i class="fa fa-camera  fa-stack-1x fa-inverse"></i>
                        </span>
                        <br />
                        <br />
                        <span style="font-size: 20px;">View Photographers</span>
                        <br />
                        <span>
                            Search the best talent pool of photographers in Sri Lanka.
                        </span>
                    </div>
                    <div>
                        <span class="fa-stack fa-4x" style="color: #0092cc;">
                            <i class="fa fa-circle fa-stack-2x text-info"></i>
                            <i class="far fa-clipboard fa-stack-1x fa-inverse"></i>
                        </span>
                        <br />
                        <br />
                        <span style="font-size: 20px;">Post Your Events</span>
                        <br />
                        <span>
                            Let us know about your event. We got you covered. 

                        </span>

                    </div>
                </div>
                <div class="ServicesContent" style="display: flex;">
                    <div>
                        <span class="fa-stack fa-4x" style="color: #0092cc;">
                            <i class="fa fa-circle fa-stack-2x text-info"></i>
                            <i class="fas fa-question fa-stack-1x fa-inverse"></i>
                        </span>
                        <br />
                        <br />
                        <span style="font-size: 20px;">Get Answers For Your Questions</span>
                        <br />
                        <span>
                            Ask away your questions to get expertise answers.   
                        </span>
                    </div>
                    <div>
                        <span class="fa-stack fa-4x" style="color: #0092cc;">
                            <i class="fa fa-circle fa-stack-2x text-info"></i>
                            <i class="fas fa-phone fa-stack-1x fa-inverse"></i>
                        </span>
                        <br />
                        <br />
                        <span style="font-size: 20px;">Connect Photographers</span>
                        <br />
                        <span>
                            Getting touch with your photographer once your event is approved.
                        </span>
                    </div>
                </div>
            </div>

            <div class="about" style="position: relative; margin-top: 100px;">
                <h3 class="ServicesTopic">About SL-Lens Trends</h3>
                <hr  style="height: 75%; position: absolute; margin-left: 49.99%; z-index: 0; margin-top: 10%;"/>
                <div class="aboutContent">
                    <div>
                        <div class="about-heading" style="display: flex; flex-direction: column; align-items: flex-end; ">
                            <h4>2020</h4>
                            <h4 class="subheading">Our Humble Beginning</h4>
                        </div>

                    </div>
                    <div style="z-index: 10;" class="aboutItems">
                        <img class="aboutImg" src="<%= request.getContextPath()%>/Resources/Img/germ-plant-seedling-live.jpg"/>

                    </div>
                    <div>

                    </div>
                    <div>

                    </div>
                    <div style="z-index: 10;" class="aboutItems">
                        <img class="aboutImg" src="<%= request.getContextPath()%>/Resources/Img/Our-Mission.jpg"/>

                    </div>
                    <div>
                        <div>
                            <h4>Our Vision</h4>

                        </div>
                        <div >
                            <p class="text-muted">
                            <p>
                                Be the leading professional source of creating
                            </p>
                            <p>
                                a worldwide client base for Sri Lankan photographers
                            </p>
                            </p>
                        </div>

                    </div>
                    <div>
                        <div style="display: flex; flex-direction: column; align-items: flex-end;">
                            <h4>Our Mission</h4>
                        </div>
                        <div  style="display: flex; flex-direction: column; align-items: flex-end; font-size: 14px;">
                            <p>
                                To create a vibrant community of successful 
                            </p>
                            <p>
                                professional SriLankan photographers and make 
                            </p>
                            <p>
                                it easy for clients to access their work.
                            </p>
                            
                        </div>

                    </div>
                    <div style="z-index: 10;" class="aboutItems">
                        <img class="aboutImg" src="<%= request.getContextPath()%>/Resources/Img/mission.jpg"/>

                    </div>
                    <div>

                    </div>
                    <div>

                    </div>
                    <div style="z-index: 10;" class="aboutItems">
                        <div  class="abouttext">
                            <h4>Be Part<br>&nbsp;Of Our<br>&nbsp;Story!</h4>
                        </div>
                    </div>
                    <div>

                    </div>
                </div>
            </div>

            <div class="team">
                <div class="teamContent">
                    <div class="teamMember">
                        <img class="teamImg" src="<%= request.getContextPath()%>/Resources/Img/IMG_2019.jpg"/>
                        <br />
                        <br />
                        <h4 style="font-size: 22px;">B.R.H.K. Balasuriya</h4>
                        <br />
                        <div style="display: flex; flex-direction: column; align-items: center; font-size: 14px; color: RGB(134,142,150)">
                            <span >Undergraduate</span>
                            <span>University of Colombo</span>
                            <span>School of Computing</span>
                        </div>
                    </div>
                    <div class="teamMember">
                        <img class="teamImg" src="<%= request.getContextPath()%>/Resources/Img/Screenshot_2020-10-16-08-26-52-621_com.whatsapp.jpg"/>
                        <br />
                        <br />
                        <h4 style="font-size: 22px;">Theivendram Athavan</h4>
                        <br />
                        <div style="display: flex; flex-direction: column; align-items: center; font-size: 14px; color: RGB(134,142,150)">
                            <span >Undergraduate</span>
                            <span>University of Colombo</span>
                            <span>School of Computing</span>
                        </div>
                    </div>
                    <div class="teamMember">
                        <img class="teamImg" src="<%= request.getContextPath()%>/Resources/Img/Screenshot_2020-10-16-08-27-05-933_com.whatsapp.jpg"/>
                        <br />
                        <br />
                        <h4 style="font-size: 22px;">R.M.S. Shihara</h4>
                        <br />
                        <div style="display: flex; flex-direction: column; align-items: center; font-size: 14px; color: RGB(134,142,150)">
                            <span >Undergraduate</span>
                            <span>University of Colombo</span>
                            <span>School of Computing</span>
                        </div>

                    </div>
                    <div class="teamMember">
                        <img class="teamImg" src="<%= request.getContextPath()%>/Resources/Img/Screenshot_2020-10-16-08-27-22-000_com.whatsapp.jpg"/>
                        <br />
                        <br />
                        <h4 style="font-size: 22px;">M. Mahendran</h4>
                        <br />
                        <div style="display: flex; flex-direction: column; align-items: center; font-size: 14px; color: RGB(134,142,150)">
                            <span >Undergraduate</span>
                            <span>University of Colombo</span>
                            <span>School of Computing</span>
                        </div>

                    </div>
                </div>
            </div>

            <div class="ContactUs" >

                <h2 style="text-align: center; color: white;" class="ServicesTopic">Contact Us</h2>

                <div class="ContactfFrom" style="display: flex;padding: 0px 15%;">
                    <div style="display: flex; flex-direction: column; width: 50%;">
                        <div class="form-group">
                            <input class="inputField" type="text" placeholder="Your Name *" >

                        </div>
                        <div class="form-group">
                            <input class="inputField" type="email" placeholder="Your Email *">

                        </div>
                        <div class="form-group">
                            <input class="inputField" type="tel" placeholder="Your Phone *" >

                        </div>
                    </div>
                    <div style="width: 50%; display: flex; flex-direction: column;" >
                        <div class="form-group" style="height: 100%;">
                            <textarea class="inputField" style="height: 100%;" placeholder="Your Message *"></textarea>

                        </div>
                    </div>

                </div>
                <div style="width: 100%; text-align: center;">
                    <button class="sendMessageBtn">Send Message</button>
                </div>
            </div>

            <script type="text/javascript" src="<%= request.getContextPath()%>/JS/Home.js" />

    </body>
</html>
