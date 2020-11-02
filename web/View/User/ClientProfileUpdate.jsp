<%-- 
    Document   : ClientProfileUpdate
    Created on : Oct 24, 2020, 12:13:56 PM
    Author     : kesh
--%>

<%@page import="Model.Client"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    Client c = (Client) request.getSession().getAttribute("loggedClient");
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link type="text/css" rel="stylesheet" href="../../CSS/header.css" />
        <link rel="stylesheet" href="../../CSS/User/ClientProfileUpdate.css">
        <link type="text/css" rel="stylesheet" href="../../CSS/Photographer/UserViewPhotographerProfile.css" />
        <link href="https://fonts.googleapis.com/css2?family=Be+Vietnam:wght@300&family=Didact+Gothic&family=Dr+Sugiyama&family=Poiret+One&family=Poppins:wght@300&family=Questrial&family=Tenali+Ramakrishna&display=swap" rel="stylesheet"> 
        <link href="https://fonts.googleapis.com/css2?family=Cinzel+Decorative:wght@400;700&family=Righteous&family=Sora:wght@600&family=Syne&display=swap" rel="stylesheet">  
        <title>JSP Page</title>
    </head>
    <body>
        <div class="content">

            <div class="fixedheader">

                <div class="pageheader">
                    <a href="../Home.jsp" type="button" style="text-decoration: none;"> <img src="../../Resources/Img/7.png" height="55px" width="60px"> </a>
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
            </div>

            <div class="skill-box">

                <ul>
                    <li><a href="#accsec">Account</a></li> <br> <br>
                    <li><a href="#addsec">Address</a></li> <br> <br>
                    <!--                    <li><a href="#taxsec">Tax Information</a></li> <br> <br>-->
                    <li><a href="#passsec">Password</a></li> <br> <br>
                    <li><a href="#delsec">Delete Account</a></li> <br> <br>
                    <!--<li><a href="#connsec">Connected Account</a></li> <br> <br>-->
                </ul>	

            </div>
            <div class="account" id="accsec">
                <div class="heading" >
                    <p>
                        Account                                                            
                    </p>

                </div> 
                <br>
                <div class="edit">
                    <form>                                                        
                        <label for="fname">First Name </label> 
                        <br> <input type="text" id="fname" name="fname" placeholder="Theivendram"> 
                        <br> <label for="lname">Last Name </label>  
                        <br> <input type="text" id="lname" name="lname" placeholder="Athavan"> 
                        <br> <label for="uname">User Name </label>  
                        <br> <input type="text" id="uname" name="uname" placeholder="Aaketk17"> 
                        <br> <label for="email">Email </label>  
                        <br> <input type="text" id="email" name="email" placeholder="thavanthya@gmail.com"> 
                        <br> <label for="email">Mobile Number </label>  
                        <br> <input type="text" id="mnum" name="mnum" placeholder="+94 77 946 2554"> 
                        <br>
                    </form>
                </div>
            </div>

            <div class="address" id="addsec">
                <div class="heading">
                    <p>Address</p>
                </div> <br>
                <div class="edit">
                    <form>
                        <label for="fname" >Address </label> 
                        <br><input type="text" id="address" name="address" placeholder="Vanniyasingam veethy, Thavady North, Kokuvil."> 
                        <br><label for="fname">City </label> 
                        <br><input type="text" id="city" name="city" placeholder="Jaffna"> 
                        <br><label for="fname">Province </label>  
                        <br><input type="text" id="province" name="province" placeholder="North"> 
                        <br><label for="fname">Country  </label>  
                        <br><input type="text" id="conutry" name="country" placeholder="Srilanka"> 
                        <br>
                    </form>
                </div>
            </div> 

            <div class="password" id="passsec">
                <div class="heading">
                    <p>Password</p>
                </div> 
                <div class="edit">
                    <p>To change your password, you’ll need to verify the current one first. Then create a password you’re not using elsewhere, and be sure to change it regularly as well as anytime you suspect it’s been compromised.</p>
                    <a href="changepassword.jsp" type="button">Change Password</a>
                </div>

            </div> 

            <div class="deleteacc" id="delsec">
                <div class="heading">
                    <p>Delete Account</p>
                </div> 
                <div class="edit">
                    <p> You may request permanent deletion of your account at any time, provided you do not have active subscriptions.<br> Account you are requesting to be deleted: <span> <strong>ikongraphy18@gmail.com </strong></span> </p>
                    <a href="#" type="button">Delete Account</a>
                </div>

            </div> 

        </div>
    </body>
</html>
