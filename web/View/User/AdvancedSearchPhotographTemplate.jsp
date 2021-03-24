<%-- 
    Document   : AdvancedSearchPhotographTemplate
    Created on : Dec 21, 2020, 9:11:07 AM
    Author     : kesh
--%>

<%@page import="Model.Photograph"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%

    ArrayList<Photograph> photos = (ArrayList<Photograph>) session.getAttribute("searchedPics");

    if (photos.size() > 0) {

%>
<div class="column">
    <%        for (int i = 0; i < photos.size(); i += 4) {

    %>
    <a href="../../PurchasePhotoDetails?id=<%= photos.get(i).getId()%>">
        <img src="../../Resources/Img/Gallery Sample Images/<%= photos.get(i).getPath()%>" style="width:100%">
    </a>
    <%
        }
    %>
</div>
<div class="column">
    <%
        for (int i = 1; i < photos.size(); i += 4) {

    %>
    <a href="../../PurchasePhotoDetails?id=<%= photos.get(i).getId()%>">
        <img src="../../Resources/Img/Gallery Sample Images/<%= photos.get(i).getPath()%>" style="width:100%">
    </a>
    <%
        }
    %>
</div>
<div class="column">
    <%
        for (int i = 2; i < photos.size(); i += 4) {

    %>
    <a href="../../PurchasePhotoDetails?id=<%= photos.get(i).getId()%>">
        <img src="../../Resources/Img/Gallery Sample Images/<%= photos.get(i).getPath()%>" style="width:100%">
    </a>
    <%
        }
    %>
</div>  
<div class="column">
    <%
        for (int i = 3; i < photos.size(); i += 4) {

    %>
    <a href="../../PurchasePhotoDetails?id=<%= photos.get(i).getId()%>">
        <img src="../../Resources/Img/Gallery Sample Images/<%= photos.get(i).getPath()%>" style="width:100%">
    </a>    
    <%
        }
    %>
</div>  

<%
} else {
%>
<div style="text-align: center;"> 
    <p>NO RESULTS FOUND</p>
</div>
<%
    }

%>