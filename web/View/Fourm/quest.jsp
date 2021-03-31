<%-- 
    Document   : quest
    Created on : Nov 7, 2020, 1:39:52 PM
    Author     : Sashini Shihara
--%>


<%@page import="Model.Photographer"%>
<%@page import="Model.Client"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%

    Photographer loggedPhotographer = (Photographer) session.getAttribute("loggedPhotographer");
    Client loggedClient= (Client) session.getAttribute("loggedClient");
    String loggedAs = "nl";
    if (loggedPhotographer != null) {
        loggedAs = "p";
    }
    
    if (loggedClient != null) {
        loggedAs = "c";
    }

    ArrayList<String> s = (ArrayList<String>) request.getAttribute("questions");
    for (int i = 0; i < s.size() / 7; i++) {


%>
<br>

<div class="questions">                
    <h2><%= s.get(i * 7)%></h2>
    <p><%= s.get((i * 7) + 1)%></p>
    <%
        String categories = s.get((i * 7) + 6);
        StringBuilder sb = new StringBuilder(categories);
        sb.deleteCharAt(categories.length() - 1);
        sb.deleteCharAt(0);

        String cat = sb.toString();
        String[] tokens = cat.split(",");

        for (int j = 0; j < tokens.length; j++) {
    %>
    <label><a href="#" type="button"><%=tokens[j]%></a></label>
        <%}%>

    <input id="qid" name="qid" type="text" value="<%= s.get((i * 7) + 5)%>" style="display: none;">
    <span>Posted by: <%= s.get((i * 7) + 2)%></span> <span id="time"><%= s.get((i * 7) + 3)%></span>   
    <div class="updown">

    </div>
     <%
            if (loggedAs.equalsIgnoreCase("p") || loggedAs.equalsIgnoreCase("c")) {
        %>

        <button class="open-button" onclick="openForm(<%= s.get((i * 7) + 5)%>)">Report</button>
        <% } %>
    <div class="answer">
        
        <%
            if (loggedAs.equalsIgnoreCase("p")) {
        %>
        <a href="../../display_question_inAnswer?qid=<%= s.get((i * 7) + 5)%>" type="button" id="myAns1">Answer Now</a>
        <%
            }
        %>
        <a href="../../display_question?qid=<%= s.get((i * 7) + 5)%>" type="button" id="answer_view"><%= s.get((i * 7) + 4)%> answers</a>

       

    </div>
</div>

<div class="form-popup" id="myForm">
    <form action="../../reportQuestion" method="POST" class="form-container">
        <h1>Report</h1>

        <input type="text" id="id" name="id" style="display: none;">

        <label for="reason"><b>Report Question </b></label>
        <input type="text" placeholder="Enter Reason" name="reason" id="reason" required>

        <textarea placeholder="Please Describe" name="desc" id="desc" rows="4" cols="40" required></textarea>

        <button type="submit" class="btn">Report</button>
        <button type="button" class="btn cancel" onclick="closeForm()">Cancel</button>
    </form>
</div>

<!--   
        <div class="reportModel" id="reportModel">
<div style="display: flex; justify-content: center;">
            <div class="ReportPhoto" id="ReportPhoto">
                <div class="ReportHeader">
                    <h3>Report</h3>
                    <i class="fas fa-times close" style="color: black; margin: auto; cursor: pointer;"></i>
                </div>

                <div>
                    <h4>Please select a problem to continue</h4>

                    <div style="display: flex; flex-wrap: wrap; " class="ReportsItems">
                        <button onclick="reportItemClicked('Inappropriate')" id="Inappropriate">Posting Inappropriate Things</button>
                        <button onclick="reportItemClicked('quality')" id="quality">Low Quality Photograph</button>
                        <button onclick="reportItemClicked('details')" id="details">Inappropriate Details</button>
                        <button onclick="reportItemClicked('fake')" id="fake">Fake Photograph</button>
                        <button onclick="reportItemClicked('somethingElse')" id="somethingElse">Something Else</button>
                    </div>
                    <div style="width: 100%; padding: 10px 10px; border-bottom: 1px solid black;">
                        <textarea class="reportReason" id="reason" type="text" placeholder="Enter Your Reasons"></textarea>
                    </div>
                    <div style="padding-top: 20px;">
                        <button class="Report" id="Report" onclick="reportPhoto();">Report</button>
                    </div>
                </div>
            </div>
        </div>
   

        </div>-->
<script src="../../JS/Forum/BrowseQn.js" type="text/javascript"></script>


<%}%>
