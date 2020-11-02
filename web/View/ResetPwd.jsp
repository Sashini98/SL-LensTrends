<%-- 
    Document   : ResetPwd
    Created on : Oct 15, 2020, 9:49:23 AM
    Author     : Madusha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Reset Password</title>
        <link rel="stylesheet" href ="../CSS/log.css">

        <link href="https://fonts.googleapis.com/css2?family=Be+Vietnam:wght@300&family=Didact+Gothic&family=Dr+Sugiyama&family=Poiret+One&family=Poppins:wght@300&family=Questrial&family=Tenali+Ramakrishna&display=swap" rel="stylesheet"> 
        <link href="https://fonts.googleapis.com/css2?family=Cinzel+Decorative:wght@400;700&family=Righteous&family=Sora:wght@600&family=Syne&display=swap" rel="stylesheet"> 

    </head>

    <body style="background-image: url(../Resources/Img/reset.jpg); background-size: 100%;">


        <div class="container"> 

            <div class="logo">
                <img src="../Resources/Img/6.png">
            </div>
            <h1>Forgot Your Password?</h1>

            <div class="caption">
                <p>
                    Enter your email address below and we will send you a link to reset your password.<br><br>
                </p>
            </div>

            <div class="passinfo">
                <form action="../Login" method="POST">
                    <fieldset class="cpass">
                        <legend> Email Address </legend>
                        <input type="text" id="email" name="email" placeholder="Email">
                    </fieldset>
                </form><br><br><br>
                
                <div class="change">
                    <input type="submit" id="reset" value="Send Reset Link">
                </div>

                <p>
                    <a href="login.jsp">Back to login</a><br><br>
                </p>

            </div>
        </div>
    </div>
</body>
</html>
