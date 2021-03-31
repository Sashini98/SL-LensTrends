<%-- 
    Document   : ResetPwd2
    Created on : Oct 15, 2020, 10:41:37 AM
    Author     : Madusha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Reset Password</title>
        <link rel="stylesheet" href ="<%= request.getContextPath()%>/CSS/resetPw.css">
        <link href="https://fonts.googleapis.com/css2?family=Be+Vietnam:wght@300&family=Didact+Gothic&family=Dr+Sugiyama&family=Poiret+One&family=Poppins:wght@300&family=Questrial&family=Tenali+Ramakrishna&display=swap" rel="stylesheet"> 
        <link href="https://fonts.googleapis.com/css2?family=Cinzel+Decorative:wght@400;700&family=Righteous&family=Sora:wght@600&family=Syne&display=swap" rel="stylesheet"> 

    </head>

    <body style="background-image: url(<%= request.getContextPath()%>/Resources/Img/reset.jpg); background-size: 100%;">

        <div class="container" style=" margin: 0; z-index: 1;  position: fixed; right: 50px; top: 50px;"> 

            <div class="logo">
                <img src="<%= request.getContextPath()%>/Resources/Img/6.png">
            </div>
            <h1>Email Sent</h1>
            <br />
            <div class="caption">
                <span style="line-height: 25px;">
                    Please check your inbox or spam folder for a link to reset your password.<br><br>
                </span>
            </div>

            <div class="passinfo">
                <form action="<%= request.getContextPath()%>/ResetPwEnter" method="POST">
                    <fieldset class="rpass">
                        <legend> Password </legend>
                        <input type="password" id="pw" name="pw" placeholder="Password">
                    </fieldset>
                    <fieldset class="cpass">
                        <legend> Confirm Password </legend>
                        <input type="text" id="cpw" name="cpw" placeholder="Confirm Password">
                    </fieldset>
                    <div class="change">
                        <button type="submit" id="login">Login</button>
                    </div>
                </form>
                <br><br><br>
                <p style="font-size: 20px; font-family: 'Tenali Ramakrishna', sans-serif;">
                    Did you not receive an email?
                    <a href="ResetPwd.jsp" style="text-decoration: none; color: RGB(20,115,230);">
                        Try Again
                    </a>
                    <br><br>
                </p>

            </div>
        </div>
    </body>
</html>
