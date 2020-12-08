<%-- 
    Document   : Answer
    Created on : Dec 7, 2020, 8:10:30 AM
    Author     : Sashini Shihara
--%>

<%@page import="java.util.ArrayList"%>

<!DOCTYPE html>
<%

   

    ArrayList<String> s = (ArrayList<String>) request.getAttribute("answers");
    for (int i = 0; i < s.size() / 2; i++) {


%>

 <div class="answerqn">
                <p><%= s.get(i * 2)%></p> 
                <span>Posted by: <%= s.get((i * 6) + 1)%></span> <span id="time">1Hour 30min</span>
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
<%}%>