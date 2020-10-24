
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../../CSS/forum/askQ.css">
        <link rel="stylesheet" href="../../CSS/footer.css">
        <link rel="stylesheet" href="../../CSS/header.css">

        <title>Ask a Question</title>


        <header>
                    <div class="hd">
                    <a class="logo" href="/"><img src="../../Resources/Img/logo.png" alt="logo"></a>
                    <lab>SL LensTrends</lab>
                        
                <nav class="nv">
                        <ul class="nav__links">
                            <li><a href="#">Home</a></li>
                            <li><a href="#">Gallery</a></li>
                            <li><a href="#">Profiles</a></li>
                            <li><a class="active" href="#">Forum</a></li>
                            <li><a href="#">About Us</a></li>
                        </ul>
                    </nav>
                    </div>
                </header>
    </head>
    <body style="background-image: url(../../Resources/Img/askq.jpg);background-repeat: no-repeat; background-size: cover">

        <div style="float: left; "> 
            <form  action="../../AskQues" method="POST">
                <fieldset>
                    <legend style="color: gainsboro;text-shadow: 0 0 5px black;font-size: 20px;"><h1>Ask question</h1></legend><br><br>
                    <h3><label for="Title"><b>Title</b></label><br></h3>
                    <input type="text" id="title" name="title"><br><br><br>

                    <h3><label for="Body"><b>Body</b></label><br></h3>
                    <div class="btn-group">

                        <button type="button" style="margin-left:4%"id="bold" name="bold"> <b>B</b> </button>
                        <button type="button" id="italic"><i>I</i></button><br><br><br>      
                        <button type="button" id="image"><img src="../../Resources/Img/gallery.png" style="width:7%;height:6%;"></button>
                        <button type="button" id="link"><img src="../../Resources/Img/link.png" style="width:7%;height:6%;left: 0%"></button>


                    </div><br><br><br>


                    <textarea id="body" name="body" rows="10" cols="50"></textarea><br><br><br>

                    <h3><label for="Category"><b>Category</b></label><br></h3>
                    <div class="dropdown-container">
                        <select name="Category">
                            <option value="beginers">-------------<p><i class="arrow down"></i></p></option>
                            <option value="beginers">Beginners questions</option>
                            <option value="equipments">Photo Equipments</option>
                            <option value="techniques">Photography and Techniques</option>
                            <option value="mobile">Mobile Photography</option>
                        </select>
                    </div>

                    <h3><label for="Tags"><b>Tags</b></label></h3>
                    <p><label>&nbsp&nbsp Add up to 5 tags to describe what your question is about</label><br></p>
                    <input type="text" id="tags" name="tags"><br><br><br>

                </fieldset>

                <input type="submit" id="submit" value="Ask my question"><br><br><br>

            </form>
        </div>    
        <!--<div style="float: right; "> <img src="../../Resources/Img/ques2.png" style="width:85%;height:85%;margin-top: 30%; margin-left: 30%"></div>-->

    <br>

    <footer>    
        <br><div class="container">      
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
    
    <script src="../../JS/Forum/AskQues.js" type="text/javascript"></script>
    </body>
</html>


