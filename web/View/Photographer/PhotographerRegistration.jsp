<%-- 
    Document   : PhotographerRegistration
    Created on : Nov 18, 2020, 9:36:40 PM
    Author     : Madusha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Photographer Registration</title>
        <link rel="stylesheet" href ="../../CSS/Photographer/PhotographerRegistration.css">
        <link type="text/css" rel="stylesheet" href="../../CSS/header.css" />
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300&family=Tenali+Ramakrishna&display=swap" rel="stylesheet"> 
        <link href="https://fonts.googleapis.com/css2?family=Be+Vietnam:wght@300&family=Didact+Gothic&family=Dr+Sugiyama&family=Poiret+One&family=Poppins:wght@300&family=Questrial&family=Tenali+Ramakrishna&display=swap" rel="stylesheet"> 
        <link href="https://fonts.googleapis.com/css2?family=Cinzel+Decorative:wght@400;700&family=Righteous&family=Sora:wght@600&family=Syne&display=swap" rel="stylesheet"> 
    </head>
    <body style="background-color: #f7f6f9;">

        <div class="fixedheader">  
            <div class="pageheader">
                <a href="../PhotographerHome.jsp" type="button"> <img src="../../Resources/Img/7.png" height="55px" width="60px"> </a>
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
                    <a href="../../LogOut?loc=ph" type="button"> Logout </a>
                </div>

            </div>

        </div>
        <br><br><br><br>

        <div class="cont"> 

            <div class="logo">
                <img src="../../Resources/Img/6.png">
            </div>
            <h1>Welcome to SL-Lens Trends</h1>

            <div class="caption">
                <p>
                    If you already have an account.<a href="../login.jsp"> Sign In</a>
                </p>
            </div>

            <div class="passinfo">
                <form  id="CRegister" action="../../PhotographerRegistration" method="POST">
                <center>
                    <table class="table" border="0" width="100%" height="40px" >
                        <tr>
                            <td align="left">Email</td>
                            <td><input type="text" id="email" name="email"></td>
                            <td align="left">Province</td>
                            <td><input type="text" id="province" name="province" ></td>
                        </tr>
                        <tr>
                            <td align="left">password</td>
                            <td><input type="password" id="pw" name="pass" ></td>
                            <td align="left">Gender</td>
                            <td><input type="text" name="gen" id="gender"></td>
                        </tr>
                        <tr>
                            <td align="left">Confirm Password</td>
                            <td><input type="password" id="repPw" name="passR"></td>
                            <td align="left">Mobile</td>
                            <td><input type="text" name="mobile" id="mobile"></td>
                        </tr>
                        <tr>
                            <td align="left">First Name</td>
                            <td><input type="text" id="fname" name="fname"></td>
                            <td align="left">Web site</td>
                            <td><input type="text" name="web" id="web"></td>                    
                        </tr>
                        <tr>
                            <td align="left">Last Name</td>
                            <td><input type="text" id="lname" name="lname" ></td>
                            <td align="left">Field Of Interest</td>
                            <td><input type="text" name="field" id="field"></td>
                        </tr>
                        <tr>
                            <td align="left">Address No</td>
                            <td><input type="text" id="address" name="address" ></td>
                            <td align="left">Postal Code</td>
                            <td><input type="text" name="pcode" id="pcode"></td>
                        </tr>
                        <tr>
                            <td align="left">City</td>
                            <td><input type="text" id="city" name="city" ></td> 
                            <td align="left">Bio</td>
                            <td><textarea class="textarea" name="bio"></textarea></td>
                        </tr>
                        <tr>

                        </tr>
                        <tr>                  
                            <td class="change"><input type="submit" value="submit"></td>
                        </tr>      
                    </table>
                    
                </center>
                </form>
                    <p style="font-size: 20px; font-family: 'Tenali Ramakrishna', sans-serif; line-height: 15px;">
                        The SL-Lens Trends may keep me informed with personalized email about products and services.See our Privacy Policy for more details or to opt-out at any time.
                    </p>

            </div>
        </div>



    </body>
</html>

