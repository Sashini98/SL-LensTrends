<%-- 
    Document   : ReportedPhotographer
    Created on : Dec 25, 2020, 11:10:28 PM
    Author     : Madusha
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="Model.ReportedPhotographer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    ArrayList<ReportedPhotographer> m = (ArrayList<ReportedPhotographer>) request.getAttribute("reported");
    ArrayList<String> d = (ArrayList<String>) request.getAttribute("details");
    for (int i = 0; i < d.size() / 5; i++) {

%>

<tr>
    <td><%= d.get((i * 5) + 2)%></td>
    <td><%= d.get((i * 5) + 1)%></td>
    <td><%= d.get(i * 5)%></td>
    <td><%= m.get(i).getReason()%></td>
    <td><%= m.get(i).getDescription()%></td>
    <td><center><button class="btn1" id="<%= m.get(i).getReportId()%>">View</button></center></td>
</tr


<script src="../../JS/Admin/ActivateUser.js" type="text/javascript" >
    <%}%>
