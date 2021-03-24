<%-- 
    Document   : PurchasePhoto
    Created on : Oct 10, 2020, 5:50:18 PM
    Author     : kesh
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="Model.Photographer"%>
<%@page import="Model.Photograph"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
    boolean logged = (Boolean) request.getAttribute("logged");
    Photograph p = (Photograph) session.getAttribute("photo");
    String cat = (String) session.getAttribute("photographCategory");
    Photographer photographer = (Photographer) session.getAttribute("photographer");

    String keywords = p.getKeywords();
    String[] keywordArray = keywords.split(",");
    for (String keyword : keywordArray) {
        keyword = keyword.trim();
    }

    ArrayList<Photograph> pics = (ArrayList<Photograph>) request.getSession().getAttribute("searchedPics");
    int similarphotosArray = pics.size() - 1;

    ArrayList<Photograph> photographerPhotos = (ArrayList<Photograph>) request.getSession().getAttribute("photographerPhotos");
    int photographerPhotosCount = photographerPhotos.size() - 1;

    session.removeAttribute("photo");
    session.removeAttribute("photographCategory");
    session.removeAttribute("photographer");
    session.removeAttribute("photographerPhotos");
%>



<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../../CSS/User/PurchasePhoto.css">        
        <link type="text/css" rel="stylesheet" href="../../CSS/header.css" />
        <link href="https://fonts.googleapis.com/css2?family=Roboto+Slab:wght@400&display=swap" rel="stylesheet">
        <script src="https://kit.fontawesome.com/9dd75719fe.js" crossorigin="anonymous"></script>
        <link href="https://fonts.googleapis.com/css2?family=Be+Vietnam:wght@300&family=Didact+Gothic&family=Dr+Sugiyama&family=Poiret+One&family=Poppins:wght@300&family=Questrial&family=Tenali+Ramakrishna&display=swap" rel="stylesheet"> 
        <link href="https://fonts.googleapis.com/css2?family=Cinzel+Decorative:wght@400;700&family=Righteous&family=Sora:wght@600&family=Syne&display=swap" rel="stylesheet"> 
        <title>Purchase Photo</title>
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
                    <a href="../login.jsp?loc=cpp" >Log In</a> 
                    <%
                    } else {
                    %>
                    <a href="../../LogOut?loc=cpp" type="button"> Log Out </a>
                    <%
                        }
                    %>
                </div>
            </div>
        </div>
        <br><br><br><br><br><br>

        <div style="display: flex; justify-content: center;">
            <div class="ReportPhoto" id="ReportPhoto">
                <div class="ReportHeader">
                    <h3>Report</h3>
                    <i class="fas fa-times close" style="color: black; margin: auto; cursor: pointer;"></i>
                </div>

                <div>
                    <h4>Please select a problem to continue</h4>

                    <div style="display: flex; flex-wrap: wrap; " class="ReportsItems">
                        <button onclick="reportItemClicked('Inappropriate')" id="Inappropriate">Posting Inappropriate Things</button>
                        <button onclick="reportItemClicked('quality')" id="quality">Low Quality Photograph</button>
                        <button onclick="reportItemClicked('details')" id="details">Inappropriate Details</button>
                        <button onclick="reportItemClicked('fake')" id="fake">Fake Photograph</button>
                        <button onclick="reportItemClicked('somethingElse')" id="somethingElse">Something Else</button>
                    </div>
                    <div style="width: 100%; padding: 10px 10px; border-bottom: 1px solid black;">
                        <textarea class="reportReason" id="reason" type="text" placeholder="Enter Your Reasons"></textarea>
                    </div>
                    <div style="padding-top: 20px;">
                        <button class="Report" id="Report">Report</button>
                    </div>
                </div>
            </div>
        </div>
        <div class="content" id="content">
            <div class="photodetails">
                <div class="PhotoOuter">
                    <div class="Photo">
                        <img src="../../Resources/Img/Gallery Sample Images/<%= p.getPath()%>" style="width:100%; height: 100%;"/>
                    </div>
                </div>
                <div class="Details"> 
                    <div class="NameDetails">
                        <span class="PhotoName">
                            <%= p.getTitle()%>
                        </span>
                        <br />
                        <span>
                            By <a href=""> <%= photographer.getFname()%> <%= photographer.getLname()%></a>
                        </span>
                    </div>
                    <hr />
                    <div class="ImageDetails">
                        <div class="Dimention">
                            <span>Dimensions</span>
                            <span class="detail"><%= p.getWidth()%> x <%= p.getHeight()%></span>
                        </div>
                        <div>
                            <span>File Type</span>
                            <span class="detail">JPG</span>
                        </div>
                        <div>
                            <span>Category</span>
                            <span class="detail"><%= cat%></span>
                        </div>
                    </div>
                    <hr />
                    <div class="ImageActions">
                        <button class="BuyBtn">Buy Photo</button>
                        <button class="CartBtn" onclick="window.location.href = 'Cart.jsp?no=<%= p.getId() %>'">Add to Favourite</button>
                        <button class="ReportBtn" id="ReportBtn">Report Photo</button>
                    </div>
                </div>
            </div>
            <div class="RelaetedKeywordDiv">
                <span >
                    Related Keywords
                </span>
                <div class="KeywordsDiv">
                    <%
                        for (int i = 0; i < keywordArray.length; i++) {
                    %>

                    <span class="Keyword"><%= keywordArray[i]%></span>

                    <%
                        }
                    %>

                </div>
            </div>
            <div class="SimilarImagesDiv">
                <span>
                    Similar images
                </span>
                <div class="row"> 
                    <div class="column">
                        <%
                            for (int i = 0; i <= similarphotosArray; i += 4) {
                        %>
                        <a href="../../PurchasePhotoDetails?id=<%= pics.get(i).getId()%>">
                            <img src="../../Resources/Img/Gallery Sample Images/<%= pics.get(i).getPath()%>" style="width:100%">
                        </a>
                        <%
                            }
                        %>

                    </div>
                    <div class="column">
                        <%
                            for (int i = 1; i <= similarphotosArray; i += 4) {
                        %>
                        <a href="../../PurchasePhotoDetails?id=<%= pics.get(i).getId()%>">
                            <img src="../../Resources/Img/Gallery Sample Images/<%= pics.get(i).getPath()%>" style="width:100%">
                        </a>
                        <%
                            }
                        %>

                    </div>
                    <div class="column">
                        <%
                            for (int i = 2; i <= similarphotosArray; i += 4) {
                        %>
                        <a href="../../PurchasePhotoDetails?id=<%= pics.get(i).getId()%>">
                            <img src="../../Resources/Img/Gallery Sample Images/<%= pics.get(i).getPath()%>" style="width:100%">
                        </a>
                        <%
                            }
                        %>

                    </div>  
                    <div class="column">
                        <%
                            for (int i = 3; i <= similarphotosArray; i += 4) {
                        %>
                        <a href="../../PurchasePhotoDetails?id=<%= pics.get(i).getId()%>">
                            <img src="../../Resources/Img/Gallery Sample Images/<%= pics.get(i).getPath()%>" style="width:100%">
                        </a>
                        <%
                            }
                        %>
                    </div>  
                </div>
                <div class="SimilarShowDiv">
                    <button class="SimilarShowBtn">
                        See all
                    </button>
                </div>
            </div>
            <div class="ArtisiDiv">
                <span>
                    More from this artist
                </span>
                <div class="row"> 
                    <div class="column">
                        <%
                            for (int i = 0; i <= photographerPhotosCount; i += 4) {
                        %>
                        <a href="../../PurchasePhotoDetails?id=<%= photographerPhotos.get(i).getId()%>">
                            <img src="../../Resources/Img/Gallery Sample Images/<%= photographerPhotos.get(i).getPath()%>" style="width:100%">
                        </a>
                        <%
                            }
                        %>
                    </div>
                    <div class="column">
                        <%
                            for (int i = 1; i <= photographerPhotosCount; i += 4) {
                        %>
                        <a href="../../PurchasePhotoDetails?id=<%= photographerPhotos.get(i).getId()%>">
                            <img src="../../Resources/Img/Gallery Sample Images/<%= photographerPhotos.get(i).getPath()%>" style="width:100%">
                        </a>
                        <%
                            }
                        %>
                    </div>
                    <div class="column">
                        <%
                            for (int i = 2; i <= photographerPhotosCount; i += 4) {
                        %>
                        <a href="../../PurchasePhotoDetails?id=<%= photographerPhotos.get(i).getId()%>">
                            <img src="../../Resources/Img/Gallery Sample Images/<%= photographerPhotos.get(i).getPath()%>" style="width:100%">
                        </a>
                        <%
                            }
                        %>
                    </div>  
                    <div class="column">
                        <%
                            for (int i = 3; i <= photographerPhotosCount; i += 4) {
                        %>
                        <a href="../../PurchasePhotoDetails?id=<%= photographerPhotos.get(i).getId()%>">
                            <img src="../../Resources/Img/Gallery Sample Images/<%= photographerPhotos.get(i).getPath()%>" style="width:100%">
                        </a>
                        <%
                            }
                        %>
                    </div>  
                </div>
                <div class="ArtistPhotoDiv">
                    <button class="ArtistPhotoBtn">
                        See all
                    </button>
                </div>
            </div>
        </div>
        <script type="text/javascript" src="../../JS/User/PurchasePhoto.js"></script>
    </body>
</html>
