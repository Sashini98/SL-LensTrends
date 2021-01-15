<%-- 
    Document   : PastEvent-single
    Created on : Jan 12, 2021, 8:35:11 AM
    Author     : Sashini Shihara
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%

    ArrayList<String> s = (ArrayList<String>) request.getAttribute("event");
    for (int i = 0; i < s.size() / 3; i++) {


%>
<div class="main-content">
<div class="events">                

                <p style="font-weight: bold;">Event Date: <span style="color: #514f4f; font-weight: normal; margin-left: 6%;"><%= s.get((i * 3))%></span></p>
                <p style="font-weight: bold;">Event venue: <span style="color: #514f4f; font-weight: normal; margin-left: 5%;"><%= s.get((i * 3) + 1)%></span></p>
                <p style="font-weight: bold;">Covered By: <span style="color: #514f4f; font-weight: normal; margin-left: 7%;"><%= s.get((i * 3) + 2)%></span></p>
                <!--<p style="font-weight: bold;">Estimate Budget:</p>-->
<!--                <span id="time">2020/09/07</span>   -->
            </div>
</div>
                
                <%}%>