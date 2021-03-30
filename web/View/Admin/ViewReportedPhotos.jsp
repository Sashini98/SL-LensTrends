<%-- 
    Document   : ViewReportedPhotos
    Created on : Nov 20, 2020, 9:40:19 PM
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
        <link type="text/css" rel="stylesheet" href="../../CSS/Admin/ViewReportedPhotos.css"/>
        <link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:wght@300;400;600&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Lobster+Two:wght@400;700&display=swap" rel="stylesheet">
        <title>View Reported Photos</title>
    </head>-->

<div onload="ViewDetails();"
<script type="text/javascript" src="../../JS/Admin/ReportedPhotos.js" ></script>
    <div style="background-color: #f7f6f9; align-items: center;">

        <div class="box">
            <div class="details">
                <img id="img">
            </div>

            <table class="table" border="0" width="100%" height="40px" >
                <tr>
                    <td align="left">Reason</td>
                    <td><input type="text" name="reason" id="reason" disabled=""></td>
                    <td align="left">Description</td>
                    <td><textarea class="textarea" name="desc" id="desc" disabled=""></textarea></td>
                </tr>
            </table>
        </div>

        <div class="box"><br>
            <table class="table" border="0" width="100%" height="40px" >
                <tr>
                    <td align="left">Title</td>
                    <td><input type="text" name="title" id="title" disabled=""></td>
                    <td align="left">Resolution</td>
                    <td><input type="text" name="res" id="reso" disabled=""></td>
                </tr>
                <tr>
                    <td align="left">Uploaded Date</td>
                    <td><input type="text" name="date" id="udate" disabled=""></td>
                    <td align="left">Height</td>
                    <td><input type="text" name="hei" id="height" disabled=""></td>
                </tr>
                <tr>
                    <td align="left">Photographer Name</td>
                    <td><input type="text" name="name" id="pname" disabled=""></td>
                    <td align="left">width</td>
                    <td><input type="text" name="wid" id="width" disabled=""></td>
                </tr>
                <tr>
                    <td align="left">Category</td>
                    <td><input type="text" name="cate" id="cate" disabled=""></td>
                    <td align="left">Photograph Id</td>
                    <td><input type="text" name="file" id="pid" disabled=""></td>
                </tr>
                <tr>
                    <td align="left">Keywords</td>
                    <td><input type="text" name="key" id="key" disabled=""></td>
                </tr>
                <tr>
                    <th colspan =2><button  onclick="show('photomanage')" class="btn" id="approve">Back</button></th>
                    <th colspan =2><button class="btn" id="reject" style="background-color: #f44336">Remove</button></th>
                </tr>
            </table>
        </div>
    </div>
</div>
<!--</html>-->
