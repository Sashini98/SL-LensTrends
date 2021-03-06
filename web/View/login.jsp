<%-- 
    Document   : new
    Created on : Oct 13, 2020, 2:45:34 PM
    Author     : Sashini Shihara
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%

    String attribute = (String) request.getAttribute("account");
    String message = (String) request.getAttribute("msg");
    String para = request.getParameter("loc");

    if (para == null) {
        para = "ch";
    }
%>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="<%= request.getContextPath()%>/CSS/log.css">
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300&family=Tenali+Ramakrishna&display=swap" rel="stylesheet"> 
        <link href="https://fonts.googleapis.com/css2?family=Be+Vietnam:wght@300&family=Didact+Gothic&family=Dr+Sugiyama&family=Poiret+One&family=Poppins:wght@300&family=Questrial&family=Tenali+Ramakrishna&display=swap" rel="stylesheet"> 
        <link href="https://fonts.googleapis.com/css2?family=Cinzel+Decorative:wght@400;700&family=Righteous&family=Sora:wght@600&family=Syne&display=swap" rel="stylesheet"> 
        <meta name="google-signin-client_id" content="462042771138-hi5lv6qm2445d79nsdt0m66kqm4pqefb.apps.googleusercontent.com">
    </head>
    <body  style="background-size:100%; background-image:url(<%= request.getContextPath()%>/Resources/Img/bg-login2.jpg);">


        <!--        <video autoplay muted loop id="myVideo">
                    <source src="<%= request.getContextPath()%>/Resources/video/bg.mp4" type="video/mp4">
                    Your browser does not support HTML5 video.
                </video>-->

        <%
            if (attribute.equals("true")) {
        %>


        <div style="display: flex; justify-content: center; align-items: center; z-index: 2; left: 40%; position: fixed;">
            <div class="logAccount" id="ReportPhoto">
                <div class="logAccountHeader">
                    <h3>Login Account</h3>
                    <i class="fas fa-times close" style="color: black; margin: auto; cursor: pointer;"></i>
                </div>

                <div>
                    <h4>Do you want to Login as a Contributor or User ?</h4>

                    <div style="display: flex; flex-wrap: wrap; justify-content: space-between; " class="selections">
                        <button style="flex: 1; margin-right: 3px; " id="contributor"><a href="<%= request.getContextPath()%>/ContributorOrClintLogin?a=c" style="text-decoration: none; color: black;">Contributor</a></button>
                        <button style="flex: 1; margin-left: 3px;" id="user"><a href="<%= request.getContextPath()%>/ContributorOrClintLogin?a=u" style="text-decoration: none; color: black;">User</a></button>

                    </div>

                </div>
            </div>
        </div>


        <%    }

        %>

        <div  id="content" style="margin: 0; padding: 0; z-index: 1;  position: fixed; right: 50px; top: 50px;"> 
            <div class="container" id="container"> 

                <div class="logo">
                    <img src="<%= request.getContextPath()%>/Resources/Img/6.png">
                </div>
                <h1>Sign in</h1>

                <div  class="caption">
                    <%
                        if (para.equalsIgnoreCase("ph")) {
                    %>
                    <span>
                        New Contributor  <a href="<%= request.getContextPath()%>/View/Photographer/PhotographerRegistration.jsp">Create an account</a><br><br>
                    </span>
                    <%
                    } else {
                    %>
                    <span>
                        New User  <a href="<%= request.getContextPath()%>/View/User/UserRegistration.jsp">Create an account</a><br><br>
                    </span>
                    <%
                        }
                    %>
                </div>
                <%
                    if (message != null) {
                %>
                <div class="loginErrorMessage">
                    <span><%= message%></span>
                </div>
                <%
                    }
                %>
                <div class="passinfo">

                    <form action="<%= request.getContextPath()%>/Login" method="POST">
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
                    <div class="change">
                        <div class="g-signin2"  id="my-signin2" data-onsuccess="onSignIn"></div>

                    </div>
                    <hr />
                    <span style="font-size: 18px; font-family: 'Tenali Ramakrishna', sans-serif;">
                        Protected by reCAPTCHA and subject to the Google Privacy &nbsp;&nbsp;&nbsp; Policy and Terms of Services.
                    </span>

                    <%
                        if (attribute.equals("true")) {
                    %>

                    <script>
                        document.getElementById('content').style.opacity = "0.5";

                    </script>
                    <%
                        }
                    %>
                </div>
            </div>
        </div>

        <script>


            function onSuccess(googleUser) {
                console.log('Logged in as: ' + googleUser.getBasicProfile().getName());
                var xhr = new XMLHttpRequest();
                xhr.open('POST', '<%= request.getContextPath()%>/GoogleLogin');
                xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                xhr.send('idtoken=' + id_token);
            }
            function onFailure(error) {
                console.log(error);
            }
            function renderButton() {
                gapi.signin2.render('my-signin2', {
                    'scope': 'profile email',
                    'width': 240,
                    'height': 50,
                    'longtitle': true,
                    'theme': 'dark',
                    'onsuccess': onSuccess,
                    'onfailure': onFailure
                });
            }

            function onSignIn(googleUser) {
                var profile = googleUser.getBasicProfile();
                console.log('ID: ' + profile.getId()); // Do not send to your backend! Use an ID token instead.
                console.log('Name: ' + profile.getName());
                console.log('Image URL: ' + profile.getImageUrl());
                console.log('Email: ' + profile.getEmail()); // This is null if the 'email' scope is not present.
            }
        </script>
        <script src="https://apis.google.com/js/platform.js" async defer></script>
        <script src="https://apis.google.com/js/platform.js?onload=renderButton" async defer></script>
    </body>

</body>
</html> 
