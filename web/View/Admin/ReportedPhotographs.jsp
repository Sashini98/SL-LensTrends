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
    ArrayList<String> c = (ArrayList<String>) request.getAttribute("client");
    if (p.size() > 0) {
    for (int i = 0; i < c.size() / 3 ; i++) {
%>

<div class="photos">
    <div class="details">
        <img src="../../Resources/Img/Gallery Sample Images/<%=c.get((i * 3) +1) %>">
        <p>Uploaded By<input type="text" name="Submitted" value="<%=c.get((i * 3) +2) %>" disabled=""></p>
        <p>Reported By <input type="text" name="Reported" value="<%=c.get(i *3) %>" disabled=""></p>
        <button id="<%=p.get(i).getReportId()%>" type="submit" class="btn" onclick="show('reportedPhoto'); ViewDetails('<%=p.get(i).getReportId()%>');">View</button>
    </div>
</div

<script src="../../JS/Admin/ReportedPhotos.js" type="text/javascript" ></script>

<%}
} else {

%>
<div style="text-align: center;"> 
    <p>NO RESULTS FOUND</p>
</div>

<%}
%>