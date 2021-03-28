<%-- 
    Document   : PhotographerProfile
    Created on : Nov 1, 2020, 11:16:54 AM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
                    <img src="../../Resources/Img/athavan.jpg">
                </div>

                <div class="username">
                    <p>Mr.ATHAVAN T </p>
                </div>
                <div class="location">
                    <p>Jaffna,Srilanka</p>
                    <p>www.Ikongraphy.lk</p>
                </div>

            </div>
            <div class="bio">
                <h3>ABOUT ME</h3>
                <p>My name is Athavan, I come from Jaffna (now based in Colombo). I feel passionate about Wild life and Astro Photography. Obsessed with PHOTOGRAPHY.  <br> </p>
                <ul>
                    <li>Wild life</li>
                    <li>Portraits</li>
                    <li>Landscape</li>
                    <li>Astro</li>
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
                <p>MEMBER SINCE: OCTOBER 31,2020</p>
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
                        <input type="file" id="up-image" style="display:none;" accept="image/jpeg" onchange="pressed();showPreviewOne(event);filevalidation();" required="true">
                        <label for="up-image">
                            <a type="file" id="upload-image"> Browse</a>
                        </label> <br> <br>
                        <label id="uploadimage">
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
                        <label for="title">Title</label>
                        <input type="text" id="title" name="title">
                    </div>
                    <div class="upload"> 
                        <label>
                            <a href="#" type="button" id="final-upload" onclick="upload('final-upload');document.getElementById('up-image').value = '';uploadimage();">Upload</a>
                        </label>
                        <label id="reset">
                            <a href="#" type="button" id="remove-upload" onclick="myImgRemoveFunctionOne('remove-upload')">Reset</a>
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
