<%-- 
    Document   : ReportedQuestion
    Created on : Dec 31, 2020, 5:51:04 PM
    Author     : Madusha
--%>

<%@page import="Model.ReportedQuestion"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    ArrayList<ReportedQuestion> q = (ArrayList<ReportedQuestion>) request.getAttribute("ques");
    ArrayList<String> n = (ArrayList<String>) request.getAttribute("names");
    for (int i = 0; i < q.size(); i++) {
%>

<div class="questions">
    <div class="details">
        <h2><%=q.get(i+2) %></h2><br>
    </div>
    <table class="table" border="0" width="100%" height="40px" >
        <tr>
            <td align="left">Uploaded By</td>
            <td><input type="text" name="upload" value="<%=n.get(i) %>" disabled=""></td>
            <td align="left">Reported By</td>
            <td><input type="text" name="rep" value="<%=n.get(i+1) %>" disabled=""></td>
            <td><button class="btn" id="view" onclick="show('reportedQuestion')">View</button></td>
        </tr>
    </table>
</div

<script src="../../JS/Admin/ReportedQuestion.js" type="text/javascript" ></script>


<%}%>
