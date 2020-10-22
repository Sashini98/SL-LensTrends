<%-- 
    Document   : changepassword
    Created on : Oct 21, 2020, 3:45:18 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Change Password</title>
        <link rel="stylesheet" href="../../CSS/Photographer/changepassword.css">
    </head>
    <body>
        <div class="container"> 
            
            <div class="logo">
                <img src="../../Resources/Img/6.png">
            </div>
                <h1>Change Password</h1>


                <div class="caption">
                  <p>
                      You will change the password for: &nbsp <strong id="email">th******ya@g***l.com</strong>
                  </p>
                </div>
                
                <div class="passinfo">
                    <form>
                        <fieldset class="cpass">
                            <legend> Confirm your current password </legend>
                            <input type="text" id="cpass" name="cpass" placeholder="Current Password">
                        </fieldset>
                        
                        <fieldset class="rpass">
                            <legend> Enter you New Password </legend>
                            <input type="text" id="npass" name="npass" placeholder="New Password">
                            <input type="text" id="rpass" name="rpass" placeholder="Retype Password">
                        </fieldset>
                    </form>
                    
                    <div class="change">
                        <a href="#" type="button">Change</a>
                    </div>
                    
                    <div class="cancel">
                        <a href="PhotographerUpdate.jsp" type="button">Cancel</a>
                    </div>
                </div>
        </div>
    </body>
</html>
