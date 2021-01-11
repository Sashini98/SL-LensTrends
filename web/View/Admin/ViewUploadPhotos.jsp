<%-- 
    Document   : ApprovePhotos
    Created on : Nov 10, 2020, 7:11:49 PM
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
        <link type="text/css" rel="stylesheet" href="../../CSS/Admin/ViewUploadPhotos.css"/>
        <link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:wght@300;400;600&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Lobster+Two:wght@400;700&display=swap" rel="stylesheet">
        <title>View Upload Photos</title>
    </head>
-->
<div onload="viewPhotoDetails();">
    <script type="text/javascript" src="../../JS/Admin/ViewUploadPhotos.js" ></script>
    <div style="background-color: #f7f6f9;">

        <div class="box"><br>
            <div class="details">
<!--                <a href="../../Resources/Img/Gallery Sample Images/a-stark-n40XRU-eSSI-unsplash.jpg" target="_blank"><img src="../../Resources/Img/Gallery Sample Images/a-stark-n40XRU-eSSI-unsplash.jpg"></a>-->
<img id="img">
            </div>
            <table class="table" border="0" width="100%" height="40px" >
                <tr>
                    <td align="left">Title</td>
                    <td><input type="text" name="title" id="title" disabled=""></td>
                    <td align="left">Resolution</td>
                    <td><input type="text" name="res" id="reso" disabled=""></td>
                </tr>
                <tr>
                    <td align="left">Quality</td>
                    <td><input type="text" name="qua" id="quality" disabled=""></td>
                    <td align="left">Orientation</td>
                    <td><input type="text" name="size" id="orientation" disabled=""></td>
                </tr>
                <tr>
                    <td align="left">Uploaded Date</td>
                    <td><input type="date" name="date" id="udate" disabled=""></td>
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
                    <td align="left">Gender</td>
                    <td><input type="text" name="gen" id="gen" disabled=""></td>
                </tr>
                <tr>
                    <th colspan =2><button onclick="PhotoApprove()"  class="btn" id="approve">Approve</button></th>
                    <th colspan =2><button onclick="show('photoapproval')"  class="btn" id="reject" style="background-color: #f44336">Reject</button></th>
                </tr>
            </table>
        </div>
    </div>
</div>

<!--</html>-->
