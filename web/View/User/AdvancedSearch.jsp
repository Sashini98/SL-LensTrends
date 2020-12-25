<%-- 
    Document   : AdvancedSearch
    Created on : Oct 12, 2020, 8:14:20 PM
    Author     : kesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    boolean logged = (Boolean) request.getAttribute("logged");
%>


<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="../../CSS/User/AdvancedSearch.css"/>
        <link type="text/css" rel="stylesheet" href="../../CSS/header.css" />
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Be+Vietnam:wght@300&family=Didact+Gothic&family=Dr+Sugiyama&family=Poiret+One&family=Poppins:wght@300&family=Questrial&family=Tenali+Ramakrishna&display=swap" rel="stylesheet"> 
        <link href="https://fonts.googleapis.com/css2?family=Cinzel+Decorative:wght@400;700&family=Righteous&family=Sora:wght@600&family=Syne&display=swap" rel="stylesheet"> 
    </head>
    <body onload="">
        <div>
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
                        <a href="<%= request.getContextPath()%>/View/Notifications/notificationsHome.jsp" type="button"> <img src="../../Resources/Img/notification.png"> </a>

                    </div>

                    <div class="logout">
                        <%
                            if (!logged) {
                        %>
                        <a href="../login.jsp?loc=cph" >Log In</a> 
                        <%
                        } else {
                        %>
                        <a href="../../LogOut?loc=cph" type="button"> Log Out </a>
                        <%
                            }
                        %>
                    </div>
                </div>
            </div>

            <br><br><br><br>

            <div style="display: flex;min-height: 88vh">
                <div style="position: fixed;width: 2%;height: 88vh;background-color: #FAFAFA;padding-top: 1.8%;padding-left: .5%;padding-right: 1.2%;border-right:solid 2px #EAEAEA; cursor: pointer;">
                    <i id="filterIcn" class="material-icons sidemenu-icons">filter_alt</i>
                    <br><br>
                    <!--<i class="material-icons sidemenu-icons">camera_alt</i>-->
                </div>
                <iframe id="selectors" style="width: 25%;margin-left: 3.8%;border: none" src="AdvancedFilter.jsp">

                </iframe>
                <div style="background-color:  #FAFAFA; width: 100%; ">
                    <div class="searchInput">
                        <input type="text" id="keywordInput" placeholder="Search for Photographs" onkeyup="keywordSearch(event)">      
                        <button style="border: none; outline: none; border-radius: 40%; cursor: pointer;" onclick="keywordSearch(event)"><i class="material-icons">search</i></button>
                    </div>
                    <div class="row" id="row"> 
                        <div class="column">
                            <a href="PurchasePhoto.jsp"><img src="../../Resources/Img/A Mighty sunrise with a flight of birds..jpg" style="width:100%"></a>
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

        <script src="../../JS/User/AdvancedSearch.js" type="text/javascript"></script>
        <script src="//code.jquery.com/jquery-1.12.4.js"></script>
        <!--<script src="//code.jquery.com/ui/1.12.1/jquery-ui.js"></script>-->
        <script>
            $('#filterIcn').click(function () {
                $("#selectors").toggle("fold");
            });
        </script>
    </body>
</html>

