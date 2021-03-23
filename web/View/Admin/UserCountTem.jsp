<%-- 
    Document   : UserCountTem
    Created on : Mar 23, 2021, 2:22:12 PM
    Author     : Madusha
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    ArrayList<Integer> c = (ArrayList<Integer>) request.getAttribute("counts");

%>

<div class="box" style="background-color: #EAEAEA">
    <h2>Active Users</h2>
    <div class="icon1">
        <img src="../../Resources/Img/online.png">
    </div> 
    <h2><%= c.get(1) + c.get(2) %></h2>
</div>

<div class="box" id="box-color1">
    <h2>Inactive Users</h2>
    <div class="icon">
        <img src="../../Resources/Img/inactive.png">
    </div> 
    <h2><%= c.get(3) + c.get(4)%></h2>
</div>

<div class="box" id="box-color2">
    <h2>Reported Users</h2>
    <div class="icon">                    
        <img src="../../Resources/Img/reported.png">
    </div> 
    <h2><%= c.get(0)%></h2>
</div>            


<script src="../../JS/Admin/ActivateUser.js" type="text/javascript"></script>