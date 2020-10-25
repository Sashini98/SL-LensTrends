<%-- 
    Document   : question
    Created on : Oct 13, 2020, 9:59:32 AM
    Author     : Sashini Shihara
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../../CSS/forum/question.css">
        <link rel="stylesheet" href="../../CSS/footer.css">
        <link type="text/css" rel="stylesheet" href="../../CSS/header.css" />
        
        <div class="pageheader">
                    <a href="../Home.jsp" type="button"> <img src="../../Resources/Img/7.png" height="55px" width="60px"> </a>
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
        <title>Question</title>
    </head>
    <body><br><br><br>
        <div class="ques" id="ques">
            <label1>Q2346546</label1>
            <p style="font-size: 15px; color: darkblue">Person B</p> <p style="font-size: 15px; color: darkgreen;">14/09/2019</p><br>
            <h8>Selling the photos</h8><br><br><br>
            <label2>Took this using my EM1Mk2 in July this year.I attached it to my telescope so it's </label2><br><br><br>
            
            <input type="button" id="answerr" value="Answer"><input type="button" id="repo" value="Report"><br><br><br>
            <p2 style="font-size: 13px; color: gray;">3 Answers</p2><br><br>           
         </div>
        
    
        <div class="contain">
        <fieldset>
        <legend style="color: gainsboro;text-shadow: 0 0 5px black;font-size: 20px;"><h1>Answers</h1></legend><br><br>
            <div class="answer">
                 <p style="font-size: 15px; color: darkblue">Person B</p> <p style="font-size: 15px; color: darkgreen;">14/09/2019</p><br>
                <div class=" ico">
                    <a class="tup" href=""><img src="../../Resources/Img/tup.png" alt="like" style="width:27%;height:27%;"></a> <label3>&nbsp; 3   </label3><br><br><br>
                    <a class="tup" href=""><img src="../../Resources/Img/tdown.png" alt="like" style="width:30%;height:30%;"></a> <label4>&nbsp; 0   </label4>
                </div>
             
                 <div class=" answ">
                     <label2>jmagfdkjagfckyfdcyufCJhcfHYFCJHGHFYCFYFfggcfjhfgfnhgfnhgdghdgdnhdnhhjfuyFuyFj</label2><br><br><br><br>
                     <input type="button" id="comme" value="Comment"><br><br>
                                              
                 </div><br><br><br><br>
                 
                 <br><br><br><br><hr style="border:1px dashed gray">
                 <div class="comm">
                     <label5>Comments</label5><br><br>
                     <label6>Person D</label6><br>
                     <label2>jhruihkjhgjkrkgwjkhwjghkrwuhgkrghwkghgkhkghjhgkjkwhwkghwkjghwjkgvguyuytuythkjh</label2>  
                 </div>
            </div>
             <br><br><br><br><hr>
            
            <div class="answer">
                 <p style="font-size: 15px; color: darkblue">Person B</p> <p style="font-size: 15px; color: darkgreen;">14/09/2019</p><br>
                <div class=" ico">
                    <a class="tup" href=""><img src="../../Resources/Img/tup.png" alt="like" style="width:27%;height:27%;"></a> <label3>&nbsp; 3   </label3><br><br><br>
                    <a class="tup" href=""><img src="../../Resources/Img/tdown.png" alt="like" style="width:30%;height:30%;"></a> <label4>&nbsp; 0   </label4>
                </div>
                 
             
                 <div class=" answ">
                     <label2>jmagfdkjagfckyfdcyufCJhcfghghghghhghhhhggfggcfjhFMjfuyFuyFjvkyyuvtututkutdyyubiu</label2><br><br><br><br>
                     <input type="button" id="comme" value="Comment"><br><br>                                              
                 </div>
                 
                 
                 
            </div>
                                              
            <br><br><br><br><br><br><br><br><hr>
            
            <div class="answer">
                 <p style="font-size: 15px; color: darkblue">Person B</p> <p style="font-size: 15px; color: darkgreen;">14/09/2019</p><br>
                <div class=" ico">
                    <a class="tup" href=""><img src="../../Resources/Img/tup.png" alt="like" style="width:27%;height:27%;"></a> <label3>&nbsp; 3   </label3><br><br><br>
                    <a class="tup" href=""><img src="../../Resources/Img/tdown.png" alt="like" style="width:30%;height:30%;"></a> <label4>&nbsp; 0   </label4>
                </div>
             
                 <div class=" answ">
                     <label2>jmagfdkjagfckyfdcyufvuytytutiiuvovvkfggcfjhFDCMjfuyFuyktytkytuyttvytuytytkvtkuy</label2><br><br><br><br>
                     <input type="button" id="comme" value="Comment"><br><br>
                                              
                 </div>
            </div>
                                              
            <br><br><br><br><br><br><br><br><hr>
                </fieldset>

        </div>
        
        
        <div id="answ" class="modal">
            <div class="modal-content">
                <span class="close">&times;</span>
                <form>
                    <label5>Answer</label5><br><br>
                    <textarea id="body" name="body" rows="20" cols="50"></textarea><br><br>
                    <input type="submit" value="post">
                </form>
            </div>

        </div>
        
        <div id="comment" class="modal">
            <div class="modal-content">
                <span class="close">&times;</span>
                <form>
                    <label5>Comment</label5><br><br>
                    <textarea id="body" name="body" rows="20" cols="50"></textarea><br><br>
                    <input type="submit" value="post">
                </form>
            </div>

        </div>
        
         <div id="report" class="modal">
            <div class="modal-content">
                <span class="close">&times;</span>
              <h4>Please select a problem to continue</h4>
              <form>
                        <input type="checkbox" id="Inappropriate" name="Inappropriate" value="Inappropriate">Posting Inappropriate Things
                        <input type="checkbox" id="quality" name="Qality" value="quality">Low Quality Photograph
                        <input type="checkbox" id="details" name="details" value="details">Inappropriate Details
                        <input type="checkbox" id="fake" name="fake" value="fake">Fake Photograph
                        
                        <textarea id="body" name="body" rows="10" cols="30" placeholder="Something Else"></textarea><br><br>
                    <input type="submit" value="post">
              </form>     
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
             
        
      
        <script src="../../JS/Forum/Question.js" type="text/javascript"></script>
        
    </body>
</html>
