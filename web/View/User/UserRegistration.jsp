<%-- 
    Document   : UserRegistration
    Created on : Oct 8, 2020, 6:54:24 AM
    Author     : kesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Registration</title>
        <link rel="stylesheet" href ="../../CSS/User/UserRegistration.css">
        <link type="text/css" rel="stylesheet" href="../../CSS/header.css" />
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300&family=Tenali+Ramakrishna&display=swap" rel="stylesheet"> 
        <link href="https://fonts.googleapis.com/css2?family=Be+Vietnam:wght@300&family=Didact+Gothic&family=Dr+Sugiyama&family=Poiret+One&family=Poppins:wght@300&family=Questrial&family=Tenali+Ramakrishna&display=swap" rel="stylesheet"> 
        <link href="https://fonts.googleapis.com/css2?family=Cinzel+Decorative:wght@400;700&family=Righteous&family=Sora:wght@600&family=Syne&display=swap" rel="stylesheet"> 
    </head>
    <body style="background-image: url(../../Resources/Img/uRe.jpg); background-size: cover;">

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


                    </ul>
                </div>

                <div class="notifyicn">
                    <a href="<%= request.getContextPath()%>/View/Notifications/notificationsHome.jsp" type="button"> <img src="../../Resources/Img/notification.png"> </a>

                </div>

                <div class="logout">
                    <a href="../login.jsp" type="button"> Login </a>
                </div>
            </div>
        </div>
        <br><br><br><br>

        <div class="cont"> 

            <div class="logo">
                <img src="../../Resources/Img/6.png">
            </div>
            <h1>Welcome to SL-Lens Trends</h1>

            <div class="caption">
                <p>
                    If you already have an account.<a href="../login.jsp"> Sign In</a>
                </p>
            </div>

            <div class="passinfo">
                <form id="CRegister" action="../../ClientRegister" method="POST" onsubmit="return validateForm()">
                    <fieldset class="cpass">
                        <legend> Email Address </legend>
                        <input type="text" id="email" name="email" onfocusout="emailValid()" >
                        <legend> Password </legend>
                        <input type="password" id="pw" name="pass" >
                        <legend> Confirm Password </legend>
                        <input type="password" id="repPw" name="passR" onfocusout="pwValid()">
                        <legend> First Name </legend>
                        <input type="text" id="fname" name="fname">
                        <legend> Last Name </legend>
                        <input type="text" id="lname" name="lname" >
                        <legend>Address </legend>
                        <input type="text" id="address" name="address" >
                        <legend> City </legend>
                        <input type="text" id="city" name="city" >
                        <legend> Province </legend>
                        <input type="text" id="province" name="province" >
                        <legend> Gender </legend>
                        <div><input type="radio" id="male" name="gender" value="male">
                            <label for="male">Male</label>
                            <input type="radio" id="female" name="gender" value="female">
                            <label for="female">Female</label></div>
                        
                    </fieldset>                        

                    <div class="change">
                        <input type="submit" value="submit">
                    </div>
                </form><br><br><br>
                <p style="font-size: 20px; font-family: 'Tenali Ramakrishna', sans-serif; line-height: 15px;">
                    The SL-Lens Trends may keep me informed with personalized email about products and services.See our Privacy Policy for more details or to opt-out at any time.
                </p>
            </div>
        </div>
        
                <script src="../../JS/User/userRegistration.js" type="text/javascript" ></script>

    </body>
</html>
