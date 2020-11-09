<%-- 
    Document   : AdminDashboard
    Created on : Nov 7, 2020, 2:41:58 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://fonts.googleapis.com/css2?family=Be+Vietnam:wght@300&family=Didact+Gothic&family=Dr+Sugiyama&family=Poiret+One&family=Poppins:wght@300;700&family=Questrial&family=Tenali+Ramakrishna&display=swap" rel="stylesheet"> 
        <link href="https://fonts.googleapis.com/css2?family=Cinzel+Decorative:wght@400;700;900&family=Righteous&family=Sora:wght@600&family=Syne&family=Barlow:wght@400;500;700;800&display=swap" rel="stylesheet">  
        <link href="https://fonts.googleapis.com/css2?family=Lato&display=swap" rel="stylesheet">
        <link type="text/css" rel="stylesheet" href="../../CSS/Admin/AdminDashboard.css"/>
        <link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:wght@300;400;600&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Lobster+Two:wght@400;700&display=swap" rel="stylesheet">
        <title>Admin</title>
    </head>
    <body style="background-color: #f7f6f9;">

        <div class="side-nav">

            <a href="../Home.jsp"><img src="../../Resources/Img/7.png"></a>

            <div id="notifyDiv" onmouseover="notifyButtonChange('notifyDiv')" onmouseout="notifyButtonBack('notifyDiv')" class="notification">
                <img id="notificationIcon" src="../../Resources/Img/notify.svg" />
                <p><a href="#" type="button"  id="notify">Notification</a></p>
            </div>

            <div id="photomanageDiv" onmouseover="photomanageButtonChange('photomanageDiv')" onmouseout="photomanageButtonBack('photomanageDiv')" class="photomanage">
                <img id="photomanageIcon" src="../../Resources/Img/photomanagement.svg" />
                <p><a href="#" type="button"  id="photomanagement">Manage Photo</a></p>
            </div>

            <div id="photoapprovalDiv" onmouseover="photoapprovalButtonChange('photoapprovalDiv')" onmouseout="photoapprovalButtonBack('photoapprovalDiv')" class="photoapproval">
                <img id="photoapprovalIcon" src="../../Resources/Img/photoreview.svg" />
                <p><a href="#" type="button"  id="photo-approval">Photo Approval</a></p>
            </div>

            <div id="forumDiv" onmouseover="forumButtonChange('forumDiv')" onmouseout="forumButtonBack('forumDiv')" class="forum">
                <img id="forumIcon" src="../../Resources/Img/forummangement.svg" />
                <p><a href="#" type="button"  id="forummanage">Manage Forum</a></p>
            </div>

            <div id="userDiv" onmouseover="userButtonChange('userDiv')" onmouseout="userButtonBack('userDiv')" class="user">
                <img id="userIcon" src="../../Resources/Img/user.svg" />
                <p><a href="#" type="button"  id="usermanage">Manage User</a></p>
            </div>
            
            <div id="summaryDiv" onmouseover="summaryButtonChange('summaryDiv')" onmouseout="summaryButtonBack('summaryDiv')" class="summary">
                <img id="summaryIcon" src="../../Resources/Img/summary.svg" />
                <p><a href="#" type="button"  id="summarytext">Summary</a></p>
            </div>

        </div>
        
        
        
        
        
        <script type="text/javascript" src="../../JS/Admin/AdminDashboard.js"></script>
    </body>
</html>
