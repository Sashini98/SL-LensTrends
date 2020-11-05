<%-- 
    Document   : forum home
    Created on : Oct 9, 2020, 4:56:19 PM
    Author     : Sashini Shihara
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../../CSS/forum/fhome.css">
        <link rel="stylesheet" href="../../CSS/footer.css">
        <link type="text/css" rel="stylesheet" href="../../CSS/header.css" />
        <link href="https://fonts.googleapis.com/css2?family=Be+Vietnam:wght@300&family=Didact+Gothic&family=Dr+Sugiyama&family=Poiret+One&family=Poppins:wght@300&family=Questrial&family=Tenali+Ramakrishna&display=swap" rel="stylesheet"> 
        <link href="https://fonts.googleapis.com/css2?family=Cinzel+Decorative:wght@400;700&family=Righteous&family=Sora:wght@600&family=Syne&display=swap" rel="stylesheet">  


        <title>Forum</title>



    </head>
    <body onload="view()">


        <div class="fixedheader">  
            <div class="pageheader">
                <a href="../Home.jsp" type="button"> <img src="../../Resources/Img/7.png" height="55px" width="60px"> </a>
                <h1>Sl Lens Trends </h1>

                <div class="headerul">
                    <ul>

                       <li><a href="../Events/EventHome.jsp" type="button"> Events </a></li>
                        <li><a href="../User/AdvancedSearch.jsp" type="button"> Album </a></li>
                        <li><a href="../User/ClientProfileUpdate.jsp" type="button"> Profile </a></li>
                        <li><a href="forum home.jsp" type="button"> Forum </a></li>
                        <li><a href="../Notifications/notificationsHome.jsp" type="button"> Notifications </a></li>

                    </ul>
                </div>

                <div class="notifyicn">
                    <a href="#" type="button"> <img src="../../Resources/Img/notification.png"> </a>

                </div>

                <div class="logout">
                    <a href="../login.jsp" type="button"> Login </a>
                </div>
            </div>
        </div>

        <br><br><br><br>

        <div class="contain">
            <div class="leftp">
                <input type="button" class="active" value="Forum"><br><br><br>
                <input type="button" value="Techniques"><br>
                <input type="button" value="Equipments"><br>
                <input type="button" value="Editing"><br>
                <input type="button" value="Industry"><br>
                <input type="button" value="Other"><br><br><br>
                <div class="dropdown-container">
                    <select>
                        <option value="sort">Sort By<p><i class="arrow down"></i></p></option>
                        <option value="date">Sort By : Date</option>
                        <option value="answ">Sort By : Answer Count</option>
                        <option value="likes">Sort By : Likes</option>
                    </select>
                </div><br><br>
                <input type="button" value="Ask a Question" onclick="location.href = 'forum-ask question.jsp'"><br><br><br>
            </div>

            <div class="rightp" id="q">
<!--                <div class="sec" style=" border-top: 10px solid cyan; ">
                    <p id="name" style="font-size: 15px; color: darkblue">Person A</p><p id="date" style="font-size: 15px; color: darkgreen;">25/04/2020</p><br>
                    <h8 id="title">Types of Lenses</h8><br><br><br>

                    <label id="question">I just found 3 lenses in the attic. I attached a picture of them. For 1 and 2 I have some ideas, but I have no idea what 3 could be...</label><br><br>
                    <a id="category" href="">#Equipments</a><br><br>
                    <p2 style="font-size: 13px; color: darkgrey;">0 Answers</p2><input type="button" value="View"><br>

                </div>

                <div class="sec"style=" border-top: 10px solid greenyellow; ">
                    <p style="font-size: 15px; color: darkblue">Person B</p> <p style="font-size: 15px; color: darkgreen;">14/09/2019</p><br>
                    <h8>Selling the photos</h8><br><br><br>
                    <label>Took this using my EM1Mk2 in July this year.I attached it to my telescope so it's...</label><br><br><br>
                    <a href="">#Industry</a><br><br>
                    <p2 style="font-size: 13px; color: darkgrey;">3 Answers</p2><input type="button" value="View"><br>

                </div>

                <div class="sec" style=" border-top: 10px solid darkviolet; ">

                    <p style="font-size: 15px; color: darkblue">Person C</p> <p style="font-size: 15px; color: darkgreen;">08/08/2020</p><br>
                    <h8>Using Adobe</h8><br><br><br>
                    <label>Using Adobe LR CC and PS 2020 having downloaded from Adobe.Have imported some Free Presets but wish to reduce the opacity simply. From the 'web' the download...</label><br><br>
                    <a href="">#Techniques #Editing</a><br><br>
                    <p2 style="font-size: 13px; color: darkgrey;">2 Answers</p2><input type="button" value="View"><br>

                </div>-->

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

          <script src="../../JS/Forum/home.js" type="text/javascript"></script>

    </body>


</html>
