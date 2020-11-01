<%-- 
    Document   : AdminReports
    Created on : Oct 31, 2020, 10:26:13 PM
    Author     : Madusha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Reports</title>
        <link rel="stylesheet" href="../../CSS/footer.css">
        <link rel="stylesheet" href="../../CSS/Admin/AdminHeader.css">
        <link rel="stylesheet" href="../../CSS/Admin/Reports.css">
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
                        <li><a href="AdminReports.jsp" type="button"> Reports </a></li>
                        <li><a href="AdminMessage.jsp" type="button"> Messages </a></li>
                        <li><a href="AdminSettings.jsp" type="button"> Settings </a></li>

                    </ul>
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

        <div class="contain">
            <div class="leftp">
                <input type="button" class="active" value="Reports"><br><br><br>
                <input type="button" value="Users"><br>
                <input type="button" value="Photographs"><br>
                <input type="button" value="Profit"><br>
                <input type="button" value="Other"><br><br><br>

            </div>


            <div class="rightp" id="q"></div>
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
