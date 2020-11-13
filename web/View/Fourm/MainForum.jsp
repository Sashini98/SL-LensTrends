<%-- 
    Document   : MainForum
    Created on : Nov 4, 2020, 10:21:08 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
    String loggedAs = (String) request.getAttribute("loggedAs");
%>


<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://fonts.googleapis.com/css2?family=Be+Vietnam:wght@300&family=Didact+Gothic&family=Dr+Sugiyama&family=Poiret+One&family=Poppins:wght@300;700&family=Questrial&family=Tenali+Ramakrishna&display=swap" rel="stylesheet"> 
        <link href="https://fonts.googleapis.com/css2?family=Cinzel+Decorative:wght@400;700;900&family=Righteous&family=Sora:wght@600&family=Syne&family=Barlow:wght@400;500;700;800&display=swap" rel="stylesheet">  
        <link href="https://fonts.googleapis.com/css2?family=Lato&display=swap" rel="stylesheet">
        <link type="text/css" rel="stylesheet" href="../../CSS/forum/MainForum.css"/>
        <link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:wght@300;400;600&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Lobster+Two:wght@400;700&display=swap" rel="stylesheet">

        <title>Ask !</title>
    </head>

    <body style="background-color: #f7f6f9;">

        <div class="fixedheader">  

            <div class="pageheader">

                <a href="../Home.jsp" type="button"> <img src="../../Resources/Img/7.png" height="55px" width="60px"> </a>
                <h1>Sl Lens Trends </h1>

                <div class="headerul">
                    <ul>
                        <%
                            if (loggedAs.equals("client")) {
                        %>
                        <li><a href="<%= request.getContextPath()%>/View/User/AdvancedSearch.jsp" type="button"> Photographs </a></li>
                        <li><a href="<%= request.getContextPath()%>/View/User/PhotographerSearch.jsp" type="button"> Photographers </a></li>
                        <li><a href="<%= request.getContextPath()%>/View/Events/EventHome.jsp" type="button"> Events </a></li>
                        <li><a href="<%= request.getContextPath()%>/View/Fourm/MainForum.jsp" type="button"> Forum </a></li>
                        <li><a href="<%= request.getContextPath()%>/View/User/Cart.jsp" type="button"> Cart </a></li>
                        <li><a href="<%= request.getContextPath()%>/View/User/purchasehistory.jsp" type="button"> Purchase History </a></li>
                        <li><a href="<%= request.getContextPath()%>/View/User/ClientProfileUpdate.jsp" type="button"> Profile </a></li>
                            <%
                            } else if (loggedAs.equals("photographer")) {
                            %>

                        <li><a href="<%= request.getContextPath()%>/View/Fourm/MainForum.jsp" type="button"> Forum </a></li>
                        <li><a href="<%= request.getContextPath()%>/View/User/PhotographerSearch.jsp" type="button"> Photographers </a></li>
                        <li><a href="<%= request.getContextPath()%>/View/Photographer/uploadPhotos.jsp" type="button"> Upload </a></li>
                        <li><a href="<%= request.getContextPath()%>/View/Photographer/PhotographerProfile.jsp" type="button"> Profile </a></li>

                        <%
                        } else if (loggedAs.equals("nl")) {
                        %>
                        <li><a href="<%= request.getContextPath()%>/View/User/AdvancedSearch.jsp" type="button"> Photographs </a></li>
                        <li><a href="<%= request.getContextPath()%>/View/User/PhotographerSearch.jsp" type="button"> Photographers </a></li>
                        <li><a href="<%= request.getContextPath()%>/View/Fourm/MainForum.jsp" type="button"> Forum </a></li>
                        <li><a href="<%= request.getContextPath()%>/View/Events/EventHome.jsp" type="button"> Events </a></li>

                        <%
                            }
                        %>
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

        <div class="top">
            <ul>
                <li>We love people with <span style="color:#f7c947;"> Doubts</span></li>
                <li><p><span>Doubts are the best teacher</span> <br> Get answers to your questions from experts and   <br>give back by sharing your knowledge with others.</p></li>
            </ul>
        </div>

        <div class="middle">
            <!--            <div class="line">
                            <img src="../../Resources/Img/line.png"> 
                        </div>-->
            <ul>               
                <li>For Photographers, by Photographers</li>
                <li><p><span><a href="../Home.jsp">Lens Trends </a></span>is an open community for passionate Photographers<br>  We help you get answers to your questions,<br>share knowledge with your coworkers and become an expert.</p></li>
            </ul>
        </div>


        <div class="box">
            <div class="box1" style="cursor: pointer;" onclick="window.location.href = '../../View/Fourm/BrowseQn.jsp';">
                <img src="../../Resources/Img/questions1.png">                
                <h2>Browse Questions</h2>
                <p>Persons may differ,questions and solutions <br>may be the same, 
                    Browse others questions to get knowledge and to answer </p>
                <a href="../../View/Fourm/BrowseQn.jsp" type="button">Browse</a>
            </div>

            <div class="box2" style="cursor: pointer;" onclick="window.location.href = '../../View/Fourm/AskQues.jsp';">
                <img src="../../Resources/Img/search1.png">
                <h2>Ask Questions</h2>
                <p>Having doubt is not a fault but being with <br> doubt is fault 
                    ask your doubts, we have experts to give you the solution</p>
                <a href="#" type="button">Ask Questions</a>
            </div>
        </div>


    </body>
</html>

