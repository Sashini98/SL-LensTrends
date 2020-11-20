<%-- 
    Document   : ViewReportedQue
    Created on : Nov 12, 2020, 9:28:22 AM
    Author     : Madusha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://fonts.googleapis.com/css2?family=Be+Vietnam:wght@300&family=Didact+Gothic&family=Dr+Sugiyama&family=Poiret+One&family=Poppins:wght@300;700&family=Questrial&family=Tenali+Ramakrishna&display=swap" rel="stylesheet"> 
        <link href="https://fonts.googleapis.com/css2?family=Cinzel+Decorative:wght@400;700;900&family=Righteous&family=Sora:wght@600&family=Syne&family=Barlow:wght@400;500;700;800&display=swap" rel="stylesheet">  
        <link href="https://fonts.googleapis.com/css2?family=Lato&display=swap" rel="stylesheet">
        <link type="text/css" rel="stylesheet" href="../../CSS/Admin/ViewReportedQue.css"/>
        <link type="text/css" rel="stylesheet" href="../../CSS/Admin/AdminDashboard.css" />
        <link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:wght@300;400;600&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Lobster+Two:wght@400;700&display=swap" rel="stylesheet">
        <title>View Reported Questions</title>
    </head>
    <body style="background-color: #f7f6f9;">
        
        
        <div class="side-nav">

            <a href="../Home.jsp"><img src="../../Resources/Img/7.png"></a>
               
            <div id="summaryDiv"  onclick="show('summary')" onmouseover="summaryButtonChange('summaryDiv')" onmouseout="summaryButtonBack('summaryDiv')" class="summary">
                <img id="summaryIcon" src="../../Resources/Img/summary.svg" />
                <p><a href="#" type="button"  id="summarytext">Dashboard</a></p>
            </div>
            
            <div id="photomanageDiv" onclick="show('photomanage')" onmouseover="photomanageButtonChange('photomanageDiv')" onmouseout="photomanageButtonBack('photomanageDiv')" class="photomanage">
                <img id="photomanageIcon" src="../../Resources/Img/photomanagement.svg" />
                <p><a href="#" type="button"  id="photomanagement">Manage Photo</a></p>
            </div>

            <div id="photoapprovalDiv" onclick="show('photoapproval')" onmouseover="photoapprovalButtonChange('photoapprovalDiv')" onmouseout="photoapprovalButtonBack('photoapprovalDiv')" class="photoapproval">
                <img id="photoapprovalIcon" src="../../Resources/Img/photoreview.svg" />
                <p><a href="#" type="button"  id="photo-approval">Photo Approval</a></p>
            </div>

            <div id="forumDiv" onclick="show('forum')" onmouseover="forumButtonChange('forumDiv')" onmouseout="forumButtonBack('forumDiv')" class="forum">
                <img id="forumIcon" src="../../Resources/Img/forummangement.svg" />
                <p><a href="#" type="button"  id="forummanage">Manage Forum</a></p>
            </div>

            <div id="userDiv" onclick="show('user')"  onmouseover="userButtonChange('userDiv')" onmouseout="userButtonBack('userDiv')" class="user">
                <img id="userIcon" src="../../Resources/Img/user.svg" />
                <p><a href="#" type="button"  id="usermanage">Manage User</a></p>
            </div>
            
            <div id="settingDiv" onclick="show('setting')" onclick="show('settingDiv')" onmouseover="settingButtonChange('settingDiv')" onmouseout="settingButtonBack('settingDiv')" class="setting">
                <img id="settingIcon" src="../../Resources/Img/settings.svg" />
                <p><a href="#" type="button"  id="settingtext">Settings</a></p>
            </div>

            <div id="notifyDiv" onclick="show('notification')" onmouseover="notifyButtonChange('notifyDiv')" onmouseout="notifyButtonBack('notifyDiv')" class="notification">
                <img id="notificationIcon" src="../../Resources/Img/notify.svg" />
                <p><a href="#" type="button"  id="notify">Notification</a></p>
            </div>

            <div id="logoutDiv" onclick="logout()" onmouseover="logoutButtonChange('logoutDiv')" onmouseout="logoutButtonBack('logoutDiv')" class="logout">
                <img id="logoutIcon" src="../../Resources/Img/logout.svg" />
                <p><a href="../../LogOut?loc=ch" type="button"  id="logouttext">logout</a></p>
            </div>
        </div>    
        
        <div class="reportedQueBody">
        <div class="box">
            <div class="details">
                <h1>FoV of One Plus 6T?</h1><br>
            </div>
            <p class="p">I was wondering what the Field of View is for the rear Camera is for the One Plus 6T. The information I've been able to gather so far but I'm not sure if the information is 100% right. 4.25mm focal ...</p>
            
            <table class="table" border="0" width="100%" height="40px" >
                <tr>
                    <td align="left">Reported By</td>
                <td><input type="text" name="reported" id="reported" disabled=""></td>
                <td align="left">Reported Date</td>
                <td><input type="date" name="date" id="rdate" disabled=""></td>
                </tr>
                <tr>
                    <td align="left">Reason</td>
                    <td><input type="text" name="reason" id="reason" disabled=""></td>
                    <td align="left">Description</td>
                    <td><textarea class="textarea" name="desc" id="desc" disabled=""></textarea></td>
                </tr>
            </table>
        </div>

        <div class="box">
            <br>
            <table class="table" border="0" width="100%" height="40px" >
                <tr>
                    <td align="left">Posted By</td>
                    <td><input type="text" name="posted" id="posted" disabled=""></td>
                    <td align="left">Posted Date</td>
                    <td><input type="date" name="date" id="sdate" disabled=""></td>
                </tr>
                <tr>
                    <td align="left">Category</td>
                    <td><input type="text" name="cate" id="cate" disabled=""></td>
                    <td align="left">Question Id</td>
                    <td><input type="text" name="file" id="fid" disabled=""></td>
                </tr>
                <tr>
                    <th colspan =2><button class="btn" id="approve">Keep Question</button></th>
                    <th colspan =2><button class="btn" id="reject" style="background-color: #f44336">Remove</button></th>
                </tr>
            </table>
        </div>
        </div>
    </body>
</html>
