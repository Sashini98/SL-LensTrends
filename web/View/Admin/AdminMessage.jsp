<%-- 
    Document   : message
    Created on : Aug 22, 2020, 9:46:00 AM
    Author     : Madusha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Messages</title>
        <link rel="stylesheet" href ="../../CSS/Admin/Admin.css">
        <link rel="stylesheet" href="../../CSS/footer.css">
        <link rel="stylesheet" href="../../CSS/Admin/AdminHeader.css">
        <link href="https://fonts.googleapis.com/css2?family=Kadwa&display=swap" rel="stylesheet">
    </head>
    <body>

        <div class="fixedheader">  
            <div class="pageheader">
                <a href="Home.jsp" type="button"> <img src="../../Resources/Img/7.png" height="55px" width="60px"> </a>
                <h1>Sl Lens Trends </h1>

                <div class="headerul">
                    <ul>

                        <li><a href="UserManagement.jsp" type="button"> Users </a></li>
                        <li><a href="PhotoManagement.jsp" type="button"> Photographs & Forum </a></li>
                        <li><a href="SubPlan.jsp" type="button"> Plans </a></li>
                        <li><a href="#" type="button"> Reports </a></li>
                        <li><a href="AdminMessage.jsp" type="button"> Messages </a></li>
                        <li><a href="AdminSettings.jsp" type="button"> Settings </a></li>

                    </ul>
                </div>

                <div class="notifyicn">
                    <a href="#" type="button"> <img src="../../Resources/Img/notification.png"> </a>

                </div>

                <div class="logout">
                    <a href="login.jsp" type="button"> Log Out </a>
                </div>
            </div>
        </div>
        <br><br><br><br><br>

        <div class="row">
            <div class="column">
                <div class="card">
                    <font color="blue">Client Notifications</font><hr>
                    <textarea name="message" rows="4" cols="52"></textarea>
                    <table border="0" width="100%" height="40px" >
                        <td><font>Email</font></td>
                        <td><input type="text" name=user size="37" maxlength="25"></td>
                    </table>
                    <button class="btn2">Send</button>
                </div>
                <div class="card">
                    <font color="blue">Photographer Notifications</font><hr>
                    <textarea name="message" rows="4" cols="52"></textarea>
                    <table border="0" width="100%" height="40px" >
                        <td><font>Email</font></td>
                        <td><input type="text" name=user size="37" maxlength="25"></td>
                    </table>
                    <button class="btn2">Send</button>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="column">
                <div class='card'>
                    <font color="blue">Messages</font>
                    <hr>
                    <table border="1" width="100%" height="40px" >
                        <tr>
                            <th>Subject</th>
                            <th>From</th>
                            <th>Date</th>

                        </tr>
                        <tr>
                            <th></th>
                            <th></th>
                            <th></th>
                            <th><input class="confirmBTN" type='submit' value="View" name='view' style="background-color:blueviolet"></th>
                        </tr>
                        <tr>
                            <th></th>
                            <th></th>
                            <th></th>
                            <th><input class="confirmBTN" type='submit' value="View" name='view' style="background-color:blueviolet"></th>
                        </tr>
                        <tr>
                            <th></th>
                            <th></th>
                            <th></th>
                            <th><input class="confirmBTN" type='submit' value="View" name='view' style="background-color:blueviolet"></th>
                        </tr>
                    </table>
                </div>
                <div class="card">
                    <form>
                        <fieldset>
                            <legend><font color="blue">Message</font></legend>
                            <textarea name="message" rows="5" cols="48"></textarea>
                        </fieldset>
                    </form>
                    <textarea name="message" rows="5" cols="52"></textarea>
                    <button class="btn2">Send</button>
                </div>
            </div>
        </div>
        <div class="row">
            <div class='column'>
                <div class='card'>
                    <img class='cardimg' src= "../../Resources/Img/newmsg.png"><br>
                    <font>New Messages</font>
                </div>
                <div class='card'>
                    <img class='cardimg' src= "../../Resources/Img/replied.png"><br>
                    <font>Replied</font>
                </div>
            </div>
        </div>

        <footer>    
            <div class="container">      
                <div class="footer-distributed">
                    <div class="footer-left">
                        <h3><span><img src="../../Resources/Img/logo.png"></span>Sl LensTrends</h3><br><br><br><br><br><br>

                        <p class="footer-links">
                            <a href="#">Home</a>
                            ·
                            <a href="#">Gallery</a>
                            ·
                            <a href="#">Photographer</a>
                            ·
                            <a href="#">Forum</a>
                        </p>


                        <div class="footer-icons">

                            <a href="#"><i class="fa fa-facebook"><img src="../../Resources/Img/fb.png" style="width:5%;height:5%;"></i></a>
                            <a href="#"><i class="fa fa-twitter"><img src="../../Resources/Img/insta.png" style="width:5%;height:5%;"></i></a>
                            <a href="#"><i class="fa fa-linkedin"><img src="../../Resources/Img/download.png" style="width:5%;height:5%;"></i></a>
                            <a href="#"><i class="fa fa-github"><img src="../../Resources/Img/wtsap.png" style="width:5%;height:5%;"></i></a>
                            <br><br><br><br>
                            <hr>
                            <h6>@2020 All Rights Reserved</h6>
                        </div>
                    </div>

                    <div class="footer-right">
                        <h4>Support</h4>
                        <a href="#">Contact Us</a><br>

                        <h4>Create an account</h4>
                        <a href="#">Sign Up</a><br>

                    </div>
                </div>
            </div>          
        </footer>
    </body>
</html>
