<%-- 
    Document   : PhotographerUploadPhoto
    Created on : Nov 13, 2020, 1:32:35 AM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://fonts.googleapis.com/css2?family=Be+Vietnam:wght@300&family=Didact+Gothic&family=Dr+Sugiyama&family=Poiret+One&family=Poppins:wght@300;700&family=Questrial&family=Tenali+Ramakrishna&display=swap" rel="stylesheet"> 
        <link href="https://fonts.googleapis.com/css2?family=Cinzel+Decorative:wght@400;700;900&family=Righteous&family=Sora:wght@600&family=Syne&family=Barlow:wght@400;500;700;800&display=swap" rel="stylesheet">  
        <link href="https://fonts.googleapis.com/css2?family=Lato&display=swap" rel="stylesheet">
        <link type="text/css" rel="stylesheet" href="../../CSS/header.css"/>
        <link type="text/css" rel="stylesheet" href="../../CSS/Photographer/PhotographerUploadPhoto.css"/>
        <link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:wght@300;400;600&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Lobster+Two:wght@400;700&display=swap" rel="stylesheet">
        <title>Upload</title>
    </head>
    <body style="background-color: #f9f9f9;">

        <div class="fixedheader">  
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
        </div>

        <div class="inside-header">
            <ul>
                <li><a href="#" type="button"  autofocus>To Submit</a></li>
                <li><a href="#" type="button">In Review</a></li>
                <li><a href="#" type="button">Not Accepted</a></li>
                <li><a href="#" type="button">Reviewed</a></li>
            </ul>                    
        </div>

        <div class="content" style="visibility: visible;">
            <div class="image-box">
                <input type="radio" id="r1" name="radio" checked />
                <label for="r1">
                    <img src="../../Resources/Img/profile/l1.jpg" class="selection-img" id="ls1">
                </label>

                <input type="radio" id="r2" name="radio" />
                <label for="r2">
                    <img src="../../Resources/Img/profile/l2.jpg" id="ls2" class="selection-img">
                </label>

                <input type="radio" id="r3" name="radio" />
                <label for="r3">
                    <img src="../../Resources/Img/profile/l3.jpg" id="ls3" class="selection-img">
                </label>

                <input type="radio" id="r4" name="radio" />
                <label for="r4">
                    <img src="../../Resources/Img/profile/l4.jpg" id="ls4" class="selection-img"> 
                </label>

                <input type="radio" id="r5" name="radio" />
                <label for="r5">
                    <img src="../../Resources/Img/profile/p1.jpg" id="p1" class="selection-img">
                </label>

                <input type="radio" id="r6" name="radio" />
                <label for="r6">
                    <img src="../../Resources/Img/profile/p2.jpg" id="p2" class="selection-img">
                </label>

                <input type="radio" id="r7" name="radio" />
                <label for="r7">
                    <img src="../../Resources/Img/profile/p3.jpg" id="p3" class="selection-img">
                </label>

                <input type="radio" id="r8" name="radio" />
                <label for="r8">
                    <img src="../../Resources/Img/profile/p4.jpg" id="p4" class="selection-img">
                </label>
            </div>

            <div class="details">
                <img src="../../Resources/Img/delete.svg" id="delete" style="cursor: pointer">
                <div class="images">
                    <img src="" class="detailsimg" id="image">                   
                </div>
                <div class="category">
                    <label for="category">Category:</label>
                    <select name="category" id="category" onfocus="this.size = 10;" onblur='this.size = 1;' 
                            onchange='this.size = 1;this.blur();'>

                        <option value="Animals">Animals</option>
                        <option value="Buildings and Architecture">Buildings and Architecture</option>
                        <option value="Business">Business</option>
                        <option value="Drinks">Drinks</option>
                        <option value="The Environment">The Environment</option>
                        <option value="States of Mind">States of Mind</option>
                        <option value="Food">Food</option>
                        <option value="Hobbies and Leisure">Hobbies and Leisure</option>
                        <option value="Industry">Industry</option>
                        <option value="Landscapes">Landscapes</option>
                        <option value="Lifestyle">Lifestyle</option>
                        <option value="People">People</option>
                        <option value="Plants and Flowers">Plants and Flowers</option>
                        <option value="Culture and Religion">Culture and Religion</option>
                        <option value="Science">Science</option>
                        <option value="Social Issues">Social Issues</option>
                        <option value="Sports">Sports</option>
                        <option value="Technology">Technology</option>
                        <option value="Transport">Transport</option>
                        <option value="Travel">Travel</option>
                        <option value="volvo">Portraits</option>

                    </select>
                </div>
                <div class="title-area">
                    <textarea id="title-area" name="title" rows="5" cols="37" placeholder="Type title here (Max: 200 Characters)"></textarea>
                </div>
                <div class="releases">
                    <p>Releases<br><span style="color: rgba(12, 18, 28, 0.6); margin-bottom: 5%;" >For recognizable people or property.</span><br>
                        <span style="color:#415daa;" id="download">Download Releases</span> &nbsp; &nbsp; &nbsp;<span style="color:#f6862a;" id="upload">Add release</span></p>

                    <div id="myModal" class="modal">

                        <!-- Modal content -->
                        <div class="modal-content">
                            <span class="close">&times;</span>
                            <div class="modal-heading">
                                <h1>Digital release type </h1>
                                <p> Which type of release do you need? </p>
                            </div>
                            <div class="form-download">
                                <p>Model Release</p><a href="../../Resources/Forms/model release.pdf" download>Download</a> <br> <br>
                                <p>Property Release</p><a href="../../Resources/Forms/property release.pdf" download>Download</a>
                            </div>
                        </div>

                    </div>

                </div>

                <div class="keyword-area">
                    <textarea id="keyword-area" name="title" rows="5" cols="45" placeholder="Add Keywords (Max: 50 keywords) &#10separate with commas"></textarea>
                </div>

                <div class="file-name">
                    <p>File ID(s): 365447169 </p>
                    <p>Original name(s): IGP_4237_1.jpg </p>
                </div>
                
                <div class="submit">
                    <a href="#" type="button" id="submit">Submit</a>
                </div>
                
            </div>


        </div>

        <script type="text/javascript" src="../../JS/Photohrapher/PhotographerUploadPhoto.js"></script>
        <script>
                                window.onload = function () {
                                    elm = document.querySelectorAll('.selection-img');
                                    //	main = document.querySelectorAll('main')[0];
                                    detailsimg = document.querySelector('.detailsimg');
                                    detailsimg.src = "../../Resources/Img/profile/l1.jpg";


                                    var images = ['../../Resources/Img/profile/l1.jpg', '../../Resources/Img/profile/l2.jpg', '../../Resources/Img/profile/l3.jpg',
                                        '../../Resources/Img/profile/l4.jpg', '../../Resources/Img/profile/p1.jpg', '../../Resources/Img/profile/p2.jpg',
                                        '../../Resources/Img/profile/p3.jpg', '../../Resources/Img/profile/p4.jpg'];
                                    var img_now = 0;



                                    elm.forEach(function (elm) {
                                        elm.addEventListener('click', function (event) {
                                            detailsimg.src = event.target.src;
                                            if (img_now >= images.length) {
                                                img_now = 0;
                                            }
                                        })
                                    })

                                }

                                function chooseFile()
                                {
                                    document.getElementById("upload").click();
                                }
                                var loadFile = function (event)
                                {
                                    var image = document.getElementById('output');
                                    image.src = URL.createObjectURL(event.target.files[0]);
                                };
        </script>

    </body>
</html>
