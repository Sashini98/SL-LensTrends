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
        <link rel="stylesheet" href ="../CSS/resetPwd.css">
        <link type="text/css" rel="stylesheet" href="../CSS/header.css" />
        
        <div class="pageheader">
                    <a href="../Home.jsp" type="button"> <img src="../../Resources/Img/7.png" height="55px" width="60px"> </a>
                    <h1>Sl Lens Trends </h1>

                    <div class="headerul">
                        <ul>

                            <li><a href="#" type="button"> Events </a></li>
                            <li><a href="#" type="button"> Album </a></li>
                            <li><a href="#" type="button"> Profile </a></li>
                            <li><a href="#" type="button"> Settings </a></li>

                        </ul>
                    </div>

                    <div class="notifyicn">
                        <a href="#" type="button"> <img src="../../Resources/Img/notification.png"> </a>

                    </div>

                    <div class="logout">
                        <a href="#" type="button"> Logout </a>
                    </div>
                </div>
    </head>
    
    <body style="background-image: url(../Resources/Img/reset.jpg); background-size: 100%;">
        
        <div class="box">
             <form>
                <table width="400px" height="400px" class="tb" border="0">
                    <tr>
                        <th height="70px" style="font-size: 28px;"> Forgot your password? </th>
                    </tr>
                    <tr>
                        <th height="70px" style="font-size: 16px;"> Enter your email address below and we will send you a link to reset your password.  </th>
                    </tr>
                    <tr>
                        <td height="60px" ><center><input type="text" name="name" size="45px" placeholder="Email Address"></center></td>
                    </tr>
                    <tr>
                        <td><center><input type="reset" value="Send reset link" ></center> </td>
                    </tr>
                    <tr>
                        <td><center><a href="login.jsp">Back to login</a></center></td>
                    </tr>
                </table>
            </form>
        </div>
    </body>
</html>
