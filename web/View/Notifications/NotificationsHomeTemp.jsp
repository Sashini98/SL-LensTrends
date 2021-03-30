<%-- 
    Document   : NotificationsHomeTemp
    Created on : Mar 30, 2021, 9:45:30 PM
    Author     : kesh
--%>

<%@page import="sun.java2d.pipe.SpanShapeRenderer.Simple"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="Model.Notifications"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    ArrayList<Notifications> n = (ArrayList<Notifications>) request.getAttribute("data");
    for (Notifications elem : n) {
        Date d = elem.getNotify_date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");
        String date = sdf.format(d);
%>

<div class="notifications">                
    <h2><%= elem.getTitle()%></h2>
    <p><%= elem.getNotification()%></p>
    \
    <span id="time"><%= date%></span>   
    <div class="updown">
        <a href="#" type="button"><img src="../../Resources/Img/up.png"></a> 
        <span id="up">Mark as read</span>
    </div>
</div>
<%    }
%>

