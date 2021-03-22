<%-- 
    Document   : view answers
    Created on : Mar 16, 2021, 10:46:36 AM
    Author     : Sashini Shihara
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String loggedAs = (String) request.getAttribute("loggedAs");

    ArrayList<String> q = (ArrayList<String>) request.getAttribute("question");
    for (int i = 0; i < q.size() / 2; i++) {


%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://fonts.googleapis.com/css2?family=Be+Vietnam:wght@300&family=Didact+Gothic&family=Dr+Sugiyama&family=Poiret+One&family=Poppins:wght@300;700&family=Questrial&family=Tenali+Ramakrishna&display=swap" rel="stylesheet"> 
        <link href="https://fonts.googleapis.com/css2?family=Cinzel+Decorative:wght@400;700;900&family=Righteous&family=Sora:wght@600&family=Syne&family=Barlow:wght@400;500;700;800&display=swap" rel="stylesheet">  
        <link href="https://fonts.googleapis.com/css2?family=Lato&display=swap" rel="stylesheet">
        <link type="text/css" rel="stylesheet" href="CSS/forum/BrowseQn.css"/>
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:wght@300;400;600&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Lobster+Two:wght@400;700&display=swap" rel="stylesheet">
        <title>Questions</title>
    </head>




        <div class="fixedheader">  

            <div class="pageheader">

                <a href="../Home.jsp" type="button"> <img src="Resources/Img/7.png" height="55px" width="60px"> </a>
                <h1>Sl Lens Trends </h1>

                <div class="headerul">
                    <ul>

                        <li><a href="#" type="button"> Events </a></li>
                        <li><a href="#" type="button"> Profile </a></li>
                        <li><a href="#" type="button"> Settings </a></li>

                    </ul>
                </div>

                <div class="notifyicn">
                    <a href="#" type="button"> <img src="Resources/Img/notification.png"> </a>
                </div>

                <div class="logout">
                    <a href="#" type="button"> Logout </a>
                </div>

            </div>

        </div>

        

            <div class="side-box"> 
                <div class="home">
                    <ul>

                        <li><a href="View/Fourm/MainForum.jsp"> Forum Home </a></li>
                    </ul>
                </div>


                <div class="ask-qn">
                    <a href="AskQues.jsp" type="button">Ask Questions <a/>
                </div>

            </div> 
    <br><br><br>
            <h3 id="quest" name="quest"><label for="Question"><b><%= q.get((i * 2))%></b></label><br></h3>
            <h4 id="quesid" name="quesid" style="display: none"><%= q.get((i * 2) + 1)%></h4>
            
            
            <body style="background-color: #f7f6f9;" onload="view()">
        <div class="main-content">
            <div name="s" id="s">


<div class="questions">
                <p>hiiiii</p> 
                <span>Posted by: </span> <span id="time">1234</span>
                <div class="updown">
                    <a href="#" type="button"><img src="../../Resources/Img/up.png"></a> 
                    <span id="up">43</span> 
                    <a href="#" type="button"><img src="../../Resources/Img/down.png"></a>
                    <span id="down">456</span>
                </div>
                <div class="answer">
                    <a href="#" type="button" id="myBtn2" onclick="popupanswer('myBtn2')">5 comments</a>
                    <a href="#" type="button" id="comm" onclick="popupanswer('comm')">Comment</a>
                </div>
            </div>

                



            </div>

        </div>




        <script src="../../JS/Forum/QuesDisplay.js" type="text/javascript" ></script>

    </body>
</html>

<%}%>

