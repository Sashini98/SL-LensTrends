<%-- 
    Document   : UploadPhotos2
    Created on : Oct 23, 2020, 8:23:17 PM
    Author     : Sashini Shihara
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../../CSS/Photographer/UPhoto2.css">
        <link type="text/css" rel="stylesheet" href="../../CSS/header.css" />
        <link href="https://fonts.googleapis.com/css2?family=Be+Vietnam:wght@300&family=Didact+Gothic&family=Dr+Sugiyama&family=Poiret+One&family=Poppins:wght@300&family=Questrial&family=Tenali+Ramakrishna&display=swap" rel="stylesheet"> 
        <link href="https://fonts.googleapis.com/css2?family=Cinzel+Decorative:wght@400;700&family=Righteous&family=Sora:wght@600&family=Syne&display=swap" rel="stylesheet"> 
        <title>Upload Photo</title>
        
        
        
    </head>
    <body>
        
            <div class="fixedheader">  
            <div class="pageheader">
                <a href="../PhotographerHome.jsp" type="button"> <img src="../../Resources/Img/7.png" height="55px" width="60px"> </a>
                <h1>Sl Lens Trends </h1>

                <div class="headerul">
                    <ul>

                        <li><a href="../Events/EventHome.jsp" type="button"> Events </a></li>
                        <li><a href="../User/AdvancedSearch.jsp" type="button"> Album </a></li>
                        <li><a href="PhotographerUpdate.jsp" type="button"> Profile </a></li>
                        <li><a href="../Fourm/forum home.jsp" type="button"> Forum </a></li>
                        <li><a href="../Notifications/notificationsHome.jsp" type="button"> Notifications </a></li>

                    </ul>
                </div>

                <div class="notifyicn">
                    <a href="#" type="button"> <img src="../../Resources/Img/notification.png"> </a>

                </div>

                <div class="logout">
                    <a href="../login.jsp" type="button"> LogOut </a>
                </div>
            </div>
        </div>

        
        <br><br><br><br>
        <div class="contain">
            <form>
                <br><br><br><label>Orientation</label>
                <input type="checkbox" id="Horizontal" name="Horizontal" value="Horizontal" style="margin-left: 3%">Horizontal<br>
                     <input type="checkbox" id="vertical" name="vertical" value="vertical" style="margin-left: 23.5%">Vertical<br>
                     <input type="checkbox" id="square" name="square" value="square" style="margin-left: 23.5%">Square<br>
                     <input type="checkbox" id="Panoramic" name="Panoramic" value="Panoramic" style="margin-left: 23.5%">Panoramic<br>
                     
                      <br><br><br><label>People</label>
                      <input type="radio" name="people" value="With" style="margin-left: 8%">With People
                      &nbsp;<input type="radio" name="people" value="Without">Without People<br>
           
                       <br><br><br><label>Gender</label>
                        <input type="radio" name="gender" value="male" style="margin-left: 7.5%"> Male
                        <input type="radio" name="gender" value="female"> Female
                        <input type="radio" name="gender" value="other"> Other
                        
                        <br><br><br><br><br><br><div class="release">
                        <div style="height:0px;overflow:hidden">                                                               
                            <input type="file" id="fileInput" name="fileInput"  onchange="loadFile(event)" />
                        </div>
                        <input type="button" id="upload" value="Upload Release" onclick="chooseFile();"><br>
                        <br><br><a href="../../Resources/Forms/model release.pdf" download>Get Model Release Form</a>&emsp;
                        <a href="../../Resources/Forms/property release.pdf" download>Get Property Release Form</a><br><br>
                        
                        </div>
                        <br><br><br><br><input type="submit" id="submit" value="Next">
            </form>
        </div>
    </body>
</html>
