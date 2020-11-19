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
    System.out.println(attribute);
    System.out.println(message);
%>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="<%= request.getContextPath()%>/CSS/log.css">
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300&family=Tenali+Ramakrishna&display=swap" rel="stylesheet"> 
        <link href="https://fonts.googleapis.com/css2?family=Be+Vietnam:wght@300&family=Didact+Gothic&family=Dr+Sugiyama&family=Poiret+One&family=Poppins:wght@300&family=Questrial&family=Tenali+Ramakrishna&display=swap" rel="stylesheet"> 
        <link href="https://fonts.googleapis.com/css2?family=Cinzel+Decorative:wght@400;700&family=Righteous&family=Sora:wght@600&family=Syne&display=swap" rel="stylesheet"> 
    </head>
    <body  style="background-image: url(<%= request.getContextPath()%>/Resources/Img/bg-video.svg); background-size: 100%">

        <%
            if (attribute.equals("true")) {
        %>


        <div style="display: flex; justify-content: center;">
            <div class="logAccount" id="ReportPhoto">
                <div class="logAccountHeader">
                    <h3>Login Account</h3>
                    <i class="fas fa-times close" style="color: black; margin: auto; cursor: pointer;"></i>
                </div>

                <div>
                    <h4>Do you want to Login as a Contributor or User ?</h4>

                    <div style="display: flex; flex-wrap: wrap; justify-content: space-between; " class="selections">
                        <button style="flex: 1; margin-right: 3px; " id="contributor"><a href="<%= request.getContextPath()%>/ContributorOrClintLogin?a=c">Contributor</a></button>
                        <button style="flex: 1; margin-left: 3px;" id="user"><a href="<%= request.getContextPath()%>/ContributorOrClintLogin?a=u">User</a></button>

                    </div>

                </div>
            </div>
        </div>


        <%    }

        %>

        <div  id="content" style="margin: 0; padding: 0; "> 
            <div class="container" id="container"> 

                <div class="logo">
                    <img src="<%= request.getContextPath()%>/Resources/Img/6.png">
                </div>
                <h1>Sign in</h1>

                <div  class="caption">
                    <span>
                        New User  <a href="../View/User/UserRegistration.jsp">Create an account</a><br><br>
                    </span>
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
                    <hr />
                    <span style="font-size: 18px; font-family: 'Tenali Ramakrishna', sans-serif;">
                        Protected by reCAPTCHA and subject to the Google Privacy Policy and Terms of Services.
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
    </body>
</html> 
