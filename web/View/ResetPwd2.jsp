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
    </head>
    
    <body style="background-image: url(../Resources/Img/reset.jpg); background-size: 100%;">
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
