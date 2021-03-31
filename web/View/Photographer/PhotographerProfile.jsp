<%-- 
    Document   : PhotographerProfile
    Created on : Nov 1, 2020, 11:16:54 AM
    Author     : ASUS
--%>

<%@page import="Model.Photographer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    Photographer p = (Photographer) request.getSession().getAttribute("loggedPhotographer");
    String pid = p.getPhotographerId();  
    String pic = p.getProfilpic();
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">        
        <link type="text/css" rel="stylesheet" href="../../CSS/Photographer/PhotographerProfile.css">
        <!--<link type="text/css" rel="stylesheet" href="../../CSS/Mainheader.css">-->
        <link type="text/css" rel="stylesheet" href="../../CSS/header.css"/>
        <link href="https://fonts.googleapis.com/css2?family=Be+Vietnam:wght@300&family=Didact+Gothic&family=Dr+Sugiyama&family=Poiret+One&family=Poppins:wght@300;700&family=Questrial&family=Tenali+Ramakrishna&display=swap" rel="stylesheet"> 
        <link href="https://fonts.googleapis.com/css2?family=Cinzel+Decorative:wght@400;700;900&family=Righteous&family=Sora:wght@600&family=Syne&family=Barlow:wght@400;500;700;800&display=swap" rel="stylesheet">  
        <link href="https://fonts.googleapis.com/css2?family=Lato&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:wght@300;400;600&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Lobster+Two:wght@400;700&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://use.typekit.net/raw6dfn.css">


        <title>Profile</title>
    </head>
    <body style="background-color: #f9f9f9;">
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

        <div class="profilebox">
            <div style="background-color: #00478a; padding-bottom: 2%; padding-top: 1%;">

                <div class="user-image">
                    <img src="../../Resources/Img/Gallery Sample Images/ProfilePicture/<%= pic%>">
                </div>

                <div class="username">
                    <p><%= p.getFname() %>&nbsp;<%= p.getLname()%></p>
                </div>
                <div class="location">
                    <p><%= p.getAddress_no() %></p>
                    <p><%= p.getWebsite() %></p>
                </div>

            </div>
            <div class="bio">
                <h3>ABOUT ME</h3>
                <p>  <%= p.getBio() %><br> </p>
                <ul>
                    <li><%= p.getFielsOfdInterest() %></li>
                  
                </ul>
            </div> 
            <div class="count">
                <table>
                    <tr>
                        <th>Rating</th>
                        <th id="color">68%</th>
                    </tr>
                    <tr>
                        <th>Completed Events</th>
                        <th id="color">20</th>
                    </tr>
                </table>
            </div>
            <div class="editprofile">
                <a type="button" href="../../View/Photographer/PhotographerUpdate.jsp"> Edit Your Profile </a>
            </div>

            <div class="member">
                <p>MEMBER SINCE: <%= p.getJoined_date() %></p>
            </div>
        </div>

        <div class="welcome-note">
            <img src="../../Resources/Img/bg.svg">
            <p>Welcome to my Collections !</p>
            <a type="button" id="upload-image-front">Upload</a>

            <div id="upload-modal" class="upload-modal">

                <!-- Upload Modal content -->
                <div class="upload-modal-content">
                    <span class="upload-close">&times;</span>
                    <div class="upload-modal-image">
                        <img style="margin-left: 13%;" src="../../Resources/Img/upload.svg">
                        <input type="file" name="upimage" id="upimage" style="display:none;" accept="image/jpeg" onchange="pressed();showPreviewOne(event);filevalidation();" required="true">
                        <!--<input type="file" name="upimage" id="upimage" style="display:none;"  required="true">-->
                        <label for="upimage" accept="image/*" type="button">
                            <span type="file" id="upload-image"> Browse</span>
                        </label> <br> <br>
                        <label id="chooseimage">
                            Choose file                            
                        </label>

                    </div>
                    <div class="list">
                        <ul>
                            <li>JPEG format only</li>
                            <li>Maximum file size is 25MB</li>
                            <li>Give a Short Title</li>
                            <li>Submit your best work for portfolio</li>
                        </ul>
                    </div> 
                    <div  class="sample-image">
                        <img id="sample" src="" style="display: none;" alt="yourimage"/>
                    </div>
                    <div class="title-input" id="title-input">
                        <label for="title" name="title">Title</label>
                        <input type="text" id="title" name="title">
                    </div>
                    <div class="upload"> 
                        <label>
                            <!--<span href="#" type="button" id="final-upload" onclick="upload('final-upload');document.getElementById('upimage').value = '';uploadimage();">Upload</span>-->
                            <span href="#" type="button" id="final-upload" onclick="uploadimage();">Upload</span>
                        </label>
                        <label id="reset">
                            <span href="#" type="button" id="remove-upload" onclick="myImgRemoveFunctionOne('remove-upload')">Reset</span>
                        </label>
                    </div>

                </div>

            </div>
        </div>


        <div class="image-content">
            <table id="image-table">
                <!--                <tr>
                                    <td style="padding-right: 5%;">
                                        <div class="image">
                                            <img src="../../Resources/Img/profile/p1.jpg">
                                            <div class="middle">
                                                <div class="text"><span>Delete</span></div>
                                            </div> 
                                            <div class="middle2">
                                                <div class="text2"><span>Glass</span></div>
                                            </div> 
                                        </div>
                                    </td>
                                    <td>
                                        <div class="image">
                                            <img src="../../Resources/Img/profile/p2.jpg">
                                            <div class="middle">
                                                <div class="text"><span>Delete</span></div>
                                            </div> 
                                            <div class="middle2">
                                                <div class="text2"><span>Glass</span></div>
                                            </div> 
                                        </div>
                                    </td>
                                    <td>
                                        <div class="image">
                                            <img src="../../Resources/Img/profile/p3.jpg">
                                            <div class="middle">
                                                <div class="text"><span>Delete</span></div>
                                            </div> 
                                            <div class="middle2">
                                                <div class="text2"><span>Glass</span></div>
                                            </div> 
                                        </div>
                                    </td>
                                </tr>
                
                                <tr>
                                    <td>
                                        <div class="image">
                                            <img src="../../Resources/Img/profile/p4.jpg">
                                            <div class="middle">
                                                <div class="text"><span>Delete</span></div>
                                            </div> 
                                            <div class="middle2">
                                                <div class="text2"><span>Glass</span></div>
                                            </div> 
                                        </div>
                                    </td>
                                    <td>
                                        <div class="image">
                                            <img src="../../Resources/Img/profile/p5.jpg">
                                            <div class="middle">
                                                <div class="text"><span>Delete</span></div>
                                            </div> 
                                            <div class="middle2">
                                                <div class="text2"><span>Glass</span></div>
                                            </div> 
                                        </div>
                                    </td>
                                    <td>
                                        <div class="image">
                                            <img src="../../Resources/Img/profile/p6.jpg">
                                            <div class="middle">
                                                <div class="text"><span>Delete</span></div>
                                            </div> 
                                            <div class="middle2">
                                                <div class="text2"><span>Glass</span></div>
                                            </div> 
                                        </div>
                                    </td>                    
                                </tr>
                                <tr>
                                    <td>
                                        <div class="image">
                                            <img src="../../Resources/Img/profile/l1.jpg">
                                            <div class="middle">
                                                <div class="text"><span>Delete</span></div>
                                            </div> 
                                            <div class="middle2">
                                                <div class="text2"><span>Glass</span></div>
                                            </div> 
                                        </div>
                                    </td>
                                    <td>
                                        <div class="image">
                                            <img src="../../Resources/Img/profile/l2.jpg">
                                            <div class="middle">
                                                <div class="text"><span>Delete</span></div>
                                            </div> 
                                            <div class="middle2">
                                                <div class="text2"><span>Glass</span></div>
                                            </div> 
                                        </div>
                                    </td>
                                    <td>
                                        <div class="image">
                                            <img src="../../Resources/Img/profile/l3.jpg">
                                            <div class="middle">
                                                <div class="text"><span>Delete</span></div>
                                            </div> 
                                            <div class="middle2">
                                                <div class="text2"><span>Glass</span></div>
                                            </div> 
                                        </div>
                                    </td>
                                </tr>-->
            </table>
        </div>

        <script  type="text/javascript" src="../../JS/Photohrapher/PhotographerProfile.js"></script>
    </body>
</html>
