<%-- 
    Document   : changepassword
    Created on : Oct 21, 2020, 3:45:18 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Change Password</title>
        <link rel="stylesheet" href="../../CSS/Photographer/changepassword.css">
        <link type="text/css" rel="stylesheet" href="../../CSS/header.css" />
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300&family=Tenali+Ramakrishna&display=swap" rel="stylesheet"> 
        <link href="https://fonts.googleapis.com/css2?family=Be+Vietnam:wght@300&family=Didact+Gothic&family=Dr+Sugiyama&family=Poiret+One&family=Poppins:wght@300&family=Questrial&family=Tenali+Ramakrishna&display=swap" rel="stylesheet"> 
        <link href="https://fonts.googleapis.com/css2?family=Cinzel+Decorative:wght@400;700&family=Righteous&family=Sora:wght@600&family=Syne&display=swap" rel="stylesheet"> 
        
           </head>
    <body>
        
          <div class="fixedheader">  
            <div class="pageheader">
                <a href="../Home.jsp" type="button"> <img src="../../Resources/Img/7.png" height="55px" width="60px"> </a>
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
                    <a href="../login.jsp" type="button"> Login </a>
                </div>
            </div>
        </div>
        <br><br><br><br>
        
        <div class="container"> 
            
            <div class="logo">
                <img src="../../Resources/Img/6.png">
            </div>
                <h1>Change Password</h1>


                <div class="caption">
                  <p>
                      You will change the password for: &nbsp <strong id="email">th******ya@g***l.com</strong>
                  </p>
                </div>
                
                <div class="passinfo">
                    <form>
                        <fieldset class="cpass">
                            <legend> Confirm your current password </legend>
                            <input type="text" id="cpass" name="cpass" placeholder="Current Password">
                        </fieldset>
                        
                        <fieldset class="rpass">
                            <legend> Enter you New Password </legend>
                            <input type="text" id="npass" name="npass" placeholder="New Password">
                            <input type="text" id="rpass" name="rpass" placeholder="Retype Password">
                        </fieldset>
                    </form>
                    
                    <div class="change">
                        <a href="#" type="button">Change</a>
                    </div>
                    
                    <div class="cancel">
                        <a href="PhotographerUpdate.jsp" type="button">Cancel</a>
                    </div>
                </div>
        </div>
    </body>
</html>
