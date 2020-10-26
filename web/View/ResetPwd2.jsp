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
        <link rel="stylesheet" href ="../CSS/resetPwd.css">
        <link type="text/css" rel="stylesheet" href="../CSS/header.css" />
        <link href="https://fonts.googleapis.com/css2?family=Be+Vietnam:wght@300&family=Didact+Gothic&family=Dr+Sugiyama&family=Poiret+One&family=Poppins:wght@300&family=Questrial&family=Tenali+Ramakrishna&display=swap" rel="stylesheet"> 
        <link href="https://fonts.googleapis.com/css2?family=Cinzel+Decorative:wght@400;700&family=Righteous&family=Sora:wght@600&family=Syne&display=swap" rel="stylesheet"> 
        
         </head>
    
    <body style="background-image: url(../Resources/Img/reset.jpg); background-size: 100%;">
        
           <div class="fixedheader">  
            <div class="pageheader">
                <a href="Home.jsp" type="button"> <img src="../Resources/Img/7.png" height="55px" width="60px"> </a>
                <h1>Sl Lens Trends </h1>

                <div class="headerul">
                    <ul>

                        <li><a href="#" type="button"> Events </a></li>
                        <li><a href="User/AdvancedSearch.jsp" type="button"> Album </a></li>
                        <li><a href="User/ClientProfileUpdate.jsp" type="button"> Profile </a></li>
                        <li><a href="Fourm/forum home.jsp" type="button"> Forum </a></li>
                        <li><a href="#" type="button"> Notifications </a></li>

                    </ul>
                </div>

                <div class="notifyicn">
                    <a href="#" type="button"> <img src="../Resources/Img/notification.png"> </a>

                </div>

                <div class="logout">
                    <a href="login.jsp" type="button"> Login </a>
                </div>
            </div>
        </div>        
        
        <div class="box">
             <form>
                <table width="400px" height="400px" class="tb" border="0">
                    <tr>
                        <th height="70px" style="font-size: 28px;"> Email Sent </th>
                    </tr>
                    <tr>
                        <th height="70px" style="font-size: 16px;">Please check your inbox or spam folder for a link to reset your password.</th>
                    </tr>
                    <tr>
                        <td height="60px" ><center><input type="text" name="name" size="45px" placeholder="Email or Username"></center></td>
                    </tr>
                    <tr>
                        <td height="60px" ><center><input type="text" name="password" size="45px" placeholder="Password"></center></td>
                    </tr>
                    <tr>
                        <td><center><input type="reset" value="Log in" > </center> </td>
                    </tr>
                    <tr>
                        <td><center> Did you not receive an email?<a href="ResetPwd.jsp">Try Again</a></center></td>
                    </tr>
                </table>
            </form>
        </div>
    </body>
</html>
