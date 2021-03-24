<%-- 
    Document   : CartTemplate
    Created on : Mar 24, 2021, 4:21:03 AM
    Author     : kesh
--%>

<%@page import="Model.Photograph"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%

    ArrayList<Photograph> photos = (ArrayList<Photograph>) request.getAttribute("cartItems");

    if (photos.size() > 0) {

%>


<div class="column">
    <%        for (int i = 0; i < photos.size(); i += 4) {
    %>
    <img src="../../Resources/Img/Gallery Sample Images/<%= photos.get(i).getPath()%>" style="width:100%">

    <%
        }
    %>
</div>
<div class="column">
    <%        for (int i = 1; i < photos.size(); i += 4) {
            System.out.println(photos.get(i).getId() + " 0");
    %>
    <img src="../../Resources/Img/Gallery Sample Images/<%= photos.get(i).getPath()%>" style="width:100%">

    <%
        }
    %></div>
<div class="column">
    <%        for (int i = 2; i < photos.size(); i += 4) {
            System.out.println(photos.get(i).getId() + " 0");
    %>
    <img src="../../Resources/Img/Gallery Sample Images/<%= photos.get(i).getPath()%>" style="width:100%">

    <%
        }
    %>
</div>  
<div class="column">
    <%        for (int i = 3; i < photos.size(); i += 4) {
            System.out.println(photos.get(i).getId() + " 0");
    %>
    <img src="../../Resources/Img/Gallery Sample Images/<%= photos.get(i).getPath()%>" style="width:100%">

    <%
        }
    %>
</div>  

<%    } else {
%>

<div style="text-align: center; margin: auto;"> 
    <p>NO CART ITEMS FOUND</p>
</div>

<%
    }
%>