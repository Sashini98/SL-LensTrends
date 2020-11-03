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
        <link rel="stylesheet" href ="../CSS/log.css">
        <link href="https://fonts.googleapis.com/css2?family=Be+Vietnam:wght@300&family=Didact+Gothic&family=Dr+Sugiyama&family=Poiret+One&family=Poppins:wght@300&family=Questrial&family=Tenali+Ramakrishna&display=swap" rel="stylesheet"> 
        <link href="https://fonts.googleapis.com/css2?family=Cinzel+Decorative:wght@400;700&family=Righteous&family=Sora:wght@600&family=Syne&display=swap" rel="stylesheet"> 

    </head>

    <body style="background-image: url(../Resources/Img/reset.jpg); background-size: 100%;">

        <div class="container"> 

            <div class="logo">
                <img src="../Resources/Img/6.png">
            </div>
            <h1>Email Sent</h1>

            <div class="caption">
                <p>
                    Please check your inbox or spam folder for a link to reset your password.<br><br>
                </p>
            </div>

            <div class="passinfo">
                <form action="../Login" method="POST">
                    <fieldset class="cpass">
                        <legend> Email Address </legend>
                        <input type="text" id="email" name="email" placeholder="Email">
                    </fieldset>
                    <fieldset class="rpass">
                        <legend> Password </legend>
                        <input type="password" id="pw" name="pw" placeholder="Password">
                    </fieldset>


                    <div class="change">
                        <input type="submit" id="login" value="Login">
                    </div>
                </form><br><br><br>
                <p>
                    Did you not receive an email? <a href="ResetPwd.jsp">Try Again</a><br><br>
                </p>

            </div>
        </div>
    </div>
</body>
</html>
