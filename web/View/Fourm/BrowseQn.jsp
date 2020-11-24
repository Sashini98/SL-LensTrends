<%-- 
    Document   : BrowseQn
    Created on : Nov 5, 2020, 8:10:00 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
    String loggedAs = (String) request.getAttribute("loggedAs");
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://fonts.googleapis.com/css2?family=Be+Vietnam:wght@300&family=Didact+Gothic&family=Dr+Sugiyama&family=Poiret+One&family=Poppins:wght@300;700&family=Questrial&family=Tenali+Ramakrishna&display=swap" rel="stylesheet"> 
        <link href="https://fonts.googleapis.com/css2?family=Cinzel+Decorative:wght@400;700;900&family=Righteous&family=Sora:wght@600&family=Syne&family=Barlow:wght@400;500;700;800&display=swap" rel="stylesheet">  
        <link href="https://fonts.googleapis.com/css2?family=Lato&display=swap" rel="stylesheet">
        <link type="text/css" rel="stylesheet" href="../../CSS/forum/BrowseQn.css"/>
        <link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:wght@300;400;600&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Lobster+Two:wght@400;700&display=swap" rel="stylesheet">
        <title>Questions</title>
    </head>
    <body style="background-color: #f7f6f9;" onload="view()">
   

        <div class="fixedheader">  

            <div class="pageheader">
                <%
                    if (loggedAs.equals("client") || loggedAs.equals("nl")) {
                %>
                <a href="../Home.jsp" type="button"> <img src="../../Resources/Img/7.png" height="55px" width="60px"> </a>
                    <%
                    } else if (loggedAs.equals("photographer")) {
                    %>

                <a href="../PhotographerHome.jsp" type="button"> <img src="../../Resources/Img/7.png" height="55px" width="60px"> </a>
                    <%
                        }
                    %>
                <h1>Sl Lens Trends </h1>

                <div class="headerul">
                    <ul>

                        <%
                            if (loggedAs.equals("client")) {
                        %>
                        <li><a href="<%= request.getContextPath()%>/View/User/AdvancedSearch.jsp" type="button"> Photographs </a></li>
                        <li><a href="<%= request.getContextPath()%>/View/User/PhotographerSearch.jsp" type="button"> Photographers </a></li>
                        <li><a href="<%= request.getContextPath()%>/View/Events/MainEventHome.jsp" type="button"> Events </a></li>
                        <li><a href="<%= request.getContextPath()%>/View/Fourm/MainForum.jsp" type="button"> Forum </a></li>
                        <li><a href="<%= request.getContextPath()%>/View/User/Cart.jsp" type="button"> Cart </a></li>
                        <li><a href="<%= request.getContextPath()%>/View/User/purchasehistory.jsp" type="button"> Purchase History </a></li>
                        <li><a href="<%= request.getContextPath()%>/View/User/ClientProfileUpdate.jsp" type="button"> Profile </a></li>
                            <%
                            } else if (loggedAs.equals("photographer")) {
                            %>

                        <li><a href="<%= request.getContextPath()%>/View/Fourm/MainForum.jsp" type="button"> Forum </a></li>
                        <li><a href="<%= request.getContextPath()%>/View/User/PhotographerSearch.jsp" type="button"> Photographers </a></li>
                        <li><a href="<%= request.getContextPath()%>/View/Photographer/uploadPhotos.jsp" type="button"> Upload </a></li>
                        <li><a href="<%= request.getContextPath()%>/View/Photographer/PhotographerProfile.jsp" type="button"> Profile </a></li>

                        <%
                        } else if (loggedAs.equals("nl")) {
                        %>
                        <li><a href="<%= request.getContextPath()%>/View/User/AdvancedSearch.jsp" type="button"> Photographs </a></li>
                        <li><a href="<%= request.getContextPath()%>/View/User/PhotographerSearch.jsp" type="button"> Photographers </a></li>
                        <li><a href="<%= request.getContextPath()%>/View/Fourm/MainForum.jsp" type="button"> Forum </a></li>
                        <li><a href="<%= request.getContextPath()%>/View/Events/EventHome.jsp" type="button"> Events </a></li>

                        <%
                            }
                        %>

                    </ul>
                </div>
                <div class="notifyicn">
                    <a href="#" type="button"> <img src="../../Resources/Img/notification.png"> </a>
                </div>

                <div class="logout">
                    <%
                        if (!loggedAs.equals("nl")) {
                    %>
                    <a href="../../LogOut?loc=fhbq" type="button"> Logout </a>
                    <%
                    } else {
                    %>
                    <a href="../login.jsp?loc=fhbq" >Login</a> 
                    <%
                        }
                    %>
                </div>

            </div>

        </div>

        <div class="main-content">

            <div class="side-box"> 
                <div class="filter">
                    <p>Filer by:</p>
                    <label class="container">No answer
                        <input type="checkbox" checked="checked">
                        <span class="checkmark"></span>
                    </label>
                    <label class="container">With Images
                        <input type="checkbox">
                        <span class="checkmark"></span>
                    </label>
                    <label class="container">Most Likes
                        <input type="checkbox">
                        <span class="checkmark"></span>
                    </label>
                    <label class="container">Most answers
                        <input type="checkbox">
                        <span class="checkmark"></span>
                    </label>
                </div>

                <div class="filter-radio">
                    <p>Short by:</p>
                    <label class="container-radio">Newest
                        <input type="radio" checked="checked" name="radio">
                        <span class="checkmark-radio"></span>
                    </label>
                    <label class="container-radio">Recent Questions
                        <input type="radio" name="radio">
                        <span class="checkmark-radio"></span>
                    </label>
                    <label class="container-radio">Date
                        <input type="radio" name="radio">
                        <span class="checkmark-radio"></span>
                    </label><!--
                    <label class="container-radio">Four
                        <input type="radio" name="radio">
                        <span class="checkmark-radio"></span>
                    </label>-->

                </div>

                <div class="ask-qn">
                    <a href="AskQues.jsp" type="button">Ask Questions </a>
                </div>

            </div>  
            <div name="s" id="s">
<!--                <div class="questions">                
                    <h2>
                        FoV of One Plus 6T?
                    </h2>
                    <p>
                        I was wondering what the Field of View is for the rear Camera is for the One Plus 6T. The information I've been able to gather so far but I'm not sure if the information is 100% right. 4.25mm focal ... 
                    </p>
                    <label><a href="#" type="button">photography</a></label>
                    <label><a href="#" type="button">FoV</a></label>
                    <label><a href="#" type="button">camera</a></label>
                    <label><a href="#" type="button">focal</a></label>  
                    <span>Posted by: Aaketk18</span> <span id="time">1 min ago</span>   
                    <div class="updown">
                        <a href="#" type="button"><img src="../../Resources/Img/up.png"></a> 
                        <span id="up">300</span>
                        <a href="#" type="button"><img src="../../Resources/Img/down.png"></a>
                        <span id="down">126</span>
                    </div>
                    <div class="answer">
                        <a href="#" type="button" id="myBtn1" onclick="popupanswer('myBtn1')">5 answers</a>
                        <%
                            if (loggedAs.equals("photographer")) {
                        %>
                        <a href="#" type="button" id="myAns1">Answer Now</a>
                        <%
                            }
                        %>
                    </div>

                    <div id="myModal1" class="modal">

                        Modal content 
                        <div class="modal-content">
                            <span class="close1">&times;</span>

                            <div class="answerqn">
                                <p>You unfortunately have very little control over the iPhone camera. You can only lock or unlock the exposure, white balance, and focus modes.
                                    Camera+ actually does not have control over anything you described. It used to be able to as it hacked the hardware, which is naturally a great way to get your app rejected by the reviewers.
                                    I hope that iOS6 will give developers greater control as it is a PITA.</p> 
                                <span>Posted by: Jhon</span> <span id="time">1Hour 30min</span>
                                <div class="updown">
                                    <a href="#" type="button"><img src="../../Resources/Img/up.png"></a> 
                                    <span id="up">43</span> 
                                    <a href="#" type="button"><img src="../../Resources/Img/down.png"></a>
                                    <span id="down">456</span>
                                </div>
                            </div>

                            <div class="answerqn">
                                <p>You unfortunately have very little control over the iPhone camera. You can only lock or unlock the exposure, white balance, and focus modes.
                                    Camera+ actually does not have control over anything you described. It used to be able to as it hacked the hardware, which is naturally a great way to get your app rejected by the reviewers.
                                    I hope that iOS6 will give developers greater control as it is a PITA.</p> 
                                <span>Posted by: Aaketk</span> <span id="time">12 Jan 2020</span>
                                <div class="updown">
                                    <a href="#" type="button"><img src="../../Resources/Img/up.png"></a> 
                                    <span id="up">13</span> 
                                    <a href="#" type="button"><img src="../../Resources/Img/down.png"></a>
                                    <span id="down">46</span>
                                </div>
                            </div>

                            <div class="answerqn">
                                <p>a space through which light passes in an optical or photographic instrument, especially the variable opening by which light enters a camera. In iOS you can not control the aperture of camera of device before iPhone 7. In latest device I am not sure. </p> 
                                <span>Posted by: Hiruna Keshara</span> <span id="time">14 Feb 2020</span>
                                <div class="updown">
                                    <a href="#" type="button"><img src="../../Resources/Img/up.png"></a> 
                                    <span id="up">103</span> 
                                    <a href="#" type="button"><img src="../../Resources/Img/down.png"></a>
                                    <span id="down">416</span>
                                </div>
                            </div>

                            <div class="answerqn">
                                <p>a space through which light passes in an optical or photographic instrument, especially the variable opening by which light enters a camera. In iOS you can not control the aperture of camera of device before iPhone 7. In latest device I am not sure. </p> 
                                <div class="answerimg">
                                    <img src="../../Resources/Img/answer1.jpg">
                                    <img src="../../Resources/Img/answer2.jpg">
                                </div>
                                <span>Posted by: Hiruna Keshara</span> <span id="time">14 Feb 2020</span>
                                <div class="updown">
                                    <a href="#" type="button"><img src="../../Resources/Img/up.png"></a> 
                                    <span id="up">103</span> 
                                    <a href="#" type="button"><img src="../../Resources/Img/down.png"></a>
                                    <span id="down">416</span>
                                </div>
                            </div>

                        </div>

                    </div>
                </div>

                <div class="questions">                
                    <h2>Digital Image Processing (Computational Photography)</h2>
                    <p>I am working on image enhancement before its formation and hence this field is called computational photography. My doubt is when I enhance any image through some algorithms I have the raw image as well as the reference image and I am finding out the RMS Error (RMSE) between the enhanced and reference image but I don't know till what maximum value of RMSE that new image is acceptable. I just want to know the acceptable range of RMSE.</p>
                    <label><a href="#" type="button">photography</a></label>
                    <label><a href="#" type="button">FoV</a></label>
                    <label><a href="#" type="button">camera</a></label>
                    <label><a href="#" type="button">focal</a></label>  
                    <span>Posted by: Aaketk18</span> <span id="time">5sec ago</span>   
                    <div class="updown">
                        <a href="#" type="button"><img src="../../Resources/Img/up.png"></a> 
                        <span id="up">310</span>
                        <a href="#" type="button"><img src="../../Resources/Img/down.png"></a>
                        <span id="down">23</span>
                    </div>
                    <div class="answer">
                        <a href="#" type="button" id="myBtn2" onclick="popupanswer('myBtn2')">45 answers</a>
                        <a href="#" type="button" id="myAns2">Answer Now</a>
                    </div>
                    <div id="myModal2" class="modal">

                        Modal content 
                        <div class="modal-content">
                            <span class="close2">&times;</span>

                            <div class="answerqn">
                                <p>You unfortunately have very little control over the iPhone camera. You can only lock or unlock the exposure, white balance, and focus modes.
                                    Camera+ actually does not have control over anything you described. It used to be able to as it hacked the hardware, which is naturally a great way to get your app rejected by the reviewers.
                                    I hope that iOS6 will give developers greater control as it is a PITA.</p> 
                                <span>Posted by: Jhon</span> <span id="time">1Hour 30min</span>
                                <div class="updown">
                                    <a href="#" type="button"><img src="../../Resources/Img/up.png"></a> 
                                    <span id="up">43</span> 
                                    <a href="#" type="button"><img src="../../Resources/Img/down.png"></a>
                                    <span id="down">456</span>
                                </div>
                            </div>

                            <div class="answerqn">
                                <p>You unfortunately have very little control over the iPhone camera. You can only lock or unlock the exposure, white balance, and focus modes.
                                    Camera+ actually does not have control over anything you described. It used to be able to as it hacked the hardware, which is naturally a great way to get your app rejected by the reviewers.
                                    I hope that iOS6 will give developers greater control as it is a PITA.</p> 
                                <span>Posted by: Aaketk</span> <span id="time">12 Jan 2020</span>
                                <div class="updown">
                                    <a href="#" type="button"><img src="../../Resources/Img/up.png"></a> 
                                    <span id="up">13</span> 
                                    <a href="#" type="button"><img src="../../Resources/Img/down.png"></a>
                                    <span id="down">46</span>
                                </div>
                            </div>

                            <div class="answerqn">
                                <p>a space through which light passes in an optical or photographic instrument, especially the variable opening by which light enters a camera. In iOS you can not control the aperture of camera of device before iPhone 7. In latest device I am not sure. </p> 
                                <span>Posted by: Hiruna Keshara</span> <span id="time">14 Feb 2020</span>
                                <div class="updown">
                                    <a href="#" type="button"><img src="../../Resources/Img/up.png"></a> 
                                    <span id="up">103</span> 
                                    <a href="#" type="button"><img src="../../Resources/Img/down.png"></a>
                                    <span id="down">416</span>
                                </div>
                            </div>

                            <div class="answerqn">
                                <p>a space through which light passes in an optical or photographic instrument, especially the variable opening by which light enters a camera. In iOS you can not control the aperture of camera of device before iPhone 7. In latest device I am not sure. </p> 
                                <div class="answerimg">
                                    <img src="../../Resources/Img/answer1.jpg">
                                    <img src="../../Resources/Img/answer2.jpg">
                                </div>
                                <span>Posted by: Hiruna Keshara</span> <span id="time">14 Feb 2020</span>
                                <div class="updown">
                                    <a href="#" type="button"><img src="../../Resources/Img/up.png"></a> 
                                    <span id="up">103</span> 
                                    <a href="#" type="button"><img src="../../Resources/Img/down.png"></a>
                                    <span id="down">416</span>
                                </div>
                            </div>

                        </div>

                    </div>

                </div>

                <div class="questions">                
                    <h2>NFC Photography Identification</h2>
                    <p>There was a music event a friend of mine went to and they had a few photographers waling around out there. The photographers took photos that were instantly uploaded to the users facebook account via an NFC wristband. The workflow when it was explained to me looks like this: <br> <br>

                        Step-1 Get a nfc wristband at the Kiosk- Facebook will be encoded into the wristband.<br>

                        Step-2 Walk around the event. If a photographer takes your picture, hold your wrist to the camera and the image will be watermarked with event/sponsor logos at the bottom and posted to your facebook account. <br> <br>

                        So, I was thinking how this could possibly be done- I googled and googled, but I got nothing. Here's my guess- All the FB authentication can be in the wristband. An EyeFi SD card has the ability to take a photo and transmit it. NFC Arduino reader could read the persons wristband, authenticate, then go into the images and pull the last photo that was taken and post it to the users fb page. What do you think?</p>
                    <label><a href="#" type="button">photography</a></label>
                    <label><a href="#" type="button">FoV</a></label>
                    <label><a href="#" type="button">camera</a></label>
                    <label><a href="#" type="button">focal</a></label>  
                    <span>Posted by: Aaketk18</span> <span id="time">on 12 Nov 2020</span>   
                    <div class="updown">
                        <a href="#" type="button"><img src="../../Resources/Img/up.png"></a> 
                        <span id="up">98</span>
                        <a href="#" type="button"><img src="../../Resources/Img/down.png"></a>
                        <span id="down">12</span>
                    </div>
                    <div class="answer">
                        <a href="#" type="button" id="myBtn3" onclick="popupanswer('myBtn3')">0 answers</a>
                        <a href="#" type="button" id="myAns3">Answer Now</a>
                    </div>

                    <div id="myModal3" class="modal">

                        Modal content 
                        <div class="modal-content">
                            <span class="close3">&times;</span>

                            <div class="answerqn">
                                <p>You unfortunately have very little control over the iPhone camera. You can only lock or unlock the exposure, white balance, and focus modes.
                                    Camera+ actually does not have control over anything you described. It used to be able to as it hacked the hardware, which is naturally a great way to get your app rejected by the reviewers.
                                    I hope that iOS6 will give developers greater control as it is a PITA.</p> 
                                <span>Posted by: Jhon</span> <span id="time">1Hour 30min</span>
                                <div class="updown">
                                    <a href="#" type="button"><img src="../../Resources/Img/up.png"></a> 
                                    <span id="up">43</span> 
                                    <a href="#" type="button"><img src="../../Resources/Img/down.png"></a>
                                    <span id="down">456</span>
                                </div>
                            </div>

                            <div class="answerqn">
                                <p>You unfortunately have very little control over the iPhone camera. You can only lock or unlock the exposure, white balance, and focus modes.
                                    Camera+ actually does not have control over anything you described. It used to be able to as it hacked the hardware, which is naturally a great way to get your app rejected by the reviewers.
                                    I hope that iOS6 will give developers greater control as it is a PITA.</p> 
                                <span>Posted by: Aaketk</span> <span id="time">12 Jan 2020</span>
                                <div class="updown">
                                    <a href="#" type="button"><img src="../../Resources/Img/up.png"></a> 
                                    <span id="up">13</span> 
                                    <a href="#" type="button"><img src="../../Resources/Img/down.png"></a>
                                    <span id="down">46</span>
                                </div>
                            </div>

                            <div class="answerqn">
                                <p>a space through which light passes in an optical or photographic instrument, especially the variable opening by which light enters a camera. In iOS you can not control the aperture of camera of device before iPhone 7. In latest device I am not sure. </p> 
                                <span>Posted by: Hiruna Keshara</span> <span id="time">14 Feb 2020</span>
                                <div class="updown">
                                    <a href="#" type="button"><img src="../../Resources/Img/up.png"></a> 
                                    <span id="up">103</span> 
                                    <a href="#" type="button"><img src="../../Resources/Img/down.png"></a>
                                    <span id="down">416</span>
                                </div>
                            </div>

                            <div class="answerqn">
                                <p>a space through which light passes in an optical or photographic instrument, especially the variable opening by which light enters a camera. In iOS you can not control the aperture of camera of device before iPhone 7. In latest device I am not sure. </p> 
                                <div class="answerimg">
                                    <img src="../../Resources/Img/answer1.jpg">
                                    <img src="../../Resources/Img/answer2.jpg">
                                </div>
                                <span>Posted by: Hiruna Keshara</span> <span id="time">14 Feb 2020</span>
                                <div class="updown">
                                    <a href="#" type="button"><img src="../../Resources/Img/up.png"></a> 
                                    <span id="up">103</span> 
                                    <a href="#" type="button"><img src="../../Resources/Img/down.png"></a>
                                    <span id="down">416</span>
                                </div>
                            </div>

                        </div>

                    </div>
                </div>

                <div class="questions">                
                    <h2>Change the ISO or shutter speed</h2>
                    <p>I am tring to control the ISO and the shutter speed for the iphone, but it has no API in AVFoundation. It can only change the exposure, wb for iphone. How can i control the ISO or shutter speed?</p>
                    <div class="image-content">
                        <img src="../../Resources/Img/shutter.jpg">
                        <img src="../../Resources/Img/shutter.jpg">
                    </div>

                    <label><a href="#" type="button">photography</a></label>
                    <label><a href="#" type="button">FoV</a></label>
                    <label><a href="#" type="button">camera</a></label>
                    <label><a href="#" type="button">focal</a></label> 
                    <span>Posted by: Aaketk18</span> <span id="time">1 Hour</span>   
                    <div class="updown">
                        <a href="#" type="button"><img src="../../Resources/Img/up.png"></a> 
                        <span id="up">1.5k</span>
                        <a href="#" type="button"><img src="../../Resources/Img/down.png"></a>
                        <span id="down">2k</span>
                    </div>
                    <div class="answer">
                        <a href="#" type="button" id="myBtn4" onclick="popupanswer('myBtn4')">1.5k answers</a>
                        <a href="#" type="button" id="myAns4">Answer Now</a>
                    </div>

                    <div id="myModal4" class="modal">

                        Modal content 
                        <div class="modal-content">
                            <span class="close4">&times;</span>

                            <div class="answerqn">
                                <p>You unfortunately have very little control over the iPhone camera. You can only lock or unlock the exposure, white balance, and focus modes.
                                    Camera+ actually does not have control over anything you described. It used to be able to as it hacked the hardware, which is naturally a great way to get your app rejected by the reviewers.
                                    I hope that iOS6 will give developers greater control as it is a PITA.</p> 
                                <span>Posted by: Jhon</span> <span id="time">1Hour 30min</span>
                                <div class="updown">
                                    <a href="#" type="button"><img src="../../Resources/Img/up.png"></a> 
                                    <span id="up">43</span> 
                                    <a href="#" type="button"><img src="../../Resources/Img/down.png"></a>
                                    <span id="down">456</span>
                                </div>
                            </div>

                            <div class="answerqn">
                                <p>You unfortunately have very little control over the iPhone camera. You can only lock or unlock the exposure, white balance, and focus modes.
                                    Camera+ actually does not have control over anything you described. It used to be able to as it hacked the hardware, which is naturally a great way to get your app rejected by the reviewers.
                                    I hope that iOS6 will give developers greater control as it is a PITA.</p> 
                                <span>Posted by: Aaketk</span> <span id="time">12 Jan 2020</span>
                                <div class="updown">
                                    <a href="#" type="button"><img src="../../Resources/Img/up.png"></a> 
                                    <span id="up">13</span> 
                                    <a href="#" type="button"><img src="../../Resources/Img/down.png"></a>
                                    <span id="down">46</span>
                                </div>
                            </div>

                            <div class="answerqn">
                                <p>a space through which light passes in an optical or photographic instrument, especially the variable opening by which light enters a camera. In iOS you can not control the aperture of camera of device before iPhone 7. In latest device I am not sure. </p> 
                                <span>Posted by: Hiruna Keshara</span> <span id="time">14 Feb 2020</span>
                                <div class="updown">
                                    <a href="#" type="button"><img src="../../Resources/Img/up.png"></a> 
                                    <span id="up">103</span> 
                                    <a href="#" type="button"><img src="../../Resources/Img/down.png"></a>
                                    <span id="down">416</span>
                                </div>
                            </div>

                        </div>

                    </div>


                </div>-->
            </div>

        </div>


        <script src="../../JS/Forum/BrowseQn.js" type="text/javascript" ></script>

    </body>
</html>
