<%-- 
    Document   : products
    Created on : Jul 19, 2020, 11:10:12 PM
    Author     : Madusha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Photo Management</title>
        <link rel="stylesheet" href ="../../CSS/Admin/Admin.css">
        <link rel="stylesheet" href ="../../CSS/Admin/intermediate.css">
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
            <div class='column'>
                <div class='card'>
                    <font color="blue">Category</font>
                    <hr>
                    <table border="0" width="100%" height="40px" >
                        <tr>
                            <th align="left">Add Category</th>
                            <th><input type=text name=name size="20" maxlength="25"></th>
                            <th><button>Save</button></th>
                        </tr>
                        <tr>
                            <th></th>
                            <td><center><input id="option" class="btn2" type='submit' value="Options"></center></td>
                        </tr>
                    </table>
                </div>
                <div class='card'>
                    <font color="blue">In-review Photographs </font><br>
                    <hr>
                    <button class='btn2'>VIew</button>
                </div>
            </div>
        </div>
        <div class="row">
            <div class='column'>
                <div class='card'>
                    <font color="blue">Reported Photographs</font>
                    <hr>
                    <table border="1" width="100%" height="40px" >
                        <thead class="table_top">
                            <tr>
                                <th>ID</th>
                                <th>Title</th>
                                <th>Option</th>
                            </tr>
                        </thead>
                    </table><br>
                    <form>
                        <table border="0" width="100%" height="40px" >
                            <tr>
                                <td align="left">Reason</td>
                                <td><input class="textbox" type=text name=name size="30" maxlength="25"></td>
                            </tr>
                        </table><br>
                    </form>
                </div>

                <div class='card'>
                    <font color="blue">Remove Photographs</font><hr>
                    <input type="text" placeholder="Type here">
                    <button>Search</button>
                    <table border="0" width="100%" height="40px" >
                        <tr>
                        <div class='card'>
                            <tr>
                                <td align="left">Category</td>
                                <td><input type=text name=category size="30" maxlength="25"></td>
                            </tr>
                            <tr>
                                <td align="left">Selling Price</td>
                                <td><input type=text name=price size="30" maxlength="25"></td>
                            </tr>
                            <tr>
                                <td align="left">Photographer</td>
                                <td><input type=text name=pname size="30" maxlength="25"></td>
                            </tr>
                            <tr>
                                <td align="left">Reason</td>
                                <td><input type=text name=reason size="30" maxlength="25"></td>
                            </tr>
                            <tr>
                                <th colspan =2><button class='btn2'>Remove</button></th>
                            </tr>

                    </table>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="column">
                <div class='card'>
                    <font color="blue">Reported Forum Questions</font>
                    <hr><br>
                    <table border="1" width="100%" height="40px" >
                        <thead class="table_top">
                            <tr>
                                <th>ID</th>
                                <th>Title</th>
                                <th>Option</th>
                            </tr>
                        </thead>
                    </table><br>
                    <form>
                        <table border="0" width="100%" height="40px" >
                            <tr>
                                <td align="left">Category</td>
                                <td><input class="textbox" type=text name=category size="30" maxlength="25"></td>
                            </tr>
                            <tr>
                                <td align="left">Attachment</td>
                                <td><input class="textbox" type=text name=attach size="30" maxlength="25"></td>
                            </tr>
                            <tr>
                                <td align="left">Tags</td>
                                <td><input class="textbox" type=text name=tags size="30" maxlength="25"></td>
                            </tr>
                            <tr>
                                <td align="left">Reason</td>
                                <td><input class="textbox" type=text name=name size="30" maxlength="25"></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td><input class="reset" type="reset" value="Remove" ></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td><input class="submit" type="submit" value="Cancel" ></td>
                            </tr>
                        </table><br>
                    </form>
                </div>
            </div>
        </div>

        <div id="myModal" class="modal">
            <div class="modal-content">
                <span class="close">&times;</span>
                <form>
                    <fieldset>
                        <legend><font color="black"><h1>Category</h1></font></legend>
                        <table border="0" width="30%" height="40px" >
                            <tr>
                                <td align="left">Search</td>
                                <td><input class="textbox" type=text name=name size="30" maxlength="25" placeholder="Type here..."></td>
                                <td><right><img src= "../../Resources/Img/search.png"></right></td>
                            </tr>
                            <tr>
                                <td align="left">Category Name:</td>
                                <td><input class="textbox" type=text name=name size="30" maxlength="25"></td>
                            </tr>
                            <tr>
                                <td align="left">Category Type:</td>
                                <td><input class= "textbox" type=text name=name size="30" maxlength="25"></td>
                            </tr>
                            <tr>
                                <td><center><input class="submit" type="submit" value="Update" ></center></td>
                            <td><center><input class="reset" type="reset" value="Remove" ></center>
                            </tr>


                        </table>

                    </fieldset>
                </form>
            </div>
        </div>


        <script src="../../JS/Admin/PhotoManagement.js" type="text/javascript"></script>

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
