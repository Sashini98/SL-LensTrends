<%-- 
    Document   : Answer
    Created on : Dec 7, 2020, 8:10:30 AM
    Author     : Sashini Shihara
--%>

<%@page import="java.util.ArrayList"%>

<!DOCTYPE html>
<%

    ArrayList<String> s = (ArrayList<String>) request.getAttribute("answers");
    for (int i = 0; i < s.size() / 3; i++) {


%>



<div class="questions">
    <p><%= s.get(i * 3)%></p> 
    <span>Posted by: <%= s.get((i * 3) + 1)%> </span> <span id="time"><%= s.get((i * 3) + 2)%></span>
    <div class="updown">
        <a href="#" type="button"><img src="Resources/Img/up.png"></a> 
        <span id="up">43</span> 
        <a href="#" type="button"><img src="Resources/Img/down.png"></a>
        <span id="down">456</span>
    </div>
    <div class="answer">
        <a href="#" type="button" id="comm" onclick="popupanswer('comm')">Comment</a>
    </div>

    <div class="comments">
        <p>hiiiii</p> 
        <span>Posted by: </span> <span id="time">1234</span>
    </div>

</div>
<%}%>