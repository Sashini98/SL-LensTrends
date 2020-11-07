<%-- 
    Document   : new
    Created on : Oct 13, 2020, 2:45:34 PM
    Author     : Sashini Shihara
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%

    String attribute = (String) request.getAttribute("account");
    System.out.println(attribute + " jjjjjjjjjj");
%>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="<%= request.getContextPath() %>/CSS/log.css">
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300&family=Tenali+Ramakrishna&display=swap" rel="stylesheet"> 
        <link href="https://fonts.googleapis.com/css2?family=Be+Vietnam:wght@300&family=Didact+Gothic&family=Dr+Sugiyama&family=Poiret+One&family=Poppins:wght@300&family=Questrial&family=Tenali+Ramakrishna&display=swap" rel="stylesheet"> 
        <link href="https://fonts.googleapis.com/css2?family=Cinzel+Decorative:wght@400;700&family=Righteous&family=Sora:wght@600&family=Syne&display=swap" rel="stylesheet"> 
    </head>
    <body style="background-image: url(<%= request.getContextPath() %>/Resources/Img/loginbg.jpg); background-size: 100%">

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
                        <button style="flex: 1; margin-right: 3px; " onclick="reportItemClicked('Inappropriate')" id="contributor">Contributor</button>
                        <button style="flex: 1; margin-left: 3px;" onclick="reportItemClicked('quality')" id="user">User</button>

                    </div>

                </div>
            </div>
        </div>

        <%    }

        %>

        <div class="container"> 

            <div class="logo">
                <img src="<%= request.getContextPath() %>/Resources/Img/6.png">
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
