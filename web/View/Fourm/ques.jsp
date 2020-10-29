<%-- 
    Document   : ques
    Created on : Oct 26, 2020, 4:49:35 PM
    Author     : Sashini Shihara
--%>


<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
   
    
    ArrayList<String> s = (ArrayList<String>) request.getAttribute("questions");
    for (int i = 0; i < s.size() / 6; i++) {
        
        


%>

<br><br>
<div class="sec" style=" border-top: 10px solid cyan; ">
    <p id="name" style="font-size: 15px; color: darkblue"><%= s.get(i*6)%></p><p id="date" style="font-size: 15px; color: darkgreen;"><%= s.get((i*6)+1) %></p><br>
    <h8 id="title"><%= s.get((i*6) + 2)%></h8><br><br><br>

    <label id="question"><%= s.get((i*6) + 3)%></label><br><br>
    <a id="category" href=""><%= s.get((i*6)+ 4)%></a><br><br>
    <p2 style="font-size: 13px; color: darkgrey;"><%= s.get((i*6) + 5)%> Answers</p2><input type="button" value="View"><br>
    

</div>

<%}%>