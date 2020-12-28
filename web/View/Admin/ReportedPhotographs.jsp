<%-- 
    Document   : ReportedPhotographs
    Created on : Dec 28, 2020, 7:12:01 PM
    Author     : Madusha
--%>

<%@page import="Model.ReportedPhotographs"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    ArrayList<ReportedPhotographs> p = (ArrayList<ReportedPhotographs>) request.getAttribute("photos");
    for (int i = 0; i < p.size(); i++) {
%>

<div class="photos">
    <div class="details">
        <img src="../../Resources/Img/Gallery Sample Images/">
        <p>Uploaded By<input type="text" name="Submitted" value="" disabled=""></p>
        <p>Reported By <input type="text" name="Submitted" value="<%=p.get(i).getClientId()%>" disabled=""></p>
        <button id="<%=p.get(i).getReportId()%>" type="submit" class="btn" onclick="show('reportedPhoto')">View</button>
    </div>
</div

<script src="../../JS/Admin/ReportedPhotos.js" type="text/javascript" ></script>

<%}%>