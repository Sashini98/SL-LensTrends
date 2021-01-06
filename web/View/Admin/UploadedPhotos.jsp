<%-- 
    Document   : UploadedPhotos
    Created on : Dec 24, 2020, 7:54:01 PM
    Author     : Madusha
--%>

<%@page import="Model.Photograph"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    ArrayList<Photograph> p = (ArrayList<Photograph>) request.getAttribute("photos");
    ArrayList<String> a = (ArrayList<String>) request.getAttribute("photographer");
    for (int i = 0; i < p.size(); i++) {
%>

<div class="photos">
        <div class="details">
            <img src="../../Resources/Img/Gallery Sample Images/<%=p.get(i).getPath()%>">
            <p>Uploaded By<input type="text" name="Submitted" value="<%=a.get(i) %>" disabled=""></p>
            <p>Submitted On <input type="text" id="Submit" value="<%=p.get(i).getUploadedDate()%>" disabled=""></p>
            <button id="<%= p.get(i).getId() %>" type="submit" class="btn" onclick="show('approvePhoto')">Review</button>
        </div>
</div
            
            <script src="../../JS/Admin/PhotoApproval.js" type="text/javascript" ></script>
           

<%}%>