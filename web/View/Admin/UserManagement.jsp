<%-- 
    Document   : users
    Created on : Jul 19, 2020, 11:48:54 AM
    Author     : Madusha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Users</title>
        <link rel="stylesheet" href ="../../CSS/Admin/Admin.css">
        <link rel="stylesheet" href ="../../CSS/Admin/intermediate.css">
        <link rel="stylesheet" href="../../CSS/footer.css">
        <link rel="stylesheet" href="../../CSS/Admin/AdminHeader.css">



    </head>
    <body style="background-image: url(../../Resources/Img/userback.jpg)">

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
            <div class='column'>
                <div class='card'>
                    <font color="red">Activate Users</font><hr><br>
                    <input type="text" placeholder="Type here">
                    <button>Search</button>
                    <br><br>
                    <table border="1" width="100%" height="40px" >
                        <tr>
                            <th>ID</th>
                            <th>Name</th>
                            <th>Option</th>
                        </tr>
                        <tr>
                            <th></th>
                            <th></th>
                            <th><input id="vie" class="confirmBTN" type='submit' value="View" name='view' style="background-color:blueviolet"></th>
                        </tr>
                    </table><br>
                    <button class='btn2'>Add User</button>
                </div>
            </div>
        </div>


        <div class="row">
            <div class="column">
                <div class='card'>
                    <font color="red">Reported Users</font>
                    <hr><br>
                    <table border="1" width="100%" height="40px" >
                        <tr>
                            <th>ID</th>
                            <th>Name</th>
                            <th>Option</th>
                        </tr>
                        <tr>
                            <th></th>
                            <th></th>
                            <th><input id="view" class="confirmBTN" type='submit' value="View" name='view' style="background-color:blueviolet"></th>
                        </tr>
                    </table><br>
                    <form>
                        <table border="0" width="100%" height="40px" >
                            <tr>
                                <td align="left">Email</td>
                                <td><input class="textbox" type=text name=name size="30" maxlength="25"></td>
                            </tr>
                            <tr>
                                <td align="left">Reason</td>
                                <td><input class="textbox" type=text name=name size="30" maxlength="25"></td>
                            </tr>
                        </table><br>
                    </form>
                </div>

                <div class='card'>
                    <font color="red">Deactivate Users</font><hr><br>
                    <input id="deactivateUser" type="text" placeholder="Type here">
                    <button onclick="viewResults()">Search</button>
                    <br><br>

                    <table id="reportedUserTable" border="1" width="100%" height="40px">
                        <tr>

                            <th>ID</th>
                            <th>Name</th>
                            <th>Type</th>
                            <th>Option</th>

                        </tr>
                        <tbody id="reportedUserTableBody">

                        </tbody>


                    </table>

                    <table border="0" width="100%" height="40px" >
                        <tr>
                            <td align="left">User Id</td>
                            <td><input type="text" name="uid" id="userid" size="30" maxlength="25"></td>
                        </tr>
                        <tr>
                            <td align="left">Email</td>
                            <td><input type="text" name="mail" id="email" size="30" maxlength="25"></td>
                        </tr>
                        <tr>
                            <td align="left">First Name</td>
                            <td><input type="text" name="finame" id="fname" size="30" maxlength="25"></td>
                        </tr>
                        <tr>
                            <td align="left">Last Name</td>
                            <td><input type="text" name="laname" id="lname" size="30" maxlength="25"></td>
                        </tr>
                        <tr>
                            <td align="left">Address No</td>
                            <td><input type="text" name="address" id="addno" size="30" maxlength="25"></td>
                        </tr>
                        <tr>
                        <tr>
                            <td align="left">City</td>
                            <td><input type="text" name="cit" id="city" size="30" maxlength="25"></td>
                        </tr>
                            <td align="left">Province</td>
                            <td><input type="text" name="pro" id="province" size="30" maxlength="25"></td>
                        </tr>
                        <tr>
                            <td align="left">Gender</td>
                            <td><input type="text" name="gen" id="gender" size="30" maxlength="25"></td>
                        </tr>
                        <tr>
                            <th colspan =2><button onclick="viewDeactivate()" class='btn2' id="deactivate">Deactivate</button></th>
                        </tr>

                    </table>
                </div>

            </div>
        </div>

        <div class="row">
            <div class='column'>
                <div class='card'>
                    <img class='cardimg' src= "../../Resources/Img/online.png"><br>
                    <font>Online Users</font>
                </div>
                <div class='card'>
                    <img class='cardimg' src= "../../Resources/Img/inactive.png"><br>
                    <font>Inactive Users</font>
                </div>
                <div class='card'>
                    <img class='cardimg' src= "../../Resources/Img/reported.png"><br>
                    <font>Reported Users</font>
                </div>
                <div class='card'>
                    <img class='cardimg' src= "../../Resources/Img/photograp.jpg"><br>
                    <font>Top Photographer</font>
                </div>
            </div>
        </div>



        <div id="myModal" class="modal">


            <div class="modal-content">
                <span class="close">&times;</span>

                <form>
                    <fieldset>
                        <legend><font color="black"><h1>Profile</h1></font></legend>
                        <table border="0" width="100%" height="40px" >
                            <tr>
                                <td align="left">First Name</td>
                                <td><input class="textbox" type=text name=fname size="30" maxlength="25"></td>
                            </tr>
                            <tr>
                                <td align="left">Last Name</td>
                                <td><input class="textbox" type=text name=lname size="30" maxlength="25"></td>
                            </tr>
                            <tr>
                                <td align="left">Date of Birth</td>
                                <td><input class="textbox" type=text name=dob size="30" maxlength="25"></td>
                            </tr>
                            <tr>
                                <td align="left">Gender</td>
                                <td><input class="textbox" type=text name=gender size="30" maxlength="25"></td>
                            </tr>
                            <tr>
                                <td align="left">Email</td>
                                <td><input class="textbox" type=text name=email size="30" maxlength="25"></td>
                            </tr>
                            <tr>
                                <td align="left">Address</td>
                                <td><input class="textbox" type=text name=address size="30" maxlength="25"></textarea></td>
                            </tr>
                            <tr>
                                <td align="left">Country</td>
                                <td><input class="textbox" type=text name=country size="30" maxlength="25"></td>
                            </tr>
                            <tr>
                                <td align="left">Password</td>
                                <td><input class="textbox" type=password name=pw size="30" maxlength="25"></td>
                            </tr>
                            <tr>
                                <td>Registered Date</td>
                                <td><input class="textbox" type=text name=rdate size="30" maxlength="25"></td>
                            </tr>
                            <tr>
                                <td>Deactivated Date</td>
                                <td><input class="textbox" type=text name=ddate size="30" maxlength="25"></td>
                            </tr>
                            <tr>
                                <td>Reason</td>
                                <td><input class="textbox" type=text name=reason size="30" maxlength="25"></td>
                            </tr>

                        </table>
                    </fieldset>
                </form>
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

        <script src="../../JS/Admin/UserManagement.js" type="text/javascript"></script>
    </body>
</html>
