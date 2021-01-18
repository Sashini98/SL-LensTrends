<%-- 
    Document   : ViewReportedQue
    Created on : Nov 12, 2020, 9:28:22 AM
    Author     : Madusha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<!--<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://fonts.googleapis.com/css2?family=Be+Vietnam:wght@300&family=Didact+Gothic&family=Dr+Sugiyama&family=Poiret+One&family=Poppins:wght@300;700&family=Questrial&family=Tenali+Ramakrishna&display=swap" rel="stylesheet"> 
        <link href="https://fonts.googleapis.com/css2?family=Cinzel+Decorative:wght@400;700;900&family=Righteous&family=Sora:wght@600&family=Syne&family=Barlow:wght@400;500;700;800&display=swap" rel="stylesheet">  
        <link href="https://fonts.googleapis.com/css2?family=Lato&display=swap" rel="stylesheet">
        <link type="text/css" rel="stylesheet" href="../../CSS/Admin/ViewReportedQue.css"/>
        <link type="text/css" rel="stylesheet" href="../../CSS/Admin/AdminDashboard.css" />
        <link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:wght@300;400;600&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Lobster+Two:wght@400;700&display=swap" rel="stylesheet">
        <title>View Reported Questions</title>
    </head>-->
<div onload="ViewQusetionDetails();"
<script src="../../JS/Admin/ViewReportedQuestionDetails.js" type="text/javascript" ></script>
<div style="background-color: #f7f6f9;">

    <div class="reportedQueBody">
        <div class="box">
            <div class="details">
                <h1 id="title"></h1><br>
            </div>
            <p class="p" id="question"></p>

            <table class="table" border="0" width="100%" height="40px" >
                <tr>
                    <td align="left">Reported By</td>
                    <td><input type="text" name="reported" id="reported" disabled=""></td>
                    <td align="left">Description</td>
                    <td><textarea class="textarea" name="desc" id="desc" disabled=""></textarea></td>
                </tr>
                <tr>
                    <td align="left">Reason</td>
                    <td><input type="text" name="reason" id="reason" disabled=""></td>                    
                </tr>
            </table>
        </div>

        <div class="box">
            <br>
            <table class="table" border="0" width="100%" height="40px" >
                <tr>
                    <td align="left">Posted By</td>
                    <td><input type="text" name="posted" id="posted" disabled=""></td>
                    <td align="left">Posted Date</td>
                    <td><input type="date" name="date" id="sdate" disabled=""></td>
                </tr>
                <tr>
                    <td align="left">Category</td>
                    <td><input type="text" name="cate" id="cate" disabled=""></td>
                    <td align="left">Question Id</td>
                    <td><input type="text" name="file" id="qid" disabled=""></td>
                </tr>
                <tr>
                    <th colspan =2><button class="btn" id="approve" onclick="show('forum')">Back</button></th>
                    <th colspan =2><button class="btn" id="reject" style="background-color: #f44336" onclick="RemoveQue()" >Remove</button></th>
                </tr>
            </table>
        </div>
    </div>
</div>
</div>
<!--</html>-->
