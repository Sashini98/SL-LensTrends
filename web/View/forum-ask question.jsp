
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../CSS/ques.css">

        <title>Ask a Question</title>


        <!--        <header>
                    <a class="logo" href="/"><img src="ClientAssets/images/logo.svg" alt="logo"></a>
                    <nav>
                        <ul class="nav__links">
                            <li><a href="#">Services</a></li>
                            <li><a href="#">Projects</a></li>
                            <li><a href="#">About</a></li>
                        </ul>
                    </nav>
                    <a class="cta" href="#"><button>Contact</button></a>
                </header>-->
    </head>
    <body>

        <div style="float: left; "> 
            <form>
                <fieldset>
                    <legend><h1>Ask question</h1></legend><br><br>
                    <h3><label for="Title"><b>Title</b></label><br></h3>
                    <input type="text" id="title" name="title"><br><br><br>

                    <h3><label for="Body"><b>Body</b></label><br></h3>
                    <div class="btn-group">
                        <button type="button" style="margin-left:1.8em"id="bold" onclick="myFunction1();
                                    > <b>B</b> < /button>
        <button type="button" id="italic"><i>I</i></button>              
                        <button type="button" id="image"><img src="../Resources/Img/gallery.png" style="width:20px;height:14px;"  span="Image"></button>
                        <button type="button" id="link"><img src="../Resources/Img/link.png" style="width:20px;height:14px;"></button>
                    </div><br><br><br>


                    <textarea id="body" name="body" rows="10" cols="50"></textarea><br><br><br>

                    <h3><label for="Category"><b>Category</b></label><br></h3>
                    <div class="dropdown-container">
                        <select>
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

                <input type="submit" id="submit" value="Ask my question">

            </form>
        </div>    
        <div style="float: right; "> <img src="../Resources/Img/ques2.png" style="width:450px;height:450px;margin-top: 10em;"></div>
    </body>

    <div id="img1" style="position: absolute;left: 10px;top: 1020px;z-index: 2; box-shadow: 4px 4px 5px #9c9898;"> <img src="../Resources/Img/camfoot1.jpg" style="width:380px;height:500px;"></div>
    <div>
        <footer class="footer-distributed">

            <div class="footer-left">
                <h3><span><img src="../Resources/Img/logo.png" style="width:200px;height:190px;margin-left: 300px;margin-right: -85px;margin-top: -45px;"></span>Sl LensTrends</h3><br><br><br><br><br><br>

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

                    <a href="#"><i class="fa fa-facebook"><img src="../Resources/Img/fb.png" style="width:30px;height:30px;"></i></a>
                    <a href="#"><i class="fa fa-twitter"><img src="../Resources/Img/insta.png" style="width:30px;height:30px;"></i></a>
                    <a href="#"><i class="fa fa-linkedin"><img src="../Resources/Img/download.png" style="width:30px;height:30px;"></i></a>
                    <a href="#"><i class="fa fa-github"><img src="../Resources/Img/wtsap.png" style="width:30px;height:30px;"></i></a>
                    <br><br><br><br>
                    <hr style="width:1000px;">
                    <h6>@2020 All Rights Reserved</h6>
                </div>

            </div>

            <div class="footer-right">
                <h4>Support</h4>
                <a style="color: white; margin-left:-340px;font-size: 1.15em;text-decoration: none;" href="#">Contact Us</a><br>
                <!--                <div class="email">
                             <form>   
                                 <input type="text" id="em" name="em" placeholder="Enter your email address">
                                <input type="submit" id="submit" value="Sign Up">
                             </form>
                </div>-->
                <h4 style="margin-top: 55px;font-size: 1.4em;">Create an account</h4>
                <a style="margin-left:-340px;font-size: 1.15em; display: inline-block;
                   padding: 20px 40px;
                   font-size: 15px;
                   cursor: pointer;
                   text-align: center;
                   text-decoration: none;
                   outline: none;
                   color: #fff;
                   background-color: #c93a32;
                   border: none;
                   border-radius: 15px;" href="#">Sign Up</a><br>

            </div>
        </footer>
    </div>
</html>
