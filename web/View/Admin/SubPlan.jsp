<%-- 
    Document   : SubPlan
    Created on : Oct 20, 2020, 10:15:26 PM
    Author     : Madusha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Subscription Plans</title>
        <link rel="stylesheet" href ="../../CSS/Admin/Admin.css">
        <link rel="stylesheet" href ="../../CSS/Admin/SubPlan.css">
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
                    <img class='cardimg' src= "../../Resources/Img/freeplan.png">
                    <button id="plan1" class="btn2">Free Plan</button>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="column">
                <div class="card">
                    <img class='cardimg' src= "../../Resources/Img/basicplan.png">
                    <button id="plan2" class="btn2">Basic Plan </button>
                </div><br>
                <div class="card">
                    <img class='cardimg' src= "../../Resources/Img/premiumplan.png">
                    <button id="plan4" class="btn2">Premium Plan </button>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="column">
                <div class="card">
                    <img class='cardimg' src= "../../Resources/Img/proplan.png">
                    <button id="plan3" class="btn2">Pro Plan </button>
                </div>
            </div>
        </div>



        <div id="myModal" class="modal">
            <div class="modal-content">
                <span class="close">&times;</span>
                <div class="outterdiv">
                    <form>
                        <div class="container">
                            <h1>Subscription Plan</h1>
                            <hr>

                            <label for="name"><b>Plan Name</b></label><br>
                            <input type="text" name="name"><br>

                            <label for="time"><b>Duration</b></label><br>
                            <input type="text" name="time"><br>

                            <label for="price"><b>Price</b></label><br>
                            <input type="text" name="price"><br>

                            <div class="clearfix">
                                <button type="submit" class="updatebtn">Update</button>
                                <button type="button" class="closebtn">Close</button>

                            </div>
                        </div>
                    </form>

                </div>
            </div>
        </div>

        <script>
            var modal = document.getElementById("myModal");
            var btn = document.getElementById("plan1");
            var span = document.getElementsByClassName("close")[0];
            btn.onclick = function () {
                modal.style.display = "block";
            }
            span.onclick = function () {
                modal.style.display = "none";
            }
            window.onclick = function (event) {
                if (event.target == modal) {
                    modal.style.display = "none";
                }
            }

            var modal = document.getElementById("myModal");
            var btn = document.getElementById("plan2");
            var span = document.getElementsByClassName("close")[0];
            btn.onclick = function () {
                modal.style.display = "block";
            }
            span.onclick = function () {
                modal.style.display = "none";
            }
            window.onclick = function (event) {
                if (event.target == modal) {
                    modal.style.display = "none";
                }
            }

            var modal = document.getElementById("myModal");
            var btn = document.getElementById("plan3");
            var span = document.getElementsByClassName("close")[0];
            btn.onclick = function () {
                modal.style.display = "block";
            }
            span.onclick = function () {
                modal.style.display = "none";
            }
            window.onclick = function (event) {
                if (event.target == modal) {
                    modal.style.display = "none";
                }
            }

            var modal = document.getElementById("myModal");
            var btn = document.getElementById("plan4");
            var span = document.getElementsByClassName("close")[0];
            btn.onclick = function () {
                modal.style.display = "block";
            }
            span.onclick = function () {
                modal.style.display = "none";
            }
            window.onclick = function (event) {
                if (event.target == modal) {
                    modal.style.display = "none";
                }
            }
        </script>

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
