<%-- 
    Document   : Message
    Created on : Dec 23, 2020, 3:22:24 PM
    Author     : Madusha
--%>
<%@page import="Model.Messages" %>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    ArrayList<Messages> m = (ArrayList<Messages>) request.getAttribute("message");
    for(int i = 0; i < m.size(); i++){
    
%>

<tr>
    <td><%= m.get(i).getEmail()%></td>
    <td><%= m.get(i).getName()%></td>
    <td><%= m.get(i).getMobile()%></td>
    <td><%= m.get(i).getMessage()%></td>
    <td><%= m.get(i).getMessage_date()%></td>
    <td><button class="btn1" id="<%= m.get(i).getMessageId() %>" onclick="window.open('https://mail.google.com/')">Reply</button></td>
</tr>


<script src="../../JS/Admin/AdminMessage.js" type="text/javascript" >
<%}%>