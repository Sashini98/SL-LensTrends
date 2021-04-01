<%-- 
    Document   : UserViewPhotographerProfileTemp
    Created on : Apr 1, 2021, 5:49:12 AM
    Author     : kesh
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    ArrayList<String> potPics = (ArrayList<String>) request.getAttribute("potPics");
    ArrayList<String> salesPics = (ArrayList<String>) request.getAttribute("salesPics");

    for (String elem : potPics) {
%>

<img src="../../Resources/Img/Gallery Sample Images/<%= elem%>">

<%
    }

    for (String elem : salesPics) {
%>

<img src="../../Resources/Img/Gallery Sample Images/<%= elem%>">

<%
    }
%>