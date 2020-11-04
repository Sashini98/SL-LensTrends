<%-- 
    Document   : new
    Created on : Oct 13, 2020, 2:45:34 PM
    Author     : Sashini Shihara
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%

%>

<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="../CSS/log.css">
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300&family=Tenali+Ramakrishna&display=swap" rel="stylesheet"> 
        <link href="https://fonts.googleapis.com/css2?family=Be+Vietnam:wght@300&family=Didact+Gothic&family=Dr+Sugiyama&family=Poiret+One&family=Poppins:wght@300&family=Questrial&family=Tenali+Ramakrishna&display=swap" rel="stylesheet"> 
        <link href="https://fonts.googleapis.com/css2?family=Cinzel+Decorative:wght@400;700&family=Righteous&family=Sora:wght@600&family=Syne&display=swap" rel="stylesheet"> 
    </head>
    <body style="background-image: url(../Resources/Img/loginbg.jpg); background-size: 100%">
        <div class="container"> 

            <div class="logo">
                <img src="../Resources/Img/6.png">
            </div>
            <h1>Sign in</h1>

            <div  class="caption">
                <span>
                    New User  <a href="../View/User/UserRegistration.jsp">Create an account</a><br><br>
                </span>
            </div>

            <div class="passinfo" >
                <form action="../Login" method="POST">
                    <fieldset class="cpass">
                        <legend> Email Address </legend>
                        <input type="text" id="email" name="email" placeholder="Email">
                    </fieldset>

                    <fieldset class="rpass">
                        <legend> Password </legend>
                        <input type="password" id="pw" name="pw" placeholder="Password">
                    </fieldset>
                    <div style="display: felx;">
                        <div class="change">
                            <button type="submit" class="loginbtn" id="login"><span>Login</span></button>
                        </div>

                        <p class="forgotpwpara">
                            <a href="ResetPwd.jsp" class="forgotpw">Forgot Password?</a><br><br>
                        </p>
                    </div>
                </form>
                <hr />
                <span style="font-size: 18px; font-family: 'Tenali Ramakrishna', sans-serif;">
                    Protected by reCAPTCHA and subject to the Google Privacy Policy and Terms of Services.
                </sapn>
            </div>
        </div>
    </body>
</html> 
