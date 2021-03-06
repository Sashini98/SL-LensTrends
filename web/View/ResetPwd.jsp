<%-- 
    Document   : ResetPwd
    Created on : Oct 15, 2020, 9:49:23 AM
    Author     : Madusha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%

    String attribute = (String) request.getAttribute("accountDouble");
    if (attribute == null) {
        attribute = "false";
    }
    String message = (String) request.getAttribute("msg");

%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Reset Password</title>
        <link rel="stylesheet" href ="<%= request.getContextPath()%>/CSS/resetPw.css">

        <link href="https://fonts.googleapis.com/css2?family=Be+Vietnam:wght@300&family=Didact+Gothic&family=Dr+Sugiyama&family=Poiret+One&family=Poppins:wght@300&family=Questrial&family=Tenali+Ramakrishna&display=swap" rel="stylesheet"> 
        <link href="https://fonts.googleapis.com/css2?family=Cinzel+Decorative:wght@400;700&family=Righteous&family=Sora:wght@600&family=Syne&display=swap" rel="stylesheet"> 

    </head>

    <body style="background-image: url(<%= request.getContextPath()%>/Resources/Img/reset.jpg); background-size: 100%;">
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
                        <button style="flex: 1; margin-right: 3px; " id="contributor"><a href="<%= request.getContextPath()%>/ContributorOrClintEmail?a=c" style="text-decoration: none; color: black;">Contributor</a></button>
                        <button style="flex: 1; margin-left: 3px;" id="user"><a href="<%= request.getContextPath()%>/ContributorOrClintEmail?a=u" style="text-decoration: none; color: black;">User</a></button>

                    </div>

                </div>
            </div>
        </div>


        <%    }

        %>

        <div class="container" style=" margin: 0; z-index: 1;  position: fixed; right: 50px; top: 50px;"> 

            <div class="logo">
                <img src="<%= request.getContextPath()%>/Resources/Img/6.png">
            </div>
            <h1>Forgot Your Password?</h1>
            <br />
            <div class="caption">
                <span style="line-height: 25px;">
                    Enter your email address below and we will send you a link to reset your password.<br><br>
                </span>
            </div>
            <br />
            <div class="passinfo">
                <form action="<%= request.getContextPath()%>/ForgotPassword" method="POST">
                    <fieldset class="cpass">
                        <legend> Email Address </legend>
                        <input type="text" id="email" name="email" placeholder="Email">
                    </fieldset>

                    <%
                        if (message != null) {
                    %>
                    <div class="loginErrorMessage">
                        <span><%= message%></span>
                    </div>
                    <%
                        }
                    %>
                    <br><br><br>


                    <div class="change" style=" width: 100%;">
                        <button type="submit" id="reset" style="width: 100%; margin-left: 5%; margin-right: 5%; float: none;">
                            Send Reset Link
                        </button>
                    </div>
                </form>
                <br /><br /><br />
                <hr />
                <br />
                <form action="login.jsp" method="POST">
                    <div class="change" style=" width: 100%;">
                        <button type="submit" id="reset" style="width: 100%; margin-left: 5%; margin-right: 5%; float: none; background-color: rgb(218,57,40);">
                            Back To Login
                        </button>
                    </div> 
                </form>
            </div>
        </div>
    </div>
</body>
</html>
