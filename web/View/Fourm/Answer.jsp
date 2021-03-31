<%-- 
    Document   : Answer
    Created on : Dec 7, 2020, 8:10:30 AM
    Author     : Sashini Shihara
--%>

<%@page import="java.util.ArrayList"%>

<!DOCTYPE html>


<%
    ArrayList<String> s = (ArrayList<String>) request.getAttribute("answers");

    for (int i = 0; i < s.size() / 6; i++) {


%>



<div class="answers">
    <p><%= s.get(i * 6)%></p> 
    <span>Posted by: <%= s.get((i * 6) + 1)%> </span> <span id="time"><%= s.get((i * 6) + 2)%></span>

    <div class="updown">
        <a href="#" type="button" onclick="rate(<%= s.get((i * 6) + 3)%>, 'like');"><img src="Resources/Img/up.png"></a> 
        <span id="up"><%= s.get((i * 6) + 4)%></span> 
        <a href="#" type="button" type="button" onclick="rate(<%= s.get((i * 6) + 3)%>, 'dislike');"><img src="Resources/Img/down.png"></a>
        <span id="down"><%= s.get((i * 6) + 5)%></span>
    </div>
    <div class="answer">
        <a href="/GroupProject/View/Fourm/AddComment.jsp?aid=<%= s.get((i * 6) + 3)%>" type="button" id="comm">Comment</a>
    </div>


    <%  ArrayList<String> c = (ArrayList<String>) request.getAttribute("comments");
        outerloop:
        for (int j = 0; j < c.size(); j++) {

            if (c.get(j).equals("end")) {
                for (int k = 0; k < j / 2; k++) {

    %>
    <div class="comments">
        
        <p><%= c.get(k * 2)%></p> 
        <span>Posted by: <%= c.get((k * 2) + 1)%></span> <span id="time">1234</span>
    </div>


    <%}
            for (int l = 0; l <= j; l++) {
                c.remove(l);
                j--;
                l--;
            }

            break outerloop;

        }
    }%>
</div>
<%
               }%>
<script src="JS/Forum/QuesDisplay.js" type="text/javascript" ></script>