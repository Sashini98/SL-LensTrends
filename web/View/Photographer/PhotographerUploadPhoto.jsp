<%-- 
    Document   : PhotographerUploadPhoto
    Created on : Nov 13, 2020, 1:32:35 AM
    Author     : ASUS
--%>

<%@page import="Model.Photographer"%>
<%@page import="Model.Photograph"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    Photographer p = (Photographer) request.getSession().getAttribute("loggedPhotographer");
    String pid = p.getPhotographerId();
    
    

%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://fonts.googleapis.com/css2?family=Be+Vietnam:wght@300&family=Didact+Gothic&family=Dr+Sugiyama&family=Poiret+One&family=Poppins:wght@300;700&family=Questrial&family=Tenali+Ramakrishna&display=swap" rel="stylesheet"> 
        <link href="https://fonts.googleapis.com/css2?family=Cinzel+Decorative:wght@400;700;900&family=Righteous&family=Sora:wght@600&family=Syne&family=Barlow:wght@400;500;700;800&display=swap" rel="stylesheet">  
        <link href="https://fonts.googleapis.com/css2?family=Lato&display=swap" rel="stylesheet">
        <link type="text/css" rel="stylesheet" href="../../CSS/header.css"/>
        <link type="text/css" rel="stylesheet" href="../../CSS/Photographer/PhotographerUploadPhoto.css"/>
        <link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:wght@300;400;600&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Lobster+Two:wght@400;700&display=swap" rel="stylesheet">

        <title>Upload</title>
    </head>
    <body style="background-color: #f3f4f6;" onload="totalearning('<%= pid%>')">

        <div class="fixedheader">  
            <div class="pageheader">
                <a href="../PhotographerHome.jsp" type="button"> <img src="../../Resources/Img/7.png" height="55px" width="60px"> </a>
                <h1>Sl Lens Trends </h1>

                <div class="headerul">
                    <ul>

                        <li><a href="<%= request.getContextPath()%>/View/Fourm/MainForum.jsp" type="button"> Forum </a></li>
                        <li><a href="<%= request.getContextPath()%>/View/User/PhotographerSearch.jsp" type="button"> Photographers </a></li>
                        <li><a href="<%= request.getContextPath()%>/View/Photographer/PhotographerUploadPhoto.jsp" type="button"> Upload </a></li>
                        <li><a href="<%= request.getContextPath()%>/View/Photographer/PhotographerProfile.jsp" type="button"> Profile </a></li>

                    </ul>
                </div>

                <div class="notifyicn">
                    <a href="<%= request.getContextPath()%>/View/Notifications/notificationsHome.jsp" type="button"> <img src="../../Resources/Img/notification.png"> </a>

                </div>

                <div class="logout">
                    <a href="../../LogOut?loc=ph" type="button"> Logout </a>
                </div>

            </div>
        </div>

        <div class="inside-header">
            <ul>
                <li><a href="#" type="button" id="tosubmit" onclick="navigation('tosubmit')">To Submit</a></li>
                <li><a href="#" type="button" id="inreview" onclick="navigation('inreview')">In Review</a></li>
                <li><a href="#" type="button" id="notaccepted" onclick="navigation('notaccepted')">Not Accepted</a></li>
                <li><a href="#" type="button" id="reviewed" onclick="navigation('reviewed')">Reviewed</a></li>
                <li><a href="#" type="button" id="upload-photo" onclick="document.getElementById('upload-modal').style.display = 'block'">Upload</a> </li>
                <li id="earnings">Total Earning: $720</li>
            </ul>     

            <div id="upload-modal" class="upload-modal">

                <!-- Upload Modal content -->
                <div class="upload-modal-content">
                    <span class="upload-close" id='upload-close' onclick="cleardata()">&times;</span>
                    <div class="upload-modal-image">
                        <img src="../../Resources/Img/upload.svg">
                        <input type="file" value="select" id="upimage" style="display:none;" accept="image/jpeg" onchange="pressedupload();validation('upimage');">
                        <label for="upimage">
                            <a type="file" id="upload-image"> Browse</a>
                        </label> <br> <br>
                        <label id="uploadimage">
                            Choose file                            
                        </label>

                        <!--<a href="#" type="button" id="browseimage">Browse</a>-->
                        <div class="list">
                            <ul>
                                <li>JPEG format only</li>
                                <li>Minimum image resolution is 4MP</li>
                                <li>Maximum image resolution is 100MP</li>
                                <li>Maximum file size is 45MB</li>
                                <li>Minimum file size is 5MB</li>

                            </ul>
                        </div>
                    </div>
                    <div class="upload-review"> 
                        <label>
                            <a href="#" type="button" id="final-upload" onclick="submitphoto()">Submit</a>
                        </label>
                    </div>
                </div>

            </div>
        </div>
        <div id="load">

        </div>

        <script type="text/javascript" src="../../JS/Photohrapher/PhotographerUploadPhoto.js"></script>
        <script type="text/javascript" src="../../JS/Photohrapher/totalearning.js"></script>

    </body>
</html>

