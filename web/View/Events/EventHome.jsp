<%-- 
    Document   : EventHome
    Created on : Oct 27, 2020, 6:49:31 PM
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


        <title>Events</title>



    </head>
    <body>
        
        
         <div class="fixedheader">  
            <div class="pageheader">
                <a href="../Home.jsp" type="button"> <img src="../../Resources/Img/7.png" height="55px" width="60px"> </a>
                <h1>Sl Lens Trends </h1>

                <div class="headerul">
                    <ul>

                        <li><a href="#" type="button"> Events </a></li>
                        <li><a href="../User/AdvancedSearch.jsp" type="button"> Album </a></li>
                        <li><a href="../User/ClientProfileUpdate.jsp" type="button"> Profile </a></li>
                        <li><a href="../Fourm/forum home.jsp" type="button"> Forum </a></li>
                        <li><a href="#" type="button"> Notifications </a></li>

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
        <br><br><br><br><br>
          
        
        
        <div class="contain">
        <div class="leftp">
            <input type="button" class="active" value="Ongoing Events"><br><br><br>
            <input type="button" value="Post an Event" onclick="location.href = 'EventsPost.jsp'"><br>
            <input type="button" value="Past Events" onclick="location.href = 'Past Events.jsp'"><br>

        </div>
        
            &emsp;<h9>Ongoing Events</h9><br><br>   
            
        <div class="rightp">
            <div class="sec" style=" border-top: 10px solid cyan; ">
            <p style="font-size: 15px; color: darkblue">Event ID</p><p style="font-size: 15px; color: darkgreen;">Date</p><br>
            <h8>Event Name</h8><br><br><br>
                <input type="button" value="End Event"><br>
           
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

