<%-- 
    Document   : purchase history
    Created on : Oct 27, 2020, 7:20:12 PM
    Author     : Sashini Shihara
--%>

<%@page import="Model.PurchaseInvoice"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.Photograph"%>
<%@page import="Model.Client"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
    Client client = (Client) session.getAttribute("loggedClient");
    ArrayList<PurchaseInvoice> purchacedPhotos = (ArrayList<PurchaseInvoice>) request.getAttribute("PurchaceHistoryDetails");
    if (purchacedPhotos == null) {
        request.getRequestDispatcher("../../PurchaceHistoryDetails").forward(request, response);

    }
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../../CSS/User/history.css">
        <link rel="stylesheet" href="../../CSS/footer.css">
        <link type="text/css" rel="stylesheet" href="../../CSS/header.css" />
        <link href="https://fonts.googleapis.com/css2?family=Be+Vietnam:wght@300&family=Didact+Gothic&family=Dr+Sugiyama&family=Poiret+One&family=Poppins:wght@300&family=Questrial&family=Tenali+Ramakrishna&display=swap" rel="stylesheet"> 
        <link href="https://fonts.googleapis.com/css2?family=Cinzel+Decorative:wght@400;700&family=Righteous&family=Sora:wght@600&family=Syne&display=swap" rel="stylesheet">  


        <title>Purchase History</title>
    </head>
    <body>
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
                    <a href="<%= request.getContextPath()%>/View/Notifications/notificationsHome.jsp" type="button"> <img src="../../Resources/Img/notification.png"> </a>

                </div>

                <div class="logout">
                    <a href="../../LogOut?loc=ch" type="button"> Log Out </a>
                </div>
            </div>
        </div>
        <br><br><br><br>


        <div class="managephotoBody" style="background-color: #f7f6f9;">
            <div class="heading">
                <h1> Purchase History</h1>
            </div>

            <%
                for (PurchaseInvoice elem : purchacedPhotos) {
                    Photograph p = elem.getPhotograph();
            %>

            <div class="photos">
                <div class="details">
                    <img src="../../Resources/Img/Gallery Sample Images/<%= p.getPath() %>">
                    <p>Purchased Date
                        <input type="text" name="Submitted" id="Submit" value="<%= elem.getDate() %>" disabled="">
                    </p>
                    <p>Price 
                        <input type="text" name="Submitted" id="Submit" value="<%= p.getTitle() %>" disabled="">
                    </p>
                    <button id="remove" type="submit" class="btn" >View</button>
                </div>
            </div>


            <%
                }
            %>



<!--            <div class="photos">
                <div class="details">
                    <img src="../../Resources/Img/Gallery Sample Images/Photographer/julie-ricard-RmFX5bxHqCg-unsplash.jpg">
                    <p>Purchased Date<input type="text" name="Submitted" id="Submit" disabled=""></p>
                    <p>Price <input type="text" name="Submitted" id="Submit" disabled=""></p>
                    <button id="remove" type="submit" class="btn">View</button>
                </div>
            </div>

            <div class="photos">
                <div class="details">
                    <img src="../../Resources/Img/Gallery Sample Images/Photographer/mike-swigunski-zDDQZgZjFtM-unsplash.jpg">
                    <p>Purchased Date<input type="text" name="Submitted" id="Submit" disabled=""></p>
                    <p>Price <input type="text" name="Submitted" id="Submit" disabled=""></p>
                    <button id="remove" type="submit" class="btn">View</button>
                </div>
            </div>

            <div class="photos">
                <div class="details">
                    <img src="../../Resources/Img/Gallery Sample Images/Photographer/rowan-heuvel-qfiSDPQD9Ws-unsplash.jpg">
                    <p>Purchased Date<input type="text" name="Submitted" id="Submit" disabled=""></p>
                    <p>Price <input type="text" name="Submitted" id="Submit" disabled=""></p>
                    <button id="remove" type="submit" class="btn">View</button>
                </div>
            </div>-->
        </div>

    </body>
</html>
