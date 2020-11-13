<%-- 
    Document   : ManagePhoto
    Created on : Nov 9, 2020, 5:38:01 PM
    Author     : Madusha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://fonts.googleapis.com/css2?family=Be+Vietnam:wght@300&family=Didact+Gothic&family=Dr+Sugiyama&family=Poiret+One&family=Poppins:wght@300;700&family=Questrial&family=Tenali+Ramakrishna&display=swap" rel="stylesheet"> 
        <link href="https://fonts.googleapis.com/css2?family=Cinzel+Decorative:wght@400;700;900&family=Righteous&family=Sora:wght@600&family=Syne&family=Barlow:wght@400;500;700;800&display=swap" rel="stylesheet">  
        <link href="https://fonts.googleapis.com/css2?family=Lato&display=swap" rel="stylesheet">
        <link type="text/css" rel="stylesheet" href="../../CSS/Admin/ManagePhoto.css"/>
        <link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:wght@300;400;600&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Lobster+Two:wght@400;700&display=swap" rel="stylesheet">
        <title>Manage Photos</title>
    </head>
    <body style="background-color: #f7f6f9;">

        <div class="box">                
            <h2>Reported Photographs</h2>
            <div class="search" style="margin:auto;max-width:300px">
                <input type="text" placeholder="Search" name="search2">
                <button type="submit">Search</button>
            </div><br><br><br>
            <table class="table">
                <th class="th"> ID </th>
                <th class="th" id="th-color1"> TITLE </th>
                <th class="th" id="th-color2"> OPTION </th>
            </table>
            <br><br>
            
            <table class="table" border="0" width="100%" height="40px" >
                <tr>
                    <td align="left">Description</td>
                    <td><textarea class="textarea" disabled=""></textarea></td>
                </tr>
                <tr>
                    <td align="left">Category</td>
                    <td><input type="text" name="cate" id="category" disabled=""></td>
                </tr>
                <tr>
                    <td align="left">Photographer</td>
                    <td><input type="text" name="name" id="pname" disabled=""></td>
                </tr>
                <tr>
                    <td align="left">Uploaded Date</td>
                    <td><input type="date" name="date" id="udate" disabled=""></td>
                </tr>
                <tr>
                    <th colspan =2><button class="btn" id="clear">Clear</button></th>
                </tr>
                </table>
        </div>

        <div class="box">

            <h2>Remove Photographs</h2>
            <div class="search" style="margin:auto;max-width:300px">
                <input type="text" placeholder="Search" name="search2">
                <button type="submit">Search</button>
            </div><br><br><br>
            
            <table class="table" border="0" width="100%" height="40px" >
                <tr>
                    <td align="left">Title</td>
                    <td><input type="text" name="title" id="title" disabled=""></td>
                </tr>
                <tr>
                    <td align="left">Category</td>
                    <td><input type="text" name="cate" id="category" disabled=""></td>
                </tr>
                <tr>
                    <td align="left">Photographer</td>
                    <td><input type="text" name="name" id="pname" disabled=""></td>
                </tr>
                <tr>
                    <td align="left">Uploaded Date</td>
                    <td><input type="date" name="date" id="udate" disabled=""></td>
                </tr>
                <tr>
                    <th colspan =2><button class="btn1" id="remove">Remove</button></th>
                </tr>
            </table>

        </div>

        <div class="box">                

            <h2> Category </h2>
            <div class="search" style="margin:auto;max-width:300px">
                <input type="text" placeholder="Search" name="search2">
                <button type="submit">Search</button>
            </div><br><br><br>
            <form>
                <div class="formContent">                             
                    <span class="content_name"> Category </span><br>
                    <input type="text" name="cate" required/>
                    <label for="cate" class="label_name">
                    </label>
                </div>

                <div class="formContent">                             
                    <span class="content_name"> Category Type </span><br>
                    <input type="text" name="type" required/>
                    <label for="type" class="label_name">
                    </label>
                </div>

                <button class="btn" id="Update" type="submit">Update</button>
                <button class="btn" id="remove" type="submit" style=" background-color: #f44336">Remove</button>


            </form>
        </div>
    </body>
</html>
