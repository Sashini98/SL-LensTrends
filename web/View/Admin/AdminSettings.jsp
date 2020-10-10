<%-- 
    Document   : settings
    Created on : Aug 22, 2020, 12:17:51 PM
    Author     : Madusha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Settings</title>
        <link href ="../../CSS/Admin.css" type="text/css" rel="stylesheet">
    </head>
    <body style="background-image: url(../../Resources/Img/settings.jpg); background-size: 100% ; ">
        
        <div class="row">
            <div class="column">
                <div class="card">
                    <font color="red">Suspend the application</font>
                    <hr>
                    <table border="0" width="100%" height="40px">
                        <tr>
                        <td>Message<td>
                        <textarea name="message" rows="4" cols="32"></textarea><br>
                        </tr>
                        <tr>
                        <td>Time</td>
                        <td><input type=text name=name size="27" maxlength="25">HH</td>
                        </tr>
                        <tr>
				<th colspan =2><button class='btn2'>Suspend</button></th>
			</tr>
                    </table>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="column">
                <div class="card">
        <form>
	<fieldset>
            <legend><font color="red">Profile</font></legend>
        <table border="0" width="100%" height="40px" >
                        <tr>
				<td align="left">First Name:</td>
				<td><input type=text name=name size="30" maxlength="25"></td>
			</tr>
                        <tr>
				<td align="left">Last Name:</td>
				<td><input type=text name=name size="30" maxlength="25"></td>
			</tr>
                        <tr>
				<td align="left">Date of Birth:</td>
				<td><input type=text name=name size="30" maxlength="25"></td>
			</tr>
                        <tr>
				<td align="left">Gender:</td>
				<td><input type=text name=name size="30" maxlength="25"></td>
			</tr>
                        <tr>
				<td align="left">Email:</td>
				<td><input type=text name=name size="30" maxlength="25"></td>
			</tr>
                        <tr>
				<td align="left">Address:</td>
                                <td><textarea name="address" rows="2" cols="32"></textarea></td>
			</tr>
                        <tr>
				<td align="left">Country:</td>
				<td><input type=text name=name size="30" maxlength="25"></td>
			</tr>
                        <tr>
				<td align="left">City:</td>
				<td><input type=text name=name size="30" maxlength="25"></td>
			</tr>
                        <tr>
				<td align="left">Password:</td>
				<td><input type=password name=name size="30" maxlength="25"></td>
			</tr>
                        <tr>
				<td>Profile picture</td>
				<td><input type=file name="profile"></td>
			</tr>
                        <tr>
				<th colspan =2><button class='btn2'>Update</button></th>
			</tr>
                        
                    </table>
	</fieldset>
	</form>
        </div>
            </div>
        </div>
        
        <div class="row">
            <div class="column">
                <div class="card">
                    <font color="red">Send Notifications</font>
                    <hr>
                    <textarea name="message" rows="8" cols="42"></textarea>
                    
                    <button class='btn2'>Send</button>
                </div>
            </div>
        </div>
    </body>
</html>
