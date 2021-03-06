<%-- 
    Document   : adminRegistration
    Created on : Nov 4, 2020, 9:46:56 AM
    Author     : Madusha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Registration</title>
        <link rel="stylesheet" href ="../../CSS/Admin/AdminRegistration.css">
        <link type="text/css" rel="stylesheet" href="../../CSS/header.css" />
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300&family=Tenali+Ramakrishna&display=swap" rel="stylesheet"> 
        <link href="https://fonts.googleapis.com/css2?family=Be+Vietnam:wght@300&family=Didact+Gothic&family=Dr+Sugiyama&family=Poiret+One&family=Poppins:wght@300&family=Questrial&family=Tenali+Ramakrishna&display=swap" rel="stylesheet"> 
        <link href="https://fonts.googleapis.com/css2?family=Cinzel+Decorative:wght@400;700&family=Righteous&family=Sora:wght@600&family=Syne&display=swap" rel="stylesheet"> 
    </head>
    <body style="background-color: #f7f6f9;">

        <div class="fixedheader">  
            <div class="pageheader">
                <a href="../Home.jsp" type="button"> <img src="../../Resources/Img/7.png" height="55px" width="60px"> </a>
                <h1>Sl Lens Trends </h1>
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

                <form id="ARegister" action="../../AdminRegister" method="POST" onsubmit="return validateForm()">

                    <fieldset class="cpass">
                        <legend> Email Address </legend>
                        <input type="text" id="email" name="email" onfocusout="emailValid()" >
                        <legend> First Name </legend>
                        <input type="text" id="fname" name="fname">
                        <legend> Last Name </legend>
                        <input type="text" id="lname" name="lname" >
                        <legend> Mobile Number </legend>
                        <input type="text" id="mobile" name="mobile" >
                        <legend> Address No </legend>
                        <input type="text" id="address" name="address" >
                        <legend> City </legend>
                        <input type="text" id="city" name="city" >
                        <legend> Province </legend>
                        <input type="text" id="province" name="province" >
                        <legend> Gender </legend>
                        <div class="filter-radio">
                            <label class="container-radio"><h4>Male</h4>
                                <input type="radio" id="male" name="gender" value="Male">
                                <span class="checkmark-radio"></span>
                            </label>
                            <label class="container-radio"><h4>Female</h4>
                                <input type="radio" id="female" name="gender" value="Female">
                                <span class="checkmark-radio"></span>
                            </label>
                        </div>
                        <legend> Password </legend>
                        <input type="password" id="pw" name="pass" >
                        <legend> Confirm Password </legend>
                        <input type="password" id="repPw" name="passR" onfocusout="passValid()" >
                        <legend> Type </legend>
                        <div class="filter-radio">
                            <label class="container-radio"><h4>Main Admin</h4>
                                <input type="radio" id="main" name="type" value="Main Admin">
                                <span class="checkmark-radio"></span>
                            </label>
                            <label class="container-radio"><h4>Co-Admin</h4>
                                <input type="radio" id="co" name="type" value="Co-Admin">
                                <span class="checkmark-radio"></span>
                            </label>
                        </div>
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

        <script src="../../JS/Admin/AdminRegistration.js" type="text/javascript" ></script>

    </body>
</html>